<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PNR1.aspx.cs" Inherits="PNR1" %>

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
		    .abc:hover {background-color: #ffff33; color:#000099;}
		    .vname {
				 
			    text-align: right;
			    position:absolute;
			    top:13%;
			    left:1%;
			    border-radius: 15px 50px 30px;
			    padding: 0px 20px 0px 5px; 
			    color:#ffff33;
			    border:8px #000099;
			    border-style: dotted none dotted double;
             }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="header">
			    <p style="color:black; display:inline; font-size:40px;">FRIEND</p>
			    <p style="color:#30a5ff; display:inline; font-size:25px;"><i class="fa fa-train"></i></p>
			    <p style="color:black; display:inline; font-size:40px;">RAILWAYS</p>
			    <div class="header-right">
				    <a href="Main.aspx"><i class="fa fa-home"></i> Home</a>
				    <a href="my_booking.aspx"><i class="fa fa-bars"></i> My Booking</a>
				    <a  href="cancel.aspx"><i class="fa fa-close"></i> Cancel Ticket</a>
				    <a class="active" href="PNR.aspx"><i class="fa fa-bell-o"></i> PNR Enquiry</a>
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
		    <div>
			    <div class="user">
			        <div style="width:100%">
			            <img  src="img/9.jpg" style="width:110% ;height:130%">
		            </div>
			    </div>
			    <div class="vname">
				    <p><b><font size=8>PNR Enquiry</font></b></p>
				</div>
                <div id="myDIV">
			        <form id="form3">
                        <asp:Table ID="Table2" runat="server" frame="box" rules="none" border=8px width="50%" height="60%" align="center" style="border-style:double;color:#000099;opacity:0.9;background-color:#e7e7e7; padding: 10px; border-radius: 5px; position:absolute;top:38%;left:30%;">
                            <asp:TableRow CssClass="abc">
                                 <asp:TableCell style="background-color: #ffff33;"><b><asp:Label ID="Label2" runat="server" Text="PNR No."></asp:Label></b></asp:TableCell>
                                 <asp:TableCell width="50%"><b><asp:Label ID="Label1" runat="server" Text=""></asp:Label></b> </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow CssClass="abc">
                                 <asp:TableCell style="background-color: #ffff33;"><b><asp:Label ID="Label3" runat="server" Text="Passenger Name"></asp:Label></b></asp:TableCell>
                                 <asp:TableCell width="50%"><b><asp:Label ID="Label8" runat="server" Text=""></asp:Label></b> </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow CssClass="abc">
                                 <asp:TableCell style="background-color: #ffff33;"><b><asp:Label ID="Label4" runat="server" Text="Seat No."></asp:Label></b></asp:TableCell>
                                 <asp:TableCell width="50%"><b><asp:Label ID="Label9" runat="server" Text=""></asp:Label></b> </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow CssClass="abc">
                                 <asp:TableCell style="background-color: #ffff33;"><b><asp:Label ID="Label5" runat="server" Text="Gender"></asp:Label></b></asp:TableCell>
                                 <asp:TableCell width="50%"><b><asp:Label ID="Label13" runat="server" Text=""></asp:Label></b> </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow CssClass="abc">
                                 <asp:TableCell style="background-color: #ffff33;"><b><asp:Label ID="Label6" runat="server" Text="Train No."></asp:Label></b></asp:TableCell>
                                 <asp:TableCell width="50%"><b><asp:Label ID="Label14" runat="server" Text=""></asp:Label></b> </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow CssClass="abc">
                                 <asp:TableCell style="background-color: #ffff33;"><b><asp:Label ID="Label7" runat="server" Text="Train Name"></asp:Label></b></asp:TableCell>
                                 <asp:TableCell width="50%"><b><asp:Label ID="Label15" runat="server" Text=""></asp:Label></b> </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow CssClass="abc">
                                 <asp:TableCell style="background-color: #ffff33;"><b><asp:Label ID="Label10" runat="server" Text="Date"></asp:Label></b></asp:TableCell>
                                 <asp:TableCell width="50%"><b><asp:Label ID="Label16" runat="server" Text=""></asp:Label></b> </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow CssClass="abc">
                                 <asp:TableCell style="background-color: #ffff33;"><b><asp:Label ID="Label11" runat="server" Text="Departure Time"></asp:Label></b></asp:TableCell>
                                 <asp:TableCell width="50%"><b><asp:Label ID="Label17" runat="server" Text=""></asp:Label></b> </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow CssClass="abc">
                                 <asp:TableCell style="background-color: #ffff33;"><b><asp:Label ID="Label12" runat="server" Text="Arrival Time"></asp:Label></b></asp:TableCell>
                                 <asp:TableCell width="50%"><b><asp:Label ID="Label18" runat="server" Text=""></asp:Label></b> </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
				    </form>
			    </div>
            </div>
    </form>
</body>
</html>
