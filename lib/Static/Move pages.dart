import 'package:gas_app/View/ScreenAdmin/AreasAndBlocksScreen.dart';
import 'package:gas_app/View/ScreenAdmin/Complaints_Admin_Page.dart';
import 'package:gas_app/View/ScreenAdmin/Order_Managemet.dart';
import 'package:get/get.dart';

import '../View/ScreenAdmin/consumer_managment.dart';
import '../View/ScreenSupplier/Mangamment_product.dart';
import '../View/ScreenSupplier/OrderPage.dart';
// اذا list  خاصة تنقل بين صفحات مشرف
final pages = [
  GetPage(name: '/page1', page: () => view_data_consumer()),
  GetPage(name: '/page2', page: () => AreasAndBlocksScreen()),
  GetPage(name: '/page3', page: () => Order_Managemet()),
  GetPage(name: '/page4', page: () => ComplaintsAdminPage()),
];
/// تنقل بين صفحات تبع مورد
final Pages = [
  GetPage(name: '/page1', page: () => Order_Page()),
  GetPage(name: '/page2', page: () => ManageProductsPage()),
 
];
