using System;
using System.ComponentModel;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;

public partial class Main1 : System.Web.UI.Page
{
    MySqlConnection con;
    MySqlDataAdapter adapter;
    DataSet ds;
    MySqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user_id"] == null)
        {
            ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp", "alert('Please Login First !!'); window.location.href = 'Login.aspx';", true);
        }
        else
        {
            if (!IsPostBack)
            {
                con = new MySqlConnection();
                con.ConnectionString = @"server=localhost;user id=root;database=train";
                if (con.State != ConnectionState.Open)
                {
                    con.Open();
                }
                BindDropFrom();
                BindDropTo();
            }
        }
    }
    protected void search_click(object sender, EventArgs e)
    {
        Session["DATE1"] = DATE1.Text;
        Response.Redirect("search1.aspx?from="+DropFrom.Text+"&to="+DropTo.Text+"&date="+DATE1.Text+"");
    }
    public void BindDropFrom()
    {
        adapter = new MySqlDataAdapter("Select * from train_data", con);
        DataTable dt = new DataTable();
        adapter.Fill(dt);
        DropFrom.DataSource = dt;
        DropFrom.DataBind();
        DropFrom.DataTextField = "from";
        DropFrom.DataBind();
    }
    public void BindDropTo()
    {
        adapter = new MySqlDataAdapter("Select * from train_data", con);
        DataTable dt = new DataTable();
        adapter.Fill(dt);
        DropTo.DataSource = dt;
        DropTo.DataBind();
        DropTo.DataTextField = "to";
        DropTo.DataBind();
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Session["DropFrom"] = DropFrom.Text;
        Session["DropTo"] = DropTo.Text;
        
        if (Calendar1.Visible == false)
        {
            Calendar1.Visible = true;
        }
        else
        {
            Calendar1.Visible = false;
        }
    }
    protected void Calendar1_SelectionChanged1(object sender, EventArgs e)
    {
        DATE1.Text = Calendar1.SelectedDate.ToString("yyyy/MM/dd");
        Calendar1.Visible = false;
    }
    protected void chngFrom(object sender, EventArgs e)
    {
        
        
    }
    protected void chngTo(object sender, EventArgs e)
    {
        
    }
}