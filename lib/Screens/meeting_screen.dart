import 'dart:math';
import 'package:flutter/material.dart';
import 'package:jitsi_meet_flutter_sdk/jitsi_meet_flutter_sdk.dart';

import '../Components/widgets/home_meeting_button.dart';

class MeetingScreen extends StatelessWidget {
  MeetingScreen({Key? key}) : super(key: key);

  final JitsiMeet _jitsiMeetMethods = JitsiMeet();

  createNewMeeting() async {
    var random = Random();
    String roomName = (random.nextInt(10000000) + 10000000).toString();
    _jitsiMeetMethods.join(JitsiMeetConferenceOptions(room: 'room2'));
  }

  joinMeeting(BuildContext context) {
    Navigator.pushNamed(context, '/video-call');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                HomeMeetingButton(
                  onPressed: createNewMeeting,
                  text: 'New Meeting',
                  icon: Icons.videocam,
                ),
                HomeMeetingButton(
                  onPressed: () => joinMeeting(context),
                  text: 'Join Meeting',
                  icon: Icons.add_box_rounded,
                ),
                HomeMeetingButton(
                  onPressed: () {},
                  text: 'Schedule',
                  icon: Icons.calendar_today,
                ),
                HomeMeetingButton(
                  onPressed: () {},
                  text: 'Share Screen',
                  icon: Icons.arrow_upward_rounded,
                ),
              ],
            ),
            const Expanded(
              child: Center(
                child: Text(
                  'Create/Join Meetings with just a click!',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
