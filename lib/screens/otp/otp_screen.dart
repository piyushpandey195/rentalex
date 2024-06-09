import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentalex/screens/register/register.dart';

import '../../utils/color/colors.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final List<TextEditingController> _controllers = List.generate(4, (_) => TextEditingController());

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  String getEnteredOTP() {
    return _controllers.map((controller) => controller.text).join();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(flex: 1,),
              Row(
                children: [
                  IconButton(onPressed: (){
                    Navigator.pop(context);
                  }, icon:const Icon(Icons.arrow_back)),

                  const SizedBox(width:5),
                  Text(
                    "Verify Phone",
                    style: GoogleFonts.roboto(
                        fontSize: 16, fontWeight: FontWeight.w500),
                  )
                ],
              ),

              const Spacer(),

              Image.asset(
                "assets/images/otp.png",
                scale: 2,
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 30.0,right: 30,top:20),
                child: Text("We Have Sent You A Code To Verify Your Phone Number",
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(fontWeight: FontWeight.w400,
                color: Colors.black,
                fontSize: 14),),
              ),
              const SizedBox(height: 10),

              Padding(
                padding: const EdgeInsets.only(left: 30.0,right: 30,),
                child: Text("sent to (*******484)",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto(fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: 14),),
              ),


              const SizedBox(height: 30),

              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(4, (index) => _buildOTPTextField(index)),
                ),
              ),


              const SizedBox(height: 30),

              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const RegisterScreen()));
                },
                child: Container(
                    height: 48,
                    width: MediaQuery.of(context).size.width,
                    decoration:  BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        gradient:  const LinearGradient(
                            colors: [buttoncolor,buttoncolor2],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter
                        )
                    ),
                    child:    Center(
                      child: Text('Confirm OTP',
                        style: GoogleFonts.roboto(color: whitecolor,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),),
                    )
                ),
              ),

              const SizedBox(height: 10),

              Text(' Did’nt Receive A Code?',
                style: GoogleFonts.roboto(color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w400),),



              Text('Resend',
                style: GoogleFonts.roboto(color: Colors.red,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),),

              const Spacer(),

            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOTPTextField(int index) {
    return Container(
      width: 50,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: TextFormField(
        controller: _controllers[index],
        keyboardType: TextInputType.number,
        maxLength: 1,
        style: const TextStyle(fontSize: 24),
        textAlign: TextAlign.center,
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 16),
          counterText: '', // Hide the character counter

        ),
        onChanged: (value) {
          if (value.isNotEmpty) {
            if (index < _controllers.length - 1) {
              // Move focus to the next field
              FocusScope.of(context).nextFocus();
            }
          }
        },
      ),
    );
  }
}
