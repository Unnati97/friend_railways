using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;
using System.Configuration;
using MySql.Data.MySqlClient;


public partial class search1 : System.Web.UI.Page
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
            String s = ((LinkButton)sender).Attributes["train_id"].ToString().Trim();
            Response.Redirect("search2.aspx?train_id=" + s);
        }
        catch(Exception ex)
        {

        }
    }
}

