import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_id.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'arb/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('id'),
  ];

  /// No description provided for @app_name.
  ///
  /// In en, this message translates to:
  /// **'OTW'**
  String get app_name;

  /// No description provided for @confirm_really_on_the_way.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you\'re really on the way?'**
  String get confirm_really_on_the_way;

  /// No description provided for @let_is_find_out_enter_phone_number.
  ///
  /// In en, this message translates to:
  /// **'Let\'s find out, enter your phone number'**
  String get let_is_find_out_enter_phone_number;

  /// No description provided for @phone_number.
  ///
  /// In en, this message translates to:
  /// **'Phone Number'**
  String get phone_number;

  /// No description provided for @privacy_policy_agreement_note.
  ///
  /// In en, this message translates to:
  /// **'By this, you agree to our Privacy Policy and Terms of Service. Don\'t worry, your data and chats are end-to-end encrypted. So it\'s safe.'**
  String get privacy_policy_agreement_note;

  /// No description provided for @send_otp_via_sms.
  ///
  /// In en, this message translates to:
  /// **'Send OTP via SMS'**
  String get send_otp_via_sms;

  /// No description provided for @send_otp_via_whatsapp.
  ///
  /// In en, this message translates to:
  /// **'Send OTP via WhatsApp'**
  String get send_otp_via_whatsapp;

  /// No description provided for @privacy_note_part_1.
  ///
  /// In en, this message translates to:
  /// **'By continuing, you agree to our '**
  String get privacy_note_part_1;

  /// No description provided for @privacy_note_link_1.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacy_note_link_1;

  /// No description provided for @privacy_note_part_2.
  ///
  /// In en, this message translates to:
  /// **' and '**
  String get privacy_note_part_2;

  /// No description provided for @privacy_note_link_2.
  ///
  /// In en, this message translates to:
  /// **'Terms of Service'**
  String get privacy_note_link_2;

  /// No description provided for @privacy_note_part_3.
  ///
  /// In en, this message translates to:
  /// **'. Don\'t worry, your data and chats are end-to-end encrypted. So it\'s safe.'**
  String get privacy_note_part_3;

  /// No description provided for @verify_otp.
  ///
  /// In en, this message translates to:
  /// **'Verify OTP'**
  String get verify_otp;

  /// OTP delivery confirmation message
  ///
  /// In en, this message translates to:
  /// **'We\'ve sent the OTP code to your <b>{provider}</b>, <b>{phoneNumber}</b>'**
  String otp_code_sent(String provider, String phoneNumber);

  /// No description provided for @insert_the_code_below.
  ///
  /// In en, this message translates to:
  /// **'Please enter the code below'**
  String get insert_the_code_below;

  /// OTP countdown
  ///
  /// In en, this message translates to:
  /// **'You can request another OTP in <b>({countDown})</b>'**
  String request_otp_again(String countDown);

  /// No description provided for @verify.
  ///
  /// In en, this message translates to:
  /// **'Verify'**
  String get verify;

  /// No description provided for @access_permission.
  ///
  /// In en, this message translates to:
  /// **'Access Permissions'**
  String get access_permission;

  /// No description provided for @we_need_access_to_the_following_features.
  ///
  /// In en, this message translates to:
  /// **'We need access to the following features to keep the app running smoothly.'**
  String get we_need_access_to_the_following_features;

  /// No description provided for @contacts_so_you_can_chat_and_play.
  ///
  /// In en, this message translates to:
  /// **'<b>Contacts</b>, so you can chat & play with your friends'**
  String get contacts_so_you_can_chat_and_play;

  /// No description provided for @location_so_no_one_can_fake_otw.
  ///
  /// In en, this message translates to:
  /// **'<b>Location</b>, so no one can fake being \'on the way\' (OTW)'**
  String get location_so_no_one_can_fake_otw;

  /// No description provided for @calls_just_ring_them_if_slow_reply.
  ///
  /// In en, this message translates to:
  /// **'<b>Calls</b>, just give them a ring if they\'re slow to reply'**
  String get calls_just_ring_them_if_slow_reply;

  /// No description provided for @camera_more_fun_with_video_call.
  ///
  /// In en, this message translates to:
  /// **'<b>Camera</b>, it\'s way more fun with video calls'**
  String get camera_more_fun_with_video_call;

  /// No description provided for @gallery_share_photos_to_be_more_exciting.
  ///
  /// In en, this message translates to:
  /// **'<b>Gallery</b>, share your photos to keep things exciting'**
  String get gallery_share_photos_to_be_more_exciting;

  /// No description provided for @microphone_dont_be_silent.
  ///
  /// In en, this message translates to:
  /// **'<b>Microphone</b>, don\'t just stay silent!'**
  String get microphone_dont_be_silent;

  /// No description provided for @thats_all_for_now_hehe.
  ///
  /// In en, this message translates to:
  /// **'yup, that\'s all for now hehe 🙏'**
  String get thats_all_for_now_hehe;

  /// No description provided for @grant_permission.
  ///
  /// In en, this message translates to:
  /// **'Grant Permission'**
  String get grant_permission;

  /// No description provided for @chat.
  ///
  /// In en, this message translates to:
  /// **'Chat'**
  String get chat;

  /// No description provided for @otw.
  ///
  /// In en, this message translates to:
  /// **'OTW'**
  String get otw;

  /// No description provided for @call.
  ///
  /// In en, this message translates to:
  /// **'Call'**
  String get call;

  /// No description provided for @setting.
  ///
  /// In en, this message translates to:
  /// **'Setting'**
  String get setting;

  /// No description provided for @search.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get search;

  /// No description provided for @all.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get all;

  /// No description provided for @unread.
  ///
  /// In en, this message translates to:
  /// **'Unread'**
  String get unread;

  /// No description provided for @group.
  ///
  /// In en, this message translates to:
  /// **'Group'**
  String get group;

  /// No description provided for @today.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today;

  /// No description provided for @yesterday.
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get yesterday;

  /// No description provided for @you.
  ///
  /// In en, this message translates to:
  /// **'You'**
  String get you;

  /// No description provided for @forwarded.
  ///
  /// In en, this message translates to:
  /// **'Forwarded'**
  String get forwarded;

  /// No description provided for @video_call.
  ///
  /// In en, this message translates to:
  /// **'Video Call'**
  String get video_call;

  /// No description provided for @media.
  ///
  /// In en, this message translates to:
  /// **'Media'**
  String get media;

  /// No description provided for @images.
  ///
  /// In en, this message translates to:
  /// **'Images'**
  String get images;

  /// No description provided for @videos.
  ///
  /// In en, this message translates to:
  /// **'Videos'**
  String get videos;

  /// No description provided for @audios.
  ///
  /// In en, this message translates to:
  /// **'Audios'**
  String get audios;

  /// No description provided for @documents.
  ///
  /// In en, this message translates to:
  /// **'Documents'**
  String get documents;

  /// No description provided for @members.
  ///
  /// In en, this message translates to:
  /// **'Members ({count})'**
  String members(Object count);

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @delete_chat_history.
  ///
  /// In en, this message translates to:
  /// **'Delete Chat History'**
  String get delete_chat_history;

  /// No description provided for @block_contact.
  ///
  /// In en, this message translates to:
  /// **'Block This Contact'**
  String get block_contact;

  /// No description provided for @delete_contact.
  ///
  /// In en, this message translates to:
  /// **'Delete This Contact'**
  String get delete_contact;

  /// No description provided for @report_contact.
  ///
  /// In en, this message translates to:
  /// **'Report This Contact'**
  String get report_contact;

  /// No description provided for @edit.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get edit;

  /// No description provided for @new_chat_or_group.
  ///
  /// In en, this message translates to:
  /// **'New Chat or Group'**
  String get new_chat_or_group;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// No description provided for @selected_contacts.
  ///
  /// In en, this message translates to:
  /// **'Selected Contacts ({selectedContactsCount})'**
  String selected_contacts(Object selectedContactsCount);

  /// No description provided for @search_user.
  ///
  /// In en, this message translates to:
  /// **'Search user'**
  String get search_user;

  /// No description provided for @create_a_group.
  ///
  /// In en, this message translates to:
  /// **'Create a Group'**
  String get create_a_group;

  /// No description provided for @group_name.
  ///
  /// In en, this message translates to:
  /// **'Group Name'**
  String get group_name;

  /// No description provided for @type_your_group_name.
  ///
  /// In en, this message translates to:
  /// **'Type your group name'**
  String get type_your_group_name;

  /// No description provided for @create_group.
  ///
  /// In en, this message translates to:
  /// **'Create Group'**
  String get create_group;

  /// No description provided for @incoming_call.
  ///
  /// In en, this message translates to:
  /// **'Incoming Call'**
  String get incoming_call;

  /// No description provided for @outcoming_call.
  ///
  /// In en, this message translates to:
  /// **'Outcoming Call'**
  String get outcoming_call;

  /// No description provided for @accepted.
  ///
  /// In en, this message translates to:
  /// **'Accepted'**
  String get accepted;

  /// No description provided for @declined.
  ///
  /// In en, this message translates to:
  /// **'Declined'**
  String get declined;

  /// No description provided for @missed.
  ///
  /// In en, this message translates to:
  /// **'Missed'**
  String get missed;

  /// No description provided for @coming_soon.
  ///
  /// In en, this message translates to:
  /// **'Coming Soon...'**
  String get coming_soon;

  /// No description provided for @resend_otp.
  ///
  /// In en, this message translates to:
  /// **'Resend OTP again'**
  String get resend_otp;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'id'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'id':
      return AppLocalizationsId();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
