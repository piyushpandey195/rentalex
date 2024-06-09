import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:rentalex/screens/otp/otp_screen.dart';
import '../../utils/color/colors.dart';
class MobileLoginScreen extends StatefulWidget {
  const MobileLoginScreen({Key? key}) : super(key: key);

  @override
  State<MobileLoginScreen> createState() => _MobileLoginScreenState();
}

class _MobileLoginScreenState extends State<MobileLoginScreen> {

  TextEditingController _phoneNumberController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController controller = TextEditingController();
  String initialCountry = 'NG';
  PhoneNumber number = PhoneNumber(isoCode: 'NG');
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [

            const Spacer(),

            Image.asset("assets/images/logologin.png",
            scale: 2,),

            const SizedBox(height: 70,),

            Padding(
              padding: const EdgeInsets.only(left: 20.0,right: 20.0),
              child: Text("Enter  phone number that can be used  to verfy your identity with a text message.",
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(fontWeight: FontWeight.w500,
              fontSize: 14),),
            ),

            const SizedBox(height: 20),

            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Text("Enter  Phone Number ",
                textAlign: TextAlign.start,
                style: GoogleFonts.roboto(fontWeight: FontWeight.w400,
                    fontSize: 18),),
            ),

            const SizedBox(height: 20),

          Form(
            key: formKey,
            child: Container(
              height: 50,
              decoration: BoxDecoration(border: Border.all(color: graycolor),
              borderRadius: BorderRadius.circular(10)),
              child: InternationalPhoneNumberInput(
                inputBorder: InputBorder.none,
                onInputChanged: (PhoneNumber number) {
                  print(number.phoneNumber);
                },
                maxLength: 10,
               // countries: countries_code,
                initialValue: PhoneNumber(isoCode: 'IN'),
                onInputValidated: (bool value) {
                  print(value);
                },
                selectorConfig: const SelectorConfig(
                  showFlags: false,
                  selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                ),
                ignoreBlank: false,
                autoValidateMode: AutovalidateMode.disabled,
                selectorTextStyle: TextStyle(color: Colors.black),
                textFieldController: controller,
                formatInput: true,
                keyboardType:
                const TextInputType.numberWithOptions(signed: true, decimal: true),
              /*  inputBorder: const OutlineInputBorder(
                  gapPadding: 10,
                  borderSide: BorderSide(color: Colors.black)
                ),*/
                /*onSaved: (PhoneNumber number) {
                  print('On Saved: $number');
                },*/
              ),
            ),
          ),
                   /*TextFormField(
                     autofocus: false,
                     keyboardType: TextInputType.phone,
                     decoration: const InputDecoration(
                       border: InputBorder.none,
                       hintText: "Your Phone Number"
                     ),
                   ),*/


            const SizedBox(height: 20),

            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const OtpScreen()));
              },
              child: Container(
                height: 48,
                  width: MediaQuery.of(context).size.width,
                decoration:  BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    gradient: const LinearGradient(
                        colors: [buttoncolor,buttoncolor2],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter
                    )
                ),
                child:    Center(
                  child: Text('Next',
                    style: GoogleFonts.roboto(color: whitecolor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),),
                )
              ),
            ),

            const Spacer(),
          ],
        ),
      ),
    );

  }
  void getPhoneNumber(String phoneNumber) async {
    PhoneNumber number =
    await PhoneNumber.getRegionInfoFromPhoneNumber(phoneNumber, 'US');

    setState(() {
      this.number = number;
    });
  }
}
