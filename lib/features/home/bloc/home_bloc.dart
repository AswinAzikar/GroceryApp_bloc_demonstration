import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    FutureOr<void> homeProductWishlistButtonClickedEvent(
        HomeProductWishlistButtonClickedEvent event, Emitter<HomeState> emit) {
      print("Wishlist Clicked");
    }

    FutureOr<void> homeCartButtonClickedEvent(
        HomeProductCartButtonClickedEvent event, Emitter<HomeState> emit) {
      print("Cartlist Clicked");
    }

    FutureOr<void> homeProductWishlistButtonNavigateEvent(
        HomeProductWishlistButtonNavigateEvent event, Emitter<HomeState> emit) {
      print("Wishlist product Clicked");
    }

    FutureOr<void> homeCartButtonNavigateEvent(
        HomeCartButtonNavigateEvent event, Emitter<HomeState> emit) {
      print("cart product Clicked");
    }

    on<HomeProductWishlistButtonClickedEvent>(
      homeProductWishlistButtonClickedEvent,
    );
    on<HomeProductCartButtonClickedEvent>(
      homeCartButtonClickedEvent,
    );
    on<HomeProductWishlistButtonNavigateEvent>(
      homeProductWishlistButtonNavigateEvent,
    );
    on<HomeCartButtonNavigateEvent>(
      homeCartButtonNavigateEvent,
    );
  }
}
