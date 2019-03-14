<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>Login</title>
		    <link rel="stylesheet" href="css/animate.css">
		    <link rel="stylesheet" href="css/login.css">
    </head>
    <body style="font-family: Montserrat, Helvetica Neue, Helvetica, Arial, sans-serif; overflow:hidden;" bgcolor="lightyellow" link="#30a5ff">
        <form id="form1" runat="server" method="post">
        <div  class="bounceInUp animated" style=" border-radius: 25px; position:absolute; background-color:white; color:#8c8c8c; width:30%; height:70%; top:3%; left:35%;padding: 10px; ">
            <asp:Image ID="Image1" runat="server" ImageUrl="img/123.png" width="80" height="80" style="border-radius: 25px; position:absolute; top:15%; left:40%;"/>
		    </div>
		    <div class="bounceInUp animated" style="position:absolute;top:35%;left:37.5%;">
                <asp:Label ID="Label1" runat="server" Text="Username" Font-Bold="True"></asp:Label>
                <asp:TextBox ID="uid"  runat="server" Cssclass="inputuser" placeholder="Enter Username"></asp:TextBox><br>
                <asp:Label ID="Label2" runat="server" Text="Password" Font-Bold="True"></asp:Label>
                <asp:TextBox ID="pass" Cssclass="inputpassword" placeholder="Enter Password" runat="server" TextMode="Password"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="LOGIN" Cssclass="button" 
                    onclick="Button1_Click"/>
			    <div style="position:absolute; top:100%;left:0%;">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="register.aspx">Register here</asp:HyperLink>
			    </div>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" Style="top: 0%; color:Red;
        left: 58%; position: absolute; height: 26px; width: 162px" ErrorMessage="*Enter correct user ID" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="uid"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Please Enter" ControlToValidate="pass" Style="top: 40%; color:Red;
        left: 70%; position: absolute; height: 26px; width: 162px"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Style="top: 0%; color:Red;
        left: 70%; position: absolute; height: 26px; width: 162px" runat="server" ErrorMessage="*Please Enter" ControlToValidate="uid" Display="Dynamic"></asp:RequiredFieldValidator>
		    </div>
        </form>
    </body>
</html>
