<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="erpSoftTickets.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="description" content="A barebones PWA page"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.5"/>

    <!-- (B) ICONS & PLATFORM SPECIFIC -->
    <!-- (B1) GOOD OLD FAVICON -->
    <link rel="icon" href="favicon.png" type="image/png"/>

    <!-- (B2) ANDROID/CHROME -->
    <meta name="mobile-web-app-capable" content="yes"/>
    <meta name="theme-color" content="white"/>

    <!-- (B3) IOS APP ICON + MOBILE SAFARI -->
    <link rel="apple-touch-icon" href="icon-512.png"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <meta name="apple-mobile-web-app-status-bar-style" content="black"/>
    <meta name="apple-mobile-web-app-title" content="Hello World"/>

    <!-- (B4) WINDOWS -->
    <meta name="msapplication-TileImage" content="icon-512.png"/>
    <meta name="msapplication-TileColor" content="#ffffff"/>

    <!-- (C) WEB APP MANIFEST -->
    <!-- https://web.dev/add-manifest/ -->
    <link rel="manifest" href="2-manifest.json"/>

    <!-- (D) SERVICE WORKER -->
    <script>
        if ("serviceWorker" in navigator) { navigator.serviceWorker.register("3-sw.js"); }
    </script>

    <title>CampusERP | Accounts</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport" />
    <!-- Bootstrap 3.3.6 -->
    <link rel="stylesheet" href="LoginAssets/bootstrap.min.css" />
    <!-- Font Awesome -->
    <link rel="stylesheet" href="LoginAssets/font-awesome.min.css" />
    <!-- Ionicons -->
    <link rel="stylesheet" href="LoginAssets/ionicons.min.css" />
    <!-- Theme style -->
    <link rel="stylesheet" href="LoginAssets/AdminLTE.min.css" />
    <style>
        .login-page {
            height: auto;
            background-image: url('LoginAssets/Maroon1.jpg');
            background-size: cover;
        }
    </style>
</head>
<body class="hold-transition login-page">
    <%--<div style="width: 100%;">
        <div style="margin: 0 auto; display: table;">
            <img src="LoginAssets/Login-Logo.png" class="img-responsive" />
        </div>
    </div>--%>
    <div class="login-box" style="margin: 0 auto!important;">
        <div class="login-logo">
            <%--<img src="LoginAssets/LoginBar.jpg" />--%>
        </div>
        <!-- /.login-logo -->
        <div class="login-box-body">

            <div style="text-align: center; width: 100%;">
                <img src="LoginAssets/LogoERP.png" />
            </div>
            <hr />
            <form id="form1" runat="server">
                <div class="row form-group has-feedback">
                    <div class="col-sm-12">
                        <label for="txtUserName">Select Staff Type</label>
                        <asp:DropDownList ID="ddlStaffType" runat="server" class="form-control">
                            <asp:ListItem Text="Institute Staff"></asp:ListItem>
                            <asp:ListItem Text="SDC Staff"></asp:ListItem>
                        </asp:DropDownList>
                        <span class="help-block with-errors"></span>
                    </div>
                </div>

                <div class="row form-group has-feedback">
                    <div class="col-sm-12">
                        <label for="txtUserName">Enter Login ID</label>
                        <asp:TextBox ID="txtUserName" runat="server" class="form-control"
                            AutoCompleteType="Disabled"
                            autocomplete="off"
                            data-error="Please enter Login ID!" required="" MaxLength="100">
                        </asp:TextBox>
                        <span class="help-block with-errors"></span>
                    </div>
                </div>

                <div class="row">
                    <div class="col-xs-4">
                        <asp:Button ID="btnSubmit" runat="server" type="submit" Text="Login" class="btn btn-primary btn-block btn-flat" OnClick="btnSubmit_Click" />
                    </div>
                    <div class="col-xs-8">
                        <div class="row pull-right">
                            <asp:CheckBox ID="chkRememberMe" Text="Remember Me" runat="server" />
                            <br />
                            <asp:HyperLink ID="ForgotPassword" Visible="false" runat="server" NavigateUrl="~/ForgotPassword.aspx">I forgot my password</asp:HyperLink>
                        </div>
                    </div>

                </div>
                <div class="row">
                    <div class="col-xs-12">
                        <asp:Label ID="lblErrorMsg" runat="server" Text="" Font-Bold="True" ForeColor="Red"></asp:Label>
                    </div>
                </div>

            </form>

        </div>
        <!-- /.login-box-body -->
    </div>

    <asp:Login ID="Login1" runat="server" Visible="False"></asp:Login>
    <!-- jQuery 2.2.3 -->
    <script src="LoginAssets/jquery-2.2.3.min.js"></script>
    <!-- Bootstrap 3.3.6 -->
    <script src="LoginAssets/bootstrap.min.js"></script>

</body>
</html>
