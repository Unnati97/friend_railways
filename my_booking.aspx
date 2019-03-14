<%@ Page Language="C#" AutoEventWireup="true" CodeFile="my_booking.aspx.cs" Inherits="my_booking" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
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
	<body style="overflow:hidden;">
        <form action="#" id="form1" runat="server" name="form1" method="post">
            <div class="header">
			    <p style="color:black; display:inline; font-size:40px;">FRIEND</p>
			    <p style="color:#30a5ff; display:inline; font-size:25px;"><i class="fa fa-train"></i></p>
			    <p style="color:black; display:inline; font-size:40px;">RAILWAYS</p>
			    <div class="header-right">
				    <a href="Main.aspx"><i class="fa fa-home"></i> Home</a>
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
		    <div>
			    <div class="user">
				    <div style="width:100%">
					    <asp:Image ID="Image1" ImageUrl="img/11.jpg" runat="server" style="width:100% ;height:100%" />
				    </div>
			    </div>
			    <div class="vname">
				    <p><b><font size=8>Your Tickets</font></b></p>
			    </div>
                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                    <HeaderTemplate>
                        <table frame="box" rules="none" border="8px" width="60%" height="30%" align="center" style="border-style:double;color:#000099;opacity:0.9;background-color:#e7e7e7; padding: 10px; border-radius: 5px; position:absolute;top:40%;left:20%;">
					        <tr class="abc" style="background-color:#ffe4cc;">
						        <td align="center" width="10%"><b>Booking ID</td>
						        <td align="center" width="10%"><b>Train No.</td>
						        <td align="center" width="10%"><b>PNR No.</td>
						        <td align="center" width="10%"><b>Booking_Date</td>
						        <td align="center" width="10%"><b>Payment_ID</td>
                                <td align="center" width="10%"><b> </td>
					        </tr>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td align="center"><%# Eval("booking_id") %> </td>
                            <td align="center"><%# Eval("train_id") %> </td>
                            <td align="center"><%# Eval("passenger_id") %> </td>
                            <td align="center"><%# Eval("booking_date") %> </td>
                            <td align="center"><%# Eval("payment_id") %> </td>
                            <td align="center">
                                <asp:LinkButton ID="LinkButton1" runat="server" booking_id='<%#DataBinder.Eval(Container.DataItem,"booking_id")%>' OnCommand="clickbutton">More Detail</asp:LinkButton>
                            </tr>
                    </ItemTemplate>
                    <FooterTemplate>
                        </table>
                    </FooterTemplate>
                </asp:Repeater>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:trainConnectionString4 %>" 
                    ProviderName="<%$ ConnectionStrings:trainConnectionString4.ProviderName %>" 
                    
                    SelectCommand="SELECT booking_id, passenger_id, train_id, booking_date, payment_id FROM booking WHERE (user_id = ?)">
                    <SelectParameters>
                        <asp:SessionParameter Name="user_id" SessionField="user_id" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
        </form>
	</body>
</html>