import 'package:flutter/material.dart';
import 'package:parkme/auth.dart'; // Import AuthService

class SubmitOTP extends StatelessWidget {
  TextEditingController _otpController = TextEditingController();
  AuthService _authService = AuthService(); // Create instance of AuthService

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/image2.png'),
              SizedBox(height: 20),
              Text(
                'Please enter the 6-Digit code provided via SMS or call to +94*******73', // Update phone number
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              // OTP input field
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  controller: _otpController,
                  keyboardType: TextInputType.number,
                  maxLength: 6, // Set maximum character count to 6
                  decoration: InputDecoration(
                    hintText: 'Enter OTP',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  // Implement logic to resend OTP
                },
                child: Text(
                  'Didn\'t get code? Try Again',
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  String otp = _otpController.text;
                  String verificationId = ''; // You should get verificationId from phone number input page
                  _authService.verifyOTPAndSignIn(verificationId, otp); // Verify OTP and sign in
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  'Submit',
                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
