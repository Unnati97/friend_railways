using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

public partial class PNR1 : System.Web.UI.Page
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
        else
        {
            String pnris = Session["pnr_id11"].ToString();
            UID = Session["user_id"].ToString();
            String sql = "SELECT * FROM passenger WHERE `passenger_id`='" + pnris + "'";
            con = new MySqlConnection();
            con.ConnectionString = @"server=localhost;user id=root;database=train";
            con.Open();
            cmd = new MySqlCommand(sql, con);
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                String train_id = dr.GetValue(5).ToString();
                String train_class = dr.GetValue(6).ToString();
                String fare = dr.GetValue(7).ToString();
                String passenger_id = dr.GetValue(0).ToString();
                String passenger_name = dr.GetValue(1).ToString();
                String seat_no = dr.GetValue(2).ToString();
                String gender = dr.GetValue(3).ToString();
                String sql1 = "SELECT * FROM train_data WHERE `train_id`='" + train_id + "'";
                con1 = new MySqlConnection();
                con1.ConnectionString = @"server=localhost;user id=root;database=train";
                con1.Open();
                cmd1 = new MySqlCommand(sql1, con1);
                dr1 = cmd1.ExecuteReader();
                if (dr1.Read())
                {
                    String train_name = dr1.GetValue(1).ToString();
                    String d_t = dr1.GetValue(10).ToString();
                    String a_t = dr1.GetValue(11).ToString();
                    String date = dr1.GetValue(9).ToString();

                    Label1.Text = passenger_id;
                    Label8.Text = passenger_name;
                    Label9.Text = seat_no;
                    Label13.Text = gender;
                    Label14.Text = train_id;
                    Label15.Text = train_name;
                    Label16.Text = date;
                    Label17.Text = d_t;
                    Label18.Text = a_t;
                }
            }
        }
    }
}