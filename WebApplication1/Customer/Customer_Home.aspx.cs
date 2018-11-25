using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.DataVisualization.Charting;

namespace WebApplication1.Customer
{
    public partial class Customer_Home : System.Web.UI.Page
    {
        softsolutionEntities1 obj = new softsolutionEntities1();
        int prjid;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int logid = Convert.ToInt32(Session["logid"]);
                var re = obj.sp_vw_cust_prjdetails(logid).ToList();
                if (re.Count > 0)
                {
                    lbl_msg.Visible = true;
                    lbl_msg.Text = "Accept List";
                    grv_cust_home.DataSource = re;
                    grv_cust_home.DataBind();
                }
                else
                {
                    lbl_msg.Visible = true;
                    lbl_msg.Text = "No Data To Display ";
                }
                var res = obj.sp_reject_list(logid).ToList();
                if (res.Count > 0)
                {
                    lbl_rej.Visible = true;
                    lbl_rej.Text = "Reject List";
                    grv_rejectlist.DataSource = res;
                    grv_rejectlist.DataBind();

                }
                else
                {

                    lbl_rej.Visible = true;
                    lbl_rej.Text = "Reject List is Empty";
                }
               
                chartdata();
            }
        }

      
        private void chartdata()
        {
            string cs = ConfigurationManager.ConnectionStrings["CS"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                int logid = Convert.ToInt32(Session["logid"]);
                SqlCommand cmd = new SqlCommand("sp_vw_cust_chart", con);

                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@logid", logid);
                con.Open();
                Series series = Chart1.Series["Series1"];
                SqlDataReader rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    series.Points.AddXY(rdr["proname"].ToString(), rdr["per_completed"]);
                }
            }

        }

      


        protected void grv_cust_home_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            prjid = Convert.ToInt32(grv_cust_home.DataKeys[e.RowIndex].Value);
            //Panel1.Visible = true;
            var r = obj.sp_vw_analystid(prjid).ToList();
            Session["profile_id"] = r[0].analystid;
            
            Response.Redirect("~/Customer/Chat.aspx");

           
        }

        protected void ChatTextTimer_Tick(object sender, EventArgs e)
        {

        }

       

      

       
    }
}