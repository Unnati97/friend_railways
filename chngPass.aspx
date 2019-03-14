<%@ Page Language="C#" AutoEventWireup="true" CodeFile="chngPass.aspx.cs" Inherits="chngPass" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
    <title>User_Interface</title>
	    <link rel="stylesheet" href="css/w3.css" />
	    <link rel="stylesheet" href="css/header.css" />
	    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
        <style type="text/css">
		    .inputuser{
			    width: 100%;
			    padding: 12px 20px;
			    margin: 8px 0;
			    border: 1px solid #ccc;
			    box-sizing: border-box;
		    }
		    .vname {
			    text-align: right;
			    position:absolute;
			    top:13%;
			    left:1%;
			    border-radius: 15px 50px 30px;
			    padding: 0px 20px 0px 5px; 
			    color:#ffff33;
			    border:8px #4d4d33;
			    border-style: dotted none dotted double;
            }
	    </style>
    </head>
    <body style="overflow:hidden;">
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
						    <a href="profile.aspx"><i class="fa fa-user-circle"></i> Profile</a>
						    <a class="active" href="chngPass.aspx"><i class="fa fa-key"></i> Change Password</a>
						    <a href="Login.aspx"><i class="fa fa-power-off"></i> Log Out</a>
					    </div>
				    </div> 
				    <a href="contact.aspx"><i class="fa fa-envelope"></i> Contact Us</a>
			    </div>
		    </div>
            <div>
                <asp:Image ID="Image1" runat="server" ImageUrl="~/img/7.jpg" style=" opacity:0.8; width:100%; height:100%;" />
		    </div>
            <div class="vname">
				    <p><b><font size=8>Want To Change PassWord ?</font></b></p>
			</div>
            <div style="border-radius: 10px; position:absolute;color:#4d4d33;opacity:0.9;background-color: #e7e7e7; width:25%; height:58%; top:36%; left:5%;padding: 10px; ">
			    <form name="form1" method="post" action="#" onsubmit="">
                <asp:Label ID="Label1" runat="server" Text="Current Password" Font-Bold="True"></asp:Label>
                <asp:TextBox ID="cpass1" runat="server" Cssclass="inputuser"  placeholder="Enter Current Password" ></asp:TextBox>
                <asp:Label ID="Label2" runat="server" Text="New Password" Font-Bold="True"></asp:Label>
                <asp:TextBox ID="cpass2" runat="server" Cssclass="inputuser" placeholder="Enter New Password"></asp:TextBox>
                <asp:Label ID="Label3" runat="server" Text="Conform Password" Font-Bold="True"></asp:Label>
                <asp:TextBox Cssclass="inputuser" placeholder="Re-Enter New Password" ID="cpass3" runat="server"></asp:TextBox>
               <b> <asp:Button ID="Button1" runat="server" Text="Change" Cssclass="buttonsearch" style="background-color: #ffff33;" />
			    </form>
		    </div>
        </form>
    </body>
</html>
