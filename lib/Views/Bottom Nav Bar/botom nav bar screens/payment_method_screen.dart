import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sergio_medina_app/Widgets/custom_button.dart';
import 'package:sergio_medina_app/Widgets/custom_textfied.dart';
import 'package:sergio_medina_app/utils.dart';

class PaymentMethodScreen extends StatefulWidget {
  @override
  _PaymentMethodScreenState createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
  String selectedPaymentMethod = 'Credit/Debit Card';
  bool isChecked = false;
  bool isCheck = false;
  String? selectedCountry;
  String? selectedState;
  String? selectedCity;

  // Country -> States -> Cities data
  Map<String, List<String>> countryStateMap = {
    'USA': ['California', 'New York'],
    'India': ['Maharashtra', 'Delhi'],
  };

  Map<String, List<String>> stateCityMap = {
    'California': ['Los Angeles', 'San Francisco'],
    'New York': ['New York City', 'Buffalo'],
    'Maharashtra': ['Mumbai', 'Pune'],
    'Delhi': ['New Delhi', 'Noida'],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WhiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () {
                      Navigator.pop(context); // Close button action
                    },
                  ),
                ],
              ),
              Text(
                "Select Payment Method",
                style: TextStyle(
                    fontFamily: 'Proxima',
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: BlackColor),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(color: InputfiedlBorderColor),
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    children: [
                      Radio(
                        activeColor: GreenColor,
                        value: 'Credit/Debit Card',
                        groupValue: selectedPaymentMethod,
                        onChanged: (value) {
                          setState(() {
                            selectedPaymentMethod = value.toString();
                          });
                        },
                      ),
                      Text(
                        'Credit /Debit Card',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Proxima',
                            fontSize: 14,
                            color: Grey),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              _buildCardForm(),
          
              Row(
                children: [
                  const SizedBox(
                    width: 7,
                  ),
                  Checkbox(
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value ?? false;
                      });
                    },
                    checkColor: Colors.white,
                    activeColor: GreenColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'Save the card details securely for future transactions',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Proxima',
                          fontSize: 13,
                          color: Grey),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border: Border.all(color: InputfiedlBorderColor),
                          borderRadius: BorderRadius.circular(8)),
                      child: Row(
                        children: [
                          Radio(
                            activeColor: GreenColor,
                            value: 'Credit/Debit Card',
                            groupValue: selectedPaymentMethod,
                            onChanged: (value) {
                              setState(() {
                                selectedPaymentMethod = value.toString();
                              });
                            },
                          ),
                          Image.asset('assets/Apple_Pay_logo 1.png')
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border: Border.all(color: InputfiedlBorderColor),
                          borderRadius: BorderRadius.circular(8)),
                      child: Row(
                        children: [
                          Radio(
                            activeColor: GreenColor,
                            value: 'Credit/Debit Card',
                            groupValue: selectedPaymentMethod,
                            onChanged: (value) {
                              setState(() {
                                selectedPaymentMethod = value.toString();
                              });
                            },
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset('assets/Google.png'),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Pay',
                                style: TextStyle(
                                    fontFamily: 'Proxima',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: BlackColor),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border: Border.all(color: InputfiedlBorderColor),
                          borderRadius: BorderRadius.circular(8)),
                      child: Row(
                        children: [
                          Radio(
                            activeColor: GreenColor,
                            value: 'Credit/Debit Card',
                            groupValue: selectedPaymentMethod,
                            onChanged: (value) {
                              setState(() {
                                selectedPaymentMethod = value.toString();
                              });
                            },
                          ),
                          Text(
                            'Bank Transfer',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Proxima',
                                fontSize: 14,
                                color: Grey),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border: Border.all(color: InputfiedlBorderColor),
                          borderRadius: BorderRadius.circular(8)),
                      child: Row(
                        children: [
                          Radio(
                            activeColor: GreenColor,
                            value: 'Credit/Debit Card',
                            groupValue: selectedPaymentMethod,
                            onChanged: (value) {
                              setState(() {
                                selectedPaymentMethod = value.toString();
                              });
                            },
                          ),
                          Image.asset('assets/paypal.png')
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border: Border.all(color: InputfiedlBorderColor),
                          borderRadius: BorderRadius.circular(8)),
                      child: Row(
                        children: [
                          Radio(
                            activeColor: GreenColor,
                            value: 'Credit/Debit Card',
                            groupValue: selectedPaymentMethod,
                            onChanged: (value) {
                              setState(() {
                                selectedPaymentMethod = value.toString();
                              });
                            },
                          ),
                          Text(
                            'Others Methods',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Proxima',
                                fontSize: 14,
                                color: Grey),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
          
              const SizedBox(height: 20),
              // Billing Address Section
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Billing Address',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Proxima',
                          fontSize: 16,
                          color: BlackColor),
                    ),
                    Text(
                      'Add New',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Proxima',
                          fontSize: 14,
                          color: GreenColor),
                    ),
                  ],
                ),
              ),
          
              const SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: InputfiedlBorderColor)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Checkbox(
                                  value: isCheck,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isChecked = value ?? false;
                                    });
                                  },
                                  checkColor: Colors.white,
                                  activeColor: GreenColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                Text(
                                  'My Address',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Proxima',
                                      fontSize: 14,
                                      color: BlackColor),
                                ),
                              ],
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: OffwhiteColor),
                              child: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Text(
                                  'Default', // Display the provided text
                                  style: TextStyle(
                                    fontFamily: 'Proxima',
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color:
                                        Grey, // Use the color from utils.dart
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 14.0),
                          child: Text(
                            'Metrotech Center, NY 11201, USA',
                            style: TextStyle(
                                fontFamily: 'Proxima',
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Grey),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Remove', // Display the provided text
                      style: TextStyle(
                        fontFamily: 'Proxima',
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: RedColor, // Use the color from utils.dart
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              CustomTextField(
                  Asterik: ' *',
                  text: 'Full Name', hintText: 'Zaire Donin'),
              const SizedBox(height: 10),
              CustomTextField(
                  Asterik: ' *',
                  text: 'Street Address', hintText: 'Enter address details'),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: [
                        Text(
                          'City', // Displaying the label for the TextField
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Proxima',
                            fontSize: 14,
                            color:
                            BlackColor, // Assuming BlackColor is defined in your utils.dart
                          ),
                        ),
                        Text(
                          ' *',
                          // Displaying the label for the TextField
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Proxima',
                            fontSize: 14,
                            color:
                            RedColor, // Assuming BlackColor is defined in your utils.dart
                          ),
          
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    // City Dropdown (Dependent on State)
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: InputfiedlBorderColor)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: DropdownButton<String>(
                          borderRadius: BorderRadius.circular(8),
                          underline: Container(
                            color: Colors.transparent,
                          ),
                          dropdownColor: WhiteColor,
                          isExpanded: true,
                          hint: Text(
                            'Select City',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Grey),
                          ),
                          value: selectedCity,
                          icon: Icon(Icons.keyboard_arrow_down_outlined, color: Grey,),
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedCity = newValue;
                            });
                          },
                          items: selectedState == null
                              ? []
                              : stateCityMap[selectedState!]!
                              .map<DropdownMenuItem<String>>(
                                  (String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(
                                    value,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: Grey),
                                  ),
                                );
                              }).toList(),
                        ),
                      ),
                    ),
          
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Text(
                          'State ', // Displaying the label for the TextField
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Proxima',
                            fontSize: 14,
                            color:
                                BlackColor, // Assuming BlackColor is defined in your utils.dart
                          ),
                        ),
                        Text(
                          '*',
                          // Displaying the label for the TextField
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Proxima',
                            fontSize: 14,
                            color:
                            RedColor, // Assuming BlackColor is defined in your utils.dart
                          ),
          
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    // State Dropdown (Dependent on Country)
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: InputfiedlBorderColor)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: DropdownButton<String>(
                          dropdownColor: WhiteColor,
                          borderRadius: BorderRadius.circular(8),
                          underline: Container(
                            color: Colors.transparent,
                          ),
                          isExpanded: true,
                          icon: Icon(Icons.keyboard_arrow_down_outlined, color: Grey,),
                          hint: Text(
                            'Select State',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Grey),
                          ),
                          value: selectedState,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedState = newValue;
                              selectedCity =
                                  null; // Reset city when state changes
                            });
                          },
                          items: selectedCountry == null
                              ? []
                              : countryStateMap[selectedCountry!]!
                                  .map<DropdownMenuItem<String>>(
                                      (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(
                                      value,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                          color: Grey),
                                    ),
                                  );
                                }).toList(),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Text(
                          'Province Zip/Postal Code ',
                          // Displaying the label for the TextField
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Proxima',
                            fontSize: 14,
                            color:
                                BlackColor, // Assuming BlackColor is defined in your utils.dart
                          ),
          
                        ),
                        Text(
                          '*',
                          // Displaying the label for the TextField
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Proxima',
                            fontSize: 14,
                            color:
                            RedColor, // Assuming BlackColor is defined in your utils.dart
                          ),
          
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      // obscureText should work only for single line
          
                      obscureText: false, // Works only when maxLines is 1
                      style: TextStyle(
                        color: Grey,
                        fontFamily: 'Proxima',
                        // Assuming Grey is defined in your utils.dart
                        fontSize: 16,
                      ),
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 15.0),
          
                        prefixIconColor: Grey,
                        hintText: 'Enter Code',
                        // Use the required hintText here
                        hintStyle: TextStyle(
                          fontFamily: 'Proxima',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color:
                              Grey, // Assuming Grey is defined in your utils.dart
                        ),
          
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: InputfiedlBorderColor, width: 1),
                          // Assuming InputfiedlBorderColor is defined in your utils.dart
                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: InputfiedlBorderColor, width: 1),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.red, width: 1),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: InputfiedlBorderColor, width: 1),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
          
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Text(
                          'Country', // Displaying the label for the TextField
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Proxima',
                            fontSize: 14,
                            color:
                            BlackColor, // Assuming BlackColor is defined in your utils.dart
                          ),
                        ),
                        Text(
                          ' *',
                          // Displaying the label for the TextField
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Proxima',
                            fontSize: 14,
                            color:
                            RedColor, // Assuming BlackColor is defined in your utils.dart
                          ),
          
                        ),
          
                      ],
                    ),
                    const SizedBox(height: 10),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: InputfiedlBorderColor)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: DropdownButton<String>(
                          dropdownColor: WhiteColor,
                          borderRadius: BorderRadius.circular(8),
                          underline: Container(
                            color: Colors.transparent,
                          ),
                          icon: Icon(Icons.keyboard_arrow_down_outlined, color: Grey,),
                          isExpanded: true,
                          hint: Text(
                            'Select Country',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Grey),
                          ),
                          value: selectedCountry,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedCountry = newValue;
                              selectedState =
                              null; // Reset state and city when country changes
                              selectedCity = null;
                            });
                          },
                          items: countryStateMap.keys
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Grey),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
          
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/secure.png'),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Payment details are encrypted and secure.',
                    style: TextStyle(
                        fontFamily: 'Proxima',
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: BlackColor),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              // Pay Now Button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    CustomButton(text: 'Pay Now', onTap: () {}),
                    const SizedBox(height: 10),
                    InkWell(
                      onTap: () {}, // Button tap event
                      child: Container(
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: OffwhiteColor, // Use the color from utils.dart
                        ),
                        child: Center(
                          child: Text(
                            'Save', // Display the provided text
                            style: TextStyle(
                              fontFamily: 'Proxima',
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color:
                                  BlackColor, // Use the color from utils.dart
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    InkWell(
                      onTap: () {
                        Get.back();
                      }, // Button tap event
                      child: Container(
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: OffwhiteColor, // Use the color from utils.dart
                        ),
                        child: Center(
                          child: Text(
                            'Cancel', // Display the provided text
                            style: TextStyle(
                              fontFamily: 'Proxima',
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: RedColor, // Use the color from utils.dart
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  // Credit/Debit Card Form
  Widget _buildCardForm() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Card Number *',

                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 15.0),

                    prefixIconColor: Grey,

                    // Use the required hintText here
                    hintStyle: TextStyle(
                      fontFamily: 'Proxima',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color:
                          Grey, // Assuming Grey is defined in your utils.dart
                    ),

                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: InputfiedlBorderColor, width: 1),
                      // Assuming InputfiedlBorderColor is defined in your utils.dart
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: InputfiedlBorderColor, width: 1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.red, width: 1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: InputfiedlBorderColor, width: 1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              SizedBox(
                width: MediaQuery.sizeOf(context).width * .35,
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 15.0),

                    prefixIconColor: Grey,
                    hintText: 'Expiration Date *',
                    // Use the required hintText here
                    hintStyle: TextStyle(
                      fontFamily: 'Proxima',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color:
                          Grey, // Assuming Grey is defined in your utils.dart
                    ),

                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: InputfiedlBorderColor, width: 1),
                      // Assuming InputfiedlBorderColor is defined in your utils.dart
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: InputfiedlBorderColor, width: 1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.red, width: 1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: InputfiedlBorderColor, width: 1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Cardholder Name *',

                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 15.0),

                    prefixIconColor: Grey,

                    // Use the required hintText here
                    hintStyle: TextStyle(
                      fontFamily: 'Proxima',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color:
                          Grey, // Assuming Grey is defined in your utils.dart
                    ),

                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: InputfiedlBorderColor, width: 1),
                      // Assuming InputfiedlBorderColor is defined in your utils.dart
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: InputfiedlBorderColor, width: 1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.red, width: 1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: InputfiedlBorderColor, width: 1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              SizedBox(
                width: MediaQuery.sizeOf(context).width * .35,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'CVV *',

                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 15.0),

                    prefixIconColor: Grey,

                    // Use the required hintText here
                    hintStyle: TextStyle(
                      fontFamily: 'Proxima',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color:
                          Grey, // Assuming Grey is defined in your utils.dart
                    ),

                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: InputfiedlBorderColor, width: 1),
                      // Assuming InputfiedlBorderColor is defined in your utils.dart
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: InputfiedlBorderColor, width: 1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.red, width: 1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: InputfiedlBorderColor, width: 1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
