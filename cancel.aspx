<%@ Page Language="C#" AutoEventWireup="true" CodeFile="cancel.aspx.cs" Inherits="cancel" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
    <head id="Head1" runat="server">
	    <title>User_Interface</title>
	    <link rel="stylesheet" href="css/w3.css" />
	    <link rel="stylesheet" href="css/header.css" />
	    <link rel="stylesheet" href="css/pnr.css" />
	    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
	    <style type="text/css">
		    .abc{}
		    .abc:hover {background-color: #99ff99; color:#006600;}
		    .vname {
			    text-align: right;
			    position:absolute;
			    top:13%;
			    left:1%;
			    border-radius: 15px 50px 30px;
			    padding: 0px 20px 0px 5px; 
			    color:#006600;
			    border:8px black;
			    border-style: dotted none dotted double;
		    }
			.button {
				background-color: #006600;
				padding: 16px 20px;
				border: none;
				border-radius: 4px;
				color:white;
            }
            .button:hover {
			background-color: #b3ffb3; color:#006600;
	    </style>
    </head>
	<body style="overflow:hidden;">
<form action="#" id="form1" runat="server" name="form1" method="post">
           <div class="header">
			    <p style="color:black; display:inline; font-size:40px;">FRIEND</p>
			    <p style="color:#30a5ff; display:inline; font-size:25px;"><i class="fa fa-train"></i></p>
			    <p style="color:black; display:inline; font-size:40px;">RAILWAYS</p>
			    <div class="header-right">
				    <a href="Main.aspx"><i class="fa fa-home"></i> Home</a>
				    <a href="my_booking.aspx"><i class="fa fa-bars"></i> My Booking</a>
				    <a class="active" href="cancel.aspx"><i class="fa fa-close"></i> Cancel Ticket</a>
				    <a href="PNR.aspx"><i class="fa fa-bell-o"></i> PNR Enquiry</a>
				    <div class="dropdown">
					    <button class="dropbtn"><i class="fa fa-user"></i> My Account</button>
					    <div class="dropdown-content">
						    <a href="profile.aspx"><i class="fa fa-user-circle"></i> Profile</a>
						    <a href="chngPass.aspx"><i class="fa fa-key"></i> Change Password</a>
						    <a href="Login.aspx"><i class="fa fa-power-off"></i> Log Out</a>
					    </div>
				    </div> 
				    <a href="contact.aspx"><i class="fa fa-envelope"></i> Contact Us</a>
			    </div>
		    </div>
			<div class="user">
				<div style="width:100%;opacity:0.5;">
					<asp:Image ID="Image1" ImageUrl="img/12.jpg" runat="server" style="width:100% ;height:100%" />
				</div>
			</div>
			<div class="vname">
				<p><b><font size=6>Click on Button to Cancel It...</font></b></p>
			</div>
			<div id="tick">
                <table frame="box" rules="none" border=8px width="70%" height="20%" align="center" style="border-style:double;color:#006600;opacity:0.9;background-color:#e7e7e7; padding: 10px; border-radius: 5px; position:absolute;top:40%;left:20%;">
                    <tr class="abc">
                        <td style="background-color: #b3ffb3;" align="center"><label><b>Booking ID</b></label></td>
                        <td width="50%" align="center"><asp:TextBox ID="TextBox1" Cssclass="inputuser" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td width="100%" colspan=2 align="right">
                            <asp:Button ID="Button1" runat="server" CssClass="button" OnClick="booking_cancel" style="font-weight:bold;" Text="Cancel" /></td>                
                    </tr>
                </table>
            </div>
            <div>
                <asp:Label ID="Label1" runat="server" Text="OR" style="color:#006600; position:absolute; top:65%; left:50%; font-size:xx-large; font-weight:bold; font-style:italic;"></asp:Label>
            </div>
            <div id="Div1">
                <table frame="box" rules="none" border=8px width="70%" height="20%" align="center" style="border-style:double;color:#006600;opacity:0.9;background-color:#e7e7e7; padding: 10px; border-radius: 5px; position:absolute;top:75%;left:20%;">
                    <tr class="abc">
                        <td style="background-color: #b3ffb3;" align="center"><label><b>Passenger ID</b></label></td>
                        <td width="50%" align="center"><asp:TextBox ID="TextBox2" Cssclass="inputuser" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td width="100%" colspan=2 align="right"> <asp:Button CssClass="button" ID="button3" OnClick="passenger_cancel" runat="server"  style="font-weight:bold;" Text="Cancel" /></td>                
                    </tr>
                </table>
            </div>
        </form>
	</body>
</html>
