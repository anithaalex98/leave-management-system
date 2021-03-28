using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace LeaveManagement
{
    public partial class ViewLeaveForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] != null)
            {
                int lid = int.Parse(Request.QueryString["LId"]);
                string name = "", email = "", course = "", div = "", dateofsubmission = "", fromdate = "", todate = "", leavetype = "", reason = "";
                string rollno = "", trimester = "", numofdays = "";

                try
                {
                    SqlConnection con = new SqlConnection("Data Source=LAPTOP-AJERR10S;Initial Catalog=model;Integrated Security=True");
                    string query = "select s.name,s.rollno,s.email,s.course,l.div,l.trimester,l.dateofsubmission,l.fromdate,l.todate,l.numofdays,l.leavetype,l.reason from studentdata s, leaveform l where s.Id=l.Id and l.LId=" + lid + "";
                    con.Open();
                    SqlCommand cmd = new SqlCommand(query, con);
                    using (SqlDataReader rdr = cmd.ExecuteReader())
                    {
                        while (rdr.Read())
                        {
                            rollno = rdr["rollno"].ToString();
                            trimester = rdr["trimester"].ToString();
                            numofdays = rdr["numofdays"].ToString();
                            name = rdr["name"].ToString();
                            email = rdr["email"].ToString();
                            course = rdr["course"].ToString();
                            div = rdr["div"].ToString();
                            dateofsubmission = rdr["dateofsubmission"].ToString();
                            fromdate = rdr["fromdate"].ToString();
                            todate = rdr["todate"].ToString();
                            leavetype = rdr["leavetype"].ToString();
                            reason = rdr["reason"].ToString();
                        }
                    }
                }
                catch (SqlException se)
                {
                    Response.Write(se.Message);
                }

                Label1.Text = lid.ToString();
                Label2.Text = name;
                Label3.Text = rollno;
                Label4.Text = email;
                Label5.Text = course;
                Label6.Text = div;
                Label7.Text = trimester;
                Label8.Text = dateofsubmission;
                Label9.Text = fromdate;
                Label10.Text = todate;
                Label11.Text = numofdays;
                Label12.Text = leavetype;
                TextBox1.Text = reason;
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (Session["admin"] != null)
            {
                int lid = int.Parse(Request.QueryString["LId"]);
                string leaver = "";
                if (RadioButton1.Checked)
                {
                    leaver = RadioButton1.Text;
                }
                else
                    leaver = RadioButton2.Text;

                try
                {
                    SqlConnection con = new SqlConnection("Data Source=LAPTOP-AJERR10S;Initial Catalog=model;Integrated Security=True");
                    string query = "update leaveform set leaveresult='" + leaver + "' where LId = " + lid;
                    con.Open();
                    SqlCommand cmd = new SqlCommand(query, con);
                    int r = cmd.ExecuteNonQuery();
                    if (r > 0)
                    {
                        Response.Write("<script language=javascript>alert('Leave form updation success.');</script>");
                        Response.Redirect("ManageLeave.aspx");
                    }                        
                    else
                        Response.Write("<script language=javascript>alert('Leave form updation failed.');</script>");
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