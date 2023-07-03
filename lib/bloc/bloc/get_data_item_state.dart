part of 'get_data_item_bloc.dart';

@immutable
abstract class GetDataItemState extends Equatable {
  const GetDataItemState();

  @override
  List<Object> get props => [];
}

class GetDataItemInitial extends GetDataItemState {}

class GetDataLoading extends GetDataItemState {}

class GetDataSuccess extends GetDataItemState {
  final ResponseGetData data;
  const GetDataSuccess(this.data);
}

class GetDataError extends GetDataItemState {
  final String error;
  const GetDataError(this.error);
}
