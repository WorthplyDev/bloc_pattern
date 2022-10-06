class Constants {
  //Flutter wave keys details
  //static const String flutterWavePublicKey = 'FLWPUBK_TEST-a1ed6291a8513f96372eac5d4dafaf31-X';
  //static const String flutterWaveSecretKey = 'FLWSECK_TEST-9f7fa64b3dac3bb49736362a16dbd166-X';
  //static const String flutterWaveEncryptionKey = 'FLWSECK_TEST13cf40efae50';
  static const String flutterWaveEncryptionKey = 'FLWSECK_TEST0c489d8191e3'; // by client
  static const String flutterWavePublicKey =
      'FLWPUBK_TEST-c9963c08d36ee839fb15ac56a5dfe8fe-X'; // by client
  static const String flutterWaveSecretKey =
      'FLWSECK_TEST-b893552ee60d926ba0847e8ef6215e7b-X'; // by client

  //base deep link and params
  static const String baseDeepLink = 'https://fayth.page.link';
  static const String speakerId = 'speaker_id';
  static const String fileId = 'file_id';
  //path type
  static const int url = 0;
  static const int file = 1;

  //file type
  static const int audio = 0;
  static const int video = 1;
  static const int image = 2;

  //User type
  static const String user = "0";
  static const String speaker = "1";

  //date format
  static const String serverDate = "yyyy-MM-dd HH:mm:ss";

  //dialog type
  static const int okDialog = 0;
  static const int yesDialog = 1;

  //App Strings
  static const String appName = "IFaith";
  static const String noInternet = "Please check your internet connection";
  static const String someThingWentWrong = "Something Went Wrong";
  static const String serverNotRespond = "Server not responding";
  static const String demoText =
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in";
}
