using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

public partial class register : System.Web.UI.Page
{
    MySqlConnection con;
    MySqlDataAdapter adapter;
    DataSet ds;
    MySqlCommand cmd;
    IDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack) // If page loads for first time
        {

        }
        else
        {
            con = new MySqlConnection();
            con.ConnectionString = @"server=localhost;user id=root;database=train";
            con.Open();

            MySqlCommand cmd1 = new MySqlCommand("INSERT INTO `user` ( `name`, `password`, `email`, `gender`, `dob`, `city`, `state`, `mobile`) VALUES ( '" + TextBox1.Text + "_" + TextBox2.Text + "', '" + TextBox3.Text + "', '" + TextBox4.Text + "', '" + RadioButtonList1.Text + "', '" + TextBox8.Text + "', '" + TextBox6.Text + "', '" + TextBox7.Text + "', '" + TextBox5.Text + "');", con);
            cmd1.ExecuteNonQuery();
            ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp", "alert('Register Successful'); window.location.href = 'Login.aspx';", true);
        }
    }
}