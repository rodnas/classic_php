<?php
if (!DEFINED('runOK')) exit;
//$viewItem[$config["modulSelect"]."_x_description"]=0;
//$viewItem = viewConfig($config,$viewItem);
$viewItem[$config["modulSelect"]."_x_systemType"]=1;
if (isset($_POST["s_systemType"]))
	{
	if (!empty($_POST["s_systemType"])) {$viewItem[$config["modulSelect"]."_x_systemType"]=0;}
	else {$viewItem[$config["modulSelect"]."_x_systemType"]=1;}
	}
else if (isset($_SESSION[$config["modulSelect"]."_s_systemType"]) && !empty($_SESSION[$config["modulSelect"]."_s_systemType"]))
	{
	$viewItem[$config["modulSelect"]."_x_systemType"]=0;
	}
$viewItem[$config["modulSelect"]."_x_core_configsID"]=1;
if ($config["modulAction"] == "list") {$viewItem['core_config_x_insertWhen']=1;}
?>