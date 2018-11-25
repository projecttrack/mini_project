using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.DataVisualization.Charting;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication1.Analyst
{
    public partial class View_Module_Staus : System.Web.UI.Page
    {
        softsolutionEntities1 obj = new softsolutionEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               

                
                int logid = Convert.ToInt32(Session["logid"]);

                var res = obj.spvwstatus_Analyst(logid).ToList();
                if (res.Count > 0)
                {
                    grv_vw_modulestatus.DataSource = res;
                    grv_vw_modulestatus.DataBind();
                }

                else
                {
                    lbl_msg.Visible = true;
                    lbl_msg.Text = "No Data To Display ";
                }

                var re = obj.sp_vw_prjid_analyst(logid).ToList();
                if (re.Count > 0)
                {
                    ddl_prjname.DataSource = re;
                    ddl_prjname.DataTextField = "prj_name";
                    ddl_prjname.DataValueField = "projid";
                    ddl_prjname.DataBind();
                    if (ddl_prjname.Items.Count > 0)
                    {
                        ddl_prjname.Items.Insert(0, new ListItem("---Select Project---", "0"));
                    }
                    else
                    {
                        ddl_prjname.Items.Add(new ListItem("---Select Project---", "0"));
                    }
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
                SqlCommand cmd = new SqlCommand("spvwstatus_Analyst_chart", con);

                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@analystid", logid);

                Series series = Chart_status.Series["Series1"];
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    series.Points.AddXY(rdr["modulename"].ToString(), rdr["percentage"]);
                }
            }

        }
        protected void btn_submit_Click(object sender, EventArgs e)
        {
           
            var re = obj.sp_projectstatus_analyst(Convert.ToInt32(ddl_prjname.SelectedItem.Value),
                Convert.ToDouble(txt_cuepercent.Text), Convert.ToInt32(txt_expduration.Text)).ToList();
            Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('" + re[0] + "');", true);
        }

       

        protected void grv_vw_modulestatus_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            grv_vw_modulestatus.EditIndex = -1;
            int id = Convert.ToInt32(grv_vw_modulestatus.DataKeys[e.RowIndex].Value);



           

        }


       

        protected void grv_vw_modulestatus_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {

        }

        protected void ddl_chart_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
     
        }
    }
