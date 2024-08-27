import 'package:chat_room/app/bindings/auth_binding.dart';
import 'package:chat_room/app/bindings/chat_binding.dart';
import 'package:chat_room/app/modules/invite_friend/bindings/invite_friend_binding.dart';
import 'package:chat_room/app/modules/invite_friend/views/invite_friend_view.dart';
import 'package:chat_room/app/modules/level/bindings/level_binding.dart';
import 'package:chat_room/app/modules/level/views/level_view.dart';
import 'package:chat_room/app/modules/medal/bindings/medal_binding.dart';
import 'package:chat_room/app/modules/medal/views/medal_view.dart';
import 'package:chat_room/app/modules/room_settings/bindings/room_settings_binding.dart';
import 'package:chat_room/app/modules/room_settings/views/room_settings_view.dart';
import 'package:chat_room/app/modules/wallet/bindings/wallet_binding.dart';
import 'package:chat_room/app/modules/wallet/views/wallet_view.dart';
import 'package:chat_room/app/routes/route_names.dart';
import 'package:chat_room/app/ui/android/screens/auth/login_screen.dart';
import 'package:chat_room/app/ui/android/screens/auth/otp_screen.dart';
import 'package:chat_room/app/ui/android/screens/bottom_nav_bar/bottom_nav_bar_screen.dart';
import 'package:chat_room/app/ui/android/screens/chat/chat_screen.dart';
import 'package:chat_room/app/ui/android/screens/chat_room/chat_room_screen.dart';
import 'package:chat_room/app/ui/android/screens/cp/cp_screen.dart';
import 'package:chat_room/app/ui/android/screens/gender_country/gender_country_screen.dart';
import 'package:chat_room/app/ui/android/screens/message/message_details_screen.dart';
import 'package:chat_room/app/ui/android/screens/message/message_screen.dart';
import 'package:chat_room/app/ui/android/screens/my_item/my_item_screen.dart';
import 'package:chat_room/app/ui/android/screens/store/store_screen.dart';
import 'package:get/get.dart';

class RouteDestinations{
  static List<GetPage> pages = [
    GetPage(name: RouteNames.loginScreen, page:()=> LoginScreen(),binding: AuthBinding()),
    GetPage(name: RouteNames.otpScreen, page:()=> OTPScreen()),
    GetPage(name: RouteNames.genderCountryScreen, page:()=> GenderAndCountryScreen(),binding: GenderAndCountryBinding()),
    GetPage(name: RouteNames.bottomNavBarScreen, page:()=> BottomNavBarScreen()),
    GetPage(name: RouteNames.chatScreen, page:()=> ChatScreen(),binding:ChatBinding()),
    GetPage(name: RouteNames.chatRoomScreen, page:()=> ChatRoomScreen()),
    GetPage(name: RouteNames.messageScreen, page:()=> MessageScreen()),
    GetPage(name: RouteNames.messageDetailsScreen, page:()=> MessageDetailsScreen()),
    GetPage(
      name: RouteNames.walletScreen,
      page: () => const WalletView(),
      binding: WalletBinding(),
    ),
    GetPage(
      name: RouteNames.inviteFriendScreen,
      page: () => const InviteFriendView(),
      binding: InviteFriendBinding(),
    ),
    GetPage(
      name: RouteNames.medalScreen,
      page: () => const MedalView(),
      binding: MedalBinding(),
    ),
    GetPage(
      name: RouteNames.levelScreen,
      page: () => const LevelView(),
      binding: LevelBinding(),
    ),
    GetPage(name: RouteNames.cpScreen, page:()=> CPScreen()),
    GetPage(name: RouteNames.store, page:()=> StoreScreen()),
    GetPage(name: RouteNames.myItems, page:()=> MyItemScreen()),
    GetPage(
      name: RouteNames.roomSettings,
      page: () => const RoomSettingsView(),
      binding: RoomSettingsBinding(),
    ),
  ];
}