<%@ Page Language="C#" AutoEventWireup="true" CodeFile="search1.aspx.cs" Inherits="search1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
	    <title>User_Interface</title>
	    <link rel="stylesheet" href="css/w3.css" />
	    <link rel="stylesheet" href="css/header.css" />
	    <link rel="stylesheet" href="css/search.css" />
	    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
	    <style type="text/css">
		    .abc{}
		    .abc:hover {background-color:#fff2e6; color:black;}
		    #GridView1 tr.rowhover:hover
		    {
		        background-color:#fff2e6; color:black;
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
					<asp:Image ID="Image1" ImageUrl="img/8.jpg" runat="server" style="width:100% ;height:100%" />
			</div>
			<div class="vname">
				<p><b><font size=8>Trains</font></b></p>
		    </div>
            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                <HeaderTemplate>
                <table frame="box" rules="none" border=8px bordercolor=#663300 width="60%" height="50%" align="center" style=" border-style:double;color:#000099;opacity:0.9;background-color:#e7e7e7; padding: 10px; border-radius: 5px; position:absolute;top:38%;left:22%;">
					    <tr class="abc" style="background-color:#ffe4cc;">
						    <td align="center" width="5%"><b>Train ID</td>
						    <td align="center" width="15%"><b>Train Name</td>
						    <td align="center" width="10%"><b>From</td>
						    <td align="center" width="10%"><b>To</td>
						    <td align="center" width="10%"><b>Date</td>
						    <td align="center" width="10%"><b>Departure Time</td>
						    <td align="center" width="10%"><b>Arrival Time</b></td>
                            <td align="center" width="10%"><b>Proceed </b></td>
					    </tr>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td align="center"><%# Eval("train_id") %> </td>
                        <td align="center"><%# Eval("train_name") %> </td>
                        <td align="center"><%# Eval("from") %> </td>
                        <td align="center"><%# Eval("to") %> </td>
                        <td align="center"><%# Eval("date") %> </td>
                        <td align="center"><%# Eval("departure_time") %> </td>
                        <td align="center"><%# Eval("arrival_time") %> </td>
                        <td align="center">
                            <asp:LinkButton ID="LinkButton1" runat="server" train_id='<%#DataBinder.Eval(Container.DataItem,"train_id")%>' OnCommand="clickbutton" >Click Here</asp:LinkButton>
                        </tr>
                </ItemTemplate>
                <FooterTemplate>
                   </table>
                </FooterTemplate>
            </asp:Repeater>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:trainConnectionString2 %>" 
                ProviderName="<%$ ConnectionStrings:trainConnectionString2.ProviderName %>" 
              SelectCommand="SELECT train_id, train_name, `from`, arrival_time, departure_time, `date`, `to` FROM train_data WHERE ((`from` = ?) AND (`to` = ?) AND (`date` = ?))">
                <SelectParameters>
                    <asp:SessionParameter Name="from" SessionField="DropFrom" Type="String" />
                    <asp:SessionParameter Name="to" SessionField="DropTo" Type="String" />
                    <asp:SessionParameter Name="date" SessionField="DATE1" Type="DateTime" />
                </SelectParameters>
            </asp:SqlDataSource>
        </form>
	</body>
</html>
