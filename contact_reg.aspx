<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contact_reg.aspx.cs" Inherits="contact_reg" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
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
    <body>
        <form id="form1" runat="server">
            <div class="header">
			    <p style="color:black; display:inline; font-size:40px;">FRIEND</p>
			    <p style="color:#30a5ff; display:inline; font-size:25px;"><i class="fa fa-train"></i></p>
			    <p style="color:black; display:inline; font-size:40px;">RAILWAYS</p>
			    <div class="header-right">
				    <a class="active" href="contact_reg.aspx" style="color:black;"><i class="fa fa-envelope"></i> Contact Us</a>
			    </div>
		    </div>
		    <div class="w3-container w3-light-grey" id="team">
			    <h3 class="w3-center" style="border-style: dotted none dotted double;border-radius: 15px 50px 30px;padding: 0px 20px 0px 5px; ">THE TEAM</h3>
			    <p class="w3-center w3-large">The ones who runs this company</p>
			    <div class="w3-row-padding" style="margin-top:64px">
				    <div class="w3-col l3 m6 w3-margin-bottom">
					    <div class="w3-card">
                            <asp:Image ID="Image1" runat="server" ImageUrl="img/foru.jpg" alt="Foru" style="width:100%"/>
						    <div class="w3-container w3-white">
							    <h3>Foram Gaikwad</h3>
							    <p class="w3-opacity">CEO & Founder</p>
							    <a href="#">+917405215521</a>
						    </div>
					    </div>
				    </div>
				    <div class="w3-col l3 m6 w3-margin-bottom">
					    <div class="w3-card">
						    <asp:Image ID="Image2" runat="server" ImageUrl="img/rj.jpg" alt="RJ" style="width:100%"/>
						    <div class="w3-container w3-white">
							    <h3>Rushit Jasoliya</h3>
							    <p class="w3-opacity">Web Designer</p>
							    <a href="#">+919879491539</a>
						    </div>
					    </div>
				    </div>
				    <div class="w3-col l3 m6 w3-margin-bottom">
					    <div class="w3-card">
						    <asp:Image ID="Image3" runat="server" ImageUrl="img/un.jpg" alt="Unnti" style="width:100%"/>
						    <div class="w3-container w3-white">
							    <h3>Unnati Kapadia</h3>
							    <p class="w3-opacity">Designer</p>
							    <a href="#">+919662116115</a>
						    </div>
					    </div>
				    </div>
				    <div class="w3-col l3 m6 w3-margin-bottom">
					    <div class="w3-card">
						    <asp:Image ID="Image4" runat="server" ImageUrl="img/nik.jpg" alt="Foru" style="width:100%"/>
						    <div class="w3-container w3-white">
							    <h3>Nikul Kukadiya</h3>
							    <p class="w3-opacity">Developer</p>
							    <a href="#">+918866465371</a>
						    </div>
					    </div>
				    </div>
			    </div>
		    </div>
		    <div class="w3-container w3-light-grey" id="ContactUs">
			    <p class="w3-center w3-large">Lets get in touch. Send us a message:</p>
			    <div class="w3-row-padding" style="margin-top:60px">
				    <div>
					    <p class="w3-center"><i class="fa fa-map-marker fa-fw w3-xxlarge w3-center"></i> Gujarat , INDIA</p><br>
					    <form action="#" target="_blank">
						    <p align="center"><asp:TextBox ID="TextBox1" CssClass="w3-center w3-border inputuser" runat="server" placeholder="Name" required name="Name"></asp:TextBox></p>
						    <p align="center"><asp:TextBox ID="TextBox2" CssClass="w3-center w3-border inputuser" runat="server" placeholder="Email" required name="Email"></asp:TextBox></p>
						    <p align="center"><asp:TextBox ID="TextBox3" CssClass="w3-center w3-border inputuser" runat="server" placeholder="Subject" required name="Subject"></asp:TextBox></p>
						    <p align="center"><asp:TextBox ID="TextBox4" CssClass="w3-center w3-border inputuser" runat="server" placeholder="Message" required name="Message"></asp:TextBox></p>
						    <p align="center">
							    <button class="w3-button w3-center w3-black" type="submit"><i class="fa fa-paper-plane"></i> SEND MESSAGE</button>
						    </p>
					    </form>
				    </div>
			    </div>
		    </div>
        </form>
    </body>
</html>
