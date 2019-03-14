using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

public partial class cancel : System.Web.UI.Page
{
    MySqlConnection con, con1;
    MySqlDataAdapter adapter;
    DataSet ds;
    MySqlCommand cmd, cmd1;
    IDataReader dr, dr1;
    String UID;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user_id"] == null)
        {
            ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp", "alert('Please Login First !!'); window.location.href = 'Login.aspx';", true);
        }
    }
    protected void booking_cancel(object sender, EventArgs e)
    {
        //  UID = Session["user_id"].ToString();
        String bid = null;
        String bid1 = TextBox1.Text.ToString();
        String sql = "SELECT * FROM booking WHERE `booking_id`='" + TextBox1.Text + "'";
        con = new MySqlConnection();
        con.ConnectionString = @"server=localhost;user id=root;database=train";
        con.Open();
        cmd = new MySqlCommand(sql, con);
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            bid = dr.GetValue(0).ToString();
        }
        if (bid == bid1)
        {
            String sql2 = "DELETE  FROM `booking` WHERE `booking_id`='" + bid + "'";
            con1 = new MySqlConnection();
            con1.ConnectionString = @"server=localhost;user id=root;database=train";
            con1.Open();
            cmd1 = new MySqlCommand(sql2, con1);
            cmd1.ExecuteNonQuery();
            ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp", "alert('Your Ticket Canceled !!!'); window.location.href = 'cancel.aspx';", true);
        }
        else
        {
            ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp", "alert('Booking ID Not Valid !!!'); window.location.href = 'cancel.aspx';", true);
        }

    }
    protected void passenger_cancel(object sender, EventArgs e)
    {
        //  UID = Session["user_id"].ToString();
        String pid = null;
        String pid1 = TextBox2.Text.ToString();
        String sql = "SELECT * FROM passenger WHERE `passenger_id`='" + TextBox2.Text + "'";
        con = new MySqlConnection();
        con.ConnectionString = @"server=localhost;user id=root;database=train";
        con.Open();
        cmd = new MySqlCommand(sql, con);
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            pid = dr.GetValue(0).ToString();
        }
        if (pid == pid1)
        {
            String sql1 = "DELETE  FROM `passenger` WHERE `passenger_id`='" + pid + "'";
            con1 = new MySqlConnection();
            con1.ConnectionString = @"server=localhost;user id=root;database=train";
            con1.Open();
            cmd1 = new MySqlCommand(sql1, con1);
            cmd1.ExecuteNonQuery();
            ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp", "alert('Your Ticket Canceled !!!'); window.location.href = 'cancel.aspx';", true);
        }
        else
        {
            ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp", "alert('Passenger ID Not Valid !!!'); window.location.href = 'cancel.aspx';", true);
        }
    }
}