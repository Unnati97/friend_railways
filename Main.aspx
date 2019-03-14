<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Main.aspx.cs" Inherits="Main1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
                
                <asp:ScriptManager ID="ScriptManager1" runat="server" />
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
    <div style="width:100%;">
                <asp:Image ID="Image1" ImageUrl="img/2.jpg" runat="server" class="mySlides" style="width:100%" />  
                <asp:Image ID="Image2" runat="server" class="mySlides" ImageUrl="img/3.jpg" style="width:100%"/>
                <asp:Image ID="Image3" runat="server" class="mySlides" ImageUrl="img/4.jpg" style="width:100%"/>
            </div>
            <div style="align-content:center;opacity: 0.8; border-radius: 10px; position:absolute;background-color:white; color:black; width:25%; height:70%; top:20%; left:10%;padding: 10px; ">
			    <h2>Book Your Journey</h2><br />
                <b><asp:Label ID="Label1" runat="server" Text="From" style="font-family: Montserrat, Helvetica Neue, Helvetica, Arial, sans-serif;"></asp:Label></b><br /> 
                <asp:DropDownList ID="DropFrom" runat="server" CssClass="inputuser" AutoPostBack="true" OnSelectedIndexChanged="chngFrom"></asp:DropDownList></br></br>
               
                <b><asp:Label ID="Label2" runat="server" Text="To" style="font-family: Montserrat, Helvetica Neue, Helvetica, Arial, sans-serif;"></asp:Label></b><br />
               <asp:DropDownList ID="DropTo" runat="server" CssClass="inputuser" AutoPostBack="true" OnSelectedIndexChanged="chngTo"></asp:DropDownList></br></br>
                
                <b><asp:Label ID="Label3" runat="server" Text="Date" style="font-family: Montserrat, Helvetica Neue, Helvetica, Arial, sans-serif;"></asp:Label></b><br/>
                    <asp:TextBox ID="DATE1" runat="server" class="inputuser" Width="280px"></asp:TextBox>
                    <asp:ImageButton AutoPostBack="true" ID="ImageButton1" runat="server" ImageUrl="~/img/cal.png" Width="30px" onclick="ImageButton1_Click" Height="30px" />
                    <asp:Calendar AutoPostBack="true" ID="Calendar1" runat="server" Visible="False" style="position:absolute; top:68%; left:100%; opacity: 1; border-radius: 10px; background-color:white;" FirstDayOfWeek="Sunday" onselectionchanged="Calendar1_SelectionChanged1"></asp:Calendar><br /><br /><br /><br />

                 
                
            </div>
            <div style="position:absolute;top:80%; left:15%; width:50%; ">
                    <b><asp:Button ID="Button1" runat="server" Text="Search" class="buttonsearch" Width="190px" OnClick="search_click"/>  
		    </div>
                            </ContentTemplate>
                </asp:UpdatePanel>
		    <script type="text/javascript">
		        var myIndex = 0;
		        carousel();
		        function carousel() {
		            var i;
		            var x = document.getElementsByClassName("mySlides");
		            for (i = 0; i < x.length; i++) {
		                x[i].style.display = "none";
		            }
		            myIndex++;
		            if (myIndex > x.length) { myIndex = 1 }
		            x[myIndex - 1].style.display = "block";
		            setTimeout(carousel, 2000); // Change image every 2 seconds
		        }
		    </script>
</asp:Content>

