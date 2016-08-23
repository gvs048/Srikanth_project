<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="User_Login_CS.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title> Login </title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
    <!-- Normalize -->
    <link rel="stylesheet" href="normalize.css">
    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <!-- Latest compiled and minified jquery 1.11.3 JavaScript -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <style type="text/css">
        @import url(http://fonts.googleapis.com/css?family=Raleway:600);

        body {
            background-color: #fff;
            background:url(../images/loginimage.jpg) no-repeat;
            padding: 0;
            height: 100%;
            width: 100%;
        }

        span {
            color: #fff;
            font-family: 'Raleway', sans-serif;
            font-size: 18px;
        }

        p {
            color: #fff;
            font-family: 'Raleway', sans-serif;
            font-size: 12px;
        }

        .col-centered {
            float: none;
            margin: 0 auto;
            margin-top: 250px;
        }

        .wrath-content-box {
            padding: 15px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-4 col-centered table-bordered ">
                <div class="wrath-content-box"><span> </span> </div>
                <div class="wrath-content-box">
                    <div class="input-group">
                        <span class="input-group-addon btn-primary" id="basic-addon1"><span class="glyphicon glyphicon-user"></span></span>
                        <%--<input type="text" class="form-control" placeholder="Username" id="txtUsername"/>--%>
                        <asp:TextBox ID="txtUsername" runat="server" Width="170px" style="width: 318px; height: 34px;"></asp:TextBox>
                    </div>
                    <div class="clearfix"></div>
                    <br />
                    <div class="input-group">
                        <span class="input-group-addon btn-primary" id="Span1"><span class="glyphicon glyphicon-lock"></span></span>
                        <%--<input type="password" class="form-control" placeholder="Password" id="txtPassword"/>--%>
                        <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" Width="170px" style="width: 318px; height: 34px;"></asp:TextBox>
                    </div>
                    <div class="clearfix"></div>
                    <br />

                    <div class="col-sm-6 text-right">

                        <div class="form-group text-right">
                            <%--<input type="submit" class="btn btn-success btn-sm form-control" value="Sign In" />--%>
                            <asp:Button ID="Button1" runat="server" Font-Bold="True" class="btn btn-success btn-sm form-control" Text="Sign In"
                        OnClick="Button1_Click" />

                        </div>

                    </div>
                    <div class="col-sm-6 text-right">

                        <div class="form-group text-right">
                            <%--<input type="submit" class="btn btn-danger btn-sm form-control" value="cancel" />--%>
                             <asp:Button ID="Button2" runat="server" Font-Bold="True" class="btn btn-success btn-sm form-control" Text="Register"
                        OnClick="Button2_Click" />

                        </div>

                    </div>

                     <div class="form-group text-right">
                          <asp:Button ID="Button3" runat="server" Font-Bold="True" class="btn btn-danger btn-sm form-control" Text="Forgot Password?" OnClick="Button3_Click"
                         />
                         </div>

                    <div class="clearfix"></div>
                    <div>
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </div>
                </div>
            </div>
        </div>
    </div>
</form>

</body>
</html>
