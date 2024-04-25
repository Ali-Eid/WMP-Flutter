import 'package:multiple_result/multiple_result.dart';
import 'package:wmp_project/domain/models/profile_model/profile_model.dart';
import 'package:wmp_project/domain/models/static_model/static_model.dart';

import '../../data/newtwok/failure_model/failure.dart';
import '../models/artis_model/artist_model.dart';
import '../models/artis_model/requests/create_request_artist/create_request_artist_model.dart';
import '../models/artis_model/requests/update_request_artist/update_request_artist_model.dart';
import '../models/auth_model/auth_model.dart';
import '../models/auth_model/request/login_request_model.dart';
import '../models/auth_model/request/register/register_request_model.dart';
import '../models/base_response_model/base_model.dart';
import '../models/invoice_model/request/create_invoice_request.dart';
import '../models/song_models/requests/create_song_request/create_song_request_model.dart';
import '../models/song_models/requests/update_song_request/update_request_song_model.dart';
import '../models/song_models/song_model.dart';

abstract class Repository {
  //Auth
  Future<Result<BaseResponseModel<AuthModel>, FailureModel>> login(
      {required LoginRequestModel requestModel});
  Future<Result<BaseResponseModel<AuthModel>, FailureModel>> register(
      {required RegisterRequestModel registerRequestModel});

  //Artists
  Future<Result<BaseResponseModel<List<ArtistModel>>, FailureModel>> artists();
  Future<Result<BaseResponseModel<ArtistModel>, FailureModel>> artistById(
      int artistId);
  Future<Result<BaseResponseModel, FailureModel>> createArtist(
      {required CreateRequestArtistModel createRequestArtistModel});
  Future<Result<BaseResponseModel, FailureModel>> updateArtist(
      {required UpdateRequestArtistModel updateRequestArtistModel});
  Future<Result<BaseResponseModel, FailureModel>> deleteArtist(
      {required int artistId});

  //Songs
  Future<Result<BaseResponseModel<List<SongModel>>, FailureModel>> songs();
  Future<Result<BaseResponseModel<SongModel>, FailureModel>> songById(
      int songId);
  Future<Result<BaseResponseModel<List<SongModel>>, FailureModel>>
      songsByArtist(int artistId);
  Future<Result<BaseResponseModel, FailureModel>> createSong(
      {required CreateSongRequestModel createSongRequestModel});
  Future<Result<BaseResponseModel, FailureModel>> updateSong(
      {required UpdateRequestSongModel updateRequestSongModel});
  Future<Result<BaseResponseModel, FailureModel>> deleteSong(
      {required int songId});

  //Static
  Future<Result<BaseResponseModel<List<StaticModel>>, FailureModel>>
      countries();
  Future<Result<BaseResponseModel<List<StaticModel>>, FailureModel>>
      songsTypes();

  //Invoice
  Future<Result<BaseResponseModel, FailureModel>> createInvoice(
      {required CreateInvoiceRequest request});

  //profile
  Future<Result<BaseResponseModel<ProfileModel>, FailureModel>> getProfile();
}
