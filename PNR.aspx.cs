using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;


public partial class PNR : System.Web.UI.Page
{
    MySqlConnection con;
    MySqlDataAdapter adapter;
    DataSet ds;
    MySqlCommand cmd;
    IDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user_id"] == null)
        {
            ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp", "alert('Please Login First !!'); window.location.href = 'Login.aspx';", true);
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String p1 = TextBox1.Text;
        String sql = "SELECT * FROM passenger WHERE `passenger_id`='" + p1 + "'";
        con = new MySqlConnection();
        con.ConnectionString = @"server=localhost;user id=root;database=train";
        con.Open();
        cmd = new MySqlCommand(sql, con);
        dr = cmd.ExecuteReader();

        if (TextBox1.Text == "" || TextBox1.Text == null)
        {
            ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp", "alert('Please Enter PNR No. !!'); window.location.href = 'PNR.aspx';", true);
        }
        else
        {
            if (dr.Read())
            {
                String p2 = dr.GetValue(0).ToString();
                if (p2 == p1)
                {
                    Session["pnr_id11"] = TextBox1.Text;
                    Response.Redirect("PNR1.aspx");
                }
                else
                {
                    ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp", "alert('Invalid PNR No. Enter again !!'); window.location.href = 'PNR.aspx';", true);
                }
            }
           
        }
    }
}