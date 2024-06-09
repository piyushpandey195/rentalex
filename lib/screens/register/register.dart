import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:rentalex/utils/color/colors.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import '../boost_up/boost_up_screen.dart';
import 'package:intl/intl.dart';
List statelist = [
  "Uttar Pradesh",
  "Bihar",
  "Gujarat",
];
List genderlist = [
  "Male",
  "Female",
  "Other"
];
class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  TextEditingController _phoneNumberController = TextEditingController();

  var countries_code = <String?>[];
  String? statedata;
  String? genderdata;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            //const SizedBox(height: 40),
            Row(
              children: [
                IconButton(onPressed: (){
                  Navigator.pop(context);
                }, icon:Icon(Icons.arrow_back)),


                Text(
                  "Register",
                  style: GoogleFonts.roboto(
                      fontSize: 16, fontWeight: FontWeight.w500),
                )
              ],
            ),
            const SizedBox(height: 10),

             Center(
               child: Stack(
                children: [
                  Container(
                    height: 73,
                    width: 73,
                    decoration: BoxDecoration(
                      color: graycolor,
                      borderRadius: BorderRadius.circular(100)
                    ),
                  ),
                   Positioned(
                    bottom: 0,
                      right: 5,
                      child: Container(
                     height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      color: buttoncolor2,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: const Center(child: Icon(Icons.add,color: Colors.white,
                    size: 20,weight: 30,),),
                  ))
                ],
            ),
             ),

            const SizedBox(height: 10),

            Row(
              children: [
                Text(
                  "Enter Phone Number",
                  textAlign: TextAlign.start,
                  style: GoogleFonts.roboto(
                      fontSize: 16, fontWeight: FontWeight.w400),
                ),
              ],
            ),
            const SizedBox(height: 8,),

            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
             decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: graycolor)
              ),
              child: Padding(
                padding:
                const EdgeInsets.only( left: 8),
                child: InternationalPhoneNumberInput(
                  maxLength: 10,
                  //  countries: countries_code,
                  initialValue: PhoneNumber(isoCode: 'IN'),
                  onInputChanged: (PhoneNumber number) {
                    String? phoneNumber = number.phoneNumber;
                    if (phoneNumber?.length == 10) {
                      print(phoneNumber);
                      setState(() {
                        //  _phone = phoneNumber;
                      });
                    } else {
                      print("Invalid phone number");
                    }
                  },
                  onInputValidated: (bool value) {
                    print(value);
                  },
                  selectorConfig: const SelectorConfig(
                      selectorType: PhoneInputSelectorType.DIALOG,
                      showFlags: false,
                      trailingSpace: false
                  ),

                  ignoreBlank: false,
                  autoValidateMode: AutovalidateMode.disabled,
                  selectorTextStyle:
                  const TextStyle(color: graycolor),
                  textFieldController: _phoneNumberController,
                  formatInput: false, // Disable default formatting
                  keyboardType: TextInputType.number,
                  inputDecoration: const InputDecoration(
                      hintText: "Phone Number",
                      hintStyle: TextStyle(fontSize: 12.0, color: graycolor),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: graycolor, width: 0.5),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0)),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: graycolor, width: 0.5),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(8.0),
                              bottomRight: Radius.circular(8.0))),
                      contentPadding: EdgeInsets.symmetric(horizontal: 16.0)),
                  inputBorder:InputBorder.none ,
                  onSaved: (PhoneNumber number) {
                    //print('On Saved: $number');
                  }, // Limit input to 10 digits

                ),
              ),
            ),
            const SizedBox(height: 16,),
            Align(
              alignment: Alignment.centerLeft,
              child: Text("This number will be used by Buyers to contact you\n and for other notifications",
              style: GoogleFonts.roboto(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: textdarkblack
              ),),
            ),

            Padding(
                padding: const EdgeInsets.only(top: 16),
                child:
                Container(
                  height: 48,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      border: Border.all(color: graycolor),
                      borderRadius: BorderRadius.circular(8)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0, bottom: 10),
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText:  "Name",
                          border: InputBorder.none,
                          hintStyle: GoogleFonts.roboto(
                              fontWeight: FontWeight.w500,
                              color: graycolor,
                              fontSize: 12)),
                    ),
                  ),
                )),

            //state
            Padding(
                padding: const EdgeInsets.only(top: 16),
                child:
                Container(
                  height: 48,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      border: Border.all(color: graycolor),
                      borderRadius: BorderRadius.circular(8)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 16),
                    child: DropdownButton(
                        isExpanded: true,
                        underline: Container(),
                        icon: const Icon(Icons.keyboard_arrow_down_rounded,
                          color: graycolor,),
                        value: statedata,
                        hint:  Text("State",
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: graycolor
                          ),),
                        onChanged: (newValue) {
                          setState(() {
                            statedata = newValue as String?;
                          });
                        },
                        items: statelist.map((valueitem) {
                          return DropdownMenuItem(
                              value: valueitem, child: Text(valueitem,
                            style: GoogleFonts.roboto(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: textdarkblack
                            ),));
                        }).toList()),
                  ),
                )),
             //gender
            Padding(
                padding: const EdgeInsets.only(top: 16),
                child:
                Container(
                  height: 48,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      border: Border.all(color: graycolor),
                      borderRadius: BorderRadius.circular(8)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 16),
                    child: DropdownButton(
                        isExpanded: true,
                        underline: Container(),
                        icon: const Icon(Icons.keyboard_arrow_down_rounded,
                          color: graycolor,),
                        value: genderdata,
                        hint:  Text("Gender",
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: graycolor
                          ),),
                        onChanged: (newValue) {
                          setState(() {
                            genderdata = newValue as String?;
                          });
                        },
                        items: genderlist.map((valueitem) {
                          return DropdownMenuItem(
                              value: valueitem, child: Text(valueitem,
                            style: GoogleFonts.roboto(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: textdarkblack
                            ),));
                        }).toList()),
                  ),
                )),

            //age
            Padding(
                padding: const EdgeInsets.only(top: 16),
                child:
                Container(
                  height: 48,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      border: Border.all(color: graycolor),
                      borderRadius: BorderRadius.circular(8)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0, bottom: 10),
                    child: TextFormField(
                      keyboardType: TextInputType.numberWithOptions(),
                      decoration: InputDecoration(
                          hintText: "Age",
                          border: InputBorder.none,
                          hintStyle: GoogleFonts.roboto(
                              fontWeight: FontWeight.w500,
                              color: graycolor,
                              fontSize: 12)),
                    ),
                  ),
                )),

            //email
            Padding(
                padding: const EdgeInsets.only(top: 16),
                child:
                Container(
                  height: 48,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      border: Border.all(color: graycolor),
                      borderRadius: BorderRadius.circular(8)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0, bottom: 10),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          hintText: "Email",
                          border: InputBorder.none,
                          hintStyle: GoogleFonts.roboto(
                              fontWeight: FontWeight.w500,
                              color: graycolor,
                              fontSize: 12)),
                    ),
                  ),
                )),


            Padding(
                padding: const EdgeInsets.only(top: 16),
                child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const BoostUpScreen()));
                    },
                    child: Container(
                      width:width ,
                      height: 48,
                      decoration: BoxDecoration(
                          gradient: const LinearGradient(
                              colors: [buttoncolor,buttoncolor2],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter
                          ),
                          borderRadius: BorderRadius.circular(8)
                      ),
                      child: Center(
                        child: Text("Submit",
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: textwhitecolor
                          ),),
                      ),
                    ),
                  )
                ])),
          ],
        ),
      ),

    );
  }
}


