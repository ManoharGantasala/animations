import 'package:get/get.dart';

import '../modules/amimatedAlign/bindings/amimated_align_binding.dart';
import '../modules/amimatedAlign/views/amimated_align_view.dart';
import '../modules/animatedContainer/bindings/animated_container_binding.dart';
import '../modules/animatedContainer/views/animated_container_view.dart';
import '../modules/animatedDefaultTextStyle/bindings/animated_default_text_style_binding.dart';
import '../modules/animatedDefaultTextStyle/views/animated_default_text_style_view.dart';
import '../modules/animatedList/bindings/animated_list_binding.dart';
import '../modules/animatedList/views/animated_list_view.dart';
import '../modules/animatedOpacity/bindings/animated_opacity_binding.dart';
import '../modules/animatedOpacity/views/animated_opacity_view.dart';
import '../modules/animatedPadding/bindings/animated_padding_binding.dart';
import '../modules/animatedPadding/views/animated_padding_view.dart';
import '../modules/animationCrossFade/bindings/animation_cross_fade_binding.dart';
import '../modules/animationCrossFade/views/animation_cross_fade_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.ANIMATION_CROSS_FADE;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.AMIMATED_ALIGN,
      page: () => const AmimatedAlignView(),
      binding: AmimatedAlignBinding(),
    ),
    GetPage(
      name: _Paths.ANIMATED_CONTAINER,
      page: () => const AnimatedContainerView(),
      binding: AnimatedContainerBinding(),
    ),
    GetPage(
      name: _Paths.ANIMATED_DEFAULT_TEXT_STYLE,
      page: () => const AnimatedDefaultTextStyleView(),
      binding: AnimatedDefaultTextStyleBinding(),
    ),
    GetPage(
      name: _Paths.ANIMATED_OPACITY,
      page: () => const AnimatedOpacityView(),
      binding: AnimatedOpacityBinding(),
    ),
    GetPage(
      name: _Paths.ANIMATED_PADDING,
      page: () => const AnimatedPaddingView(),
      binding: AnimatedPaddingBinding(),
    ),
    GetPage(
      name: _Paths.ANIMATED_LIST,
      page: () => const AnimatedListView(),
      binding: AnimatedListBinding(),
    ),
    GetPage(
      name: _Paths.ANIMATION_CROSS_FADE,
      page: () => const AnimationCrossFadeView(),
      binding: AnimationCrossFadeBinding(),
    ),
  ];
}
