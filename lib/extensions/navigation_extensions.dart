import 'package:flutter/material.dart';

/// Extension methods on [BuildContext] to simplify navigation operations.
extension NavigationExtensions on BuildContext {
  /// Gets the name of the current route, if available.
  ///
  /// Returns the name of the route from [ModalRoute.settings], or `null` if no
  /// route is currently active.
  Object? get routeName => ModalRoute.of(this)?.settings.name;

  /// Gets the settings of the current route, if available.
  ///
  /// Returns the [RouteSettings] of the route from [ModalRoute.settings], or `null`
  /// if no route is currently active.
  Object? get routeSettings => ModalRoute.of(this)?.settings;

  /// Gets the arguments passed to the current route, if available.
  ///
  /// Returns the arguments from [ModalRoute.settings.arguments], or `null` if no
  /// arguments were passed or no route is currently active.
  Object? get arguments => ModalRoute.of(this)?.settings.arguments;

  /// Pops the current route off the navigator.
  ///
  /// Optionally returns a [result] to the previous route.
  void pop<T extends Object?>([T? result]) {
    return Navigator.of(this).pop(result);
  }

  /// Checks if the navigator can pop the current route.
  ///
  /// Returns `true` if there is a previous route to return to, `false` otherwise.
  bool canPop() => Navigator.canPop(this);

  /// Pushes a new [screen] onto the navigator.
  ///
  /// Allows customization of the route via [settings], [maintainState], and
  /// [fullscreenDialog]. [rootNavigator] determines whether to push the route
  /// onto the root navigator or the nearest [Navigator] ancestor.
  ///
  /// Returns a [Future] that completes with the result of the pushed route when
  /// it is popped.
  Future<T?> push<T extends Object?>(
    Widget screen, {
    RouteSettings? settings,
    bool maintainState = true,
    bool fullscreenDialog = false,
    bool rootNavigator = false,
  }) async =>
      await Navigator.of(
        this,
        rootNavigator: rootNavigator,
      ).push(MaterialPageRoute(
        builder: (_) => screen,
        settings: settings,
        maintainState: maintainState,
        fullscreenDialog: fullscreenDialog,
      ));

  /// Pushes a named route onto the navigator.
  ///
  /// Allows passing [arguments] to the route. [rootNavigator] determines whether
  /// to push the route onto the root navigator or the nearest [Navigator] ancestor.
  ///
  /// Returns a [Future] that completes with the result of the pushed route when
  /// it is popped.
  Future<T?> pushNamed<T extends Object?>(
    String routeName, {
    Object? arguments,
    bool rootNavigator = false,
  }) {
    return Navigator.of(
      this,
      rootNavigator: rootNavigator,
    ).pushNamed(routeName, arguments: arguments);
  }

  /// Pushes a new [screen] onto the navigator and removes all previous routes.
  ///
  /// Allows customization of the route via [settings], [maintainState], and
  /// [fullscreenDialog]. [routes] determines if all routes should be removed.
  /// if set to true all routes will be removed, if false only the route before the pushed route will be removed.
  /// [rootNavigator] determines whether to push the route onto the root navigator
  /// or the nearest [Navigator] ancestor.
  ///
  /// Returns a [Future] that completes with the result of the pushed route when
  /// it is popped.
  Future<T?> pushAndRemoveUntil<T extends Object?>(
    Widget screen, {
    RouteSettings? settings,
    bool maintainState = true,
    bool fullscreenDialog = false,
    bool routes = false,
    bool rootNavigator = false,
  }) async =>
      await Navigator.of(
        this,
        rootNavigator: rootNavigator,
      ).pushAndRemoveUntil(
        MaterialPageRoute(
          builder: (_) => screen,
          settings: settings,
          maintainState: maintainState,
          fullscreenDialog: fullscreenDialog,
        ),
        (Route<dynamic> route) => routes,
      );

  /// Pushes a named route onto the navigator and removes all previous routes.
  ///
  /// Allows passing [arguments] to the route. [rootNavigator] determines whether
  /// to push the route onto the root navigator or the nearest [Navigator] ancestor.
  ///
  /// Returns a [Future] that completes with the result of the pushed route when
  /// it is popped.
  Future<T?> pushNamedAndRemoveUntil<T extends Object?>(
    String routeName, {
    Object? arguments,
    bool rootNavigator = false,
  }) {
    return Navigator.of(
      this,
      rootNavigator: rootNavigator,
    ).pushNamedAndRemoveUntil(routeName, (Route<dynamic> route) => false,
        arguments: arguments);
  }

  /// Replaces the current route with a new [screen].
  ///
  /// Allows customization of the route via [settings], [maintainState], and
  /// [fullscreenDialog]. [rootNavigator] determines whether to push the route
  /// onto the root navigator or the nearest [Navigator] ancestor.
  ///
  /// Optionally returns a [result] to the previous route.
  ///
  /// Returns a [Future] that completes with the result of the pushed route when
  /// it is popped.
  Future<T> pushReplacement<T extends Object?>(
    Widget screen, {
    RouteSettings? settings,
    bool maintainState = true,
    bool fullscreenDialog = false,
    bool rootNavigator = false,
    dynamic result,
  }) async =>
      await Navigator.of(
        this,
        rootNavigator: rootNavigator,
      ).pushReplacement(
        MaterialPageRoute(
          builder: (_) => screen,
          settings: settings,
          maintainState: maintainState,
          fullscreenDialog: fullscreenDialog,
        ),
        result: result,
      );

  /// Replaces the current route with a named route.
  ///
  /// Allows passing [arguments] to the route. [rootNavigator] determines whether
  /// to push the route onto the root navigator or the nearest [Navigator] ancestor.
  ///
  /// Optionally returns a [result] to the previous route.
  ///
  /// Returns a [Future] that completes with the result of the pushed route when
  /// it is popped.
  Future<T?> pushReplacementNamed<T extends Object?, TO extends Object?>(
    String routeName, {
    TO? result,
    Object? arguments,
    bool rootNavigator = false,
  }) =>
      Navigator.of(
        this,
        rootNavigator: rootNavigator,
      ).pushReplacementNamed(
        routeName,
        result: result,
        arguments: arguments,
      );
}
