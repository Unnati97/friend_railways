<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>User_Interface</title>
	    <link rel="stylesheet" href="css/w3.css" />
	    <link rel="stylesheet" href="css/header.css" />
	    <link rel="stylesheet" href="css/pnr.css" />
	    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
	    <style type="text/css">
		    .abc{background-color: #ffb366; color:#1a0d00;}
		    .abc:hover {background-color: #1a0d00; color:#ffb366;}
		    .vname {
				text-align: right;
				position:absolute;
				top:13%;
				left:1%;
				border-radius: 15px 50px 30px;
				padding: 0px 20px 0px 5px; 
				color:#1a0d00;
				border:8px #ffb366;
				border-style: dotted none dotted double;
            }
	    </style>
    </head>
    <body>
        <form id="form1" runat="server" method="post">
            <div class="header">
			    <p style="color:black; display:inline; font-size:40px;">FRIEND</p>
			    <p style="color:#30a5ff; display:inline; font-size:25px;"><i class="fa fa-train"></i></p>
			    <p style="color:black; display:inline; font-size:40px;">RAILWAYS</p>
			    <div class="header-right">
				    <a href="contact_reg.aspx"><i class="fa fa-envelope"></i> Contact Us</a>
			    </div>
		    </div>
			<div class="user">
                <asp:Image ID="Image1" runat="server" ImageUrl="img/10.jpg" style="opacity:0.8; width:110%; height:100%;"/>
		    </div>
		    <div class="vname">
			    <p><b><font size=8>Registration</font></b></p>
		    </div>
            <div>
                <asp:Table ID="Table1" runat="server" border=0px width="50%" height="50%" align="center" style="opacity:0.9;background-color: #e7e7e7; color:#1a0d00; padding: 20px; border-radius: 5px; position:absolute;top:38%;left:25%;">
				    <asp:TableRow >
                        <asp:TableCell><b><asp:Label ID="Label2" runat="server" Text="First Name"></asp:Label></b></asp:TableCell>
                        <asp:TableCell><asp:TextBox ID="TextBox1" CssClass="inputuser" runat="server" placeholder="First Name" name="first_name" required></asp:TextBox></asp:TableCell>
				    </asp:TableRow >
				    <asp:TableRow >
                        <asp:TableCell><b><asp:Label ID="Label3" runat="server" Text="Last Name"></asp:Label></b></asp:TableCell>
                        <asp:TableCell><asp:TextBox ID="TextBox2" CssClass="inputuser" runat="server" placeholder="Last Name" name="last_name" required></asp:TextBox></asp:TableCell>
				    </asp:TableRow >
				    <asp:TableRow >
                        <asp:TableCell><b><asp:Label ID="Label4" runat="server" Text="Password"></asp:Label></b></asp:TableCell>
                        <asp:TableCell><asp:TextBox ID="TextBox3" CssClass="inputuser" runat="server" placeholder="Password" name="pass" required TextMode="Password"></asp:TextBox></asp:TableCell>
				    </asp:TableRow >
					<asp:TableRow >
                        <asp:TableCell><b><asp:Label ID="Label5" runat="server" Text="Email ID"></asp:Label></b></asp:TableCell>
                        <asp:TableCell><asp:TextBox ID="TextBox4" CssClass="inputuser" runat="server" placeholder="Email ID" name="Emailadd" required TextMode="Email"></asp:TextBox></asp:TableCell>
				    </asp:TableRow >
					<asp:TableRow >
                        <asp:TableCell><b><asp:Label ID="Label6" runat="server" Text="Mobile"></asp:Label></b></asp:TableCell>
                        <asp:TableCell><asp:TextBox ID="TextBox5" CssClass="inputuser" runat="server" placeholder="Mobile No." name="ContactNumber"  min="6000000000" max="9999999999" required TextMode="Number"></asp:TextBox></asp:TableCell>
					</asp:TableRow >
					<asp:TableRow >
                        <asp:TableCell><b><asp:Label ID="Label7" runat="server" Text="Gender"></asp:Label></b></asp:TableCell>
                        <asp:TableCell>
                            <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatColumns="2">
                                <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                                <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                            </asp:RadioButtonList>
                        </asp:TableCell>
				    </asp:TableRow > 
				    <asp:TableRow >
                        <asp:TableCell><b><asp:Label ID="Label8" runat="server" Text="City"></asp:Label></b></asp:TableCell>
                        <asp:TableCell><asp:TextBox ID="TextBox6" CssClass="inputuser" runat="server" placeholder="City" name="city" required></asp:TextBox></asp:TableCell>
				    </asp:TableRow >
					<asp:TableRow >
                        <asp:TableCell><b><asp:Label ID="Label9" runat="server" Text="State"></asp:Label></b></asp:TableCell>
                        <asp:TableCell><asp:TextBox ID="TextBox7" CssClass="inputuser" runat="server" placeholder="State" name="state" required></asp:TextBox></asp:TableCell>
				    </asp:TableRow >
					<asp:TableRow >
                        <asp:TableCell><b><asp:Label ID="Label1" runat="server" Text="Date of Birth" Font-Bold="True"></asp:Label></asp:TableCell>
                        <asp:TableCell><asp:TextBox ID="TextBox8" CssClass="inputuser" runat="server" placeholder="yyyy/mm/dd" name="dob" required></asp:TextBox></asp:TableCell>
				    </asp:TableRow >
				    <asp:TableRow >
                        <asp:TableCell  align="right" ColumnSpan="2" HorizontalAlign="Right"><asp:Button ID="Button1" runat="server" Text="Submit" Cssclass="abc" /></asp:TableCell>
				    </asp:TableRow >
			    </asp:Table>
            </div>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Select Any One" ControlToValidate="RadioButtonList1" Style="top: 94%; color:Red;
        left: 62%; position: absolute; height: 26px; width: 162px"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="*Enter in Valid Form" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="TextBox4" Style="top: 75%; color:Red;
        left: 62%; position: absolute; height: 26px; width: 162px"></asp:RegularExpressionValidator>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="*Enter In Valid Range" ControlToValidate="TextBox5" MaximumValue="9999999999" MinimumValue="6000000000" Style="top: 85%; color:Red;
        left: 62%; position: absolute; height: 26px; width: 162px"></asp:RangeValidator>
        </form>
    </body>
</html>
