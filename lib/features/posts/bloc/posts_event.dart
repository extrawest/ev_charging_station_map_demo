part of 'posts_bloc.dart';

abstract class PostsEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class PostsFetchEvent extends PostsEvent {}
