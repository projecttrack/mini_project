using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.DataVisualization.Charting;
using System.Configuration;

namespace WebApplication1.Team_Leader
{
    public partial class tl_rq_status : System.Web.UI.Page
    {
        softsolutionEntities1 obj = new softsolutionEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int logid = Convert.ToInt32(Session["logid"]);
                var re = obj.spvwstatus_tl(logid).ToList();;
                if (re.Count > 0)
                {
                    grv_view_status.DataSource = re;
                    grv_view_status.DataBind();
                }
                else
                {
                     
                    lbl_msg.Visible = true;
                    lbl_msg.Text = "No New Entries ";
                }
                
                var res = obj.spvw_moduletl(logid).ToList();
                if (res.Count > 0)
                {
                    ddl_modname.DataSource = res;

                    ddl_modname.DataTextField = "modulename";
                    ddl_modname.DataValueField = "modid";
                    ddl_modname.DataBind();
                }
                if (ddl_modname.Items.Count > 0)
                {
                    ddl_modname.Items.Insert(0, new ListItem("---Select Module---", "0"));
                }
                else
                {
                    ddl_modname.Items.Add(new ListItem("---Select Module---", "0"));
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
                SqlCommand cmd = new SqlCommand("spworkstatus_tl_chart", con);

                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@tlid", logid);

                Series series = Chart1.Series["Series1"];
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                
                while (rdr.Read())
                {
                    series.Points.AddXY(rdr["divname"].ToString(), rdr["percentage"]); 
                }
            }

        }


        protected void btn_submit_Click(object sender, EventArgs e)
        {
            var re = obj.sp_modulestatus_tl(Convert.ToInt32(ddl_modname.SelectedItem.Value), Convert.ToDouble(txt_cuepercent.Text), Convert.ToInt32(txt_expduration.Text)).ToList();
            Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('" + re[0] + "');", true);
        }

        protected void grv_view_status_SelectedIndexChanged(object sender, EventArgs e)
        {


        }
    }
}