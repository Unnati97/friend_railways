using System;
using System.ComponentModel;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;

public partial class search2 : System.Web.UI.Page
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
            try
            {
                //  cmd = new MySqlCommand();
                con = new MySqlConnection();
                con.ConnectionString = @"server=localhost;user id=root;database=train";
                adapter = new MySqlDataAdapter("SELECT * FROM train_data WHERE (`train_id` = " + Request.QueryString["train_id"] + ")", con);
                ds = new DataSet();
                adapter.Fill(ds);


                //int a = cmd.ExecuteNonQuery();
                Train t1 = new Train();
                t1.setFrom(ds.Tables[0].Rows[0]["from"].ToString());
                t1.setDate(ds.Tables[0].Rows[0]["date"].ToString());
                t1.setArrival_time(ds.Tables[0].Rows[0]["arrival_time"].ToString());
                t1.setDeparture_time(ds.Tables[0].Rows[0]["departure_time"].ToString());
                t1.setTrain_id(ds.Tables[0].Rows[0]["train_id"].ToString());
                t1.setTrain_name(ds.Tables[0].Rows[0]["train_name"].ToString());
                t1.setTo(ds.Tables[0].Rows[0]["to"].ToString());
                t1.setTrain_class(ds.Tables[0].Rows[0]["train_class"].ToString());
                t1.setSeat_available(ds.Tables[0].Rows[0]["seat_available"].ToString());
                t1.setSeat_booked(ds.Tables[0].Rows[0]["seat_booked"].ToString());
                t1.setFare(ds.Tables[0].Rows[0]["fare"].ToString());
                t1.setTrain_type(ds.Tables[0].Rows[0]["train_type"].ToString());
                Session["train"] = t1;
            }
            catch (Exception ex)
            {
                Response.Write(ex);
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Cookies["DropDownList1"].Value = DropDownList1.Text.ToString();
        Response.Cookies["DropdownList2"].Value = DropDownList2.Text.ToString();
        Response.Redirect("passenger.aspx"); 
    }
}