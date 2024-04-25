import 'package:dio/dio.dart';
import 'package:multiple_result/src/result.dart';

import 'package:wmp_project/data/newtwok/failure_model/failure.dart';
import 'package:wmp_project/domain/models/artis_model/artist_model.dart';
import 'package:wmp_project/domain/models/artis_model/requests/create_request_artist/create_request_artist_model.dart';
import 'package:wmp_project/domain/models/artis_model/requests/update_request_artist/update_request_artist_model.dart';

import 'package:wmp_project/domain/models/auth_model/auth_model.dart';

import 'package:wmp_project/domain/models/auth_model/request/login_request_model.dart';

import 'package:wmp_project/domain/models/auth_model/request/register/register_request_model.dart';

import 'package:wmp_project/domain/models/base_response_model/base_model.dart';
import 'package:wmp_project/domain/models/invoice_model/request/create_invoice_request.dart';
import 'package:wmp_project/domain/models/profile_model/profile_model.dart';
import 'package:wmp_project/domain/models/song_models/requests/create_song_request/create_song_request_model.dart';
import 'package:wmp_project/domain/models/song_models/requests/update_song_request/update_request_song_model.dart';
import 'package:wmp_project/domain/models/song_models/song_model.dart';
import 'package:wmp_project/domain/models/static_model/static_model.dart';

import '../../domain/repository/repository.dart';
import '../newtwok/app_api.dart';
import '../newtwok/network_info.dart';

class RepositoryImplementer extends Repository {
  final AppServiceClient appServiceClient;
  final NetworkInfo networkInfo;

  RepositoryImplementer(
      {required this.appServiceClient, required this.networkInfo});

  @override
  Future<Result<BaseResponseModel<AuthModel>, FailureModel>> login(
      {required LoginRequestModel requestModel}) async {
    if (await networkInfo.isConnected) {
      try {
        final response = await appServiceClient.login(request: requestModel);
        if (response.response.statusCode == 200 ||
            response.response.statusCode == 201) {
          return Success(response.data);
        } else {
          return Error(FailureModel.fromJson(response.response.data));
        }
      } on DioException catch (e) {
        return Error(FailureModel.fromJson(e.response?.data ?? defaultError));
      }
    } else {
      return const Error(FailureModel(message: "No internet"));
    }
  }

  @override
  Future<Result<BaseResponseModel<AuthModel>, FailureModel>> register(
      {required RegisterRequestModel registerRequestModel}) async {
    if (await networkInfo.isConnected) {
      try {
        final response =
            await appServiceClient.register(request: registerRequestModel);
        if (response.response.statusCode == 200 ||
            response.response.statusCode == 201) {
          return Success(response.data);
        } else {
          return Error(FailureModel.fromJson(response.response.data));
        }
      } on DioException catch (e) {
        return Error(FailureModel.fromJson(e.response?.data ?? defaultError));
      }
    } else {
      return const Error(FailureModel(message: "No internet"));
    }
  }

  @override
  Future<Result<BaseResponseModel<ArtistModel>, FailureModel>> artistById(
      int artistId) async {
    if (await networkInfo.isConnected) {
      try {
        final response = await appServiceClient.artistById(id: artistId);
        if (response.response.statusCode == 200 ||
            response.response.statusCode == 201) {
          return Success(response.data);
        } else {
          return Error(FailureModel.fromJson(response.response.data));
        }
      } on DioException catch (e) {
        return Error(FailureModel.fromJson(e.response?.data ?? defaultError));
      }
    } else {
      return const Error(FailureModel(message: "No internet"));
    }
  }

  @override
  Future<Result<BaseResponseModel<List<ArtistModel>>, FailureModel>>
      artists() async {
    if (await networkInfo.isConnected) {
      try {
        final response = await appServiceClient.artists();
        if (response.response.statusCode == 200 ||
            response.response.statusCode == 201) {
          return Success(response.data);
        } else {
          return Error(FailureModel.fromJson(response.response.data));
        }
      } on DioException catch (e) {
        return Error(FailureModel.fromJson(e.response?.data ?? defaultError));
      }
    } else {
      return const Error(FailureModel(message: "No internet"));
    }
  }

  @override
  Future<Result<BaseResponseModel, FailureModel>> createArtist(
      {required CreateRequestArtistModel createRequestArtistModel}) async {
    if (await networkInfo.isConnected) {
      try {
        final response = await appServiceClient.createArtist(
            request: createRequestArtistModel);
        if (response.response.statusCode == 200 ||
            response.response.statusCode == 201) {
          return Success(response.data);
        } else {
          return Error(FailureModel.fromJson(response.response.data));
        }
      } on DioException catch (e) {
        return Error(FailureModel.fromJson(e.response?.data ?? defaultError));
      }
    } else {
      return const Error(FailureModel(message: "No internet"));
    }
  }

  @override
  Future<Result<BaseResponseModel, FailureModel>> deleteArtist(
      {required int artistId}) async {
    if (await networkInfo.isConnected) {
      try {
        final response = await appServiceClient.deleteArtist(id: artistId);
        if (response.response.statusCode == 200 ||
            response.response.statusCode == 201) {
          return Success(response.data);
        } else {
          return Error(FailureModel.fromJson(response.response.data));
        }
      } on DioException catch (e) {
        return Error(FailureModel.fromJson(e.response?.data ?? defaultError));
      }
    } else {
      return const Error(FailureModel(message: "No internet"));
    }
  }

  @override
  Future<Result<BaseResponseModel, FailureModel>> updateArtist(
      {required UpdateRequestArtistModel updateRequestArtistModel}) async {
    if (await networkInfo.isConnected) {
      try {
        final response = await appServiceClient.updateArtist(
            request: updateRequestArtistModel);
        if (response.response.statusCode == 200 ||
            response.response.statusCode == 201) {
          return Success(response.data);
        } else {
          return Error(FailureModel.fromJson(response.response.data));
        }
      } on DioException catch (e) {
        return Error(FailureModel.fromJson(e.response?.data ?? defaultError));
      }
    } else {
      return const Error(FailureModel(message: "No internet"));
    }
  }

  @override
  Future<Result<BaseResponseModel, FailureModel>> createSong(
      {required CreateSongRequestModel createSongRequestModel}) async {
    if (await networkInfo.isConnected) {
      try {
        final response =
            await appServiceClient.createSong(request: createSongRequestModel);
        if (response.response.statusCode == 200 ||
            response.response.statusCode == 201) {
          return Success(response.data);
        } else {
          return Error(FailureModel.fromJson(response.response.data));
        }
      } on DioException catch (e) {
        return Error(FailureModel.fromJson(e.response?.data ?? defaultError));
      }
    } else {
      return const Error(FailureModel(message: "No internet"));
    }
  }

  @override
  Future<Result<BaseResponseModel, FailureModel>> deleteSong(
      {required int songId}) async {
    if (await networkInfo.isConnected) {
      try {
        final response = await appServiceClient.deleteSong(id: songId);
        if (response.response.statusCode == 200 ||
            response.response.statusCode == 201) {
          return Success(response.data);
        } else {
          return Error(FailureModel.fromJson(response.response.data));
        }
      } on DioException catch (e) {
        return Error(FailureModel.fromJson(e.response?.data ?? defaultError));
      }
    } else {
      return const Error(FailureModel(message: "No internet"));
    }
  }

  @override
  Future<Result<BaseResponseModel<SongModel>, FailureModel>> songById(
      int songId) async {
    if (await networkInfo.isConnected) {
      try {
        final response = await appServiceClient.songById(id: songId);
        if (response.response.statusCode == 200 ||
            response.response.statusCode == 201) {
          return Success(response.data);
        } else {
          return Error(FailureModel.fromJson(response.response.data));
        }
      } on DioException catch (e) {
        return Error(FailureModel.fromJson(e.response?.data ?? defaultError));
      }
    } else {
      return const Error(FailureModel(message: "No internet"));
    }
  }

  @override
  Future<Result<BaseResponseModel<List<SongModel>>, FailureModel>>
      songs() async {
    if (await networkInfo.isConnected) {
      try {
        final response = await appServiceClient.songs();
        if (response.response.statusCode == 200 ||
            response.response.statusCode == 201) {
          return Success(response.data);
        } else {
          return Error(FailureModel.fromJson(response.response.data));
        }
      } on DioException catch (e) {
        return Error(FailureModel.fromJson(e.response?.data ?? defaultError));
      }
    } else {
      return const Error(FailureModel(message: "No internet"));
    }
  }

  @override
  Future<Result<BaseResponseModel, FailureModel>> updateSong(
      {required UpdateRequestSongModel updateRequestSongModel}) async {
    if (await networkInfo.isConnected) {
      try {
        final response =
            await appServiceClient.updateSong(request: updateRequestSongModel);
        if (response.response.statusCode == 200 ||
            response.response.statusCode == 201) {
          return Success(response.data);
        } else {
          return Error(FailureModel.fromJson(response.response.data));
        }
      } on DioException catch (e) {
        return Error(FailureModel.fromJson(e.response?.data ?? defaultError));
      }
    } else {
      return const Error(FailureModel(message: "No internet"));
    }
  }

  @override
  Future<Result<BaseResponseModel<List<SongModel>>, FailureModel>>
      songsByArtist(int artistId) async {
    if (await networkInfo.isConnected) {
      try {
        final response =
            await appServiceClient.songsByArtist(artistId: artistId);
        if (response.response.statusCode == 200 ||
            response.response.statusCode == 201) {
          return Success(response.data);
        } else {
          return Error(FailureModel.fromJson(response.response.data));
        }
      } on DioException catch (e) {
        return Error(FailureModel.fromJson(e.response?.data ?? defaultError));
      }
    } else {
      return const Error(FailureModel(message: "No internet"));
    }
  }

  @override
  Future<Result<BaseResponseModel<List<StaticModel>>, FailureModel>>
      countries() async {
    if (await networkInfo.isConnected) {
      try {
        final response = await appServiceClient.countries();
        if (response.response.statusCode == 200 ||
            response.response.statusCode == 201) {
          return Success(response.data);
        } else {
          return Error(FailureModel.fromJson(response.response.data));
        }
      } on DioException catch (e) {
        return Error(FailureModel.fromJson(e.response?.data ?? defaultError));
      }
    } else {
      return const Error(FailureModel(message: "No internet"));
    }
  }

  @override
  Future<Result<BaseResponseModel<List<StaticModel>>, FailureModel>>
      songsTypes() async {
    if (await networkInfo.isConnected) {
      try {
        final response = await appServiceClient.songsType();
        if (response.response.statusCode == 200 ||
            response.response.statusCode == 201) {
          return Success(response.data);
        } else {
          return Error(FailureModel.fromJson(response.response.data));
        }
      } on DioException catch (e) {
        return Error(FailureModel.fromJson(e.response?.data ?? defaultError));
      }
    } else {
      return const Error(FailureModel(message: "No internet"));
    }
  }

  @override
  Future<Result<BaseResponseModel, FailureModel>> createInvoice(
      {required CreateInvoiceRequest request}) async {
    if (await networkInfo.isConnected) {
      try {
        final response = await appServiceClient.createInvoice(request: request);
        if (response.response.statusCode == 200 ||
            response.response.statusCode == 201) {
          return Success(response.data);
        } else {
          return Error(FailureModel.fromJson(response.response.data));
        }
      } on DioException catch (e) {
        return Error(FailureModel.fromJson(e.response?.data ?? defaultError));
      }
    } else {
      return const Error(FailureModel(message: "No internet"));
    }
  }

  @override
  Future<Result<BaseResponseModel<ProfileModel>, FailureModel>>
      getProfile() async {
    if (await networkInfo.isConnected) {
      try {
        final response = await appServiceClient.getProfile();
        if (response.response.statusCode == 200 ||
            response.response.statusCode == 201) {
          return Success(response.data);
        } else {
          return Error(FailureModel.fromJson(response.response.data));
        }
      } on DioException catch (e) {
        return Error(FailureModel.fromJson(e.response?.data ?? defaultError));
      }
    } else {
      return const Error(FailureModel(message: "No internet"));
    }
  }
}
