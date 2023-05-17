import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intermediate/common/model/cursor_pagination_model.dart';
import 'package:intermediate/product/repository/product_repository.dart';
import '../../common/provider/pagination_provider.dart';
import '../model/product_model.dart';

final productProvider =
    StateNotifierProvider<ProductStateNotifier, CursorPaginationBase>((ref) {
  final repo = ref.watch(productRepositoryProvider);

  return ProductStateNotifier(repository: repo);
});

class ProductStateNotifier
    extends PaginationProvider<ProductModel, ProductRepository> {
  ProductStateNotifier({
    required super.repository,
  });
}
