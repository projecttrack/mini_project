using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.Analyst
{
    public partial class Analyst_Split : System.Web.UI.Page
    {
        softsolutionEntities1 obj = new softsolutionEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int proid = Convert.ToInt32(Session["proid_p"]);
                var g1 = obj.spvwmodule_prj(proid).ToList();
                if (g1.Count > 0)
                {
                    grv_details.DataSource = g1;
                    grv_details.DataBind();
                }
                else
                {
                    lbl_msg1.Visible = true;
                    lbl_msg1.Text = "No Data To Display ";
                }
                var res = obj.Admin_Approve.Where(x => x.clreqid == proid).ToList();
                if (res.Count > 0)
                {
                    txt_prjname.Text = res[0].proname;
                }
            }
        }

        protected void tn_submit_Click(object sender, EventArgs e)
        {
            int proid = Convert.ToInt32(Session["proid_p"]);
            if (proid != 0)
            {
                if (fup_document.HasFile)
                {
                    string Path = "~/analystfile/" + fup_document.FileName;
                    var res = obj.sp_split_prj_module(proid, txt_modulename.Text, txt_description.Text, Path).ToList();
                    if (res.Contains("success"))
                    {
                        fup_document.SaveAs(Server.MapPath(Path));
                        Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('" + res[0] + "');", true);

                        Response.Redirect("~/Analyst/Analyst_Split.aspx");
                    }
                    else
                    {
                        Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('" + res[0] + "');", true);

                    }
                }
                else
                {
                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('No file selected');", true);
                }
            }
            else
            {
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('Invalid project id');", true);
            }
        }

        protected void btn_allot_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Analyst/Analyst_Allot.aspx");
        }
    }
}