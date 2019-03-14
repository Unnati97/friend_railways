<%@ Page Language="C#" AutoEventWireup="true" CodeFile="payment.aspx.cs" Inherits="payment" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>User_Interface</title>
	    <link rel="stylesheet" href="css/w3.css" />
	    <link rel="stylesheet" href="css/header.css" />
	    <link rel="stylesheet" href="css/search.css" />
	    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    </head>
    <body>
        <form id="form1" runat="server">
            <div class="header">
			    <p style="color:black; display:inline; font-size:40px;">FRIEND</p>
			    <p style="color:#30a5ff; display:inline; font-size:25px;"><i class="fa fa-train"></i></p>
			    <p style="color:black; display:inline; font-size:40px;">RAILWAYS</p>
			    <div class="header-right">
				    <a class="active" href="Main.aspx"><i class="fa fa-home"></i> Home</a>
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
				    <a href="contact.aspx"><i class="fa fa-envelope"></i> Contact Us</a>
			    </div>
		    </div>
            <div class="user">
		        <div style="width:100%; opacity:0.8;">
				    <asp:Image ID="Image1" ImageUrl="img/8.jpg" runat="server" style="width:100% ;height:100%" />
			    </div>
		    </div>
		    <div class="vname">
			    <p><b><font size=8>Payment</font></b></p>
		    </div>
            <div>
                <asp:Table ID="Table1" runat="server" frame="box" rules="none" border=8px  width="80%" height="30%" bordercolor=#663300 align="center" style="border-style:double;color:#000099;opacity:0.9;background-color:#e7e7e7; padding: 10px; border-radius: 5px; position:absolute;top:50%;left:10%;">
                    <asp:TableRow style="background-color:#ffe4cc;">
                        <asp:TableCell align="center" width="5%"><b><asp:Label ID="Label1" runat="server" Text="Train Id"></asp:Label></b></asp:TableCell>
                        <asp:TableCell align="center" width="10%"><b><asp:Label ID="Label2" runat="server" Text="PNR No."></asp:Label></b></asp:TableCell>
                        <asp:TableCell align="center" width="10%"><b><asp:Label ID="Label3" runat="server" Text="No. of Ticket"></asp:Label></b></asp:TableCell>
                        <asp:TableCell align="center" width="15%"><b><asp:Label ID="Label4" runat="server" Text="Amount"></asp:Label></b></asp:TableCell>
                        <asp:TableCell align="center" width="15%"><b><asp:Label ID="Label5" runat="server" Text="Payable Amount(Inc all Texes)"></asp:Label></b></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell align="center"><asp:Label ID="Train_Id" runat="server" Text=""></asp:Label></asp:TableCell>
                        <asp:TableCell align="center"><asp:Label ID="PNR_No" runat="server" Text=""></asp:Label></asp:TableCell>
                        <asp:TableCell align="center"><asp:Label ID="No_of_Ticket" runat="server" Text=""></asp:Label></asp:TableCell>
                        <asp:TableCell align="center"><asp:Label ID="Amount" runat="server" Text=""></asp:Label></asp:TableCell>
                        <asp:TableCell align="center"><asp:Label ID="Payable_Amount" runat="server" Text=""></asp:Label></asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
	        </div>
            <div>
                <asp:Table ID="Table2" runat="server" align="center" Width="20%" frame="box" border=8 bordercolor=#663300 cellspacing=20 style=" color:#000099;border-style:double;color:#000099;opacity:0.9;background-color:#ffe4cc; padding: 10px; border-radius: 5px;top:85%; left:20%; position:absolute;"  cellpadding=2 >
                    <asp:TableRow>
                        <asp:TableCell align="center" width="5%"><b><asp:Label ID="Label6" runat="server" Text="Payment Mood"></asp:Label></b>
                            <asp:DropDownList ID="DropPay" runat="server" OnSelectedIndexChanged="metho_SelectedIndexChanged" AutoPostBack="true">
                                <asp:ListItem Text="Select" Value="one"></asp:ListItem>
                                <asp:ListItem Text="Credit_Card" Value="two"></asp:ListItem>
                                <asp:ListItem Text="Wallet" Value="three"></asp:ListItem>
                                <asp:ListItem Text="Debit_Card" Value="four"></asp:ListItem>
                            </asp:DropDownList>
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
	        </div>
            <asp:Panel ID="Panel1" runat="server" Visible="False">
            <div>
				<table frame="box" rules="none" border=8px  bordercolor=#663300 width="35%" height="10%" align="center" style=" border-style:double; color:#000099;opacity:0.9;background-color: #ffe4cc; padding: 10px; border-radius: 5px; position:absolute;top:85%;left:50%;">
					  <tr>
						  <td style="background-color: #ffe4cc;"><label><b>Credit card number:</b></label></td>
						  <td width="50%"><asp:TextBox ID="credit" CssClass="inputuser" runat="server" placeholder="Enter Credit Card number" required TextMode="Number"></asp:TextBox></td>
					  </tr>
					  <tr>
						  <td style="background-color: #ffe4cc;"><label><b>CVV:</b></label></td>
						  <td width="50%"><input class="inputuser" type="password" min="100" max="999"  placeholder="Enter CVV" name="pnr" id="credit1" required></td>
					  </tr>
					</table>
			</div>
             </asp:Panel>
            <asp:Panel ID="Panel2" runat="server" Visible="False">
            <div>
			
				<table frame="box" rules="none" border=8px  bordercolor=#663300 width="35%" height="10%" align="center" style=" border-style:double; color:#000099;opacity:0.9;background-color: #ffe4cc; padding: 10px; border-radius: 5px; position:absolute;top:85%;left:50%;">
					  <tr>
						  <td style="background-color: #ffe4cc;"><label><b>Wallet Name:</b></label></td>
						  <td width="50%"><input class="inputuser"type="text" placeholder="Enter Wallet Name" name="pnr" id="first1" required></td>
					  </tr>
					  <tr>
						  <td style="background-color: #ffe4cc;"><label><b>Wallet ID:</b></label></td>
						  <td width="50%"><asp:TextBox ID="wallet" CssClass="inputuser" runat="server" placeholder="Enter Wallet ID" required TextMode="Number"></asp:TextBox></td>
					  </tr>
					  <tr>
						  <td style="background-color: #ffe4cc;"><label><b>Password:</b></label></td>
						  <td width="50%"><input class="inputuser"type="password" placeholder="Password" name="pnr" id="first1" required></td>
					  </tr>
					</table>
			
			</div>
             </asp:Panel>
            <asp:Panel ID="Panel3" runat="server" Visible="False">
			<div>
			
				<table frame="box" rules="none" border=8px  bordercolor=#663300 width="35%" height="10%" align="center" style=" border-style:double; color:#000099;opacity:0.9;background-color: #ffe4cc; padding: 10px; border-radius: 5px; position:absolute;top:85%;left:50%;">
					  <tr class="abc">
						  <td style="background-color: #ffe4cc;"><label><b>Debit card number:</b></label></td>
						  <td width="50%"><asp:TextBox ID="debit" CssClass="inputuser" runat="server" placeholder="Enter Debit Card No." required TextMode="Number"></asp:TextBox></td>
					  </tr>
					  <tr class="abc">
						  <td style="background-color: #ffe4cc;"><label><b>PIN:</b></label></td>
						  <td width="50%"><input class="inputuser"type="password" placeholder="Enter PIN" name="pnr" id="first1" required></td>
					  </tr>
					  <tr class="abc">
						  <td style="background-color: #ffe4cc;"><label><b>CVV:</b></label></td>
						  <td width="50%"><input class="inputuser"type="password" placeholder="Enter CVV" name="pnr" id="first1" required></td>
					  </tr>
					</table>
			
                </div>
                 </asp:Panel>
            <div>
                <asp:Button ID="Button1" CssClass="button"  runat="server" Text="Pay" style="position:absolute;top:120%; left:44%; width:15%;" onclick="Button1_Click"/>
		    </div>
        </form>
    </body>
</html>
