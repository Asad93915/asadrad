// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
//
// class PayPall extends StatefulWidget {
//   @override
//   _PayPallState createState() => _PayPallState();
// }
//
// class _PayPallState extends State<PayPall> {
//   bool radioChangeState=true;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text("ASAD"),
//       ),
//       body:  Padding(
//         padding: const EdgeInsets.only(left:10.0,right: 10.0,top: 10.0),
//         child: Container(
//           height: 200.0,
//           child: Card(
//             semanticContainer: true,
//             child: Column(
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//
//                     CupertinoSwitch(
//                         value: radioChangeState,
//                         onChanged: (bool value) {
//                           setState(() {
//                             radioChangeState = value;
//                           });
//                         },
//
//                       ),
//     // onTap: () {
//     // setState(() {
//     // lights1 = !lights1;
//     // });
//
//                     if(radioChangeState==true)
//                       Expanded(child: Padding(
//                         padding: const EdgeInsets.symmetric(vertical: 10.0),
//                         child: Text(("I'm using seedForme with a for_profit business logo Amount: \$60/month unless subscription paused by you.")),
//                       )),
//                     if(radioChangeState==false)
//                       Expanded(child: Padding(
//                         padding: const EdgeInsets.symmetric(vertical: 10.0),
//                         child: Text(("I'm using seedForme with a for_profit business logo Amount: \$0/month unless subscription paused by you.")),
//                       )),
//                   ],
//                 ),
//
//               PaymentRadio(),
//
//               ],
//             ),
//           ),
//         ),
//       ),
//
//     );
//         // onTap: () {
//         //   setState(() {
//         //     lights1 = !lights1;
//         //   });
//
//   }
// }
//
// class PaymentRadio extends StatefulWidget {
//   @override
//   _PaymentRadioState createState() => _PaymentRadioState();
// }
//
// class _PaymentRadioState extends State<PaymentRadio> {
//   String colorGroupValue = '';
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Row(
//           children: [
//             Radio(
//                 value: 'Credit Card',
//                 groupValue: colorGroupValue,
//                 onChanged: (val) {
//                   colorGroupValue = val;
//                   setState(() {});
//                 }),
//             Text(
//               'Credit Card ',
//               style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold)
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 15.0),
//               child: Row(children: [
//                 Image.asset(
//                   'Images/pay.png',
//                   height: 50.0,
//                   width: 50.0 ,
//                 ),
//                 SizedBox(width: 10.0,),
//                 Image.asset(
//                   'Images/mastercardd.jpeg',
//                   height: 50.0,
//                   width: 50.0 ,
//                 ),
//                 SizedBox(width: 10.0,),
//                 Image.asset(
//                   'Images/visa.png',
//                   height: 50.0,
//                   width: 50.0 ,
//                 ),
//               ],),
//             )
//
//           ],
//         ),
//         Row(
//           children: [
//             Radio(
//                 value: 'Pay',
//                 groupValue: colorGroupValue,
//                 onChanged: (val) {
//                   colorGroupValue = val;
//                   setState(() {});
//                 }),
//             Image.asset(
//               'Images/paypall.png',
//               height: 20,
//               width: 20,
//             ),
//             RichText(
//                 text: TextSpan(
//                   text: 'Pay',style: TextStyle(color: Color(0xFF324b88),fontSize: 18.0,fontWeight: FontWeight.bold),
//                   children: [
//                     TextSpan(
//                       text: 'Pal',
//                       style: TextStyle(color: Color(0xFF5dc5f2),fontSize: 18.0,fontWeight: FontWeight.bold)
//                     )
//                   ]
//                 )
//             )
//     ]),
//        ]
//     );
//
//   }
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

class Paypal extends StatefulWidget {

  @override
  _PaypalState createState() => _PaypalState();
}

class _PaypalState extends State<Paypal> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(onPressed: (){
              return buildShowDialog(context);
            },
                child: Text("Show Dialog")),
          ),
        ],
      )
    );
  }
  Future buildShowDialog(BuildContext context) {

    String colorGroupValue = '';

    var email = "tony@starkindustries.com";
    bool emailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch("tony@starkindustries.com");

    // GlobalKey <FormState> formkey = GlobalKey<FormState>();
    //
    // void Validate () {
    //   if (formkey.currentState.validate()) {
    //     print('ok');
    //   }
    // }
    TextEditingController _controller=TextEditingController();


    return showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                30.0,
              ),
            ),
            child:Container(
              color: Color(0xFFf2f2f2),
              width: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Align(
                        alignment: Alignment.topRight,
                          child: IconButton(icon: Icon(CupertinoIcons.clear,), onPressed: (){
                            Navigator.pop(context);
                          })),
                      Center(

                          child: Text(
                            "Thank you for the opportunity to serve.\nYour monthly subscription is \$10.",
                            style: TextStyle(
                                color: Color(0xFF7595959),
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold),textAlign: TextAlign.center,
                          )),
                      Padding(
                          padding:
                          const EdgeInsets.only(left: 20.0, right: 20.0, top: 30.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                " Email",
                                style: TextStyle(
                                    color: Color(0xFF727272),
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 13.0,
                              ),
                              TextFormField(
                                autovalidateMode: AutovalidateMode.always, validator: (input) => input.isValidEmail() ? null : "Check your email",
                                // validator: (value){
                                //   if(value.isEmpty){
                                //     return 'Field can not be Empty';
                                //   }
                                // },
                                style: TextStyle(color: Color(0xFF727272)),
                                cursorColor: Color(0xFF7f7f7f),
                                decoration: InputDecoration(
                                    border:  OutlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 1.5,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    fillColor: Colors.white,
                                    hintStyle: TextStyle(color: Color(0xFF7f7f7f)),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFFdedede),
                                        width: 1.5,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFFdedede),
                                        width: 1.5,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    )),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                " Card information",
                                style: TextStyle(
                                    color: Color(0xFF727272),
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 5.0,),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Color(0xFFdedede), width: 1.8),
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(12.0)
                                  ),
                                ),

                                child: Column(
                                  children: [
                                    TextFormField(

                                      // inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                                      keyboardType: TextInputType.number,

                                      // ignore: deprecated_member_use
                                      // maxLengthEnforced: true,


                                      style: TextStyle(color: Color(0xFF727272)),
                                      textAlign: TextAlign.start,
                                      obscureText: false,
                                      cursorColor: Color(0xFF7f7f7f),
                                      decoration: InputDecoration(


                                        contentPadding:
                                        EdgeInsets.only(left: 8.0, top: 18.0),
                                        //Change this value to custom as you like
                                        hintText: '1234 1234 1234 ',
                                        // hintStyle: TextStyle(fontSize: 14.0),
                                        border: InputBorder.none,
                                        fillColor: Colors.white,
                                        suffixIcon: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Container(
                                            height: 38.0,
                                            width: 100.0,
                                            child: Row(
                                              children: [
                                                Image.asset(
                                                  'Images/visa.png',
                                                  height: 20,
                                                  width: 20,
                                                  fit: BoxFit.fill,
                                                ),
                                                SizedBox(
                                                  width: 3.0,
                                                ),
                                                Image.asset(
                                                  'Images/mastercard.png',
                                                  height: 20,
                                                  width: 20,
                                                  fit: BoxFit.fill,
                                                ),
                                                SizedBox(
                                                  width: 3.0,
                                                ),
                                                Image.asset(
                                                  'Images/ae.jpeg',
                                                  height: 20,
                                                  width: 20,
                                                  fit: BoxFit.fill,
                                                ),
                                                SizedBox(
                                                  width: 3.0,
                                                ),
                                                Image.asset(
                                                  'Images/up.jpeg',
                                                  height: 20,
                                                  width: 20,
                                                  fit: BoxFit.fill,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      color: Colors.black12,
                                      height: 1.0,
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          flex: 1,
                                          child: Padding(
                                            padding:
                                            EdgeInsets.only(left: 5.0, right: 5.0),
                                            child: TextFormField(
                                              // maxLength: 5,
                                              controller: _controller,
                                              onChanged: (value) {
                                                if(value.length == 2) _controller.text += "/"; //<-- Automatically show a '/' after dd
                                                var donation;
                                                donation.date = value;
                                              },
                                              keyboardType:   TextInputType.number,
                                              inputFormatters: [
                                                // DecimalTextInputFormatter()
                                                // getFormatedDate('yyyy-MM-dd '),
                                                // todayDate()


                                              ],
                                              style: TextStyle(color: Color(0xFF727272)),
                                              cursorColor: Color(0xff7f7f7f),
                                              decoration: InputDecoration(
                                                contentPadding:
                                                EdgeInsets.only(left: 8.0, top: 5.0),
                                                hintText: 'MM / YY',
                                                border: InputBorder.none,
                                                fillColor: Colors.white,


                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 0.1,
                                          height: 60.0,
                                          color: Color(0xFF727272),
                                        ),
                                        Expanded(
                                            flex: 1,
                                            child: Padding(
                                              padding:
                                              EdgeInsets.only(left: 5.0, right: 5.0),
                                              child: TextFormField(
                                                keyboardType: TextInputType.number,
                                                style: TextStyle(color: Color(0xFF727272)),
                                                cursorColor: Color(0xFF727272),
                                                decoration: InputDecoration(
                                                  contentPadding: EdgeInsets.only(
                                                      left: 8.0, top: 15.0),
                                                  hintText: 'CVC',
                                                  border: InputBorder.none,
                                                  fillColor: Colors.white,
                                                  suffixIcon: Image.asset(
                                                    'Images/cvc.png',
                                                    height: 20,
                                                    width: 20,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                              ),
                                            )),
                                      ],
                                    ),

                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 18.0,
                              ),
                              Text(
                                " Name On Card",
                                style: TextStyle(
                                    color: Color(0xFF727272),
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              TextFormField(
                                style: TextStyle(color: Color(0xFF727272)),
                                cursorColor: Color(0xFF727272),
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    fillColor: Colors.white,
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFFdedede),
                                        width: 1.5,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFFdedede),
                                        width: 1.5,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    )),
                              ),
                              SizedBox(height: 20.0,),

                              BillingAdress(),
                            ],
                          )
                      ),


                    ]),
              ),
            ),
          );
        });
  }


}
class BillingAdress extends StatefulWidget {
  @override
  _BillingAdressState createState() => _BillingAdressState();
}

class _BillingAdressState extends State<BillingAdress> {
  var  _countries=["United States", "Canada", "Afghanistan", "Albania", "Algeria", "American Samoa", "Andorra", "Angola", "Anguilla", "Antarctica", "Antigua and/or Barbuda", "Argentina", "Armenia", "Aruba", "Australia", "Austria", "Azerbaijan", "Bahamas", "Bahrain", "Bangladesh", "Barbados", "Belarus", "Belgium", "Belize", "Benin", "Bermuda", "Bhutan", "Bolivia", "Bosnia and Herzegovina", "Botswana", "Bouvet Island", "Brazil", "British Indian Ocean Territory", "Brunei Darussalam", "Bulgaria", "Burkina Faso", "Burundi", "Cambodia", "Cameroon", "Cape Verde", "Cayman Islands", "Central African Republic", "Chad", "Chile", "China", "Christmas Island", "Cocos (Keeling) Islands", "Colombia", "Comoros", "Congo", "Cook Islands", "Costa Rica", "Croatia (Hrvatska)", "Cuba", "Cyprus", "Czech Republic", "Denmark", "Djibouti", "Dominica", "Dominican Republic", "East Timor", "Ecudaor", "Egypt", "El Salvador", "Equatorial Guinea", "Eritrea", "Estonia", "Ethiopia", "Falkland Islands (Malvinas)", "Faroe Islands", "Fiji", "Finland", "France", "France, Metropolitan", "French Guiana", "French Polynesia", "French Southern Territories", "Gabon", "Gambia", "Georgia", "Germany", "Ghana", "Gibraltar", "Greece", "Greenland", "Grenada", "Guadeloupe", "Guam", "Guatemala", "Guinea", "Guinea-Bissau", "Guyana", "Haiti", "Heard and Mc Donald Islands", "Honduras", "Hong Kong", "Hungary", "Iceland", "India", "Indonesia", "Iran (Islamic Republic of)", "Iraq", "Ireland", "Israel", "Italy", "Ivory Coast", "Jamaica", "Japan", "Jordan", "Kazakhstan", "Kenya", "Kiribati", "Korea, Democratic People's Republic of", "Korea, Republic of", "Kosovo", "Kuwait", "Kyrgyzstan", "Lao People's Democratic Republic", "Latvia", "Lebanon", "Lesotho", "Liberia", "Libyan Arab Jamahiriya", "Liechtenstein", "Lithuania", "Luxembourg", "Macau", "Macedonia", "Madagascar", "Malawi", "Malaysia", "Maldives", "Mali", "Malta", "Marshall Islands", "Martinique", "Mauritania", "Mauritius", "Mayotte", "Mexico", "Micronesia, Federated States of", "Moldova, Republic of", "Monaco", "Mongolia", "Montserrat", "Morocco", "Mozambique", "Myanmar", "Namibia", "Nauru", "Nepal", "Netherlands", "Netherlands Antilles", "New Caledonia", "New Zealand", "Nicaragua", "Niger", "Nigeria", "Niue", "Norfork Island", "Northern Mariana Islands", "Norway", "Oman", "Pakistan", "Palau", "Panama", "Papua New Guinea", "Paraguay", "Peru", "Philippines", "Pitcairn", "Poland", "Portugal", "Puerto Rico", "Qatar", "Reunion", "Romania", "Russian Federation", "Rwanda", "Saint Kitts and Nevis", "Saint Lucia", "Saint Vincent and the Grenadines", "Samoa", "San Marino", "Sao Tome and Principe", "Saudi Arabia", "Senegal", "Seychelles", "Sierra Leone", "Singapore", "Slovakia", "Slovenia", "Solomon Islands", "Somalia", "South Africa", "South Georgia South Sandwich Islands", "South Sudan", "Spain", "Sri Lanka", "St. Helena", "St. Pierre and Miquelon", "Sudan", "Suriname", "Svalbarn and Jan Mayen Islands", "Swaziland", "Sweden", "Switzerland", "Syrian Arab Republic", "Taiwan", "Tajikistan", "Tanzania, United Republic of", "Thailand", "Togo", "Tokelau", "Tonga", "Trinidad and Tobago", "Tunisia", "Turkey", "Turkmenistan", "Turks and Caicos Islands", "Tuvalu", "Uganda", "Ukraine", "United Arab Emirates", "United Kingdom", "United States minor outlying islands", "Uruguay", "Uzbekistan", "Vanuatu", "Vatican City State", "Venezuela", "Vietnam", "Virigan Islands (British)", "Virgin Islands (U.S.)", "Wallis and Futuna Islands", "Western Sahara", "Yemen", "Yugoslavia", "Zaire", "Zambia", "Zimbabwe"];
  int _value = 1;
  String secondDropDownValue = 'Albania';
  bool radioChangeState=true;
  bool radioChangeState2=true;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          " Billing address",
          style: TextStyle(
              color: Color(0xFF7f7f7f),
              fontSize: 14.0,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(height:10.0),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: Color(0xFFdedede), width: 1.8),
              borderRadius: BorderRadius.all(
                  Radius.circular(12.0)
              )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 200.0,
                child: DropdownButton(
                  iconSize: 30.0,
                      icon: Icon(Icons.keyboard_arrow_down),
    isExpanded: true,
    value: secondDropDownValue,

    style: TextStyle(
     color: Color(0xFF4b4b4b),fontSize: 16.0),
                  underline: SizedBox(),
    items: _countries.map((countryName) {
    return DropdownMenuItem(
    value: countryName,
    child: Text(countryName),
    );
    }).toList(),
    onChanged: (String newValue) {
    setState(() {
    secondDropDownValue = newValue;
    });
    },
    ),
              ),
              Divider(
                color: Colors.black12,
                height: 3.0,
              ),
              Padding(
                padding:
                EdgeInsets.only(left: 5.0, right: 5.0),
                child: TextFormField(
                  style: TextStyle(color: Color(0xFF7f7f7f)),
                  cursorColor: Color(0xFF7f7f7f),
                  decoration: InputDecoration(
                    contentPadding:
                    EdgeInsets.only(left: 8.0, top: 5.0),
                    hintText: 'Address',
                    border: InputBorder.none,
                    fillColor: Colors.white,
                  ),
                ),
              ),

            ],
          ),
        ),
        SizedBox(height: 20.0,),
        Text('Enter address manually',style: TextStyle(color: Color(0xFFb1b1b1)),),
        Container(height: 1.0,color: Color(0xFFb1b1b1),width: 160.0,),

        SizedBox(height: 15.0,),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CupertinoSwitch(
              activeColor: Color(0xFf6ac0e9),
              value: radioChangeState,
              onChanged: (bool value) {
                setState(() {
                  radioChangeState = value;
                });
              },

            ),
            // onTap: () {
            // setState(() {
            // lights1 = !lights1;
            // });

            if(radioChangeState==true)
              Expanded(child: Padding(
                  padding: const EdgeInsets.only(top: 4.0,left: 8.0,right: 8.0),
                  child: RichText(
                    text: TextSpan(
                        text: 'AUTOMATIC MONTHLY PAYMENT IS ON ',style: TextStyle(color: Color(0xFF5b5b5b,),fontSize: 16.0,fontWeight: FontWeight.bold),
                        children:[
                          TextSpan(
                            text: 'Please leave on to avoid disconnections & keep ',
                            style: TextStyle(
                                color: Color(0xFF979797),fontWeight: FontWeight.normal,fontSize: 16.0,
                            ),
                          ),
                          TextSpan(
                            text: 'costs low. 1-888-SEED4ME for auto pay questions.',
                            style: TextStyle(
                                color: Color(0xFF979797),
                                fontWeight: FontWeight.normal,
                              fontSize: 16.0
                            ),
                          )
                        ]
                    ),
                  )
              )),

          ],),
        SizedBox(height: 10.0,),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CupertinoSwitch(
                activeColor: Color(0xFF6ac0e9),
                value: radioChangeState2, onChanged: (bool value){
              setState(() {
                radioChangeState2=value;
              });
            }),
            if(radioChangeState2==true)
              Expanded(
                child: Padding(
                padding: const EdgeInsets.only(top: 4.0,left: 8.0,right: 8.0),
                  child: RichText(
                      text:TextSpan(
                          text: "I agree to ",style: TextStyle(
                        color:  Color(0xFF777777),fontSize: 16.0,
                      ),
                          children: [
                            TextSpan(
                                text: 'Terms & Conditions, Automatic Renewal (Continuous Service Offer) Terms, Policies For Cancellation, Cookies & Privacy, & How To Cancel & Retain Info',
                                style:TextStyle(color: Color(0xFF7690e6),fontSize: 16.0)
                            )
                          ]
                      )
                  ),
                ),
              )


          ],
        ),
        SizedBox(height: 30.0,),
        Center(
          child: Column(
            children: [
              Container(
                height: 60.0,
                width: 330.0,
                child: ElevatedButton(
                    onPressed: (){
                      // Validate();
                    },
                    style: ElevatedButton.styleFrom(
                        primary:Color(0xFF486ce4)
                    ),
                    child: Text("Submit",style: TextStyle(color: Colors.white,fontSize: 25.0,fontWeight: FontWeight.bold),)),

              ),
              Padding(
                padding: const EdgeInsets.only(top: 25.0,bottom: 25.0),
                child: Center(child: Text('OR',style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold,color: Color(0xFF595959)),)),
              ),
              Container(
                height: 60.0,
                width: 330.0,
                child: ElevatedButton(
                    onPressed: (){
                      // Validate();
                    },
                    style: ElevatedButton.styleFrom(
                        primary:Color(0xFFd9d9d9)
                    ),
                    child: Text("Pay With PayPal Instead",style: TextStyle(color: Color(0xFF595959),fontSize: 20.0,fontWeight: FontWeight.bold),)),

              ),
              SizedBox(height: 20.0,),
            ],
          ),
        ),
      ],
    );
  }
}





extension EmailValidator on String {
  bool isValidEmail() {
    return RegExp(
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this);
  }
}

class DecimalTextInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    final regEx = RegExp(r"^\d*\.?\d*");
    String newString = regEx.stringMatch(newValue.text) ?? "";
    return newString == newValue.text ? newValue : oldValue;
  }
}
getFormatedDate(_date) {
  var inputFormat = DateFormat('yyyy-MM-dd HH:mm');
  var inputDate = inputFormat.parse(_date);
  var outputFormat = DateFormat('dd/MM/yyyy');
  return outputFormat.format(inputDate);
}
todayDate() {
  var now = new DateTime.now();
  var formatter = new DateFormat('dd-MM-yyyy');
  String formattedTime = DateFormat('kk:mm:a').format(now);
  String formattedDate = formatter.format(now);
  print(formattedTime);
  print(formattedDate);
}

var stringList =  DateTime.now().toIso8601String().split(new RegExp(r"[T\.]"));
var formatedDate = "${stringList[0]} ${stringList[1]}";