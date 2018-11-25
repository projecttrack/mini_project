using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.Analyst
{
    public partial class Analyst_request : System.Web.UI.Page
    {
        softsolutionEntities1 obj = new softsolutionEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int logid = Convert.ToInt32(Session["logid"]);
                var res = obj.sp_vw_tl_request(logid).ToList();
                if (res.Count > 0)
                {
                    grv_req_team.DataSource = res;
                    grv_req_team.DataBind();
                }
                else
                {
                    lbl_msg.Visible = true;
                    lbl_msg.Text = "No Data To Display";
                }

                var re = obj.spvw_prjallot(logid).ToList();
                if (re.Count > 0)
                {
                    ddl_prj_name.DataSource = re;
                    ddl_prj_name.DataTextField = "proname";
                    ddl_prj_name.DataValueField = "clreqid";
                    ddl_prj_name.DataBind();
                }
                if (ddl_prj_name.Items.Count > 0)
                {
                    ddl_prj_name.Items.Insert(0, new ListItem("---select Project---", "0"));
                }
                else
                {
                    ddl_prj_name.Items.Add(new ListItem("---select Project---", "0"));
                }
            }

        }

       

        protected void btn_submit_Click1(object sender, EventArgs e)
        {
            int logid = Convert.ToInt32(Session["logid"]);
            if (Session["logid"] != null)
            {
                var res = obj.sp_AnalystRequest(logid, Convert.ToInt32(ddl_prj_name.SelectedItem.Value), Convert.ToInt32(txt_days.Text),
                    txt_reason.Text, txt_enddate.Text).ToList();
                if (res.Contains("success"))
                {
                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('" + res[0] + "');", true);
                }
                else
                {
                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('" + res[0] + "');", true);
                }
            }
            else
            {
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('Invalid Logid');", true);
            }
        }
    }
}