import 'package:recquest_21/presentation/splash_screen/splash_screen.dart';
import 'package:recquest_21/presentation/splash_screen/binding/splash_binding.dart';
import 'package:recquest_21/presentation/onboarding_one_screen/onboarding_one_screen.dart';
import 'package:recquest_21/presentation/onboarding_one_screen/binding/onboarding_one_binding.dart';
import 'package:recquest_21/presentation/onboarding_two_screen/onboarding_two_screen.dart';
import 'package:recquest_21/presentation/onboarding_two_screen/binding/onboarding_two_binding.dart';
import 'package:recquest_21/presentation/onboarding_three_screen/onboarding_three_screen.dart';
import 'package:recquest_21/presentation/onboarding_three_screen/binding/onboarding_three_binding.dart';
import 'package:recquest_21/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:recquest_21/presentation/sign_in_screen/binding/sign_in_binding.dart';
import 'package:recquest_21/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:recquest_21/presentation/sign_up_screen/binding/sign_up_binding.dart';
import 'package:recquest_21/presentation/sign_up_verification_screen/sign_up_verification_screen.dart';
import 'package:recquest_21/presentation/sign_up_verification_screen/binding/sign_up_verification_binding.dart';
import 'package:recquest_21/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:recquest_21/presentation/forgot_password_screen/binding/forgot_password_binding.dart';
import 'package:recquest_21/presentation/forgot_password_verification_screen/forgot_password_verification_screen.dart';
import 'package:recquest_21/presentation/forgot_password_verification_screen/binding/forgot_password_verification_binding.dart';
import 'package:recquest_21/presentation/reset_password_screen/reset_password_screen.dart';
import 'package:recquest_21/presentation/reset_password_screen/binding/reset_password_binding.dart';
import 'package:recquest_21/presentation/mainhome_container_screen/mainhome_container_screen.dart';
import 'package:recquest_21/presentation/mainhome_container_screen/binding/mainhome_container_binding.dart';
import 'package:recquest_21/presentation/events_screen/events_screen.dart';
import 'package:recquest_21/presentation/events_screen/binding/events_binding.dart';
import 'package:recquest_21/presentation/search_events_screen/search_events_screen.dart';
import 'package:recquest_21/presentation/search_events_screen/binding/search_events_binding.dart';
import 'package:recquest_21/presentation/pictures_screen/pictures_screen.dart';
import 'package:recquest_21/presentation/pictures_screen/binding/pictures_binding.dart';
import 'package:recquest_21/presentation/photo_open_overlay_screen/photo_open_overlay_screen.dart';
import 'package:recquest_21/presentation/photo_open_overlay_screen/binding/photo_open_overlay_binding.dart';
import 'package:recquest_21/presentation/event_details_about_screen/event_details_about_screen.dart';
import 'package:recquest_21/presentation/event_details_about_screen/binding/event_details_about_binding.dart';
import 'package:recquest_21/presentation/event_details_images_screen/event_details_images_screen.dart';
import 'package:recquest_21/presentation/event_details_images_screen/binding/event_details_images_binding.dart';
import 'package:recquest_21/presentation/event_details_reviews_screen/event_details_reviews_screen.dart';
import 'package:recquest_21/presentation/event_details_reviews_screen/binding/event_details_reviews_binding.dart';
import 'package:recquest_21/presentation/map_view_screen/map_view_screen.dart';
import 'package:recquest_21/presentation/map_view_screen/binding/map_view_binding.dart';
import 'package:recquest_21/presentation/invite_friends_screen/invite_friends_screen.dart';
import 'package:recquest_21/presentation/invite_friends_screen/binding/invite_friends_binding.dart';
import 'package:recquest_21/presentation/search_event_list_screen/search_event_list_screen.dart';
import 'package:recquest_21/presentation/search_event_list_screen/binding/search_event_list_binding.dart';
import 'package:recquest_21/presentation/create_events_screen/create_events_screen.dart';
import 'package:recquest_21/presentation/create_events_screen/binding/create_events_binding.dart';
import 'package:recquest_21/presentation/notifications_list_screen/notifications_list_screen.dart';
import 'package:recquest_21/presentation/notifications_list_screen/binding/notifications_list_binding.dart';
import 'package:recquest_21/presentation/notifications_empty_screen/notifications_empty_screen.dart';
import 'package:recquest_21/presentation/notifications_empty_screen/binding/notifications_empty_binding.dart';
import 'package:recquest_21/presentation/share_screen/share_screen.dart';
import 'package:recquest_21/presentation/share_screen/binding/share_binding.dart';
import 'package:recquest_21/presentation/filters_screen/filters_screen.dart';
import 'package:recquest_21/presentation/filters_screen/binding/filters_binding.dart';
import 'package:recquest_21/presentation/my_profile_screen/my_profile_screen.dart';
import 'package:recquest_21/presentation/my_profile_screen/binding/my_profile_binding.dart';
import 'package:recquest_21/presentation/personal_information_screen/personal_information_screen.dart';
import 'package:recquest_21/presentation/personal_information_screen/binding/personal_information_binding.dart';
import 'package:recquest_21/presentation/account_information_screen/account_information_screen.dart';
import 'package:recquest_21/presentation/account_information_screen/binding/account_information_binding.dart';
import 'package:recquest_21/presentation/organizer_profile_about_screen/organizer_profile_about_screen.dart';
import 'package:recquest_21/presentation/organizer_profile_about_screen/binding/organizer_profile_about_binding.dart';
import 'package:recquest_21/presentation/organizer_profile_images_screen/organizer_profile_images_screen.dart';
import 'package:recquest_21/presentation/organizer_profile_images_screen/binding/organizer_profile_images_binding.dart';
import 'package:recquest_21/presentation/organizer_profile_events_screen/organizer_profile_events_screen.dart';
import 'package:recquest_21/presentation/organizer_profile_events_screen/binding/organizer_profile_events_binding.dart';
import 'package:recquest_21/presentation/organizer_profile_reviews_screen/organizer_profile_reviews_screen.dart';
import 'package:recquest_21/presentation/organizer_profile_reviews_screen/binding/organizer_profile_reviews_binding.dart';
import 'package:recquest_21/presentation/followers_screen/followers_screen.dart';
import 'package:recquest_21/presentation/followers_screen/binding/followers_binding.dart';
import 'package:recquest_21/presentation/following_screen/following_screen.dart';
import 'package:recquest_21/presentation/following_screen/binding/following_binding.dart';
import 'package:recquest_21/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:recquest_21/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String onboardingOneScreen = '/onboarding_one_screen';

  static const String onboardingTwoScreen = '/onboarding_two_screen';

  static const String onboardingThreeScreen = '/onboarding_three_screen';

  static const String signInScreen = '/sign_in_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String signUpVerificationScreen = '/sign_up_verification_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String forgotPasswordVerificationScreen =
      '/forgot_password_verification_screen';

  static const String resetPasswordScreen = '/reset_password_screen';

  static const String mainhomePage = '/mainhome_page';

  static const String mainhomeContainerScreen = '/mainhome_container_screen';

  static const String eventsScreen = '/events_screen';

  static const String searchEventsScreen = '/search_events_screen';

  static const String picturesScreen = '/pictures_screen';

  static const String photoOpenOverlayScreen = '/photo_open_overlay_screen';

  static const String eventDetailsAboutScreen = '/event_details_about_screen';

  static const String eventDetailsImagesScreen = '/event_details_images_screen';

  static const String eventDetailsReviewsScreen =
      '/event_details_reviews_screen';

  static const String mapViewScreen = '/map_view_screen';

  static const String inviteFriendsScreen = '/invite_friends_screen';

  static const String searchEventListScreen = '/search_event_list_screen';

  static const String createEventsScreen = '/create_events_screen';

  static const String notificationsListScreen = '/notifications_list_screen';

  static const String notificationsEmptyScreen = '/notifications_empty_screen';

  static const String shareScreen = '/share_screen';

  static const String filtersScreen = '/filters_screen';

  static const String myProfileScreen = '/my_profile_screen';

  static const String personalInformationScreen =
      '/personal_information_screen';

  static const String accountInformationScreen = '/account_information_screen';

  static const String organizerProfileAboutScreen =
      '/organizer_profile_about_screen';

  static const String organizerProfileImagesScreen =
      '/organizer_profile_images_screen';

  static const String organizerProfileEventsScreen =
      '/organizer_profile_events_screen';

  static const String organizerProfileReviewsScreen =
      '/organizer_profile_reviews_screen';

  static const String followersScreen = '/followers_screen';

  static const String followingScreen = '/following_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: onboardingOneScreen,
      page: () => OnboardingOneScreen(),
      bindings: [
        OnboardingOneBinding(),
      ],
    ),
    GetPage(
      name: onboardingTwoScreen,
      page: () => OnboardingTwoScreen(),
      bindings: [
        OnboardingTwoBinding(),
      ],
    ),
    GetPage(
      name: onboardingThreeScreen,
      page: () => OnboardingThreeScreen(),
      bindings: [
        OnboardingThreeBinding(),
      ],
    ),
    GetPage(
      name: signInScreen,
      page: () => SignInScreen(),
      bindings: [
        SignInBinding(),
      ],
    ),
    GetPage(
      name: signUpScreen,
      page: () => SignUpScreen(),
      bindings: [
        SignUpBinding(),
      ],
    ),
    GetPage(
      name: signUpVerificationScreen,
      page: () => SignUpVerificationScreen(),
      bindings: [
        SignUpVerificationBinding(),
      ],
    ),
    GetPage(
      name: forgotPasswordScreen,
      page: () => ForgotPasswordScreen(),
      bindings: [
        ForgotPasswordBinding(),
      ],
    ),
    GetPage(
      name: forgotPasswordVerificationScreen,
      page: () => ForgotPasswordVerificationScreen(),
      bindings: [
        ForgotPasswordVerificationBinding(),
      ],
    ),
    GetPage(
      name: resetPasswordScreen,
      page: () => ResetPasswordScreen(),
      bindings: [
        ResetPasswordBinding(),
      ],
    ),
    GetPage(
      name: mainhomeContainerScreen,
      page: () => MainhomeContainerScreen(),
      bindings: [
        MainhomeContainerBinding(),
      ],
    ),
    GetPage(
      name: eventsScreen,
      page: () => EventsScreen(),
      bindings: [
        EventsBinding(),
      ],
    ),
    GetPage(
      name: searchEventsScreen,
      page: () => SearchEventsScreen(),
      bindings: [
        SearchEventsBinding(),
      ],
    ),
    GetPage(
      name: picturesScreen,
      page: () => PicturesScreen(),
      bindings: [
        PicturesBinding(),
      ],
    ),
    GetPage(
      name: photoOpenOverlayScreen,
      page: () => PhotoOpenOverlayScreen(),
      bindings: [
        PhotoOpenOverlayBinding(),
      ],
    ),
    GetPage(
      name: eventDetailsAboutScreen,
      page: () => EventDetailsAboutScreen(),
      bindings: [
        EventDetailsAboutBinding(),
      ],
    ),
    GetPage(
      name: eventDetailsImagesScreen,
      page: () => EventDetailsImagesScreen(),
      bindings: [
        EventDetailsImagesBinding(),
      ],
    ),
    GetPage(
      name: eventDetailsReviewsScreen,
      page: () => EventDetailsReviewsScreen(),
      bindings: [
        EventDetailsReviewsBinding(),
      ],
    ),
    GetPage(
      name: mapViewScreen,
      page: () => MapViewScreen(),
      bindings: [
        MapViewBinding(),
      ],
    ),
    GetPage(
      name: inviteFriendsScreen,
      page: () => InviteFriendsScreen(),
      bindings: [
        InviteFriendsBinding(),
      ],
    ),
    GetPage(
      name: searchEventListScreen,
      page: () => SearchEventListScreen(),
      bindings: [
        SearchEventListBinding(),
      ],
    ),
    GetPage(
      name: createEventsScreen,
      page: () => CreateEventsScreen(),
      bindings: [
        CreateEventsBinding(),
      ],
    ),
    GetPage(
      name: notificationsListScreen,
      page: () => NotificationsListScreen(),
      bindings: [
        NotificationsListBinding(),
      ],
    ),
    GetPage(
      name: notificationsEmptyScreen,
      page: () => NotificationsEmptyScreen(),
      bindings: [
        NotificationsEmptyBinding(),
      ],
    ),
    GetPage(
      name: shareScreen,
      page: () => ShareScreen(),
      bindings: [
        ShareBinding(),
      ],
    ),
    GetPage(
      name: filtersScreen,
      page: () => FiltersScreen(),
      bindings: [
        FiltersBinding(),
      ],
    ),
    GetPage(
      name: myProfileScreen,
      page: () => MyProfileScreen(),
      bindings: [
        MyProfileBinding(),
      ],
    ),
    GetPage(
      name: personalInformationScreen,
      page: () => PersonalInformationScreen(),
      bindings: [
        PersonalInformationBinding(),
      ],
    ),
    GetPage(
      name: accountInformationScreen,
      page: () => AccountInformationScreen(),
      bindings: [
        AccountInformationBinding(),
      ],
    ),
    GetPage(
      name: organizerProfileAboutScreen,
      page: () => OrganizerProfileAboutScreen(),
      bindings: [
        OrganizerProfileAboutBinding(),
      ],
    ),
    GetPage(
      name: organizerProfileImagesScreen,
      page: () => OrganizerProfileImagesScreen(),
      bindings: [
        OrganizerProfileImagesBinding(),
      ],
    ),
    GetPage(
      name: organizerProfileEventsScreen,
      page: () => OrganizerProfileEventsScreen(),
      bindings: [
        OrganizerProfileEventsBinding(),
      ],
    ),
    GetPage(
      name: organizerProfileReviewsScreen,
      page: () => OrganizerProfileReviewsScreen(),
      bindings: [
        OrganizerProfileReviewsBinding(),
      ],
    ),
    GetPage(
      name: followersScreen,
      page: () => FollowersScreen(),
      bindings: [
        FollowersBinding(),
      ],
    ),
    GetPage(
      name: followingScreen,
      page: () => FollowingScreen(),
      bindings: [
        FollowingBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
