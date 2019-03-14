using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

public partial class my_booking1 : System.Web.UI.Page
{
    String User_id;
    MySqlConnection con, con1, con2, con3;
    MySqlDataAdapter adapter;
    DataSet ds;
    MySqlCommand cmd, cmd1, cmd2,cmd3;
    IDataReader dr, dr1, dr2,dr3;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user_id"] == null)
        {
            ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp", "alert('Please Login First !!'); window.location.href = 'Login.aspx';", true);
        }
        else
        {
            User_id = Session["user_id"].ToString();
            String s = "select * from booking where booking_id='" + Request.QueryString["booking_id"] + "'";
            con = new MySqlConnection();
            con.ConnectionString = @"server=localhost;user id=root;database=train";
            con.Open();
            cmd = new MySqlCommand(s, con);
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                String sql1 = "SELECT * FROM `train_data` WHERE `train_id`='" + dr.GetValue(2).ToString() + "'";
                con1 = new MySqlConnection();
                con1.ConnectionString = @"server=localhost;user id=root;database=train";
                con1.Open();
                cmd1 = new MySqlCommand(sql1, con1);
                dr1 = cmd1.ExecuteReader();
                if (dr1.Read())
                {
                    String sql2 = "SELECT * FROM `payment` WHERE `payment_id`='" + dr.GetValue(5).ToString() + "'";
                    con2 = new MySqlConnection();
                    con2.ConnectionString = @"server=localhost;user id=root;database=train";
                    con2.Open();
                    cmd2 = new MySqlCommand(sql2, con2);
                    dr2 = cmd2.ExecuteReader();
                    if (dr2.Read())
                    {

                        String[] thisisis = new String[10];

                        thisisis = dr.GetValue(3).ToString().Split(',');
                        String passss = thisisis[0];
                        String sql3 = "SELECT * FROM `passenger` WHERE `train_id`='" + dr1.GetValue(0).ToString() + "' and passenger_id LIKE '%" + passss + "%'";
                        con3 = new MySqlConnection();
                        con3.ConnectionString = @"server=localhost;user id=root;database=train";
                        con3.Open();
                        cmd3 = new MySqlCommand(sql3, con3);
                        dr3 = cmd3.ExecuteReader();
                        if (dr3.Read())
                        {
                            b_id.Text = dr.GetValue(0).ToString();
                            pnr_id.Text = dr.GetValue(3).ToString();
                            t_id.Text = dr1.GetValue(0).ToString();
                            t_name.Text = dr1.GetValue(1).ToString();
                            t_from.Text = dr1.GetValue(7).ToString();
                            t_to.Text = dr1.GetValue(8).ToString();
                            t_date.Text = dr1.GetValue(9).ToString();
                            d_time.Text = dr1.GetValue(10).ToString();
                            a_time.Text = dr1.GetValue(11).ToString();
                            t_class.Text = dr3.GetValue(6).ToString();
                            t_amount.Text = dr2.GetValue(4).ToString();
                        }
                    }
                }
            }
        }
    }
}