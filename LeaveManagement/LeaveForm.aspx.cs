using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace LeaveManagement
{
    public partial class LeaveForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] != null && Session["sid"] != null)
            {
                DateTime dNow = DateTime.Now;

                TextBox4.Text = (dNow.ToString("yyyy-MM-dd"));
                TextBox5.Text = (dNow.ToString("yyyy-MM-dd"));
                TextBox6.Text = (dNow.ToString("yyyy-MM-dd"));

                string course = "";
                try
                {
                    SqlConnection con = new SqlConnection("Data Source=LAPTOP-AJERR10S;Initial Catalog=model;Integrated Security=True");
                    string query = "select course from studentdata where email='" + Session["email"] + "' and Id='"+Session["sid"]+"'";
                    con.Open();
                    SqlCommand cmd = new SqlCommand(query, con);
                    using (SqlDataReader rdr = cmd.ExecuteReader())
                    {
                            while (rdr.Read())
                            {
                                course = rdr["course"].ToString();
                            }
                    }
                }
                catch(SqlException se)
                {
                    Response.Write(se.Message);
                }
                TextBox1.Text = course;
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Session["email"] != null && Session["sid"] != null)
            {
                int id = int.Parse(Session["sid"].ToString());
                //Response.Write(id);
                string course = TextBox1.Text;
                //Response.Write(course);
                string div = "";
                if (TextBox2.Text == "")
                    div = null;
                else
                    div = TextBox2.Text;
                int tri = int.Parse(TextBox3.Text);
                string currd = TextBox4.Text;
                string fromd = TextBox5.Text;
                string tod = TextBox6.Text;
                int numofd = int.Parse(TextBox7.Text);
                string reason = "";
                string ltype = DropDownList1.SelectedItem.Value;
                if (TextBox8.Text == "")
                    reason = null;
                else
                    reason = TextBox8.Text;

                try
                {
                    SqlConnection con = new SqlConnection("Data Source=LAPTOP-AJERR10S;Initial Catalog=model;Integrated Security=True");
                    con.Open();
                    string query = "insert into leaveform(Id,course,div,trimester,dateofsubmission,fromdate,todate,numofdays,leavetype,reason) values (" + id + ",'" + course + "','" + div + "'," + tri + ",'" + currd + "','" + fromd + "','" + tod + "'," + numofd + ",'" + ltype + "','" + reason + "')";
                    SqlCommand cmd = new SqlCommand(query, con);
                    int r = cmd.ExecuteNonQuery();
                    if (r > 0)
                    {
                        Response.Write("<script language=javascript>alert('Leave Form submitted Successfully');</script>");
                        TextBox2.Text = "";
                        TextBox3.Text = "";
                        TextBox7.Text = "";
                        TextBox8.Text = "";
                    }
                    else
                        Response.Write("<script language=javascript>alert('Leave Form not submitted Successfull');</script>");
                    con.Close();
                }
                catch (SqlException se)
                {
                    Response.Write(se.Message);
                }
            }
            else
            {
                Response.Redirect("Login.aspx");
            }            
        }
    }
}