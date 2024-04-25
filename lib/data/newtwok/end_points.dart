class EndPoints {
  static const String login = 'auth/login';
  static const String register = 'auth/register';

  //Artist EndPoints
  static const String artists = 'artist/list';
  static const String artistById = 'artist/{id}';
  static const String createArtist = 'artist/create';
  static const String updateArtist = 'artist/update';
  static const String deleteArtist = 'artist/delete/{id}';

  //Song EndPoints
  static const String songs = 'song/list';
  static const String songById = 'song/{id}';
  static const String createSong = 'song/create';
  static const String updateSong = 'song/update';
  static const String deleteSong = 'song/delete/{id}';
  static const String songsByArtist = 'song/songsByArtist';

  //Static endpoints
  static const String countries = 'static/countries';
  static const String songsType = 'static/songsType';

  //Invoice
  static const String invoiceCreate = 'invoice/create';
  static const String profile = 'profile';
}
