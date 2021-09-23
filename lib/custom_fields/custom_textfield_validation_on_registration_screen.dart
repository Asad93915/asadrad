import 'dart:convert';
import 'dart:io';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

import 'package:provider/provider.dart';
import 'dart:developer' as Dev;
import 'package:signin/configs/sigin_colors.dart';
import 'package:signin/configs/sigin_strings.dart';
import 'package:signin/configs/sigin_text_style.dart';
import 'package:url_launcher/url_launcher.dart';

import 'help_button.dart';
import 'my_custom_textfield.dart';

class RegisterUserScreen extends StatefulWidget {
  @override
  _RegisterUserScreenState createState() => _RegisterUserScreenState();
}

class _RegisterUserScreenState extends State<RegisterUserScreen> {
  String selectedMission = '';
  String doYouHoldAnyOfTheseTitle = '';
  String whatIsYourDayJob = '';
  String howOftenDoYouMissionMinistry = '';

  @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   getMissionTypesListService(context);
  // }

  int _missionMissionaryIndex;

  TextEditingController _missionMissionaryCont = TextEditingController();
  TextEditingController _missionBudgetCont = TextEditingController();
  TextEditingController _charityNameCont = TextEditingController();
  TextEditingController _employerIdentificationCont = TextEditingController();
  TextEditingController _emailCont = TextEditingController();
  TextEditingController _passwordCont = TextEditingController();
  TextEditingController _repeatPasswordCont = TextEditingController();
  TextEditingController _firstNameCont = TextEditingController();
  TextEditingController _lastNameCont = TextEditingController();
  TextEditingController _phoneCont = TextEditingController();
  FocusNode _missionMissionary = FocusNode();
  FocusNode _missionBudget = FocusNode();
  FocusNode _charityName = FocusNode();
  FocusNode _employerIdentification = FocusNode();
  FocusNode _email = FocusNode();
  FocusNode _password = FocusNode();
  FocusNode _repeatPassword = FocusNode();
  FocusNode _firstName = FocusNode();
  FocusNode _lastName = FocusNode();
  FocusNode _phone = FocusNode();

  static List<String> _doYouHoldAnyOfTheseTitle() {
    return [
      'Founder',
      'Board Of Directors',
      'Officer (Pres., VP, etc)',
      'Administrator',
      // 'Member'
      'None Of These',
    ];
  }

  static List<String> _whatIsYourDayJob() {
    return [
      'Actor',
      'Accountant',
      'Administrator',
      'Architect',
      'Assistant',
      'Apostolic Overseer',
      'Carpenter',
      'Chef',
      'Coach',
      'Cook',
      'Custodian',
      'Designer',
      'Dietitian',
      'Economist',
      'Electrician',
      'Engineer',
      'Executive Pastor',
      'Financial/Inv. Adviser',
      'Firefighter',
      'Foot Washer',
      'Graphic Design',
      'Hairdresser',
      'Homemaker',
      'Insurance Agent',
      'Judge',
      'Lawyer',
      'Law Enforcement',
      'Librarian',
      'Management',
      'Mechanic',
      'Media Productions',
      'Medical Doctor',
      'Medical Health ',
      'Mental Health ',
      'Minister',
      'Missionary ',
      'Nurse',
      'Optician',
      'Pastor/Priest',
      'Pilot',
      'Plumber',
      'Pharmacist',
      'Physical Therapy',
      'Police Officer',
      'Programmer',
      'Psychologist',
      'Retired',
      'Scientist',
      'Secretary',
      'Teacher',
      'Business Owner', //Open textField from here
      'Independent Contractor',
      'Other',
    ];
  }

  String imagePath = '';
  final picker = ImagePicker();

  static List<String> _howOftenDoYouMissionMinistry() {
    return [
      'Part time',
      'Full time',
      'Occasional trip',
      'First trip',
    ];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'AppFont2'),
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xfff8f7f5),
        appBar: AppBar(
          title: Text('New Registration'),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          padding: EdgeInsets.symmetric(vertical: 12.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              border: Border.all(width: 0.8, color: Color(0xffd2d1cf))),
          child: SingleChildScrollView(
            child: Column(
              children: [
                _pageHeadingArea(),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                    margin: EdgeInsets.only(
                        left: 16.0, right: 16.0, top: 16.0, bottom: 16.0),
                    padding: EdgeInsets.only(
                        left: 16.0, right: 16.0, top: 16.0, bottom: 16.0),
                    decoration: BoxDecoration(
                        color: Color(0xfff0f0f0),
                        borderRadius: BorderRadius.circular(15.0),
                        border:
                        Border.all(width: 0.8, color: Color(0xffd2d1cf))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //   children: [
                        //     Text(
                        //       missionMinistryType,
                        //       style: labelTextStyle,
                        //     ),
                        //     HelpButton(),
                        //   ],
                        // ),
                        // SizedBox(
                        //   height: 10.0,
                        // ),

                        SizedBox(
                          height: 18.0,
                        ),
                        CustomFields(
                          labelText: missionMinistryTypeInCityAndCountry,
                          // hintText: '',
                          // type: TextInputType.emailAddress,
                          controller: _missionMissionaryCont,
                          focusNode: _missionMissionary,
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              missionBudget,
                              style: labelTextStyle,
                            ),
                            HelpButton(),
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 24.0),
                          child: TextField(
                            controller: _missionBudgetCont,
                            focusNode: _missionBudget,
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(11),
                            ],
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(
                                  left: 16.0,
                                  right: 16.0,
                                  top: 12.0,
                                  bottom: 12.0),
                              fillColor: Colors.white,
                              filled: true,
                              border: InputBorder.none,
                              hintText: "",
                              prefixText: '\$',
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                  BorderSide(color: Color(0xFFdeddd9)),
                                  borderRadius: BorderRadius.circular(10.0)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                  BorderSide(color: Color(0xFFdeddd9)),
                                  borderRadius: BorderRadius.circular(10.0)),
                            ),
                          ),
                        ),
                        _searchCharityArea(),
                        SizedBox(
                          height: 15.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              charityName,
                              style: labelTextStyle,
                            ),
                            Spacer(),
                            HelpButton(),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 24.0),
                          child: CustomFields(
                            controller: _charityNameCont,
                            focusNode: _charityName,
                          ),
                        ),
                        Text(
                          enterCharityNameManually,
                          style: charityFixedTextStyle,
                        ),
                        // CustomFields(
                        //   labelText: "Email",
                        //   hintText: '',
                        //   type: TextInputType.text,
                        //   controller: _emailCont1,
                        //   focusNode: FocusNode(),
                        // ),
                        // CustomFields(
                        //   labelText: "Email",
                        //   hintText: '',
                        //   type: TextInputType.text,
                        //   controller: _emailCont2,
                        //   focusNode: emailF2,
                        // ),
                        CustomFields(
                          labelText: email,
                          hintText: '',
                          type: TextInputType.emailAddress,
                          controller: _emailCont,
                          focusNode: _email,
                        ),
                        CustomFields(
                          labelText: password,
                          hintText: '',
                          type: TextInputType.visiblePassword,
                          controller: _passwordCont,
                          focusNode: _password,
                        ),
                        CustomFields(
                          labelText: repeatPassword,
                          hintText: '',
                          type: TextInputType.visiblePassword,
                          controller: _repeatPasswordCont,
                          focusNode: _repeatPassword,
                        ),
                        CustomFields(
                          labelText: firstName,
                          hintText: '',
                          type: TextInputType.text,
                          controller: _firstNameCont,
                          focusNode: _firstName,
                        ),
                        CustomFields(
                          labelText: lastName,
                          hintText: '',
                          type: TextInputType.text,
                          controller: _lastNameCont,
                          focusNode: _lastName,
                        ),
                        CustomFields(
                          labelText: phone,
                          hintText: '',
                          type: TextInputType.number,
                          controller: _phoneCont,
                          focusNode: _phone,
                          length: 15,
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              title,
                              textAlign: TextAlign.start,
                              style: labelTextStyle,
                            )),
                        SizedBox(
                          height: 11.0,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(
                                  width: 1.5, color: dropDownBorderColor),
                              color: containerColor),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                              icon: Icon(
                                Icons.keyboard_arrow_down,
                                size: 20.0,
                              ),
                              hint: Text(
                                doYouHoldAnyOfTheseTitle,
                                style: dropDownItemStyle,
                              ),
                              isExpanded: true,
                              iconSize: 30.0,
                              style: dropDownItemStyle,
                              items: _doYouHoldAnyOfTheseTitle().map(
                                    (val) {
                                  return DropdownMenuItem<String>(
                                    value: val,
                                    child: Text(val),
                                  );
                                },
                              ).toList(),
                              onChanged: (String val) {
                                setState(
                                      () {
                                    doYouHoldAnyOfTheseTitle = val;
                                  },
                                );
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              jobStatus,
                              textAlign: TextAlign.start,
                              style: labelTextStyle,
                            )),
                        SizedBox(
                          height: 11.0,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(
                                  width: 1.5, color: dropDownBorderColor),
                              color: containerColor),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                              icon: Icon(
                                Icons.keyboard_arrow_down,
                                size: 20.0,
                              ),
                              hint: Text(
                                whatIsYourDayJob,
                                style: dropDownItemStyle,
                              ),
                              isExpanded: true,
                              iconSize: 30.0,
                              style: dropDownItemStyle,
                              items: _whatIsYourDayJob().map(
                                    (val) {
                                  return DropdownMenuItem<String>(
                                    value: val,
                                    child: Text(val),
                                  );
                                },
                              ).toList(),
                              onChanged: (String val) {
                                setState(
                                      () {
                                    whatIsYourDayJob = val;
                                  },
                                );
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              missionMinistrydo,
                              textAlign: TextAlign.start,
                              style: labelTextStyle,
                            )),
                        SizedBox(
                          height: 11.0,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(
                                  width: 1.5, color: dropDownBorderColor),
                              color: containerColor),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                              icon: Icon(
                                Icons.keyboard_arrow_down,
                                size: 20.0,
                              ),
                              hint: Text(
                                howOftenDoYouMissionMinistry,
                                style: dropDownItemStyle,
                              ),
                              isExpanded: true,
                              iconSize: 30.0,
                              style: dropDownItemStyle,
                              items: _howOftenDoYouMissionMinistry().map(
                                    (val) {
                                  return DropdownMenuItem<String>(
                                    value: val,
                                    child: Text(val),
                                  );
                                },
                              ).toList(),
                              onChanged: (String val) {
                                setState(
                                      () {
                                    howOftenDoYouMissionMinistry = val;
                                  },
                                );
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Text(
                                employerIdentification,
                                style: labelTextStyle,
                              ),
                            ),
                            HelpButton(),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 24.0),
                          child: CustomFields(
                            controller: _employerIdentificationCont,
                            focusNode: _employerIdentification,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 4.0),
                          child: Text(
                            charityId,
                            textAlign: TextAlign.justify,
                            style: charityFixedTextStyle,
                          ),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Container(
                          width: double.infinity,
                          margin: EdgeInsets.only(top: 18.0),
                          decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    color: Color(0xFFd3d3d3),
                                  ),
                                  borderRadius: BorderRadius.circular(12.0))),
                          child: Row(children: [
                            Column(
                              children: [
                                Center(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 18.0),
                                    child: Hero(
                                      tag: 'Tag',
                                      child: Container(
                                        width: 0.0,
                                        height: 0.0,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(20.0)),
                                        child: ClipOval(
                                            clipBehavior: Clip.antiAlias,
                                            child: imagePath != ''
                                                ? Image.file(File(
                                              imagePath,
                                            ))
                                                : Container()),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              width: 70.0,
                              child: Image.asset(
                                '${assetImagePath}sign_up_prof_pic.png',
                              ),
                            ),
                            Expanded(
                                child: Padding(
                                  padding:
                                  const EdgeInsets.only(left: 10.0, top: 18.0),
                                  child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      // mainAxisAlignment: MainAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          uploadPhoto,
                                          style: uploadPhotoTermAndConditionStyle,
                                        ),
                                        Container(
                                          height: 30.0,
                                          width: double.infinity,
                                          margin:
                                          EdgeInsets.only(top: 8.0, right: 8.0),
                                          child: ElevatedButton(
                                            // style: ElevatedButton.styleFrom(
                                            //
                                            //   // side: BorderSide(width: 1.0,),
                                            //   //   primary: Color(0xFF99c4ea)),
                                            //
                                            //
                                            // ),
                                            style: ButtonStyle(
                                                backgroundColor:
                                                MaterialStateProperty.all(
                                                    Color(0xFF99c4ea)),
                                                shape: MaterialStateProperty.all<
                                                    RoundedRectangleBorder>(
                                                    RoundedRectangleBorder(
                                                        borderRadius:
                                                        BorderRadius.circular(
                                                          10.0,
                                                        ),
                                                        side: BorderSide(
                                                            width: 1.0,
                                                            color: Color(
                                                                0xFF99c4ea))))),
                                            // onPressed: (){
                                            //
                                            // },
                                            onPressed: () async {
                                              final pickedfile =
                                              await picker.pickImage(
                                                  source: ImageSource.gallery);
                                              if (pickedfile != null) {
                                                File croppedFile =
                                                (await ImageCropper.cropImage(
                                                    sourcePath: pickedfile.path,
                                                    aspectRatioPresets: [
                                                      CropAspectRatioPreset
                                                          .square,
                                                      CropAspectRatioPreset
                                                          .ratio3x2,
                                                      CropAspectRatioPreset
                                                          .original,
                                                      CropAspectRatioPreset
                                                          .ratio4x3,
                                                      CropAspectRatioPreset
                                                          .ratio16x9
                                                    ],
                                                    androidUiSettings:
                                                    AndroidUiSettings(
                                                        toolbarTitle:
                                                        'Cropper',
                                                        toolbarColor: Colors
                                                            .deepOrange,
                                                        toolbarWidgetColor:
                                                        Colors.white,
                                                        initAspectRatio:
                                                        CropAspectRatioPreset
                                                            .original,
                                                        lockAspectRatio:
                                                        false),
                                                    iosUiSettings:
                                                    IOSUiSettings(
                                                      minimumAspectRatio: 1.0,
                                                    )));
                                                if (croppedFile != null) {
                                                  setState(() {
                                                    imagePath = croppedFile.path;
                                                  });
                                                }
                                              }
                                            },
                                            child: Text(selectFromDevice,
                                                style: buttonColor),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(
                                              top: 4.0, right: 6.0, bottom: 12.0),
                                          child: Row(
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  skipAddLater,
                                                  style: customFontSize,
                                                ),
                                              ),
                                              HelpButton()
                                            ],
                                          ),
                                        )
                                      ]),
                                ))
                          ]),
                        ),
                        Container(
                          width: double.infinity,
                          margin: EdgeInsets.only(top: 18.0),
                          decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    color: Color(0xFFd3d3d3),
                                  ),
                                  borderRadius: BorderRadius.circular(12.0))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.only(
                                    left: 16.0, right: 16.0, top: 8.0),
                                child: Text(
                                  termAndConditions.toUpperCase(),
                                  style: uploadPhotoTermAndConditionStyle,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                    left: 16.0, right: 0.0, top: 8.0),
                                // color: Colors.deepOrange,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 40.0,
                                      child: Image.asset(
                                        '${assetImagePath}signup_terms.png',
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Container(
                                            width: double.infinity,
                                            height: 30.0,
                                            margin: EdgeInsets.only(
                                                top: 8.0,
                                                right: 10.0,
                                                left: 10.0),
                                            child: ElevatedButton(
                                              // style: ElevatedButton.styleFrom(
                                              //
                                              //   // side: BorderSide(width: 1.0,),
                                              //   //   primary: Color(0xFF99c4ea)),
                                              //
                                              //
                                              // ),
                                              style: ButtonStyle(
                                                  backgroundColor:
                                                  MaterialStateProperty.all(
                                                      Color(0xFF99c4ea)),
                                                  shape: MaterialStateProperty.all<
                                                      RoundedRectangleBorder>(
                                                      RoundedRectangleBorder(
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(
                                                            10.0,
                                                          ),
                                                          side: BorderSide(
                                                              width: 1.0,
                                                              color: Color(
                                                                  0xFF99c4ea))))),

                                              onPressed: () {
                                                //do something
                                              },
                                              child: Text(clickToOpen,
                                                  style: buttonColor),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                    left: 16.0,
                                    right: 16.0,
                                    top: 4.0,
                                    bottom: 20.0),
                                child: Text(
                                  donNotWorry,
                                  style: customFontSize,
                                ),
                              ),
                            ],
                          ),
                        ),
                        TextButton(
                          // onPressed: () {
                          //   phone.requestFocus();
                          // },
                            child: Text("SignUp"),
                            onPressed: () async {
                              bool validateResult =
                              await _validateCompleteForm();

                              if (validateResult) {
                                PleaseWaitDialog.show(context);
                                await Future.delayed(Duration(seconds: 3));
                                PleaseWaitDialog.hide(context);
                                //
                                // Navigator.of(context).pushAndRemoveUntil(
                                //     CupertinoPageRoute(
                                //         builder: (context) => StartupScreen()),
                                //         (Route<dynamic> route) => false);
                              }
                              // Utils.showRouteDialog(
                              //   context,
                              //   DialogDecision(
                              //     title: 'ERROR'.toUpperCase(),
                              //     message: 'Fields cannot be empty',
                              //     isError: true,
                              //   ),
                              // );
                            }),
                      ],
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _pageHeadingArea() {
    return Container(
      padding: EdgeInsets.only(
        left: 12.0,
        right: 12.0,
        top: 32.0,
        bottom: 12.0,
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  signup.toUpperCase(),
                  style: signUpStyle,
                ),
                Text(
                  'Simple & Fast & Easy!'.toUpperCase(),
                  style: SimpleFastAndEasyStyle,
                ),
              ],
            ),
          ),

          ///Youtube area
          GestureDetector(
            child: Container(
              // color: AppColor.blackColor,
              height: 100.0,
              width: 110.0,
              child: Image.asset(
               'Images/signup_youtube.png',
              ),
            ),
            onTap: () async {
              const url = "https://www.youtube.com/watch?v=1raKaX61i3Q/";
              if (await canLaunch(url)) await launch(url);
            },
          ),
        ],
      ),
    );
  }

  _searchCharityArea() {
    return GestureDetector(
      child: Container(
        height: 50.0,
        width: double.infinity,
        margin: EdgeInsets.only(top: 18),
        padding: EdgeInsets.only(left: 8.0, right: 8.0, top: 4.0, bottom: 4.0),
        decoration: BoxDecoration(
          // color: AppColor.whiteColor,
          color: containerColor,
          border: Border.all(
            // color: AppColor.lightGrayColor,
            color: Color(0xFFdedede),
            width: 1.5,
          ),
          borderRadius: BorderRadius.circular(6.0),
        ),
        child: Row(
          children: [
            Container(
              height: 30.0,
              width: 30.0,
              decoration: BoxDecoration(
                // color: AppColor.lightBlackColor,
                color: Color(0xFF95c6ee),
                borderRadius: BorderRadius.circular(32.0),
              ),
              child: Center(
                child: Icon(
                  Icons.search,
                  size: 22.0,

                  // color: AppColor.blackColor,
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 8.0, right: 8.0),
                child: Text(
                  'Select your charity name from list',
                  style: SelectCharityNameListStyle,
                ),
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        // _showSearchDialog();
      },
    );
  }

  bool _validateCompleteForm() {
    // if (selectedMission.isEmpty) {
    //   ErrorDialogue('Please select the mission');
    //   return false;
    // }
     if (_missionMissionaryCont.text.isEmpty) {
      ErrorDialogue('Mission cannot be empty');
      _missionMissionary.requestFocus();
      return false;
    } else if (_missionBudgetCont.text.isEmpty) {
      ErrorDialogue("Budget cannot be empty");
      _missionBudget.requestFocus();
      return false;
    } else if (_charityNameCont.text.isEmpty) {
      ErrorDialogue("Enter Charity Name");
      _charityName.requestFocus();
      return false;
    } else if (_emailCont.text.isEmpty || !_validateEmail(_emailCont.text)) {
      ErrorDialogue('Write a valid Email address');
      _email.requestFocus();
      return false;
    } else if (_passwordCont.text.isEmpty) {
      ErrorDialogue('Password cannot be empty');
      _password.requestFocus();
      return false;
    } else if (_repeatPasswordCont.text.isEmpty) {
      ErrorDialogue('Repeat Password');
      _repeatPassword.requestFocus();
      return false;
    }

    if (_passwordCont.text != _repeatPasswordCont.text) {
      ErrorDialogue("Password does not match");
      _repeatPassword.requestFocus();
      return false;
    } else if (_firstNameCont.text.isEmpty) {
      ErrorDialogue('Enter first name');
      _firstName.requestFocus();
      return false;
    } else if (_lastNameCont.text.isEmpty) {
      ErrorDialogue('Enter last name');
      _lastName.requestFocus();
      return false;
    } else if (_phoneCont.text.isEmpty || _phoneCont.text.length < 9) {
      ErrorDialogue('Write a valid Phone');
      _phone.requestFocus();
      return false;
    } else if (doYouHoldAnyOfTheseTitle.isEmpty) {
      ErrorDialogue("Do you hold any of these titles is required");
      return false;
    } else if (whatIsYourDayJob.isEmpty) {
      ErrorDialogue('Your day job is required');
      return false;
    } else if (howOftenDoYouMissionMinistry.isEmpty) {
      ErrorDialogue("How often do you do missions or ministry is required");
      return false;
    } else if (_employerIdentificationCont.text.isEmpty) {
      ErrorDialogue("Employer Identification cannot be empty");
      _employerIdentification.requestFocus();
      return false;
    } else {
      return true;
    }
  }

  bool _validateEmail(String text) {
    if (text.isEmpty) {
      return false;
    }

    if (RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(text)) {
      return true;
    } else {
      return false;
    }
  }

  ErrorDialogue(String message) {
    showRouteDialog(
      context,
      DialogDecision(
        title: 'ERROR'.toUpperCase(),
        message: '$message',
        isError: true,
      ),
    );
  }

  static void showRouteDialog(BuildContext context, Widget child) {
    Route route = PageRouteBuilder(
      opaque: false,
      pageBuilder: (_, __, ___) {
        return child;
      },
    );

    Navigator.of(context).push(route);
  }
}

class PleaseWaitDialog {
  static void show(BuildContext context,
      {String imgAsset, String msgKey}) {
    // imgAsset ??= Utils.assetsImage('ripple_loading.gif');
    imgAsset ??=(  '${assetImagePath}ripple_loading.gif');
    msgKey ??= 'plz_wait';

    AlertDialog androidDialog = AlertDialog(
      content: _DialogScreen(
        imgAsset: imgAsset,
        msgKey: msgKey,
      ),
    );
    print('loader started ..');

    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return androidDialog;
        });
  }

  static void hide(BuildContext context) {
    print('hiding loader..');
    Navigator.pop(context);
    Navigator.of(context, rootNavigator: true).pop();
    // Navigator.of(context).pop();
  }
}

class _DialogScreen extends StatefulWidget {
  final String imgAsset;
  final String msgKey;

  _DialogScreen({this.imgAsset, this.msgKey});

  @override
  __DialogScreenState createState() => __DialogScreenState();
}

class __DialogScreenState extends State<_DialogScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            // 1
            // Image.asset(widget.imgAsset, height: 70.0, width: 70.0),
            // 2
            // SpinKitCircle(
            //   color: Theme.of(context).primaryColor,
            // ),
            // 3
            CupertinoActivityIndicator(radius: 16.0,),
            SizedBox(height: 10.0),
            Text(
              widget.msgKey,
              style: TextStyle(color: Colors.black, fontSize: 16.0),
            )
          ],
        ),
        onWillPop: () async {
          myLog('onWillPop()');
          return false;
        });
  }
  static void myLog(String message, {isJsonString = false}) {
    if (isJsonString) {
      final jsonObject = json.decode(message);
      final jsonFormattedString =
      JsonEncoder.withIndent('  ').convert(jsonObject);
      print(
          '<--Zubair Yasin--><${DateTime.now().toString()}>\n$jsonFormattedString');
    } else {
      Dev.log('<--Zubair Yasin--><${DateTime.now().toString()}>$message');
    }
  }
}
class DialogDecision extends StatefulWidget {
  final String title;
  final String message;
  final String btn1Text;
  final Function onTapBtn1;
  final String btn2Text;
  final Function onTapBtn2;
  final bool isError;
  final Widget child;

  DialogDecision({
    this.title,
     this.message,
    this.btn1Text,
    this.onTapBtn1,
    this.btn2Text,
    this.onTapBtn2,
    this.isError = false,
    this.child,
  });

  @override
  _DialogDecisionState createState() => _DialogDecisionState();
}

class _DialogDecisionState extends State<DialogDecision> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColor.transparentColor,
      backgroundColor: Colors.transparent,
      body: Container(
        child: Stack(
          children: <Widget>[
            GestureDetector(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
                child: Container(color: Colors.transparent),
              ),
              onTap: () {
                _goBack();
              },
            ),
            Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Card(
                      clipBehavior: Clip.antiAlias,
                      margin: EdgeInsets.all(24.0),
                      child: Column(
                        children: <Widget>[
                          _menuTitle(),
                          _extraWidgets(),
                          _message(),
                          _actionButtons()
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _menuTitle() {
    return Container(
      height: 40.0,
      color: (widget.isError)
          ? Colors.red
          : Theme.of(context).primaryColor,
      child: Center(
        child: Row(
          children: <Widget>[
            SizedBox(
              width: 40.0,
            ),
            Expanded(
                child: Text(
                  widget.title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 16.0),
                )),
            Container(
              width: 40.0,
              child: IconButton(
                  icon: Icon(
                    Icons.clear,
                    color: Colors.white,
                  ),
                  onPressed: () {
//                    Navigator.of(context).pop();
                    _goBack();
                  }),
            )
          ],
        ),
      ),
    );
  }

  Widget _extraWidgets() {
    return widget.child ?? SizedBox();
  }

  Widget _message() {
    return Container(
        margin: EdgeInsets.only(left: 12.0, right: 12.0, top: 24.0),
        child: Text(
          widget.message,
          style: TextStyle(fontSize: 14.0, color:Colors.black12
            // AppColor.blackAndWhite

          ),
        ));
  }

  Widget _actionButtons() {
    return Container(
      margin: EdgeInsets.only(top: 24.0, bottom: 24.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // (widget.onTapBtn1 != null)
          // ? AppButton1(
          //     height: 35.0,
          //     width: 130.0,
          //     margin: EdgeInsets.all(0.0),
          //     text: widget?.btn1Text ?? '',
          //     textSize: 10.0,
          //     onPressListener: () {
          //       Navigator.of(context).pop();
          //       widget.onTapBtn1();
          //     })
          //     : SizedBox(),
          // (widget.onTapBtn2 != null) ? SizedBox(width: 12.0) : SizedBox(),
          // (widget.onTapBtn2 != null)
          //     ? AppButton1(
          //         height: 35.0,
          //         width: 130.0,
          //         margin: EdgeInsets.all(0.0),
          //         text: widget?.btn2Text ?? '',
          //         textSize: 10.0,
          //         onPressListener: () {
          //           Navigator.of(context).pop();
          //           widget.onTapBtn2();
          //         })
          //     : SizedBox(),
        ],
      ),
    );
  }

  void _goBack() {
    goBack(context);
  }
  static void goBack<T>(BuildContext context, [ T t]) {
    Navigator.of(context).pop(t);
  }
}