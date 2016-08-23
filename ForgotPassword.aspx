<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="TestFirstProject.ForgotPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title></title>

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
   
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
        body
        {
            font-family: Arial;
            font-size: 10pt;
        }
    </style>

     <style type="text/css">
        body
        {
             background:url(../images/fp1.jpg) no-repeat center;
          /*background-color: #000;
           background:url(../images/Login.jpg);*/
            font-family: Arial;
            font-size: 10pt;
        }
        input
        {
            width: 200px;
        }
        table
        {
            border: 1px solid #ccc;
        }
        table th
        {
            background-color: #F7F7F7;
            color: #333;
            font-weight: bold;
        }
        table th, table td
        {
            padding: 5px;
            border-color: #ccc;
        }
    </style><style type="text/css">
        body
        {
            font-family: Arial;
            font-size: 10pt;
        }
        input
        {
            width: 200px;
        }
        table
        {
            border: 1px solid #ccc;
        }
        table th
        {
            background-color: #F7F7F7;
            color: #333;
            font-weight: bold;
        }
        table th, table td
        {
            padding: 5px;
            border-color: #ccc;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

     <table style="margin-left: 422px;margin-top: 39px;"
     border="0" cellpadding="0" cellspacing="0">
           <tr>
            <th style="text-align:center;" colspan="1">
               Email Address:
            </th>
        </tr>

         <tr>
            
             <td>
                  <asp:Label ID="lblMessage" runat="server" />
                  <br />
                 <asp:TextBox ID="txtEmail" runat="server" Width="300" />
                 </td>
             
   </tr>
               
   
            <tr>
                <td>
                     <table style="border:none;float:right;">
            <tr>
                   <td>
                        <asp:Button ID="Button1" Text="Send" runat="server" Width="70px" class="btn btn-success btn-sm form-control" OnClick="SendEmail" />
                   </td>
                    <td>
                        <asp:Button ID="Button2" Text="Cancel"  runat="server" Width="70px" class="btn btn-success btn-sm form-control" OnClick="Button2_Click" />
                   </td>
               </tr>
   
        </table>
                </td>
            </tr>
         
   
    
             </table>
       
        
    </form>
</body>
</html>
