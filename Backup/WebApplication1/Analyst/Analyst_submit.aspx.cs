using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.Analyst
{
    public partial class Analyst_submit : System.Web.UI.Page
    {
        softsolutionEntities1 obj = new softsolutionEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["logid"] != null)
                {
                    int logid = Convert.ToInt32(Session["logid"]);

                    var analyst = obj.spvw_tlmodulecomplete(logid).ToList();
                    if (analyst.Count > 0)
                    {
                        grv_analyst.DataSource = analyst;
                        grv_analyst.DataBind();
                    }
                    else
                    {
                        lbl_msg.Visible = true;
                        lbl_msg.Text = "No Data To Display ";
                    }

                    var prj = obj.sp_vw_project_analysst(logid).ToList();
                    if (prj.Count > 0)
                    {
                        ddl_prjname.DataSource = prj;
                        ddl_prjname.DataTextField = "prj_name";
                        ddl_prjname.DataValueField = "proid";
                        ddl_prjname.DataBind();
                    }
                    if (ddl_prjname.Items.Count > 0)
                    {
                        ddl_prjname.Items.Insert(0, new ListItem("---Select Project---", "0"));
                    }
                    else
                    {
                        ddl_prjname.Items.Add(new ListItem("---Select Project---", "0"));
                    }
                }
            }

            }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
         int logid = Convert.ToInt32(Session["logid"]);
            if (Session["logid"] != null)
            {
                if (fup_document.HasFile)
                {
                    string Path = "~/admmnfile/" + fup_document.FileName;
                    var res = obj.sp_analystsubmit(logid, Convert.ToInt32(ddl_prjname.SelectedItem.Value), txt_remarks.Text, Path).ToList();
                    if (res.Contains("success"))
                    {
                        fup_document.SaveAs(Server.MapPath(Path));
                        Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('" + res[0] + "');", true);
                    }

                    else
                    {

                        Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('" + res[0] + "');", true);
                    }
                }
                else
                {
                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('No file chosen');", true);
                }
            }
        }
        
        }

       
}