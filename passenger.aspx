<%@ Page Language="C#" AutoEventWireup="true" CodeFile="passenger.aspx.cs" Inherits="passenger" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>User_Interface</title>
	    <link rel="stylesheet" href="css/w3.css" />
	    <link rel="stylesheet" href="css/header.css" />
	    <link rel="stylesheet" href="css/search.css" />
	    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
	    <style type="text/css">
			    input[type="radio"]:checked + label
		    {
			    font-weight: bold;
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
			    <p><b><font size=8>Passenger</font></b></p>
		    </div>
            <div style="align-content:center;opacity: 0.8; border-radius: 10px; position:absolute;background-color:#fff2e6; color:black; width:60%; height:55%; top:40%; left:20%;">
            <div>
                <asp:Label ID="Label1" runat="server" Text="First Name"  style=" align:center; font-weight:bold; color:#000099; position:absolute; top:20%; left:17%;"></asp:Label>
                <asp:Label ID="Label2" runat="server" Text="Last Name" style=" align:center; font-weight:bold; color:#000099; position:absolute; top:20%; left:47%;"></asp:Label>
                <asp:Label ID="Label3" runat="server" Text="Gender" style=" align:center; font-weight:bold; color:#000099; position:absolute; top:20%; left:74%;"></asp:Label>
            </div>
                <div>
                    <asp:TextBox ID="TextBox1" runat="server" style=" position:absolute; top:30%; left:10%;" Visible="False" required></asp:TextBox>
                    <asp:TextBox ID="TextBox2" runat="server" style=" position:absolute; top:30%; left:40%;" Visible="False" required></asp:TextBox>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatColumns="2" style=" position:absolute; top:30%; left:70%;" Visible="False" required>
                            <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                            <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                    </asp:RadioButtonList>
                </div>
                <div>               
                    <asp:TextBox ID="TextBox3" runat="server" style=" position:absolute; top:40%; left:10%;" Visible="False" required></asp:TextBox>
                    <asp:TextBox ID="TextBox4" runat="server" style=" position:absolute; top:40%; left:40%;" Visible="False" required></asp:TextBox>
                    <asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatColumns="2" style=" position:absolute; top:40%; left:70%;" Visible="False" required>
                            <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                            <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                    </asp:RadioButtonList>
                </div>
                <div> 
                    <asp:TextBox ID="TextBox5" runat="server" style=" position:absolute; top:50%; left:10%;" Visible="False" required></asp:TextBox>
                    <asp:TextBox ID="TextBox6" runat="server" style=" position:absolute; top:50%; left:40%;" Visible="False" required></asp:TextBox>
                    <asp:RadioButtonList ID="RadioButtonList3" runat="server" RepeatColumns="2" style=" position:absolute; top:50%; left:70%;" Visible="False" required>
                            <asp:ListItem Text="Male" Value="m3"></asp:ListItem>
                            <asp:ListItem Text="Female" Value="f3"></asp:ListItem>
                    </asp:RadioButtonList>
                </div>
                <div>              
                    <asp:TextBox ID="TextBox7" runat="server" style=" position:absolute; top:60%; left:10%;" Visible="False" required></asp:TextBox>
                    <asp:TextBox ID="TextBox8" runat="server" style=" position:absolute; top:60%; left:40%;" Visible="False" required></asp:TextBox>
                    <asp:RadioButtonList ID="RadioButtonList4" runat="server" RepeatColumns="2" style=" position:absolute; top:60%; left:70%;" Visible="False" required>
                            <asp:ListItem Text="Male" Value="m4"></asp:ListItem>
                            <asp:ListItem Text="Female" Value="f4"></asp:ListItem>
                    </asp:RadioButtonList>
                </div>
                <div>              
                    <asp:TextBox ID="TextBox9" runat="server" style=" position:absolute; top:70%; left:10%;" Visible="False" required></asp:TextBox>
                    <asp:TextBox ID="TextBox10" runat="server" style=" position:absolute; top:70%; left:40%;" Visible="False" required></asp:TextBox>
                    <asp:RadioButtonList ID="RadioButtonList5" runat="server" RepeatColumns="2" style=" position:absolute; top:70%; left:70%;"  Visible="False" required>
                            <asp:ListItem Text="Male" Value="m5"></asp:ListItem>
                            <asp:ListItem Text="Female" Value="f5"></asp:ListItem>
                    </asp:RadioButtonList>
                </div>
            </div>
            <div style="position:absolute;top:84%; left:72%;">
                <asp:Button ID="Button1" CssClass="button" runat="server" Text="Payment" OnClick="Button1_Click" />
		    </div>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="" ControlToValidate="RadioButtonList1"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="" ControlToValidate="RadioButtonList2"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="" ControlToValidate="RadioButtonList3"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="" ControlToValidate="RadioButtonList4"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="" ControlToValidate="RadioButtonList5"></asp:RequiredFieldValidator>
        </form>
    </body
</html>
