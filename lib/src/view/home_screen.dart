import 'package:cv_app/src/data/cvdata.dart';
import 'package:cv_app/src/utils/screen_utils.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mobile Cv Application"),
        centerTitle: false,
        actions: const [],
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: "editcv",
        tooltip: "Edit details",
        isExtended: true,
        clipBehavior: Clip.hardEdge,
        onPressed: () {
          Navigator.pushNamed(context, "/editcv");
        },
        child: const Icon(Icons.edit),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const ProfilePicture(),
              const SizedBox(height: 8),
              const Divider(),
              Text("Links",
                  textAlign: TextAlign.start,
                  style: Theme.of(context).textTheme.bodyLarge),
              const SocialLinks(),
              const SizedBox(height: 16),
              ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                leading: const Text('Full Name:',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                title: Text(cvdata.fullname),
              ),
              ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                leading: const Text(
                  'Slack Username:',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                title: Text(cvdata.slackUsername!),
              ),
              ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                leading: const Text(
                  'GitHub Handle:',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                title: Text(cvdata.githubHandle!),
              ),
              ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                leading: const Text(
                  'Personal Bio:',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                title: Text(cvdata.personalBio!),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SocialLinks extends StatelessWidget {
  const SocialLinks({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        FloatingActionButton(
          heroTag: "slack",
          elevation: 1,
          //backgroundColor: Colors.white,

          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Image.asset(
              "assets/images/slack.png",
            ),
          ),
        ),
        // ClipRRect(
        //         borderRadius: BorderRadius.circular(10),
        //         child: Image.asset(
        //           'assets/images/musty.png',
        //           width: size.width * .15,
        //         ),
        //       ),
        FloatingActionButton(
          heroTag: "github",
          elevation: 1,
          //backgroundColor: Colors.white,
          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Image.asset(
              "assets/images/github.png",
            ),
          ),
        ),
        FloatingActionButton(
          heroTag: "twitter",
          elevation: 1,
          //backgroundColor: Colors.white,
          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Image.asset(
              "assets/images/twitter.png",
            ),
          ),
        ),

        FloatingActionButton(
          heroTag: "linkedin",
          elevation: 1,
          // ////backgroundColor: Colors.white,
          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Image.asset(
              "assets/images/linkedin.png",
            ),
          ),
        )
      ],
    );
  }
}

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: ScreenUtil.screenWidth * 0.6,
        height: ScreenUtil.screenWidth * 0.6,
        child: const CircleAvatar(
          backgroundImage: AssetImage('assets/images/pp.jpg'),
        ),
      ),
    );
  }
}
