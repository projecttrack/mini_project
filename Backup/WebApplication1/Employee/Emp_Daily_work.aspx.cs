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

namespace WebApplication1.Employee
{
    public partial class Emp_Daily_work : System.Web.UI.Page
    {
        softsolutionEntities1 obj = new softsolutionEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                 int logid=Convert.ToInt32(Session["logid"]);
                var re=obj.sp_vw_division_empid(logid).ToList();
                if (re.Count > 0)
                {
                    ddl_divname.DataSource = re;
                    ddl_divname.DataTextField = "divname";
                    ddl_divname.DataValueField = "moddivid";
                    ddl_divname.DataBind();
                    ddl_divname.DataBind();
                }
                if (ddl_divname.Items.Count > 0)
                {
                    ddl_divname.Items.Insert(0, new ListItem("---select Division---", "0"));
                }
                else
                {
                    ddl_divname.Items.Add(new ListItem("---select Division---", "0"));
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
                SqlCommand cmd = new SqlCommand("spvwstatus_Employee", con);

                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@logid", logid);

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
           
             
                var res = obj.sp_addEmp_work_status(Convert.ToInt32(ddl_divname.SelectedItem.Value),Convert.ToDouble(txt_cuepercent.Text),Convert.ToInt32(txt_expduration.Text)).ToList();
               
                    
                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('" + res[0] + "');", true);
               
            }

        protected void ddl_divname_SelectedIndexChanged(object sender, EventArgs e)
        {
            var re = obj.spvwprevstatus_employee(Convert.ToInt32(ddl_divname.SelectedItem.Value)).ToList();
            if (re.Count > 0)
            {
                txt_prevpercent.Text = (re[0].percentage).ToString();
            }
            else
            {
                txt_prevpercent.Text = "No Prevoius Record";
            }
        
        }
        }
    }
