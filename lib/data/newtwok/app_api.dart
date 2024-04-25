import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';
import 'package:wmp_project/domain/models/profile_model/profile_model.dart';
import 'package:wmp_project/domain/models/static_model/static_model.dart';
import '../../app/constants.dart';
import '../../domain/models/artis_model/artist_model.dart';
import '../../domain/models/artis_model/requests/create_request_artist/create_request_artist_model.dart';
import '../../domain/models/artis_model/requests/update_request_artist/update_request_artist_model.dart';
import '../../domain/models/auth_model/auth_model.dart';
import '../../domain/models/auth_model/request/login_request_model.dart';
import '../../domain/models/auth_model/request/register/register_request_model.dart';
import '../../domain/models/base_response_model/base_model.dart';
import '../../domain/models/invoice_model/request/create_invoice_request.dart';
import '../../domain/models/song_models/requests/create_song_request/create_song_request_model.dart';
import '../../domain/models/song_models/requests/update_song_request/update_request_song_model.dart';
import '../../domain/models/song_models/song_model.dart';
import 'end_points.dart';
part 'app_api.g.dart';

@RestApi(baseUrl: Constant.baseUrl)
abstract class AppServiceClient {
  factory AppServiceClient(Dio dio, {String baseUrl}) = _AppServiceClient;

  //Auth_api

  @POST(EndPoints.login)
  Future<HttpResponse<BaseResponseModel<AuthModel>>> login(
      {@Body() required LoginRequestModel request});

  @POST(EndPoints.register)
  Future<HttpResponse<BaseResponseModel<AuthModel>>> register(
      {@Body() required RegisterRequestModel request});

  //Artist Endpoints
  @GET(EndPoints.artists)
  Future<HttpResponse<BaseResponseModel<List<ArtistModel>>>> artists();
  @GET(EndPoints.artistById)
  Future<HttpResponse<BaseResponseModel<ArtistModel>>> artistById(
      {@Path('id') required int id});
  @POST(EndPoints.createArtist)
  Future<HttpResponse<BaseResponseModel>> createArtist(
      {@Body() required CreateRequestArtistModel request});
  @PUT(EndPoints.updateArtist)
  Future<HttpResponse<BaseResponseModel>> updateArtist(
      {@Body() required UpdateRequestArtistModel request});
  @DELETE(EndPoints.deleteArtist)
  Future<HttpResponse<BaseResponseModel>> deleteArtist(
      {@Path('id') required int id});

  //Song Endpoints
  @GET(EndPoints.songs)
  Future<HttpResponse<BaseResponseModel<List<SongModel>>>> songs();
  @GET(EndPoints.songById)
  Future<HttpResponse<BaseResponseModel<SongModel>>> songById(
      {@Path('id') required int id});
  @GET(EndPoints.songsByArtist)
  Future<HttpResponse<BaseResponseModel<List<SongModel>>>> songsByArtist(
      {@Query('ArtistId') required int artistId});
  @POST(EndPoints.createSong)
  Future<HttpResponse<BaseResponseModel>> createSong(
      {@Body() required CreateSongRequestModel request});
  @PUT(EndPoints.updateSong)
  Future<HttpResponse<BaseResponseModel>> updateSong(
      {@Body() required UpdateRequestSongModel request});
  @DELETE(EndPoints.deleteSong)
  Future<HttpResponse<BaseResponseModel>> deleteSong(
      {@Field('id') required int id});

  //Static endpoints
  @GET(EndPoints.countries)
  Future<HttpResponse<BaseResponseModel<List<StaticModel>>>> countries();
  @GET(EndPoints.songsType)
  Future<HttpResponse<BaseResponseModel<List<StaticModel>>>> songsType();

  //Invoice
  @POST(EndPoints.invoiceCreate)
  Future<HttpResponse<BaseResponseModel>> createInvoice(
      {@Body() required CreateInvoiceRequest request});

  @POST(EndPoints.profile)
  Future<HttpResponse<BaseResponseModel<ProfileModel>>> getProfile();
}
