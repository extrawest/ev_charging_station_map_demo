import 'dart:async';

import 'package:samoilenko_maps_app/network/api_client.dart';

import '../../../common/services/logger.dart';
import '../models/search_result.dart';

//'https://api.github.com/search/repositories?q='
const String searchPath = '/search/repositories';

abstract class GithubClient {
  Future<SearchResult> search(String term);
}

class GithubClientImpl implements GithubClient {
  final ApiClient _apiClient;

  GithubClientImpl(this._apiClient);

  @override
  Future<SearchResult> search(String term) async {
    try {
      final response = await _apiClient.get(searchPath, params: {'q': term});
      return SearchResult.fromJson(response);
    } catch (e) {
      log.severe('search error: $e, term: $term');
      rethrow;
    }
  }
}
