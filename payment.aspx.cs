using System;
using System.ComponentModel;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;

public partial class payment : System.Web.UI.Page
{
    MySqlConnection con;
    MySqlDataAdapter adapter;
    DataSet ds;
    MySqlCommand cmd;
    String pnr_id = null, uid = null; int total_no_seat = 0, seat_available = 0, seat_book = 0;
     
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user_id"] == null)
        {
            ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp", "alert('Please Login First !!'); window.location.href = 'Login.aspx';", true);
        }
        else
        {
            con = new MySqlConnection();
            con.ConnectionString = @"server=localhost;user id=root;database=train";
            if (con.State != ConnectionState.Open)
            {
                con.Open();
            }
            int max = Convert.ToInt32(Request.Cookies["maxpassenger"].Value);
            String seat_no = Request.Cookies["seat_no"].Value;
            switch (seat_no)
            {
                case "one": pnr_id = max + ""; total_no_seat = 1;
                    break;
                case "two": pnr_id = max + "," + (max - 1); total_no_seat = 2;
                    break;
                case "three": pnr_id = max + "," + (max - 1) + "," + (max - 2); total_no_seat = 3;
                    break;
                case "four": pnr_id = max + "," + (max - 1) + "," + (max - 2) + "," + (max - 3); total_no_seat = 4;
                    break;
                case "five": pnr_id = max + "," + (max - 1) + "," + (max - 2) + "," + (max - 3) + "," + (max - 4); total_no_seat = 5;
                    break;
            }
            String fare = Request.Cookies["fare"].Value;

            int payable = Convert.ToInt32(fare) * total_no_seat;
            Train t1 = (Train)Session["train"];
            String tid = t1.getTrain_id();
            Train_Id.Text = tid;
            PNR_No.Text = pnr_id;
            No_of_Ticket.Text = Convert.ToString(total_no_seat);
            Amount.Text = fare;
            Payable_Amount.Text = Convert.ToString(payable);
            String b = t1.getSeat_booked();
            seat_book = Convert.ToInt32(b) + total_no_seat;

            String a = t1.getSeat_available();
            seat_available = Convert.ToInt32(a) - total_no_seat;

            uid = Session["user_id"].ToString();
        }
            
     }

    protected void metho_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropPay.SelectedValue == "one")
        {
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel3.Visible = false;
        }
        else if (DropPay.SelectedValue == "two")
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
            Panel3.Visible = false;
        }
        else if (DropPay.SelectedValue == "three")
        {
            Panel1.Visible = false;
            Panel2.Visible = true;
            Panel3.Visible = false;
        }
        else if (DropPay.SelectedValue == "four")
        {
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel3.Visible = true;
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
         if (credit.Text != "" || debit.Text != "" || wallet.Text != "")
            {
                if (DropPay.SelectedValue == "two")
                {            
                    cmd = new MySqlCommand();
                    cmd.CommandText = "Insert into payment(user_id,payment_type,card_no,amount,total_tickets) values ('" + uid + "','" + "Credit_Card" + "','" + credit.Text + "','" + Payable_Amount.Text + "','" + No_of_Ticket.Text + "') ";
                    cmd.Connection = con;
                    cmd.CommandType = CommandType.Text;
                    cmd.ExecuteNonQuery();
                    
                    adapter = new MySqlDataAdapter("SELECT * FROM `payment` WHERE payment_id=(SELECT MAX(payment_id) FROM `payment`); ", con);
                    ds = new DataSet();
                    adapter.Fill(ds);
                    String lastpay = ds.Tables[0].Rows[0][0].ToString();
                    Session["lastpay"] = lastpay;                   
                    
                    cmd = new MySqlCommand("Insert into booking(user_id,train_id,passenger_id,booking_date,payment_id) values ('" + uid + "','" + Train_Id.Text + "','" + PNR_No.Text + "','" + System.DateTime.Now.ToString("yyyy-MM-dd") + "','" + lastpay + "') ", con);
                    cmd.ExecuteNonQuery();

                    cmd = new MySqlCommand("UPDATE train_data SET seat_available = '"+seat_available +"', seat_booked = '"+seat_book  +"'  WHERE train_id='"+ Train_Id.Text+"';", con);
                    cmd.ExecuteNonQuery();    
                }
                else if (DropPay.SelectedValue == "three")
                {
                    cmd = new MySqlCommand();
                    cmd.CommandText = "Insert into payment(user_id,payment_type,card_no,amount,total_tickets) values ('" + uid + "','" + "Wallet" + "','" + wallet.Text + "','" + Payable_Amount + "','" + total_no_seat + "') ";
                    cmd.Connection = con;
                    cmd.CommandType = CommandType.Text;
                    cmd.ExecuteNonQuery();
                    
                    adapter = new MySqlDataAdapter("SELECT * FROM `payment` WHERE payment_id=(SELECT MAX(payment_id) FROM `payment`); ", con);
                    ds = new DataSet();
                    adapter.Fill(ds);
                    String lastpay = ds.Tables[0].Rows[0][0].ToString();
                    Session["lastpay"] = lastpay;                   
                    cmd = new MySqlCommand("Insert into booking(user_id,train_id,passenger_id,booking_date,payment_id) values ('" + uid + "','" + Train_Id.Text + "','" + PNR_No.Text + "','" + System.DateTime.Now.ToString("yyyy-MM-dd") + "','" + lastpay + "') ", con);
                    cmd.ExecuteNonQuery();
                                        
                    cmd = new MySqlCommand("UPDATE train_data SET seat_available = '"+seat_available +"', seat_booked = '"+seat_book  +"'  WHERE train_id='"+ Train_Id.Text+"';", con);
                    cmd.ExecuteNonQuery();   
                }
                else if (DropPay.SelectedValue == "four")
                {
                    cmd = new MySqlCommand();
                    cmd.CommandText = "Insert into payment(user_id,payment_type,card_no,amount,total_tickets) values ('" + uid + "','" + "Debit_Card" + "','" + debit.Text + "','" + Payable_Amount + "','" + total_no_seat + "') ";
                    cmd.Connection = con;
                    cmd.CommandType = CommandType.Text;
                    cmd.ExecuteNonQuery();
                   
                    adapter = new MySqlDataAdapter("SELECT * FROM `payment` WHERE payment_id=(SELECT MAX(payment_id) FROM `payment`); ", con);
                    ds = new DataSet();
                    adapter.Fill(ds);
                    String lastpay = ds.Tables[0].Rows[0][0].ToString();
                    Session["lastpay"] = lastpay;                   
                    
                    cmd = new MySqlCommand("Insert into booking(user_id,train_id,passenger_id,booking_date,payment_id) values ('" + uid + "','" + Train_Id.Text + "','" + PNR_No.Text + "','" + System.DateTime.Now.ToString("yyyy-MM-dd") + "','" + lastpay + "') ", con);
                    cmd.ExecuteNonQuery();
                                        
                    cmd = new MySqlCommand("UPDATE train_data SET seat_available = '"+seat_available +"', seat_booked = '"+seat_book  +"'  WHERE train_id='"+ Train_Id.Text+"';", con);
                    cmd.ExecuteNonQuery();   
                }
            }
         Response.Redirect("final_ticket.aspx");
    }
}

