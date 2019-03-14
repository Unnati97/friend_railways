<%@ Page Language="C#" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="profile" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>User_Interface</title>
        <link rel="stylesheet" href="css/w3.css"/>
	    <link rel="stylesheet" href="css/header.css"/>
	    <link rel="stylesheet" href="css/profile.css"/>
	    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
	    <style type="text/css">
		    .inputuser {
		        width: 25%;
		        padding: 5px 10px;
		        border: 1px solid #ccc;
		        border-radius: 4px;
		    }
		    .button {
		        background-color: #2196F3;
			    color: white;
			    padding: 5px 10px;
			    border: none;
			    border-radius: 4px;
		    }
		    .button:hover {
			    background-color: #0b7dda; color:white;
		    }
		    .vname { 
			    text-align: right;
			    position:absolute;
			    top:13%;
			    left:1%;
			    border-radius: 15px 50px 30px;
			    padding: 0px 20px 0px 5px; 
			    color:white;
			    border:8px;
			    border-style: dotted none dotted double;
            }
	    </style>
    </head>
    <body style="background-color:dodgerblue;">
        <form id="form1" runat="server">
            <div class="header">
			    <p style="color:black; display:inline; font-size:40px;">FRIEND</p>
			    <p style="color:#30a5ff; display:inline; font-size:25px;"><i class="fa fa-train"></i></p>
			    <p style="color:black; display:inline; font-size:40px;">RAILWAYS</p>
			    <div class="header-right">
				    <a href="Main.aspx"><i class="fa fa-home"></i> Home</a>
				    <a href="my_booking.aspx"><i class="fa fa-bars"></i> My Booking</a>
				    <a href="cancel.aspx"><i class="fa fa-close"></i> Cancel Ticket</a>
				    <a href="PNR.aspx"><i class="fa fa-bell-o"></i> PNR Enquiry</a>
				    <div class="dropdown">
					    <button class="dropbtn"><i class="fa fa-user"></i> My Account</button>
					    <div class="dropdown-content">
						    <a class="active"href="profile.aspx"><i class="fa fa-user-circle"></i> Profile</a>
						    <a href="chngPass.aspx"><i class="fa fa-key"></i> Change Password</a>
						    <a href="Login.aspx"><i class="fa fa-power-off"></i> Log Out</a>
					    </div>
				    </div> 
				    <a href="contact.aspx"><i class="fa fa-envelope"></i> Contact Us</a>
			    </div>
		    </div>
		    <div class="w3-container" id="team">
			    <div id="i1">
                    <asp:Image ID="Image1" runat="server" ImageUrl="img/123.png" width="150%" height="60%" style="background-color: white;"/>
			    </div>
                <div class="vname">
				    <p><b><font size=8>Profile</font></b></p>
			    </div>
                <div id="back"></div>
                <form id="form2">
				    <div class="abc">
                        <b><asp:TextBox ID="TextBox8" runat="server" Width="150%" CssClass="inputuser name" style="border: 5px dotted dodgerblue;"></asp:TextBox></b><b><asp:Button CssClass="button" ID="Button1" runat="server" Text="Update" style="position:absolute;top:0%;left:280%;width:45%;" /> </b>
			        </div>
			        <div class="table" style="background-color:white;">
				        <asp:Table ID="Table1" runat="server" rule="none" frame="above">
                            <asp:TableRow height=60>
                                <asp:TableCell Width="15%" CssClass="label">User ID:</asp:TableCell>
                                <asp:TableCell Width="30%"><asp:TextBox runat="server" ID="userid" CssClass="inputuser" Font-Names="userid" style="width:90%;" Enabled="False" required></asp:TextBox></asp:TableCell>
                                <asp:TableCell Width="15%" CssClass="label">Password:</asp:TableCell>
                                <asp:TableCell Width="30%"><asp:TextBox runat="server" ID="TextBox1" CssClass="inputuser" Font-Names="password" style="width:90%;" required></asp:TextBox></asp:TableCell>
                            </asp:TableRow>
							
                            <asp:TableRow >
                                <asp:TableCell Width="15%" CssClass="label">Email:</asp:TableCell>
                                <asp:TableCell Width="30%"><asp:TextBox runat="server" ID="TextBox2" CssClass="inputuser" Font-Names="email" style="width:90%;" TextMode="Email" Enabled="False" required></asp:TextBox></asp:TableCell>
                                <asp:TableCell Width="15%" CssClass="label">Mobile:</asp:TableCell>
                                <asp:TableCell Width="30%"><asp:TextBox runat="server" ID="TextBox3" CssClass="inputuser" Font-Names="mobile" style="width:90%;" TextMode="Number" min="6000000000" max="9999999999" required></asp:TextBox></asp:TableCell>
                                </asp:TableRow>
				
                            <asp:TableRow >
                                <asp:TableCell Width="15%" CssClass="label">Gender:</asp:TableCell>
                                <asp:TableCell Width="30%"><asp:TextBox runat="server" ID="TextBox4" CssClass="inputuser" Font-Names="gender" style="width:90%;" required></asp:TextBox></asp:TableCell>
                                <asp:TableCell Width="15%" CssClass="label">Date of Birth:</asp:TableCell>
                                <asp:TableCell Width="30%"><asp:TextBox runat="server" ID="TextBox5" CssClass="inputuser" Font-Names="dob" style="width:90%;" TextMode="SingleLine" required></asp:TextBox></asp:TableCell>
                            </asp:TableRow>
				
                            <asp:TableRow >
                                <asp:TableCell Width="15%" CssClass="label">City:</asp:TableCell>
                                <asp:TableCell Width="30%"><asp:TextBox runat="server" ID="TextBox6" CssClass="inputuser" Font-Names="city" style="width:90%;" required></asp:TextBox></asp:TableCell>
                                <asp:TableCell Width="15%" CssClass="label">State:</asp:TableCell>
                                <asp:TableCell Width="30%"><asp:TextBox runat="server" ID="TextBox7" CssClass="inputuser" Font-Names="state" style="width:90%;" required></asp:TextBox></asp:TableCell>
                            </asp:TableRow>				
				        </asp:Table>
		            </div>
                </form>
            </div>
        </form>
    </body>
</html>
