<?php
// user levels
define("ewAllowAdd", 1, true);
define("ewAllowDelete", 2, true);
define("ewAllowEdit", 4, true);
define("ewAllowView", 8, true);
define("ewAllowList", 8, true);
define("ewAllowSearch", 8, true);
define("ewAllowAdmin", 16, true);
// database connect
$config["configShare"]["databaseType"] = "mysql";
$config["configShare"]["languageType"] = "hu";
$config["configShare"]["setNames"]="set names utf8";

switch(strtolower($_SERVER['HTTP_HOST'])) {
	case 'localhost':
	case 'mysys.wamp64.wloc':
		$config["configShare"]["databaseServer"] = "localhost";
		$config["configShare"]["databaseSelect"] = "classic_db";
		$config["configShare"]["databaseUser"] = "root";
		$config["configShare"]["databasePassword"] = "";
		break;
	case 'localhost:8012':
	case 'mysys.xampp.wloc':
		$config["configShare"]["databaseServer"] = "localhost:3310";
		$config["configShare"]["databaseSelect"] = "classic_db";
		$config["configShare"]["databaseUser"] = "root";
		$config["configShare"]["databasePassword"] = "";
		break;
	case 'localhost:8100':		// docker php742-mysql5730
		$config["configShare"]["databaseServer"] = "database:3306";
		$config["configShare"]["databaseSelect"] = "classic_db";
		$config["configShare"]["databaseUser"] = "root";
		$config["configShare"]["databasePassword"] = "tiger";
		break;
	default:
		$config["configShare"]["databaseServer"] = "localhost";
		$config["configShare"]["databaseSelect"] = "classic_db";
		$config["configShare"]["databaseUser"] = "root";
		$config["configShare"]["databasePassword"] = "";
		break;
}
$config["configShare"]["serverName"] = $_SERVER["HTTP_NAME"];
$config["configShare"]["whichSystem"] = "mysys";
$config["configShare"]["serverAddress"] = $_SERVER["SERVER_ADDR"];
$config["configShare"]["serverHost"] = $_SERVER["REMOTE_NAME"];
$config["configShare"]["remoteAddress"] = $_SERVER["REMOTE_ADDR"];
$config["configShare"]["remoteHost"] = $_SERVER["REMOTE_HOST"];
$config["configShare"]["baseModul"] = "index.php?modulSelect=vehicle&modulAction=list&vehiclecmd=resetall";
$config["configShare"]["homeModul"] = "vehicle";
$config["configShare"]["registrationModul"] = "index.php?modulSelect=core_users&modulAction=registration";
$config["configShare"]["whichSystemMode"] = "backend";
$config["configShare"]["adminPath"] = "backend/";
$config["configShare"]["adminModulsPath"] = "backend/inc/";
$config["configShare"]["tplPath"] = "tpl/";
$config["configShare"]["cfgPath"] = "cfg/";
$config["configShare"]["incPath"] = "inc/";
$config["configShare"]["normalImgPath"] = "/backend/img/";
$config["configShare"]["imagePath"] = "img/";
$config["configShare"]["cssFileName"] = "css/admin.css";
$config["configShare"]["cssFileNameIE"] = "css/adminie.css";
$config["configShare"]["imageButton"] = "img/button/";
$config["configShare"]["themeStart"] = "olive";
$config["configShare"]["textWraplen"] = "100";
$config["configShare"]["adminLogo"] = "adminlogo.png";
$config["configShare"]["guestUser"] = "Guest";
$config["configShare"]["developerHome"] = "http://rodnas.fw.hu";
$config["configShare"]["docrootPath"] = "../docroot/";
$config["configShare"]["docrootPathHide"] = "../docroot/";
$config["configShare"]["sharePath"] = "share/";
$config["configShare"]["shareModulsPath"] = "share/inc/";
$config["configShare"]["modulFramePath"] = "share/modul/";
$config["configShare"]["modulFrameFile"] = "frame.inc.php";
$config["configShare"]["modulFrameName"] = "modulFrame";
$config["configShare"]["shareLibPath"] = "share/lib/";
$config["configShare"]["adminMail"] = "rodnas@uw.hu";
$config["configShare"]["siteLogo"] = "";
$config["configShare"]["developLogo"] = "developby.png";
$config["configShare"]["registrationUserLevel"] = "4";
$config["configShare"]["onlyView"] = "0";
$config["configShare"]["descriptionSign"] = "/#/";
if (isset($_SESSION["configShare"]["displayRecs"])) {
	$config["configShare"]["displayRecs"] = $_SESSION["configShare"]["displayRecs"];
} else {
	$config["configShare"]["displayRecs"] = "10";
}
if (isset($_SESSION["configShare"]["recRange"])) {
	$config["configShare"]["recRange"] = $_SESSION["configShare"]["recRange"];
} else {
	$config["configShare"]["recRange"] = "10";
}

if (isset($_REQUEST['listCountTop']) && ($_REQUEST['listCountTop'] <> $config["configShare"]["displayRecs"])) {
	$config["configShare"]["displayRecs"] = $_REQUEST['listCountTop'];
	$config["configShare"]["recRange"] = $_REQUEST['listCountTop'];
} elseif (isset($_REQUEST['listCountBottom']) && ($_REQUEST['listCountBottom'] <> $config["configShare"]["displayRecs"] )) {
	$config["configShare"]["displayRecs"] = $_REQUEST['listCountBottom'];
	$config["configShare"]["recRange"] = $_REQUEST['listCountBottom'];
} else {
	$config["configShare"]["displayRecs"] = "10";
	$config["configShare"]["recRange"] = "10";
}

$_SESSION["configShare"]["displayRecs"]=$config["configShare"]["displayRecs"];
$_SESSION["configShare"]["recRange"]=$config["configShare"]["recRange"];

$config["configShare"]["noView"] = "0";
$config["configShare"]["nocopy"] = "0";
$config["configShare"]["noEdit"] = "0";
$config["configShare"]["noAdd"] = "0";
$config["configShare"]["noDelete"] = "0";
$config["configShare"]["addButton"] = "plus.png";
$config["configShare"]["copyButton"] = "copy.png";
$config["configShare"]["editButton"] = "edit.png";
$config["configShare"]["deleteButton"] = "delete.png";
$config["configShare"]["adminButton"] = "admin.png";
$config["configShare"]["viewButton"] = "view.png";
$config["configShare"]["viewButtonNew"] = "viewnew.png";
$config["configShare"]["firstButton"] = "first.png";
$config["configShare"]["prevButton"] = "backward.png";
$config["configShare"]["prevItemButton"] = "backwardplay.png";
$config["configShare"]["nextButton"] = "forward.png";
$config["configShare"]["nextItemButton"] = "forwardplay.png";
$config["configShare"]["lastButton"] = "last.png";
$config["configShare"]["backButton"] = "back.png";
$config["configShare"]["openButton"] = "open.png";
$config["configShare"]["closeButton"] = "close.png";
$config["configShare"]["activeButton"] = "active.png";
$config["configShare"]["configsButton"] = "config.png";
$config["configShare"]["downloadURLButton"] = "download.png";
$config["configShare"]["noButton"] = "nobutton.png";
$config["configShare"]["treeBgColor"] = "#e1e0cc";
$config["configShare"]["logoWidth"] = "150";
$config["configShare"]["logoHeight"] = "150";
$config["configShare"]["pictSmallWidth"] = "120";
$config["configShare"]["pictSmallHeight"] = "120";
$config["configShare"]["pictSmallNamePlus"] = "_small";
$config["configShare"]["pictNormalWidth"] = "600";
$config["configShare"]["pictNormalHeight"] = "600";
$config["configShare"]["pictNormalNamePlus"] = "_normal";
$config["configShare"]["pictLargeWidth"] = "1280";
$config["configShare"]["pictLargeHeight"] = "1024";
$config["configShare"]["pictLargeNamePlus"] = "_large";
$config["configShare"]["leftWidthAdmin"] = "260";
$config["configShare"]["leftWidthUser"] = "200";
$config["configShare"]["listType"] = "normal";
$config["configShare"]["debugPrintValue"] = "0";
$config["configShare"]["noNavigationDefault"] = "0";
$config["configShare"]["awayButton"] = "away.png";
$config["configShare"]["bottomMenuSeparator"] = " - ";
$config["configShare"]["virBoxRefresh"] = "30";
$config["configShare"]["searchFilterNum"] = "=,<>,<,<=,>,>=,is null,is not null";
$config["configShare"]["searchFilterNumFin"] = "=,<>,<,<=,>,>=,is null,is not null,between";
$config["configShare"]["layoutMainHTML"] = "layoutsetup";
$config["configShare"]["layoutNoContent"] = "health,admin"; 

$config["configShare"]["topMenuItemCFG"] = "
vehicle<subMenu>vehicle<=>vehicle<=>vehicle_type<=>cargo<=>passanger<#>
driver<subMenu>driver<=>driver<=>license_type<#>
transport<subMenu><#>
core_users<subMenu>core_users<=>core_users<=>core_users_rights<=>core_userstitle<=>core_groups<=>core_groups_rights<#>
core_configs<subMenu>core_configs<=>core_configs<=>core_config<=>core_language<=>core_themes<#>
";

?>