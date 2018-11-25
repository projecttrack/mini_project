using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.Analyst
{
    public partial class vw_analyst_request : System.Web.UI.Page
    {
        softsolutionEntities1 obj = new softsolutionEntities1();
        int id;
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
                    lbl_msg.Text = "No Data To Display ";
                }
            }
        }

        protected void grv_req_team_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            id = Convert.ToInt32(grv_req_team.DataKeys[e.RowIndex].Value);
            Session["id_analyst"] = id;
            var re = obj.Tbl_TLRequest.Where(x => x.tlreqid == id).ToList();
            if (re.Count > 0)
            {
                txt_days.Text = (re[0].daysneeded).ToString();
                txt_edate.Text = re[0].enddate;
            }

        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            id = Convert.ToInt32(Session["id_analyst"]);
            var res = obj.spAnalystResponseRequest(id, Convert.ToInt32(txt_days.Text), txt_edate.Text).ToList();
            if (res.Contains("success"))
            {
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('" + res[0] + "');", true);
            }
            else
            {
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('" + res[0] + "');", true);
            }
        }
    }
}