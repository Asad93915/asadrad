import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Setting Screen",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _ProfileInformation(),
            _SocialDetails(),
            SettingList(),
          ],
        ),
      ),
    );
  }
}

class _ProfileInformation extends StatefulWidget {
  @override
  __ProfileInformationState createState() => __ProfileInformationState();
}

class __ProfileInformationState extends State<_ProfileInformation> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 15.0,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: GestureDetector(
            onTap: () {
              //do something
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  Icons.logout,
                  size: 20.0,
                  color: Colors.blue,
                ),
                Text(
                  "Logout",
                  style: TextStyle(color: Colors.black, fontSize: 12.0),
                ),
              ],
            ),
          ),
        ),
        CircleAvatar(
          backgroundColor: Colors.black,
          radius: 50.0,
          child: CircleAvatar(
            backgroundImage: ExactAssetImage(
              'Images/asad.jpg',
            ),
            radius: 46.0,
          ),
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          "Asad Ali",
          style: TextStyle(
            color: Colors.black,
            fontSize: 18.0,
          ),
        ),
        Text(
          "asadaligujjar110@gmail.com",
          style: TextStyle(
            color: Colors.black,
            fontSize: 12.0,
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          height: 1.0,
          color: Colors.black12,
        ),
      ],
    );
  }
}

class _SocialDetails extends StatefulWidget {
  @override
  __SocialDetailsState createState() => __SocialDetailsState();
}

class __SocialDetailsState extends State<_SocialDetails> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SocialItem(
              icon: Icons.post_add,
              text: "Post",
              onTap: () {
                //do something
              },
            ),
            Container(
              width: 1.0,
              height: 18.0,
              color: Colors.black,
            ),
            SocialItem(
              icon: Icons.poll,
              text: "Polling",
              onTap: () {
                //do something
              },
            ),
            Container(
              width: 1.0,
              height: 18.0,
              color: Colors.black,
            ),
            SocialItem(
              icon: Icons.group,
              text: "Group",
              onTap: () {
                //do something
              },
            ),
            Container(
              width: 1.0,
              height: 18.0,
              color: Colors.black,
            ),
            SocialItem(
              icon: CupertinoIcons.profile_circled,
              text: "Profile",
              onTap: () {
                //do something
              },
            ),
          ],
        ),
        Container(
          height: 1.0,
          color: Colors.black12,
        ),
      ],
    );
  }
}

class SocialItem extends StatefulWidget {
  final IconData icon;
  final String text;
  final Function onTap;

  const SocialItem({Key key, this.icon, this.text, this.onTap})
      : super(key: key);

  @override
  _SocialItemState createState() => _SocialItemState();
}

class _SocialItemState extends State<SocialItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60.0,
      height: 60.0,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 10.0),
            child: GestureDetector(
              onTap: widget.onTap,
              child: Row(
                children: [
                  Column(
                    children: [
                      Icon(
                        widget.icon,
                      ),
                      Text(
                        widget.text,
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
        ],
      ),
    );
  }
}

class SettingList extends StatefulWidget {
  @override
  _SettingListState createState() => _SettingListState();
}

class _SettingListState extends State<SettingList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SettingItem(
          icon: Icons.language,
          text: "Language",
          onTap: () {
            //do something
          },
        ),
        SettingItem(
          icon: Icons.attach_file_sharp,
          text: "Theme",
          onTap: () {
            //do something
          },
        ),
        SettingItem(
          icon: Icons.change_history,
          text: "Change Password",
          onTap: () {
            //do something
          },
        ),
        SettingItem(
          icon: Icons.policy,
          text: "Terms and Conditions",
          onTap: () {
            //do something
          },
        ),
        SettingItem(
          icon: Icons.rate_review,
          text: "Rate this App",
          onTap: () {
            //do something
          },
        ),
        SettingItem(
          icon: Icons.info,
          text: "About Us",
          onTap: () {
            //do something
          },
        )
      ],
    );
  }
}

class SettingItem extends StatefulWidget {
  final IconData icon;
  final String text;
  final Function onTap;

  const SettingItem({Key key, this.icon, this.text, this.onTap})
      : super(key: key);

  @override
  _SettingItemState createState() => _SettingItemState();
}

class _SettingItemState extends State<SettingItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            //do something
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 10.0, right: 10.0, top: 5.0, bottom: 5.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 20.0,
                      child: Icon(widget.icon),
                      // backgroundImage: ExactAssetImage('Images/asad.jpg'),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      widget.text,
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.arrow_forward_ios_rounded,
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 10.0, right: 10.0),
          height: 1.0,
          color: Colors.black12,
        ),
        // Divider(
        //   height: 5,
        // ),
        //
        //
        // Row(
        //   children: [
        //     SizedBox(
        //       width: 30.0,
        //     ),
        //     CircleAvatar(
        //       radius: 20.0,
        //       backgroundImage: ExactAssetImage('Images/asad.jpg'),
        //     ),
        //     SizedBox(
        //       width: 30.0,
        //     ),
        //     Text("Theme",style: TextStyle(color: Colors.black,),),
        //     SizedBox(
        //       width: 135,
        //     ),
        //     Icon(Icons.arrow_forward_ios,color: Colors.black,),
        //   ],
        // ),
        // Divider(
        //   height: 5,
        // ),
        //
        // Row(
        //   children: [
        //     SizedBox(
        //       width: 30.0,
        //     ),
        //     CircleAvatar(
        //       radius: 20.0,
        //       backgroundImage: ExactAssetImage('Images/asad.jpg'),
        //     ),
        //     SizedBox(
        //       width: 30.0,
        //     ),
        //     Text("Change Password",style: TextStyle(color: Colors.black,),),
        //     SizedBox(
        //       width: 65,
        //     ),
        //     Icon(Icons.arrow_forward_ios,color: Colors.black,),
        //   ],
        // ),
        // Divider(
        //   height: 5,
        // ),
        //
        // Row(
        //   children: [
        //     SizedBox(
        //       width: 30.0,
        //     ),
        //     CircleAvatar(
        //       radius: 20.0,
        //       backgroundImage: ExactAssetImage('Images/asad.jpg'),
        //     ),
        //     SizedBox(
        //       width: 30.0,
        //     ),
        //     Text("Terms & Condition",style: TextStyle(color: Colors.black,),),
        //     SizedBox(
        //       width: 62,
        //     ),
        //     Icon(Icons.arrow_forward_ios,color: Colors.black,),
        //   ],
        // ),
        // Divider(
        //   height: 5,
        // ),
        //
        // Row(
        //   children: [
        //     SizedBox(
        //       width: 30.0,
        //     ),
        //     CircleAvatar(
        //       radius: 20.0,
        //       backgroundImage: ExactAssetImage('Images/asad.jpg'),
        //     ),
        //     SizedBox(
        //       width: 30.0,
        //     ),
        //     Text("Rate this app",style: TextStyle(color: Colors.black,),),
        //     SizedBox(
        //       width: 95,
        //     ),
        //     Icon(Icons.arrow_forward_ios,color: Colors.black,),
        //   ],
        // ),
        // Divider(
        //   height: 5,
        // ),
        //
        // Row(
        //   children: [
        //     SizedBox(
        //       width: 30.0,
        //     ),
        //     CircleAvatar(
        //       radius: 20.0,
        //       backgroundImage: ExactAssetImage('Images/asad.jpg'),
        //     ),
        //     SizedBox(
        //       width: 30.0,
        //     ),
        //     Text("About Us",style: TextStyle(color: Colors.black,),),
        //     SizedBox(
        //       width: 115,
        //     ),
        //     Icon(Icons.arrow_forward_ios,size: 20,),
        //   ],
        // ),
        // Divider(
        //   height: 5,
        // ),
      ],
    );
  }
}
