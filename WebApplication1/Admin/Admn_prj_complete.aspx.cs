
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
namespace WebApplication1.Admin
{
    public partial class Admn_prj_complete : System.Web.UI.Page
    {
        softsolutionEntities1 obj = new softsolutionEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
            var re = obj.spvwstatusadmin().ToList();
            if (re.Count > 0)
            {
                grv_vw_modulestatus.DataSource = re;
                grv_vw_modulestatus.DataBind();
            }
            else
            {
                lbl_msg.Visible = true;
                lbl_msg.Text = "No Data To Display ";
            }
            chartdata();
            }
            catch (Exception ex)
            {
                HttpContext.Current.ClearError();
            }
        }

        private void chartdata()
        {
            try
            {
            string cs = ConfigurationManager.ConnectionStrings["CS"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                int logid = Convert.ToInt32(Session["logid"]);
                SqlCommand cmd = new SqlCommand("sp_prjstatus_chart", con);

                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                

                Series series = Chart1.Series["Series1"];
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    series.Points.AddXY(rdr["prj_name"].ToString(), rdr["per_completed"]);
                }
            }

        }
             catch (Exception ex)
            {
                HttpContext.Current.ClearError();
            }
            }
    
           
}
    }
