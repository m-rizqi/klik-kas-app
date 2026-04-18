// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class AppLocalizationsId extends AppLocalizations {
  AppLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get app_name => 'OTW';

  @override
  String get confirm_really_on_the_way => 'Yakin Beneran OTW?';

  @override
  String get let_is_find_out_enter_phone_number =>
      'Yuk cari tau, masukkan nomor handphone kamu';

  @override
  String get phone_number => 'Nomor Handphone';

  @override
  String get privacy_policy_agreement_note =>
      'Dengan ini, kamu menyetujui Privacy Policy dan Terms of Service kami. Tenang, data dan chat kamu terenskripsi end-to-end. Jadi aman kok.';

  @override
  String get send_otp_via_sms => 'Kirim OTP via SMS';

  @override
  String get send_otp_via_whatsapp => 'Kirim OTP via WhatsApp';

  @override
  String get privacy_note_part_1 => 'Dengan ini, kamu menyetujui ';

  @override
  String get privacy_note_link_1 => 'Privacy Policy';

  @override
  String get privacy_note_part_2 => ' dan ';

  @override
  String get privacy_note_link_2 => 'Terms of Service';

  @override
  String get privacy_note_part_3 =>
      ' kami. Tenang, data dan chat kamu terenskripsi end-to-end. Jadi aman kok.';

  @override
  String get verify_otp => 'Verifikasi OTP';

  @override
  String otp_code_sent(String provider, String phoneNumber) {
    return 'Kode OTP sudah kami kirimkan ke <b>$provider</b> kamu, <b>$phoneNumber</b>';
  }

  @override
  String get insert_the_code_below => 'Masukkan kodenya dibawah ini yaa';

  @override
  String request_otp_again(String countDown) {
    return 'Kamu bisa minta OTP lagi dalam <b>($countDown)</b>';
  }

  @override
  String get verify => 'Verifikasi';

  @override
  String get access_permission => 'Izin Akses';

  @override
  String get we_need_access_to_the_following_features =>
      'Kami membutuhkan izin akses ke fitur berikut agar fitur aplikasi berjalan dengan lancar.';

  @override
  String get contacts_so_you_can_chat_and_play =>
      '<b>Kontak</b>, supaya kamu bisa chat & main bareng temanmu';

  @override
  String get location_so_no_one_can_fake_otw =>
      '<b>Lokasi</b>, biar kamu dan temanmu ga ada yang PHP-in bilang OTW';

  @override
  String get calls_just_ring_them_if_slow_reply =>
      '<b>Panggilan</b>, telpon aja kalo temanmu lama balas chat';

  @override
  String get camera_more_fun_with_video_call =>
      '<b>Kamera</b>, lebih seru lagi kalo kalian sambil video-call';

  @override
  String get gallery_share_photos_to_be_more_exciting =>
      '<b>Galeri</b>, saling PAP biar makin asik';

  @override
  String get microphone_dont_be_silent => '<b>Microphone</b>, masa diem-dieman';

  @override
  String get thats_all_for_now_hehe => 'udahh, itu aja kok hehe 🙏';

  @override
  String get grant_permission => 'Kasih Izin';

  @override
  String get chat => 'Pesan';

  @override
  String get otw => 'OTW';

  @override
  String get call => 'Panggilan';

  @override
  String get setting => 'Pengaturan';

  @override
  String get search => 'Pencarian';

  @override
  String get all => 'Semua';

  @override
  String get unread => 'Belum Dibaca';

  @override
  String get group => 'Grup';

  @override
  String get today => 'Hari Ini';

  @override
  String get yesterday => 'Kemarin';

  @override
  String get you => 'Kamu';

  @override
  String get forwarded => 'Diteruskan';

  @override
  String get video_call => 'Panggilan Video';

  @override
  String get media => 'Media';

  @override
  String get images => 'Gambar';

  @override
  String get videos => 'Video';

  @override
  String get audios => 'Audio';

  @override
  String get documents => 'Dokumen';

  @override
  String members(Object count) {
    return 'Anggota ($count)';
  }

  @override
  String get settings => 'Pengaturan';

  @override
  String get delete_chat_history => 'Hapus Riwayat Chat';

  @override
  String get block_contact => 'Blokir Kontak Ini';

  @override
  String get delete_contact => 'Hapus Kontak Ini';

  @override
  String get report_contact => 'Laporkan Kontak Ini';

  @override
  String get edit => 'Ubah';

  @override
  String get new_chat_or_group => 'Chat atau Grup Baru';

  @override
  String get next => 'Lanjut';

  @override
  String selected_contacts(Object selectedContactsCount) {
    return 'Kontak Dipilih ($selectedContactsCount)';
  }

  @override
  String get search_user => 'Cari pengguna';

  @override
  String get create_a_group => 'Buat Grup';

  @override
  String get group_name => 'Nama Grup';

  @override
  String get type_your_group_name => 'Ketik nama group kamu';

  @override
  String get create_group => 'Buat Grup';

  @override
  String get incoming_call => 'Panggilan Masuk';

  @override
  String get outcoming_call => 'Panggilan Keluar';

  @override
  String get accepted => 'Diterima';

  @override
  String get declined => 'Ditolak';

  @override
  String get missed => 'Terlewat';

  @override
  String get coming_soon => 'Bentar lagi ada nih fitur';

  @override
  String get resend_otp => 'Kirim OTP-nya lagi';
}
