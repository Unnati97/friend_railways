<%@ Page Language="C#" AutoEventWireup="true" CodeFile="search2.aspx.cs" Inherits="search2" %>

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
            <div>
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
				        <a href="contact.aspx"><i class="fa fa-envelope"></i> Contact Us</a>
			        </div>
		        </div>
		        <div>
			        <div class="user">
				        <div style="width:100%; opacity:0.8;">
					        <asp:Image ID="Image1" ImageUrl="img/8.jpg" runat="server" style="width:100% ;height:100%" />
				        </div>
			        </div>
			        <div class="vname">
				        <p><b><font size="8">YouR Train</font></b></p>
			        </div>
                    <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource1">
                <HeaderTemplate>
                <table frame="box" rules="none" border=8px  height="20%" width="90%" bordercolor=#663300 style="border-style:double;color:#000099;opacity:0.9;background-color:#e7e7e7; padding: 10px; border-radius: 5px; position:absolute;top:38%;left:5%;">
					    <tr class="abc" style="background-color:#ffe4cc;">
						    <td align="center" width="8%"><b>Train ID</td>
						    <td align="center" width="10%"><b>Train Name</td>
						    <td align="center" width="10%"><b>From</td>
						    <td align="center" width="10%"><b>To</td>
						    <td align="center" width="10%"><b>Date</td>
						    <td align="center" width="10%"><b>Departure Time</td>
						    <td align="center" width="10%"><b>Arrival Time</b></td>
						    <td align="center" width="10%"><b>Seat Available</td>
						    <td align="center" width="10%"><b>Train type</td>
						    <td align="center" width="15%"><b>Train class</td>
						    <td align="center" width="15%"><b>Fare</td>
					    </tr>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr align="center">
                        <td align="center"><%# Eval("train_id") %> </td>
                        <td align="center"><%# Eval("train_name") %> </td>
                        <td align="center"><%# Eval("from") %> </td>
                        <td align="center"><%# Eval("to") %> </td>
                        <td align="center"><%# Eval("date") %> </td>
                        <td align="center"><%# Eval("departure_time") %> </td>
                        <td align="center"><%# Eval("arrival_time") %> </td>
                        <td align="center"><%# Eval("seat_available") %> </td>
                        <td align="center"><%# Eval("train_type") %> </td>
                        <td align="center"><%# Eval("train_class") %> </td>
                        <td align="center"><%# Eval("fare") %> </td>
                </ItemTemplate>
                <FooterTemplate>
                   </table>
                </FooterTemplate>
            </asp:Repeater>
           <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:trainConnectionString3 %>" 
                                ProviderName="<%$ ConnectionStrings:trainConnectionString3.ProviderName %>" 
                                SelectCommand="SELECT train_id, train_name, seat_available, train_type, train_class, `from`, fare, `to`, `date`, departure_time, arrival_time FROM train_data WHERE (`train_id` = ?)">
                                <SelectParameters>
                                    <asp:QueryStringParameter Name="train_id" QueryStringField="train_id" 
                                        Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
			        <div>
                        <asp:Table ID="Table2" runat="server" frame="box" height="20%" width="20%"  border=8 bordercolor=#663300 cellspacing=20 style="border-style:double;color:#000099;opacity:0.9;background-color:#ffe4cc; padding: 10px; border-radius: 5px;top:70%; left:25%; position:absolute;"  cellpadding=2 >
                            <asp:TableRow class="abc" style="background-color:#ffe4cc;">
                                <asp:TableCell align="center" width="9%"><b><asp:Label ID="Label12" runat="server" Text="No. of Seat"></asp:Label></b>
                                    <asp:DropDownList ID="DropDownList1" runat="server">
                                        <asp:ListItem Text="1" Value="one"></asp:ListItem>
                                        <asp:ListItem Text="2" Value="two"></asp:ListItem>
                                        <asp:ListItem Text="3" Value="three"></asp:ListItem>
                                        <asp:ListItem Text="4" Value="four"></asp:ListItem>
                                        <asp:ListItem Text="5" Value="five"></asp:ListItem>
                                    </asp:DropDownList>
                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                        <asp:Table ID="Table3" runat="server" height="20%" width="20%" border=8 frame="box" bordercolor=#663300 cellspacing=20 style="border-style:double;color:#000099;opacity:0.9;background-color:#ffe4cc; padding: 10px; border-radius: 5px;top:70%; left:58%; position:absolute;"  cellpadding=2 >
                            <asp:TableRow class="abc" style="background-color:#ffe4cc;">
                                <asp:TableCell align="center" width="9%"><b><asp:Label ID="Label13" runat="server" Text="Seat Class"></asp:Label></b>
                                    <asp:DropDownList ID="DropDownList2" runat="server">
                                        <asp:ListItem Text="FC" Value="0"></asp:ListItem>
                                        <asp:ListItem Text="2S" Value="1"></asp:ListItem>
                                        <asp:ListItem Text="SS" Value="2"></asp:ListItem>
                                        <asp:ListItem Text="3C" Value="3"></asp:ListItem>
                                    </asp:DropDownList>
                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
			        </div>
			        <div style="position:absolute;top:100%; left:45%;">
                        <asp:Button ID="Button1" CssClass="button" runat="server" Text="Add Passenger Detail" OnClick="Button1_Click" />
			        </div>

		        </div>
            </div>
        </form>
    </body>
</html>
