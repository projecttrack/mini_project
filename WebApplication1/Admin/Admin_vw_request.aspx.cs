using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.Admin
{
    public partial class Admin_vw_request : System.Web.UI.Page
    {
        softsolutionEntities1 obj = new softsolutionEntities1();
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    var re = obj.sp_vw_analyst_request().ToList();
                    if (re.Count > 0)
                    {
                        grv_admn_req_vw.DataSource = re;
                        grv_admn_req_vw.DataBind();
                    }
                    else
                    {
                        lbl_msg.Visible = true;
                        lbl_msg.Text = "No Data To Display ";
                    }
                }
                catch (Exception ex)
                {
                    HttpContext.Current.ClearError();
                }
            }
        }


        protected void grv_admn_req_vw_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
            id = Convert.ToInt32(grv_admn_req_vw.DataKeys[e.RowIndex].Value);

            Session["req_admn_id"] = id;
            var re = obj.tbl_anlreq.Where(x => x.analreqid == id).ToList();
            if (re.Count > 0)
            {
                txt_days.Text = (re[0].duration).ToString();
                txt_edate.Text = re[0].enddate;
            }
            else
            {
                lbl_msg.Visible = true;
                lbl_msg.Text = "Invalid Request ID ";
            }
            }
            catch (Exception ex)
            {
                HttpContext.Current.ClearError();
            }
        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            try
            {
                id = Convert.ToInt32(Session["req_admn_id"]);
                var res = obj.spAdminResponseRequest(id, Convert.ToInt32(txt_days.Text), txt_edate.Text).ToList();
                if (res.Contains("success"))
                {
                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('" + res[0] + "');", true);
                    id = 0;
                }
                else
                {
                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('" + res[0] + "');", true);
                }
            
           
            }
            catch (Exception ex)
            {
                HttpContext.Current.ClearError();
            }
        }
    }
}