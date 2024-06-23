// class AppLocale {
  mixin AppLocale
  {

  static const String title = 'title';
  static const String thisIs = 'thisIs';

  static const Map<String, dynamic> EN = {
    title: 'Localization',
    thisIs: 'This is %a package, version %a.',
  };

  static const Map<String, dynamic> FR = {
    title: 'Localisation',
    thisIs: 'C est %a package, version %a.',
  };

  static const Map<String, dynamic> ES = {
    title: 'Ubicación',
    thisIs: 'Es el paquete %a, versión %a.',
  };

  static const Map<String, dynamic> KM = {
    title: 'ការធ្វើមូលដ្ឋានីយកម្ម',
    thisIs: 'នេះគឺជាកញ្ចប់%a កំណែ%a.',
  };
  static const Map<String, dynamic> JA = {
    title: 'ローカリゼーション',
    thisIs: 'これは%aパッケージ、バージョン%aです。',
  };
}
// }