// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get app_name => 'OTW';

  @override
  String get confirm_really_on_the_way =>
      'Are you sure you\'re really on the way?';

  @override
  String get let_is_find_out_enter_phone_number =>
      'Let\'s find out, enter your phone number';

  @override
  String get phone_number => 'Phone Number';

  @override
  String get privacy_policy_agreement_note =>
      'By this, you agree to our Privacy Policy and Terms of Service. Don\'t worry, your data and chats are end-to-end encrypted. So it\'s safe.';

  @override
  String get send_otp_via_sms => 'Send OTP via SMS';

  @override
  String get send_otp_via_whatsapp => 'Send OTP via WhatsApp';

  @override
  String get privacy_note_part_1 => 'By continuing, you agree to our ';

  @override
  String get privacy_note_link_1 => 'Privacy Policy';

  @override
  String get privacy_note_part_2 => ' and ';

  @override
  String get privacy_note_link_2 => 'Terms of Service';

  @override
  String get privacy_note_part_3 =>
      '. Don\'t worry, your data and chats are end-to-end encrypted. So it\'s safe.';

  @override
  String get verify_otp => 'Verify OTP';

  @override
  String otp_code_sent(String provider, String phoneNumber) {
    return 'We\'ve sent the OTP code to your <b>$provider</b>, <b>$phoneNumber</b>';
  }

  @override
  String get insert_the_code_below => 'Please enter the code below';

  @override
  String request_otp_again(String countDown) {
    return 'You can request another OTP in <b>($countDown)</b>';
  }

  @override
  String get verify => 'Verify';

  @override
  String get access_permission => 'Access Permissions';

  @override
  String get we_need_access_to_the_following_features =>
      'We need access to the following features to keep the app running smoothly.';

  @override
  String get contacts_so_you_can_chat_and_play =>
      '<b>Contacts</b>, so you can chat & play with your friends';

  @override
  String get location_so_no_one_can_fake_otw =>
      '<b>Location</b>, so no one can fake being \'on the way\' (OTW)';

  @override
  String get calls_just_ring_them_if_slow_reply =>
      '<b>Calls</b>, just give them a ring if they\'re slow to reply';

  @override
  String get camera_more_fun_with_video_call =>
      '<b>Camera</b>, it\'s way more fun with video calls';

  @override
  String get gallery_share_photos_to_be_more_exciting =>
      '<b>Gallery</b>, share your photos to keep things exciting';

  @override
  String get microphone_dont_be_silent =>
      '<b>Microphone</b>, don\'t just stay silent!';

  @override
  String get thats_all_for_now_hehe => 'yup, that\'s all for now hehe 🙏';

  @override
  String get grant_permission => 'Grant Permission';

  @override
  String get chat => 'Chat';

  @override
  String get otw => 'OTW';

  @override
  String get call => 'Call';

  @override
  String get setting => 'Setting';

  @override
  String get search => 'Search';

  @override
  String get all => 'All';

  @override
  String get unread => 'Unread';

  @override
  String get group => 'Group';

  @override
  String get today => 'Today';

  @override
  String get yesterday => 'Yesterday';

  @override
  String get you => 'You';

  @override
  String get forwarded => 'Forwarded';

  @override
  String get video_call => 'Video Call';

  @override
  String get media => 'Media';

  @override
  String get images => 'Images';

  @override
  String get videos => 'Videos';

  @override
  String get audios => 'Audios';

  @override
  String get documents => 'Documents';

  @override
  String members(Object count) {
    return 'Members ($count)';
  }

  @override
  String get settings => 'Settings';

  @override
  String get delete_chat_history => 'Delete Chat History';

  @override
  String get block_contact => 'Block This Contact';

  @override
  String get delete_contact => 'Delete This Contact';

  @override
  String get report_contact => 'Report This Contact';

  @override
  String get edit => 'Edit';

  @override
  String get new_chat_or_group => 'New Chat or Group';

  @override
  String get next => 'Next';

  @override
  String selected_contacts(Object selectedContactsCount) {
    return 'Selected Contacts ($selectedContactsCount)';
  }

  @override
  String get search_user => 'Search user';

  @override
  String get create_a_group => 'Create a Group';

  @override
  String get group_name => 'Group Name';

  @override
  String get type_your_group_name => 'Type your group name';

  @override
  String get create_group => 'Create Group';

  @override
  String get incoming_call => 'Incoming Call';

  @override
  String get outcoming_call => 'Outcoming Call';

  @override
  String get accepted => 'Accepted';

  @override
  String get declined => 'Declined';

  @override
  String get missed => 'Missed';

  @override
  String get coming_soon => 'Coming Soon...';

  @override
  String get resend_otp => 'Resend OTP again';
}
