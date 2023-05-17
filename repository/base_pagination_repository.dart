import 'package:intermediate/common/model/model_with_id.dart';
import '../common/model/cursor_pagination_model.dart';
import '../common/model/pagination_params.dart';

abstract class IBasePaginationRepository<T extends IModelWithId> {
  Future<CursorPagination<T>> paginate({
    PaginationParams? paginationParams = const PaginationParams(),
  });
}
