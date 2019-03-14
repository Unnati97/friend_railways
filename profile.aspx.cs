using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

public partial class profile : System.Web.UI.Page
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
        else
        {
            String puser = null, uid1 = null;
            if (!IsPostBack) // If page loads for first time
            {

                puser = Session["user_id"].ToString();
                String sql = "SELECT * FROM USER WHERE `user_id`='" + puser + "'";
                con = new MySqlConnection();
                con.ConnectionString = @"server=localhost;user id=root;database=train";
                con.Open();

                cmd = new MySqlCommand(sql, con);
                dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    uid1 = dr.GetValue(0).ToString();
                    userid.Text = dr.GetValue(0).ToString();
                    TextBox8.Text = dr.GetValue(1).ToString();
                    TextBox1.Text = dr.GetValue(2).ToString();
                    TextBox2.Text = dr.GetValue(3).ToString();
                    TextBox3.Text = dr.GetValue(8).ToString();
                    TextBox4.Text = dr.GetValue(4).ToString();
                    TextBox5.Text = dr.GetValue(5).ToString();
                    TextBox6.Text = dr.GetValue(6).ToString();
                    TextBox7.Text = dr.GetValue(7).ToString();
                }
                con.Close();
            }
            else if(uid1 == puser)
            {
                String UID = Session["user_id"].ToString();
                con = new MySqlConnection();
                con.ConnectionString = @"server=localhost;user id=root;database=train";
                con.Open();
                MySqlCommand cmd1 = new MySqlCommand("UPDATE `user` SET `name`='" + TextBox8.Text + "',`password`='" + TextBox1.Text + "',`email`='" + TextBox2.Text + "',`gender`='" + TextBox4.Text + "',`dob`='" + TextBox5.Text + "',`city`='" + TextBox6.Text + "',`state`='" + TextBox7.Text + "',`mobile`='" + TextBox3.Text + "' WHERE `user_id`='" + UID + "' AND `email`='" + TextBox2.Text + "'", con);
                cmd1.ExecuteNonQuery();
                ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp", "alert('Profile Updated !!!'); window.location.href = 'profile.aspx';", true);
            }
        }
    }
}