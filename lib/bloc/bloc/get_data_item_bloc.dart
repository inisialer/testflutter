import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:testflutter/model/response_get_data.dart';
import 'package:testflutter/service/api_service_item.dart';

part 'get_data_item_event.dart';
part 'get_data_item_state.dart';

class GetDataItemBloc extends Bloc<GetDataItemEvent, GetDataItemState> {
  final ApiServiceItem _apiServiceItem = ApiServiceItem();
  GetDataItemBloc() : super(GetDataItemInitial()) {
    on<GetData>((event, emit) async {
      emit(GetDataLoading());
      try {
        final response = await _apiServiceItem.getData();
        emit(GetDataSuccess(ResponseGetData.fromJson(response.data)));
      } on DioError catch (e) {
        emit(GetDataError(e.response?.data.toString() ?? ''));
      } catch (e) {
        emit(GetDataError(e.toString()));
      }
      // TODO: implement event handler
    });
  }
}
