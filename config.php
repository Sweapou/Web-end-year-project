<?php
// $casURL = "https://cas-uds.grenet.fr/login?service=http%3A%2F%2Fsrv-prj-new.iut-acy.local%2FRT%2FA23%2F";
// $casValidateURL = "https://cas-uds.grenet.fr/serviceValidate?service=http%3A%2F%2Fsrv-prj-new.iut-acy.local%2FRT%2FA23%2F";
// $homeURL = "/RT/A23/";
defined("casURL") or define("casURL", "https://cas-uds.grenet.fr/login?service=http%3A%2F%2Fsrv-prj-new.iut-acy.local%2FRT%2FA23%2F");
defined("casValidateURL") or define("casValidateURL", "https://cas-uds.grenet.fr/serviceValidate?service=http%3A%2F%2Fsrv-prj-new.iut-acy.local%2FRT%2FA23%2F");
defined("casLogoutURL") or define("casLogoutURL", "https://cas-uds.grenet.fr/logout?service=http%3A%2F%2Fsrv-prj-new.iut-acy.local%2FRT%2FA23%2F");
defined("homeURL") or define("homeURL", "/RT/A23/");
defined("homeLeboncoin") or define("homeLeboncoin", "/RT/A23/pages/leboncoin/");
defined("homePages") or define("homePages", "/RT/A23/pages/");
defined("errorURL") or define("errorURL", "/RT/A23/pages/error.php?error=");
defined("dbUser") or define("dbUser", "rta23");
defined("dbPass") or define("dbPass", "bH4WLp");
defined("dbName") or define("dbName", "rta23");
defined("dbHost") or define("dbHost", "srv-prj-new");
defined("dbPort") or define("dbPort", "5432");
defined("DIR_BASE") or define("DIR_BASE", $_SERVER['DOCUMENT_ROOT'].'RT/A23/');
defined("KEY_FILE") or define("KEY_FILE", DIR_BASE."key.txt");
?>