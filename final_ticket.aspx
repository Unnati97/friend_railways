<%@ Page Language="C#" AutoEventWireup="true" CodeFile="final_ticket.aspx.cs" Inherits="final_ticket" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
    <head id="Head1" runat="server">
        <title>User_Interface</title>
	        <link rel="stylesheet" href="css/w3.css" />
	        <link rel="stylesheet" href="css/header.css" />
	        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
	        <style type="text/css">
		        .inputuser{
		            width: 24%;
		            padding: 5px 10px;
		            border: 1px solid #ccc;
		            border-radius: 4px;
                }
	        </style>
    </head>
    <body style="font-family: Montserrat, Helvetica Neue, Helvetica, Arial, sans-serif; overflow:hidden; background-color:#F7F3EA;">
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
						    <a href="chngPass.aspx"><i class="fa fa-key"></i> Change Password</a>
						    <a href="Login.aspx"><i class="fa fa-power-off"></i> Log Out</a>
					    </div>
				    </div> 
				    <a class="active" href="contact.aspx"><i class="fa fa-envelope"></i> Contact Us</a>
			    </div>
		    </div>
            <div >
                <table frame="box" rules="none" border="8px" width="80%"style=" position:absolute; top:22%; left:10%; background-color:White;border-style:double; padding: 10px; border-radius: 5px;" >
			        <tr style="background-color:#30a5ff;">
				        <td colspan="7">
                            <p style="color:black; display:inline; font-size:40px;">FRIEND</p>
			                <p style="color:white; display:inline; font-size:25px;"><i class="fa fa-train"></i></p>
			                <p style="color:black; display:inline; font-size:40px;">RAILWAYS</p>
                        </td>
			        </tr>
			        <tr>
				        <td colspan=1><label><b>Booking ID:</b></label><asp:Label ID="Label15" runat="server" Text="Label"></asp:Label></td>
				        <td colspan=5 align="center"><label><b>User ID:</b></label><asp:Label ID="Label16" runat="server" Text="Label"></asp:Label></td>
				        <td colspan=1 align="right"><label><b>Status:   Confirmed</b></label></td>
				        </tr>
			        <tr style="background-color:#30a5ff;">
				        <td colspan=7 align="center"><font size=5><label><b>Travel Information</b></label></font>
				        </tr>
			        <tr>
				        <td ><label><b>Travel Date</b></label></td>
				        <td ><label><b>Train ID</b></label></td>
				        <td align="left"><label><b>Train Name</b></label></td>
				        <td align="left"><label><b>From</b></label></td>
				        <td align="center"><label><b>To</b></label></td>
				        <td align="right"><label><b>Dep Time</b></label></td>
				        <td align="center"><label><b>Arr Time</b></label></td>
				        </tr>
			        <tr>
				        <td><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
                        <td><asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></td>
                        <td align="left"><asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></td>
                        <td align="left"><asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></td>
                        <td align="center"><asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></td>
                        <td align="right"><asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></td>
                        <td align="center"><asp:Label ID="Label7" runat="server" Text="Label"></asp:Label></td>
			        </tr>
			        <tr style="background-color:#30a5ff;">
				        <td colspan=7 align="center"><font size=5><label><b>Passenger Information</b></label></font>
				        </tr>
			        <tr>
				        <td colspan=1><label><b>PNR No.</b></label></td>
				        <td colspan=1><label><b>Train Type</b></label></td>
				        <td colspan=1><label><b>Train Class</b></label></td>
				        <td colspan=4><label><b>Seat</b></label></td>
				        </tr>
			        <tr>
                    <td colspan=1><asp:Label ID="Label8" runat="server" Text="Label"></asp:Label></td>
                    <td colspan=1><asp:Label ID="Label9" runat="server" Text="Label"></asp:Label></td>
                    <td colspan=1><asp:Label ID="Label10" runat="server" Text="Label"></asp:Label></td>
                    <td colspan=4><asp:Label ID="Label11" runat="server" Text=""></asp:Label></td>
				        </tr>
			        <tr style="background-color:#30a5ff;">
				        <td colspan=7 align="center"><font size=5><label><b>Payment Information</b></label></font>
				        </tr>
			        <tr>
				        <td colspan=1><label><b>Payment ID</b></label></td>
				        <td colspan=1><label><b>Payment Method</b></label></td>
				        <td colspan=5><label><b>Amount</b></label></td>
				        </tr>					
			        <tr>
                        <td colspan=1><asp:Label ID="Label12" runat="server" Text="Label"></asp:Label></td>
                        <td colspan=1><asp:Label ID="Label13" runat="server" Text="Label"></asp:Label></td>
                        <td colspan=5><asp:Label ID="Label14" runat="server" Text="Label"></asp:Label></td>
				        </tr>					
			        </table>
	            </div>	
        </form>
    </body>
</html>
