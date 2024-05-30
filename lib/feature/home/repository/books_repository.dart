import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:bintango_indonesian_translater/feature/home/model/book.dart';
import 'package:bintango_indonesian_translater/feature/home/state/books_state.dart';
import 'package:bintango_indonesian_translater/shared/http/api_provider.dart';
import 'package:bintango_indonesian_translater/shared/http/api_response.dart';
import 'package:bintango_indonesian_translater/shared/http/app_exception.dart';

abstract class BooksRepositoryProtocol {
  Future<BooksState> fetchBooks();
}

final booksRepositoryProvider = Provider(BooksRepository.new);

class BooksRepository implements BooksRepositoryProtocol {
  BooksRepository(this._ref);

  late final ApiProvider _api = _ref.read(apiProvider);
  final Ref _ref;

  @override
  Future<BooksState> fetchBooks() async {
    final response = await _api.get('books');

    response.when(
        success: (success) {},
        error: (error) {
          return BooksState.error(error);
        },);

    if (response is APISuccess) {
      final value = response.value;
      try {
        final books = booksFromJson(value as List<dynamic>);

        return BooksState.booksLoaded(books);
      } catch (e) {
        return BooksState.error(AppException.errorWithMessage(e.toString()));
      }
    } else if (response is APIError) {
      return BooksState.error(response.exception);
    } else {
      return const BooksState.loading();
    }
  }
}
