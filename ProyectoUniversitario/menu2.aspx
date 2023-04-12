﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="menu2.aspx.cs" Inherits="ProyectoUniversitario.menu2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="css/menucircularcss.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet">

<div class="menu">
  <input type="checkbox" id="toggle" />
  <label id="show-menu" for="toggle">
    <div class="btn">
      <i class="material-icons md-36 toggleBtn menuBtn">menu</i>
      <i class="material-icons md-36 toggleBtn closeBtn">close</i>
    </div>
    <div class="btn">
      <i class="material-icons md-36">photo_camera</i>
    </div>
    <div class="btn">
      <i class="material-icons md-36">photo</i>
    </div>
    <div class="btn">
      <i class="material-icons md-36">music_note</i>
    </div>
    <div class="btn">
      <i class="material-icons md-36">chat_bubble</i>
    </div>
    <div class="btn">
      <i class="material-icons md-36">settings</i>
    </div>
    <div class="btn">
      <i class="material-icons md-36">phone</i>
    </div>
    <div class="btn">
      <i class="material-icons md-36">cloud</i>
    </div>
    <div class="btn">
      <i class="material-icons md-36">videocam</i>
    </div>
  </label>
</div>
    </form>
</body>
</html>
