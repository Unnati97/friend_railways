using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

public partial class Login : System.Web.UI.Page
{
    MySqlConnection con;
    MySqlDataAdapter adapter;
    DataSet ds;
    MySqlCommand cmd;
    IDataReader dr;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string str = uid.Text;
        string str1 = pass.Text;
        String sql = "SELECT * FROM USER WHERE `email`='" + str + "' AND `password`='" + str1 + "'";
        con = new MySqlConnection();
        con.ConnectionString = @"server=localhost;user id=root;database=train";
        con.Open();
        cmd = new MySqlCommand(sql, con);
        dr = cmd.ExecuteReader();
        String email1 = null;
        String user_id1 = null;
        String password1 = null;
        if (dr.Read())
        {
            user_id1 = dr.GetValue(0).ToString();
            email1 = dr.GetValue(3).ToString();
            password1 = dr.GetValue(2).ToString();
        }
        if (password1 == str1 && email1 == str)
        {
            Session["user_id"] = user_id1;
            Response.Redirect("Main.aspx");
         }
        else
        {
            ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp", "alert('Incorrect User ID or password'); window.location.href = 'Login.aspx';", true);
        }
    }
}
