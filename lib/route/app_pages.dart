import 'package:get/get.dart';
import 'package:hearing_impairment/pages/hearing_test/content/question1/question1_view.dart';
import 'package:hearing_impairment/pages/hearing_test/content/question1/question1_binding.dart';
import 'package:hearing_impairment/pages/hearing_test/content/question10/question10_binding.dart';
import 'package:hearing_impairment/pages/hearing_test/content/question10/question10_view.dart';
import 'package:hearing_impairment/pages/hearing_test/content/question2/question2_binding.dart';
import 'package:hearing_impairment/pages/hearing_test/content/question2/question2_view.dart';
import 'package:hearing_impairment/pages/hearing_test/content/question3/question3_binding.dart';
import 'package:hearing_impairment/pages/hearing_test/content/question3/question3_view.dart';
import 'package:hearing_impairment/pages/hearing_test/content/question4/question4_binding.dart';
import 'package:hearing_impairment/pages/hearing_test/content/question4/question4_view.dart';
import 'package:hearing_impairment/pages/hearing_test/content/question5/question5_binding.dart';
import 'package:hearing_impairment/pages/hearing_test/content/question5/question5_view.dart';
import 'package:hearing_impairment/pages/hearing_test/content/question6/question6_binding.dart';
import 'package:hearing_impairment/pages/hearing_test/content/question6/question6_view.dart';
import 'package:hearing_impairment/pages/hearing_test/content/question7/question7_binding.dart';
import 'package:hearing_impairment/pages/hearing_test/content/question7/question7_view.dart';
import 'package:hearing_impairment/pages/hearing_test/content/question8/question8_binding.dart';
import 'package:hearing_impairment/pages/hearing_test/content/question8/question8_view.dart';
import 'package:hearing_impairment/pages/hearing_test/content/question9/question9_binding.dart';
import 'package:hearing_impairment/pages/hearing_test/content/question9/question9_view.dart';
import 'package:hearing_impairment/pages/hearing_test/main_page/hearing_test_main_view.dart';
import 'package:hearing_impairment/pages/hearing_test/main_page/main_binding.dart';
import 'package:hearing_impairment/pages/hearing_test/result/result_binding.dart';
import 'package:hearing_impairment/pages/hearing_test/result/result_view.dart';
import 'package:hearing_impairment/pages/home/home_binding.dart';
import 'package:hearing_impairment/pages/home/home_view.dart';
import 'package:hearing_impairment/pages/introduction/intro_binding.dart';
import 'package:hearing_impairment/pages/introduction/intro_view.dart';
import 'package:hearing_impairment/pages/login/login_binding.dart';
import 'package:hearing_impairment/pages/login/login_view.dart';
import 'package:hearing_impairment/pages/not_found_screen.dart';
import 'package:hearing_impairment/pages/signup/signup_binding.dart';
import 'package:hearing_impairment/pages/signup/signup_view.dart';
import 'package:hearing_impairment/pages/splash/splash_binding.dart';
import 'package:hearing_impairment/pages/splash/splash_view.dart';


part 'app_routes.dart';

class AppPages{

  static final List<GetPage> routes = [

    GetPage(
      name: AppRoutes.Splash,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),

    GetPage(
      name: AppRoutes.Intro,
      page: () => const IntroView(),
      binding: IntroBinding(),
    ),

    GetPage(
      name: AppRoutes.SignIn,
      page: () => const SignInView(),
      binding: LoginBinding(),
    ),

    GetPage(
      name: AppRoutes.Signup,
      page: () => const SignUpView(),
      binding:SignUpBinding(),
    ),

    GetPage(
      name: AppRoutes.HomePage,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),

    GetPage(
      name: AppRoutes.HearingTestMainPage,
      page: () => const HearingTestMainPage(),
      binding: MainBinding(),
    ),

    GetPage(
      name: AppRoutes.Question1Page,
      page: () => const FirstQuestionView(),
      binding: FirstQuestionBinding(),
    ),

    GetPage(
      name: AppRoutes.Question2Page,
      page: () => const SecondQuestionView(),
      binding: SecondQuestionBinding(),
    ),

    GetPage(
      name: AppRoutes.Question3Page,
      page: () => const ThirdQuestionView(),
      binding: ThirdQuestionBinding(),
    ),

    GetPage(
      name: AppRoutes.Question4Page,
      page: () => const ForthQuestionView(),
      binding: ForthQuestionBinding(),
    ),

    GetPage(
      name: AppRoutes.Question5Page,
      page: () => const FifthQuestionView(),
      binding: FifthQuestionBinding(),
    ),

    GetPage(
      name: AppRoutes.Question6Page,
      page: () => const SixthQuestionView(),
      binding: SixthQuestionBinding(),
    ),

    GetPage(
      name: AppRoutes.Question7Page,
      page: () => const SeventhQuestionView(),
      binding: SeventhQuestionBinding(),
    ),

    GetPage(
      name: AppRoutes.Question8Page,
      page: () => const EighthQuestionView(),
      binding: EighthQuestionBinding(),
    ),

    GetPage(
      name: AppRoutes.Question9Page,
      page: () => const NinthQuestionView(),
      binding: NinthQuestionBinding(),
    ),

    GetPage(
      name: AppRoutes.Question10Page,
      page: () => const TenthQuestionView(),
      binding: TenthQuestionBinding(),
    ),

    GetPage(
      name: AppRoutes.ResultPage,
      page: () => const ResultView(),
      binding: ResultBinding(),
    ),
  ];

  static final unknownRoute = GetPage(
    name: AppRoutes.NotFound,
    page: () => const NotfoundScreen(),
  );
}