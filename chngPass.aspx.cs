using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

public partial class chngPass : System.Web.UI.Page
{
    MySqlConnection con, con1;
    MySqlDataAdapter adapter;
    DataSet ds;
    MySqlCommand cmd;
    IDataReader dr;
    String UID;
    static int thisss = 0;

    protected void Page_Load(object sender, EventArgs e)
    {
        string password;
        if (!IsPostBack)
        {
        }
        else
        {
            UID = Session["user_id"].ToString();
            String sql = "SELECT `password` FROM USER WHERE `user_id`='" + UID + "'";
            con = new MySqlConnection();
            con.ConnectionString = @"server=localhost;user id=root;database=train";
            con.Open();
            cmd = new MySqlCommand(sql, con);
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                password = dr.GetValue(0).ToString();
                if (password == cpass1.Text)
                {
                    if (cpass2.Text == cpass3.Text)
                    {
                        con1 = new MySqlConnection();
                        con1.ConnectionString = @"server=localhost;user id=root;database=train";
                        con1.Open();
                        MySqlCommand cmd1 = new MySqlCommand("UPDATE `user` SET `password`='" + cpass2.Text + "' WHERE `user_id`='" + UID + "'", con1);
                        cmd1.ExecuteNonQuery();

                    }
                    else
                    {
                        Response.Write("Password and confirmed password didnt match!!!!");
                    }
                }
                else
                {
                    Response.Write("Wrong password!!");
                }

            }
        }
    }
}