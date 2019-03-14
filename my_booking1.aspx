<%@ Page Language="C#" AutoEventWireup="true" CodeFile="my_booking1.aspx.cs" Inherits="my_booking1" %>

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
		    .abc:hover {background-color: #ffe0b3; color:#000099;}
		    .vname {
			    text-align: right;
			    position:absolute;
			    top:13%;
			    left:1%;
			    border-radius: 15px 50px 30px;
			    padding: 0px 20px 0px 5px; 
			    color:#ff9900;
			    border:8px #000099;
			    border-style: dotted none dotted double;
            }
	    </style>
    </head>
<body >
        <form action="#" id="form1" runat="server" name="form1" method="post">
            <div class="header">
			    <p style="color:black; display:inline; font-size:40px;">FRIEND</p>
			    <p style="color:#30a5ff; display:inline; font-size:25px;"><i class="fa fa-train"></i></p>
			    <p style="color:black; display:inline; font-size:40px;">RAILWAYS</p>
			    <div class="header-right">
				    <a  href="Main.aspx"><i class="fa fa-home"></i> Home</a>
				    <a class="active" href="my_booking.aspx"><i class="fa fa-bars"></i> My Booking</a>
				    <a href="cancel.aspx"><i class="fa fa-close"></i> Cancel Ticket</a>
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
				    <div style="width:100%">
					    <asp:Image ID="Image1" ImageUrl="img/11.jpg" runat="server" style="width:100% ;height:100%" />
				    </div>
			    </div>
			    <div class="vname">
				    <p><b><font size="8">Your Tickets</font></b></p>
			    </div>
                    <div>
                        <asp:Table runat="server" frame="box" rules="none" border="8px" width="50%" height="70%" align="center" style="border-style:double;color:#000099;background-color:#e7e7e7; padding: 10px; border-radius: 5px; position:absolute;top:40%;left:25%;">
                            <asp:TableRow CssClass="abc">
                                 <asp:TableCell style="background-color: #ffe0b3;"><b><asp:Label ID="Label19" runat="server" Text="Booking ID" ></asp:Label></b></asp:TableCell>
                                 <asp:TableCell width="50%"><b><asp:Label ID="b_id" runat="server" Text=""></asp:Label></b> </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow CssClass="abc">
                                 <asp:TableCell style="background-color: #ffe0b3;"><b><asp:Label ID="Label21" runat="server" Text="PNR No."></asp:Label></b></asp:TableCell>
                                 <asp:TableCell width="50%"><b><asp:Label ID="pnr_id" runat="server" Text=""></asp:Label></b> </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow CssClass="abc">
                                 <asp:TableCell style="background-color: #ffe0b3;"><b><asp:Label ID="Label23" runat="server" Text="Train No."></asp:Label></b></asp:TableCell>
                                 <asp:TableCell width="50%"><b><asp:Label ID="t_id" runat="server" Text=""></asp:Label></b> </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow CssClass="abc">
                                 <asp:TableCell style="background-color: #ffe0b3;"><b><asp:Label ID="Label25" runat="server" Text="Train Name"></asp:Label></b></asp:TableCell>
                                 <asp:TableCell width="50%"><b><asp:Label ID="t_name" runat="server" Text=""></asp:Label></b> </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow CssClass="abc">
                                 <asp:TableCell style="background-color: #ffe0b3;"><b><asp:Label ID="Label27" runat="server" Text="From"></asp:Label></b></asp:TableCell>
                                 <asp:TableCell width="50%"><b><asp:Label ID="t_from" runat="server" Text=""></asp:Label></b> </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow CssClass="abc">
                                 <asp:TableCell style="background-color: #ffe0b3;"><b><asp:Label ID="Label29" runat="server" Text="To"></asp:Label></b></asp:TableCell>
                                 <asp:TableCell width="50%"><b><asp:Label ID="t_to" runat="server" Text=""></asp:Label></b> </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow CssClass="abc">
                                 <asp:TableCell style="background-color: #ffe0b3;"><b><asp:Label ID="Label31" runat="server" Text="Date"></asp:Label></b></asp:TableCell>
                                 <asp:TableCell width="50%"><b><asp:Label ID="t_date" runat="server" Text=""></asp:Label></b> </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow CssClass="abc">
                                 <asp:TableCell style="background-color: #ffe0b3;"><b><asp:Label ID="Label33" runat="server" Text="Departure Time"></asp:Label></b></asp:TableCell>
                                 <asp:TableCell width="50%"><b><asp:Label ID="d_time" runat="server" Text=""></asp:Label></b> </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow CssClass="abc">
                                 <asp:TableCell style="background-color: #ffe0b3;"><b><asp:Label ID="Label35" runat="server" Text="Arrival Time"></asp:Label></b></asp:TableCell>
                                 <asp:TableCell width="50%"><b><asp:Label ID="a_time" runat="server" Text=""></asp:Label></b> </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow CssClass="abc">
                                 <asp:TableCell style="background-color: #ffe0b3;"><b><asp:Label ID="Label37" runat="server" Text="Class"></asp:Label></b></asp:TableCell>
                                 <asp:TableCell width="50%"><b><asp:Label ID="t_class" runat="server" Text=""></asp:Label></b> </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow CssClass="abc">
                                 <asp:TableCell style="background-color: #ffe0b3;"><b><asp:Label ID="Label39" runat="server" Text="Amount"></asp:Label></b></asp:TableCell>
                                 <asp:TableCell width="50%"><b><asp:Label ID="t_amount" runat="server" Text=""></asp:Label></b> </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                    </div>
            </div>
        </form>
	</body>
</html>