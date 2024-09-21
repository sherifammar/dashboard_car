class AppLink {
  static const String server = "http://192.168.1.2/car/admin";
  static const String imagelink = "http://192.168.1.2/car/upload";

  static const String login = "$server/aurh/login.php";
  static const String signup = "$server/aurh/signup.php";
  static const String VerfiyCodeSignup = "$server/aurh/resendverfiycode.php";

  // ======= forgetpassword=====//

  static const String checkemail = "$server/forgetpassword/checkemail.php";
  static const String resetpassword =
      "$server/forgetpassword/resetpassword.php";
  static const String verfiycode =
      "$server/forgetpassword/verifycodecheckemail.php";

  //===================cart ======================

//=======home ====

  static const String counthome = "$server/homeadmin/homecounting.php";

  // ================check out ===

  // =================== orders

  static const String pending = "$server/orders/pendingorders.php";
  static const String archive = "$server/orders/archive.php";
  static const String approveorders = "$server/orders/approve&underinspect.php";
  static const String deletorders = "$server/orders/deletorders.php";

  static const String updatetoapprove = "$server/orders/updatetoapprove.php";
  static const String updatetoarchive = "$server/orders/updatetoarchive.php";

  static const String approve_underinspect = "$server/orders/approve&underinspect.php";
  static const String undercheckup = "$server/orders/undercheckup.php";
  static const String underdelivery_finish = "$server/orders/underdelivery&finish.php";
  static const String underfinish = "$server/orders/underfinish.php";

  static const String underfix = "$server/orders/underfix.php";
  static const String upapprovetoinspect ="$server/orders/upapprovetoinspect.php";
  static const String upcheckuptofinish ="$server/orders/upcheckuptofinish.php";
  static const String upfixtocheckup = "$server/orders/upfixtocheckup.php";

  static const String upinspecttofix = "$server/orders/upinspecttofix.php";
}
