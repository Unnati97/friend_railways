using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class my_booking : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user_id"] == null)
        {
            ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp", "alert('Please Login First !!'); window.location.href = 'Login.aspx';", true);
        }
    }
    protected void clickbutton(object sender, EventArgs e)
    {
        try
        {
            String s = ((LinkButton)sender).Attributes["booking_id"].ToString().Trim();
            Response.Redirect("my_booking1.aspx?booking_id=" + s);
        }
        catch (Exception ex)
        {

        }
    }
}