<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="TestFirstProject.Register" %>

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
          /*background-color: #000;
           background:url(../images/Login.jpg);*/
           background:url(../images/reg.jpg) no-repeat center;
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
            color: #fff;
            font-weight: bold;
        }
        table th, table td
        {
            padding: 5px;
            border-color: #fff;
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
            border: 1px solid #fff;
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
            border-color: #fff;
       
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table style="margin-left: 364px;margin-top: 30px;"
     border="0" cellpadding="0" cellspacing="0">
        <tr>
            <th style="text-align:center; " colspan="4">
               User Registration   
            </th>
        </tr>
        <tr>

            <td style="width:50px;"></td>
            <td>
              <b> First Name </b>  <span style="color:red;"> *  </span>
            </td>
            <td>
                <asp:TextBox ID="txtfirstname" runat="server" />
            </td>
            <td style="width:50px;">
               <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ErrorMessage="Required" ForeColor="Red" ControlToValidate="txtfirstname"
                    runat="server" />--%>
            </td>
        </tr>

         <tr>
              <td style="width:50px;"></td>
            <td>
              <b>  Middle Name </b>  
            </td>
            <td>
                <asp:TextBox ID="txtmiddlename" runat="server" />
            </td>
            <td style="width:50px;">
                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator5" ErrorMessage="Required" ForeColor="Red" ControlToValidate="txtUsername"
                    runat="server" />--%>
            </td>
        </tr>

         <tr>
              <td style="width:50px;"></td>
            <td>
             <b> Last Name </b>   
            </td>
            <td>
                <asp:TextBox ID="txtlastname" runat="server" />
            </td>
            <td style="width:50px;">
               <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ErrorMessage="Required" ForeColor="Red" ControlToValidate="txtUsername"
                    runat="server" />--%>
            </td>
        </tr>

          <tr>
               <td style="width:50px;"></td>
            <td>
             <b> User Name </b>   <span style="color:red;"> *  </span>
            </td>
            <td>
                <asp:TextBox ID="txtusername" runat="server" />
            </td>
            <td style="width:50px;">
               <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ErrorMessage="Required" ForeColor="Red" ControlToValidate="txtUsername"
                    runat="server" />--%>
            </td>
        </tr>


        <tr>
             <td style="width:50px;"></td>
            <td>
              <b> Password </b>   <span style="color:red;"> *  </span>
            </td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" />
            </td>
            <td style="width:50px;">
             <%--   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ErrorMessage="Required" ForeColor="Red" ControlToValidate="txtPassword"
                    runat="server" />--%>
            </td>
        </tr>
        <tr>
             <td style="width:50px;"></td>
            <td>
               <b> Confirm Password </b>
            </td>
            <td>
                <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" />
            </td>
            <td style="width:50px;">
              <%--  <asp:CompareValidator ID="CompareValidator1" ErrorMessage="Passwords do not match." ForeColor="Red" ControlToCompare="txtPassword"
                    ControlToValidate="txtConfirmPassword" runat="server" />--%>
            </td>
        </tr>

         <tr>
              <td style="width:50px;"></td>
            <td>
              <b> Age </b> 
            </td>
            <td>
                <asp:TextBox ID="txtage" runat="server" />
            </td>
            <td style="width:50px;">
             <%--   <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ErrorMessage="Required" ForeColor="Red" ControlToValidate="txtUsername"
                    runat="server" />--%>
            </td>
        </tr>

        <tr>
             <td style="width:50px;"></td>
            <td>
              <b> Email </b>  
            </td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server" />
            </td>
            <td style="width:50px;">
             <%--   <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ErrorMessage="Required" Display="Dynamic" ForeColor="Red"
                    ControlToValidate="txtEmail" runat="server" />--%>
               <%-- <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                    ControlToValidate="txtEmail" ForeColor="Red" ErrorMessage="Invalid email address." />--%>
            </td>
        </tr>


         <tr>
              <td style="width:50px;"></td>
            <td>
             <b> Mobile Number </b>    <span style="color:red;"> *  </span>
            </td>
            <td>
                <asp:TextBox ID="txtmobile" runat="server" />
            </td>
            <td style="width:50px;">
              <%--  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ErrorMessage="Required" Display="Dynamic" ForeColor="Red"
                    ControlToValidate="txtmobile" runat="server" />--%>
               
            </td>
        </tr>

         <tr>
              <td style="width:50px;"></td>
            <td>
              <b> Address </b>  
            </td>
            <td>
                <asp:TextBox ID="txtaddress" TextMode="MultiLine" Rows="6" Width="199px"  runat="server" />
            </td>
            <td style="width:50px;">
              <%--  <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ErrorMessage="Required" Display="Dynamic" ForeColor="Red"
                    ControlToValidate="txtEmail" runat="server" />--%>
               <%-- <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                    ControlToValidate="txtEmail" ForeColor="Red" ErrorMessage="Invalid email address." />--%>
            </td>
        </tr>

        <tr  >
            <td   colspan="4">
                <table   style="border:none; margin-left:90px;">
            <tr>
             <td style="width:50px;"></td>
            <td >
                <asp:Button ID="Button1" Width="70px" class="btn btn-success btn-sm form-control" Text="Save" runat="server" OnClick="RegisterUser" />
            </td>
            <td>
                 <asp:Button ID="Button2" Width="70px" class="btn btn-success btn-sm form-control" Text="Reset" runat="server" OnClick="Button2_Click1"  />
            </td>

            


            
             
            <td>
                 <asp:Button ID="Button3" Width="70px" class="btn btn-success btn-sm form-control" Text="Cancel" runat="server" OnClick="Button3_Click"  />
            </td>
        </tr>
        </table>
            </td>
            
        </tr>
        
    </table >

        

    </form>
</body>
</html>

<script type="text/javascript">

    $("#Button1").click(function () {
        var fname = $('#txtfirstname').val();
        var uname = $('#txtusername').val();
        var pwd = $('#txtPassword').val();
        var mobile = $('#txtmobile').val();
      
        if (fname == "" || uname== "" || pwd =="" || mobile == "") {
            alert("Fields marked with * are mandatory");
            return false;
        }
    });
</script>