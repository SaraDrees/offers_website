// import 'package:flutter/material.dart';
// import 'package:flutter/foundation.dart';
// import 'package:get/get.dart';

// class FluentGetXApp extends StatelessWidget {
//   final GlobalKey<NavigatorState>? navigatorKey;

//   final Widget? home;
//   final Map<String, WidgetBuilder>? routes;
//   final String? initialRoute;
//   final RouteFactory? onGenerateRoute;
//   final InitialRouteListFactory? onGenerateInitialRoutes;
//   final RouteFactory? onUnknownRoute;
//   final List<NavigatorObserver>? navigatorObservers;
//   final TransitionBuilder? builder;
//   final String title;
//   final GenerateAppTitle? onGenerateTitle;
//   final ThemeData? theme;
//   final ThemeData? darkTheme;
//   final ThemeMode themeMode;
//   final CustomTransition? customTransition;
//   final Map<String, Map<String, String>>? translationsKeys;
//   final Translations? translations;
//   final TextDirection? textDirection;
//   final Locale? locale;
//   final Locale? fallbackLocale;
//   final Iterable<LocalizationsDelegate<dynamic>>? localizationsDelegates;
//   final LocaleListResolutionCallback? localeListResolutionCallback;
//   final LocaleResolutionCallback? localeResolutionCallback;
//   final Iterable<Locale> supportedLocales;
//   final bool showPerformanceOverlay;
//   final bool checkerboardRasterCacheImages;
//   final bool checkerboardOffscreenLayers;
//   final bool showSemanticsDebugger;
//   final bool debugShowCheckedModeBanner;
//   final Map<LogicalKeySet, Intent>? shortcuts;
//   final ThemeData? highContrastTheme;
//   final ThemeData? highContrastDarkTheme;
//   final Map<Type, Action<Intent>>? actions;
//   final bool debugShowMaterialGrid;
//   final ValueChanged<Routing?>? routingCallback;
//   final Transition? defaultTransition;
//   final bool? opaqueRoute;
//   final VoidCallback? onInit;
//   final VoidCallback? onReady;
//   final VoidCallback? onDispose;
//   final bool? enableLog;
//   final LogWriterCallback? logWriterCallback;
//   final bool? popGesture;
//   final SmartManagement smartManagement;
//   final Bindings? initialBinding;
//   final Duration? transitionDuration;
//   final bool? defaultGlobalState;
//   final List<GetPage>? getPages;
//   final GetPage? unknownRoute;
//   final RouteInformationProvider? routeInformationProvider;
//   final RouteInformationParser<Object>? routeInformationParser;
//   final RouterDelegate<Object>? routerDelegate;
//   final BackButtonDispatcher? backButtonDispatcher;
//   final bool useInheritedMediaQuery;
//   const FluentGetXApp({
//     Key? key,
//     this.navigatorKey,
//     this.home,
//     Map<String, Widget Function(BuildContext)> this.routes =
//         const <String, WidgetBuilder>{},
//     this.initialRoute,
//     this.onGenerateRoute,
//     this.onGenerateInitialRoutes,
//     this.onUnknownRoute,
//     this.useInheritedMediaQuery = false,
//     List<NavigatorObserver> this.navigatorObservers =
//         const <NavigatorObserver>[],
//     this.builder,
//     this.textDirection,
//     this.title = '',
//     this.onGenerateTitle,
//     this.theme,
//     this.darkTheme,
//     this.themeMode = ThemeMode.light,
//     this.locale,
//     this.fallbackLocale,
//     this.localizationsDelegates,
//     this.localeListResolutionCallback,
//     this.localeResolutionCallback,
//     this.supportedLocales = const <Locale>[Locale('en', 'US')],
//     this.debugShowMaterialGrid = false,
//     this.showPerformanceOverlay = false,
//     this.checkerboardRasterCacheImages = false,
//     this.checkerboardOffscreenLayers = false,
//     this.showSemanticsDebugger = false,
//     this.debugShowCheckedModeBanner = true,
//     this.shortcuts,
//     this.customTransition,
//     this.translationsKeys,
//     this.translations,
//     this.onInit,
//     this.onReady,
//     this.onDispose,
//     this.routingCallback,
//     this.defaultTransition,
//     this.getPages,
//     this.opaqueRoute,
//     this.enableLog = kDebugMode,
//     this.logWriterCallback,
//     this.popGesture,
//     this.transitionDuration,
//     this.defaultGlobalState,
//     this.smartManagement = SmartManagement.full,
//     this.initialBinding,
//     this.unknownRoute,
//     this.highContrastTheme,
//     this.highContrastDarkTheme,
//     this.actions,
//   })  : routeInformationProvider = null,
//         routeInformationParser = null,
//         routerDelegate = null,
//         backButtonDispatcher = null,
//         super(key: key);

//   @override
//   Widget build(BuildContext context) => GetBuilder<GetMaterialController>(
//         init: Get.rootController,
//         dispose: (d) {
//           onDispose?.call();
//         },
//         initState: (i) {
//           Get.engine!.addPostFrameCallback((timeStamp) {
//             onReady?.call();
//           });
//           if (locale != null) Get.locale = locale;

//           if (fallbackLocale != null) Get.fallbackLocale = fallbackLocale;

//           if (translations != null) {
//             Get.addTranslations(translations!.keys);
//           } else if (translationsKeys != null) {
//             Get.addTranslations(translationsKeys!);
//           }

//           Get.customTransition = customTransition;

//           initialBinding?.dependencies();
//           if (getPages != null) {
//             Get.addPages(getPages!);
//           }

//           //Get.setDefaultDelegate(routerDelegate);
//           Get.smartManagement = smartManagement;
//           onInit?.call();

//           Get.config(
//             enableLog: enableLog ?? Get.isLogEnable,
//             logWriterCallback: logWriterCallback,
//             defaultTransition: defaultTransition ?? Get.defaultTransition,
//             defaultOpaqueRoute: opaqueRoute ?? Get.isOpaqueRouteDefault,
//             defaultPopGesture: popGesture ?? Get.isPopGestureEnable,
//             defaultDurationTransition:
//                 transitionDuration ?? Get.defaultTransitionDuration,
//           );
//         },
//         builder: (_) => FluentApp(
//           key: _.unikey,
//           navigatorKey:
//               (navigatorKey == null ? Get.key : Get.addKey(navigatorKey!)),

//           home: home,
//            theme: ThemeData(
//           scaffoldBackgroundColor: Colors.white,
//           accentColor: Colors.blue,
//           // navigationPaneTheme: NavigationPaneThemeData(
//           //   itemHeaderTextStyle:TextStyle(color : Colors.white),
//           //   backgroundColor: Color.fromARGB(255, 87, 51, 216) ,
//           // selectedIconColor:  ButtonState.all(Colors.white)),
//           iconTheme:  IconThemeData(size: 24 , color: Colors.blue)),
//       darkTheme: ThemeData(
//           scaffoldBackgroundColor: Colors.black,
//           accentColor: Colors.blue,
//           iconTheme: const IconThemeData(size: 24)),
//           routes: routes ?? const <String, WidgetBuilder>{},
//           initialRoute: initialRoute,
//           onGenerateRoute: (getPages != null ? generator : onGenerateRoute),
//           onGenerateInitialRoutes: (getPages == null || home != null)
//               ? onGenerateInitialRoutes
//               : initialRoutesGenerate,
//           onUnknownRoute: onUnknownRoute,
//           navigatorObservers: (navigatorObservers == null
//               ? <NavigatorObserver>[GetObserver(routingCallback, Get.routing)]
//               : <NavigatorObserver>[GetObserver(routingCallback, Get.routing)]
//             ..addAll(navigatorObservers!)),
//           builder: builder,
//           title: title,
//           onGenerateTitle: onGenerateTitle,
//           // theme: _.theme ?? theme ?? ThemeData.fallback(),
//           // darkTheme: _.darkTheme ?? darkTheme ?? theme ?? ThemeData.fallback(),
//           themeMode: _.themeMode ?? themeMode,
//           // locale: Get.locale ?? locale,
//           // localizationsDelegates: localizationsDelegates,
//           // localeListResolutionCallback: localeListResolutionCallback,
//           // localeResolutionCallback: localeResolutionCallback,
//           // supportedLocales: supportedLocales,
//           showPerformanceOverlay: showPerformanceOverlay,
//           checkerboardRasterCacheImages: checkerboardRasterCacheImages,
//           checkerboardOffscreenLayers: checkerboardOffscreenLayers,
//           showSemanticsDebugger: showSemanticsDebugger,
//           debugShowCheckedModeBanner: debugShowCheckedModeBanner,
//           shortcuts: shortcuts,
//           //   actions: actions,
//         ),
//       );

//   Route<dynamic> generator(RouteSettings settings) {
//     return PageRedirect(settings: settings, unknownRoute: unknownRoute).page();
//   }

//   List<Route<dynamic>> initialRoutesGenerate(String name) {
//     return [
//       PageRedirect(
//         settings: RouteSettings(name: name),
//         unknownRoute: unknownRoute,
//       ).page()
//     ];
//   }
// }
