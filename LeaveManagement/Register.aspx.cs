using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace LeaveManagement
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int rollno = int.Parse(TextBox2.Text);
            if (TextBox4.Text == "anitha98@gmail.com")
            {
                Response.Write("<script language=javascript>alert('anitha98@gmail.com already in use. Please Resgister using another email ID.');</script>");
                TextBox4.Text = "";
            }
            else
            {
                string emailfound = "";
                try
                {
                    SqlConnection con1 = new SqlConnection("Data Source=LAPTOP-AJERR10S;Initial Catalog=model;Integrated Security=True");
                    con1.Open();
                    string query1 = "select email  from studentdata where email='" + TextBox4.Text + "'";
                    SqlCommand cmd1 = new SqlCommand(query1, con1);
                    using (SqlDataReader rdr = cmd1.ExecuteReader())
                    {

                        while (rdr.Read())
                        {
                            emailfound = rdr["email"].ToString();
                        }
                        rdr.Close();
                        con1.Close();
                    }
                    if (TextBox4.Text == emailfound)
                    {
                        string msg = emailfound + " already in use. Please Resgister using another email ID.";
                        Response.Write("<script language=javascript>alert('" + msg + "');</script>");
                        TextBox4.Text = "";
                    }
                    else
                    {
                        SqlConnection con2 = new SqlConnection("Data Source=LAPTOP-AJERR10S;Initial Catalog=model;Integrated Security=True");
                        con2.Open();
                        string query2 = "insert into studentdata (name, rollno, course, email, password) values ('" + TextBox1.Text + "'," + rollno + ",'" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "')";
                        SqlCommand cmd = new SqlCommand(query2, con2);
                        int r = cmd.ExecuteNonQuery();
                        if (r > 0)
                        {
                            Response.Write("<script language=javascript>alert('Registration Successfull! Click on Login to login to your account.');</script>");
                            TextBox1.Text = "";
                            TextBox2.Text = "";
                            TextBox3.Text = "";
                            TextBox4.Text = "";
                            TextBox5.Text = "";
                            TextBox6.Text = "";
                        }
                        else
                            Response.Write("<script language=javascript>alert('Registration failed.');</script>");
                        con2.Close();
                    }

                }
                catch (SqlException se)
                {
                    Response.Write(se.Message);
                }
            }         
        }
    }
}