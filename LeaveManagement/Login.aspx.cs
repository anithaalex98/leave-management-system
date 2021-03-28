using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace LeaveManagement
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string email = "", pass = "";
            int sid = 0;
            string admin_email = "anitha98@gmail.com", admin_pass = "1234";

            if (TextBox1.Text == admin_email && TextBox2.Text == admin_pass)
            {
                Session["admin"] = admin_email;
                Response.Redirect("ManageLeave.aspx");
            }
            else
            {
                try
                {
                    SqlConnection con = new SqlConnection("Data Source=LAPTOP-AJERR10S;Initial Catalog=model;Integrated Security=True");
                    string query = "select Id,email,password from studentdata where email='" + TextBox1.Text + "'";
                    con.Open();
                    SqlCommand cmd = new SqlCommand(query, con);
                    using (SqlDataReader rdr = cmd.ExecuteReader())
                    {
                        if (rdr != null)
                            while (rdr.Read())
                            {
                                sid = int.Parse(rdr["Id"].ToString());
                                email = rdr["email"].ToString();
                                pass = rdr["password"].ToString();
                            }
                        
                        Session["email"] = email;
                        Session["sid"] = sid;
                        //Response.Write(Session["sid"]);
                        if (TextBox1.Text != email || TextBox2.Text != pass)
                        {
                            Response.Write("<script language=javascript>alert('Inccorect user credentials!');</script>");
                            TextBox2.Text = "";
                        }
                        else
                            Response.Redirect("LeaveForm.aspx");
                    }
                    con.Close();
                }
                catch (SqlException se)
                {
                    Response.Write(se.Message);
                }                
            }
            /*
            if (TextBox1.Text != admin_email || TextBox2.Text != admin_pass)
            {
                Response.Write("<b>Inccorect user credentials!</b>");
                TextBox2.Text = "";
            }*/
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }

    
    }
}