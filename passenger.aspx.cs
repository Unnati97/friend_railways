using System;
using System.ComponentModel;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;

public partial class passenger : System.Web.UI.Page
{
    MySqlConnection con;
    MySqlDataAdapter adapter;
    DataSet ds;
    MySqlCommand cmd;

    String[] s1 = new String[10];
    String[] s2 = new String[10];
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user_id"] == null)
        {
            ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp", "alert('Please Login First !!'); window.location.href = 'Login.aspx';", true);
        }
        else
        {
            String noseat = Request.Cookies["DropDownList1"].Value;
            Response.Cookies["seat_no"].Value = noseat;
            con = new MySqlConnection();
            con.ConnectionString = @"server=localhost;user id=root;database=train";
            if (con.State != ConnectionState.Open)
            {
                con.Open();
            }
            switch (noseat)
            {
                case "one":
                    TextBox1.Visible = true;
                    TextBox2.Visible = true;
                    RadioButtonList1.Visible = true;
                    break;
                case "two":
                    TextBox1.Visible = true;
                    TextBox2.Visible = true;
                    RadioButtonList1.Visible = true;
                    TextBox3.Visible = true;
                    TextBox4.Visible = true;
                    RadioButtonList2.Visible = true;
                    break;
                case "three":
                    TextBox1.Visible = true;
                    TextBox2.Visible = true;
                    RadioButtonList1.Visible = true;
                    TextBox3.Visible = true;
                    TextBox4.Visible = true;
                    RadioButtonList2.Visible = true;
                    TextBox5.Visible = true;
                    TextBox6.Visible = true;
                    RadioButtonList3.Visible = true;
                    break;
                case "four":
                    TextBox1.Visible = true;
                    TextBox2.Visible = true;
                    RadioButtonList1.Visible = true;
                    TextBox3.Visible = true;
                    TextBox4.Visible = true;
                    RadioButtonList2.Visible = true;
                    TextBox5.Visible = true;
                    TextBox6.Visible = true;
                    RadioButtonList3.Visible = true;
                    TextBox7.Visible = true;
                    TextBox8.Visible = true;
                    RadioButtonList4.Visible = true;
                    break;
                case "five":
                    TextBox1.Visible = true;
                    TextBox2.Visible = true;
                    RadioButtonList1.Visible = true;
                    TextBox3.Visible = true;
                    TextBox4.Visible = true;
                    RadioButtonList2.Visible = true;
                    TextBox5.Visible = true;
                    TextBox6.Visible = true;
                    RadioButtonList3.Visible = true;
                    TextBox7.Visible = true;
                    TextBox8.Visible = true;
                    RadioButtonList4.Visible = true;
                    TextBox9.Visible = true;
                    TextBox10.Visible = true;
                    RadioButtonList5.Visible = true;
                    break;
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Train t2 =(Train)Session["train"];
        String noseat = Request.Cookies["DropDownList1"].Value;
        String tid = t2.getTrain_id();
        s1 = t2.getTrain_class().Split(',');
        String c1 = s1[Convert.ToInt32(Request.Cookies["DropDownList2"].Value)];
        s2 = t2.getFare().Split(',');
        String c2 = s2[Convert.ToInt32(Request.Cookies["DropDownList2"].Value)];
        Response.Cookies["fare"].Value=c2;
        int seat_no =Convert.ToInt32(t2.getSeat_booked());
        String uid = Session["user_id"].ToString();
        switch (noseat)
        {
            case "one":
                cmd = new MySqlCommand();
                cmd.CommandText = "Insert into passenger(passenger_name,seat_no,gender,user_id,train_id,train_class,fare) values ('" + TextBox1.Text + "_" + TextBox2.Text + "','" + (seat_no+1) + "','" + RadioButtonList1.Text + "','" + uid + "','" + tid + "','" + c1 + "','" + c2 + "') ";
                cmd.Connection = con;
                cmd.CommandType = CommandType.Text;
                cmd.ExecuteNonQuery();
                break;
            case "two":
                cmd = new MySqlCommand();
                cmd.CommandText = "Insert into passenger(passenger_name,seat_no,gender,user_id,train_id,train_class,fare) values ('" + TextBox1.Text + "_" + TextBox2.Text + "','" + (seat_no + 1) + "','" + RadioButtonList1.Text + "','" + uid + "','" + tid + "','" + c1 + "','" + c2 + "'),('" + TextBox3.Text + "_" + TextBox4.Text + "','" + (seat_no + 2) + "','" + RadioButtonList2.Text + "','" + uid + "','" + tid + "','" + c1 + "','" + c2 + "') ";
                cmd.Connection = con;
                cmd.CommandType = CommandType.Text;
                cmd.ExecuteNonQuery();
                break;
            case "three":
                cmd = new MySqlCommand();
                cmd.CommandText = "Insert into passenger(passenger_name,seat_no,gender,user_id,train_id,train_class,fare) values ('" + TextBox1.Text + "_" + TextBox2.Text + "','" + (seat_no + 1) + "','" + RadioButtonList1.Text + "','" + uid + "','" + tid + "','" + c1 + "','" + c2 + "'),('" + TextBox3.Text + "_" + TextBox4.Text + "','" + (seat_no + 2) + "','" + RadioButtonList2.Text + "','" + uid + "','" + tid + "','" + c1 + "','" + c2 + "'),('" + TextBox5.Text + "_" + TextBox6.Text + "','" + (seat_no + 3) + "','" + RadioButtonList3.Text + "','" + uid + "','" + tid + "','" + c1 + "','" + c2 + "') ";
                cmd.Connection = con;
                cmd.CommandType = CommandType.Text;
                cmd.ExecuteNonQuery();
                break;
            case "four":
                cmd = new MySqlCommand();
                cmd.CommandText = "Insert into passenger(passenger_name,seat_no,gender,user_id,train_id,train_class,fare) values ('" + TextBox1.Text + "_" + TextBox2.Text + "','" + (seat_no + 1) + "','" + RadioButtonList1.Text + "','" + uid + "','" + tid + "','" + c1 + "','" + c2 + "'),('" + TextBox3.Text + "_" + TextBox4.Text + "','" + (seat_no + 2) + "','" + RadioButtonList2.Text + "','" + uid + "','" + tid + "','" + c1 + "','" + c2 + "'),('" + TextBox5.Text + "_" + TextBox6.Text + "','" + (seat_no + 3) + "','" + RadioButtonList3.Text + "','" + uid + "','" + tid + "','" + c1 + "','" + c2 + "'),('" + TextBox5.Text + "_" + TextBox6.Text + "','" + (seat_no + 4) + "','" + RadioButtonList4.Text + "','" + uid + "','" + tid + "','" + c1 + "','" + c2 + "') ";
                cmd.Connection = con;
                cmd.CommandType = CommandType.Text;
                cmd.ExecuteNonQuery();
                break;
            case "five":
                cmd = new MySqlCommand();
                cmd.CommandText = "Insert into passenger(passenger_name,seat_no,gender,user_id,train_id,train_class,fare) values ('" + TextBox1.Text + "_" + TextBox2.Text + "','" + (seat_no + 1) + "','" + RadioButtonList1.Text + "','" + uid + "','" + tid + "','" + c1 + "','" + c2 + "'),('" + TextBox3.Text + "_" + TextBox4.Text + "','" + (seat_no + 2) + "','" + RadioButtonList2.Text + "','" + uid + "','" + tid + "','" + c1 + "','" + c2 + "'),('" + TextBox5.Text + "_" + TextBox6.Text + "','" + (seat_no + 3) + "','" + RadioButtonList3.Text + "','" + uid + "','" + tid + "','" + c1 + "','" + c2 + "'),('" + TextBox5.Text + "_" + TextBox6.Text + "','" + (seat_no + 4) + "','" + RadioButtonList4.Text + "','" + uid + "','" + tid + "','" + c1 + "','" + c2 + "'),('" + TextBox5.Text + "_" + TextBox6.Text + "','" + (seat_no + 5) + "','" + RadioButtonList5.Text + "','" + uid + "','" + tid + "','" + c1 + "','" + c2 + "') ";
                cmd.Connection = con;
                cmd.CommandType = CommandType.Text;
                cmd.ExecuteNonQuery();
                break;
        }
        adapter = new MySqlDataAdapter("SELECT * FROM `passenger` WHERE passenger_id=(SELECT MAX(passenger_id) FROM `passenger`); ", con);
        ds = new DataSet();
        adapter.Fill(ds);
        String maxpassenger = ds.Tables[0].Rows[0][0].ToString();
        Response.Cookies["maxpassenger"].Value=maxpassenger;
        Response.Redirect("payment.aspx");
        
    }
}