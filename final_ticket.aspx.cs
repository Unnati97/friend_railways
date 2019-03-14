using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;

public partial class final_ticket : System.Web.UI.Page
{
    MySqlConnection con,con1,con2,con3;
    MySqlDataAdapter adapter;
    DataSet ds;
    MySqlCommand cmd,cmd1,cmd2,cmd3;
    IDataReader dr,dr1,dr2,dr3;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user_id"] == null)
        {
            ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp", "alert('Please Login First !!'); window.location.href = 'Login.aspx';", true);
        }
        else
        {
            String payment_id = Session["lastpay"].ToString();
            String sql = "SELECT * FROM `booking` WHERE payment_id='" + payment_id + "'";
            con = new MySqlConnection();
            con.ConnectionString = @"server=localhost;user id=root;database=train";
            con.Open();
            cmd = new MySqlCommand(sql, con);
            dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                Label15.Text = dr.GetValue(0).ToString();
                Label16.Text = dr.GetValue(1).ToString();
                Label8.Text = dr.GetValue(3).ToString();
                con3 = new MySqlConnection();
                con3.ConnectionString = @"server=localhost;user id=root;database=train";
                String sql4 = "SELECT * FROM `payment` where payment_id='" + dr.GetValue(5).ToString() + "'";
                con3.Open();
                cmd3 = new MySqlCommand(sql4, con3);
                dr3 = cmd3.ExecuteReader();
                if (dr3.Read())
                {
                    Label12.Text = dr3.GetValue(0).ToString();
                    Label13.Text = dr3.GetValue(2).ToString();
                    Label14.Text = dr3.GetValue(4).ToString();
                }
                String pass_id = dr.GetValue(3).ToString();
                String[] passenger_id = new String[10];
                String[] seat_nos = new String[10];
                passenger_id = pass_id.Split(',');

                con2 = new MySqlConnection();
                con2.ConnectionString = @"server=localhost;user id=root;database=train";
                con2.Open();
                String sql2 = "SELECT * FROM `passenger` WHERE passenger_id='" + passenger_id[0] + "'";
                cmd2 = new MySqlCommand(sql2, con2);
                dr2 = cmd2.ExecuteReader();
                if (dr2.Read())
                {
                    Label10.Text = dr2.GetValue(6).ToString();
                    int abc = Convert.ToInt32(dr2.GetValue(2).ToString());
                    for (int i = 0; i < passenger_id.Length; i++)
                    {
                        seat_nos[i] = abc + "";
                        abc = abc - 1;
                    }
                    for (int j = 0; j < passenger_id.Length; j++)
                    {
                        if (j == passenger_id.Length - 1)
                        {
                            Label11.Text = Label11.Text + seat_nos[j];
                        }
                        else
                        {
                            Label11.Text = Label11.Text + seat_nos[j] + ",";
                        }
                    }
                }
                String train_id = dr.GetValue(2).ToString();
                String sql1 = "SELECT * FROM `train_data` WHERE train_id='" + train_id + "'";
                con1 = new MySqlConnection();
                con1.ConnectionString = @"server=localhost;user id=root;database=train";
                con1.Open();
                cmd1 = new MySqlCommand(sql1, con1);
                dr1 = cmd1.ExecuteReader();
                if (dr1.Read())
                {
                    Label1.Text = dr1.GetValue(9).ToString();
                    Label2.Text = dr1.GetValue(0).ToString();
                    Label3.Text = dr1.GetValue(1).ToString();
                    Label4.Text = dr1.GetValue(7).ToString();
                    Label5.Text = dr1.GetValue(8).ToString();
                    Label6.Text = dr1.GetValue(10).ToString();
                    Label7.Text = dr1.GetValue(11).ToString();
                    Label9.Text = dr1.GetValue(4).ToString();
                }
            }
        }
    }
}