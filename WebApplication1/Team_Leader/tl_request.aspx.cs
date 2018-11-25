using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.Team_Leader
{
    public partial class tl_request : System.Web.UI.Page
    {
        softsolutionEntities1 obj = new softsolutionEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int lid = Convert.ToInt32(Session["logid"]);
                var mod = obj.sp_vw_emp_request_tl_req(lid).ToList();
                if (mod.Count > 0)
                {
                    grv_mod_vw.DataSource = mod;
                    grv_mod_vw.DataBind();
                }
                else
                {
                    lbl_msg.Visible = true;
                    lbl_msg.Text = "No Data To Display ";
                }
                var res = obj.spvw_moduletl(lid).ToList();
                if (res.Count > 0)
                {
                ddl_modulename.DataSource = res;
               
                    ddl_modulename.DataTextField = "modulename";
                    ddl_modulename.DataValueField = "modid";
                    ddl_modulename.DataBind();
                }
                if (ddl_modulename.Items.Count > 0)
                {
                    ddl_modulename.Items.Insert(0, new ListItem("---Select Module---", "0"));
                }
                else
                {
                    ddl_modulename.Items.Add(new ListItem("---Select Module---", "0"));
                }
            }
        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            int lid = Convert.ToInt32(Session["logid"]);
            var req = obj.sp_TLRequest(lid, Convert.ToInt32(ddl_modulename.SelectedItem.Value), Convert.ToInt32(txt_days.Text),
                txt_reason.Text, txt_enddate.Text).ToList();
            Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('" + req[0] + "');", true);  
        }

        protected void grv_mod_vw_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int modid = Convert.ToInt32(grv_mod_vw.DataKeys[e.RowIndex].Value);

        }

        
    }
}
