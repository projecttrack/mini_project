using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.Team_Leader
{
    public partial class Tl_request_view : System.Web.UI.Page
    {
        softsolutionEntities1 obj = new softsolutionEntities1();
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int logid = Convert.ToInt32(Session["logid"]);
                var res = obj.sp_vw_emp_request(logid).ToList();
                if (res.Count > 0)
                {
                    grv_request_view.DataSource = res;
                    grv_request_view.DataBind();

                }
                else
                {
                    lbl_msg.Visible = true;
                    lbl_msg.Text = "No Data To Display ";
                }

                int id = Convert.ToInt32(Session["id"]);
                var rest = obj.tbl_emprequest.Where(x => x.emp_reqid == id).ToList();
                if (rest.Count > 0)
                {
                    txt_days.Text = (rest[0].daysneeded).ToString();
                    txt_edate.Text = (rest[0].eenddate).ToString();
                }

            }
        } 
        protected void btn_submit_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Session["id"]);
            var re = obj.spTlResponseRequest(id, Convert.ToInt32(txt_days.Text), txt_edate.Text).ToList();
            Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('" + re[0] + "');", true);
            Response.Redirect("~/Team_Leader/Tl_request_view.aspx");

           }

        protected void grv_request_view_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

            int id = Convert.ToInt32(grv_request_view.DataKeys[e.RowIndex].Value);
            Session["id"] = id;
            var rest = obj.tbl_emprequest.Where(x => x.emp_reqid == id).ToList();
            if (rest.Count > 0)
            {
                txt_days.Text = (rest[0].daysneeded).ToString();
                txt_edate.Text = (rest[0].eenddate).ToString();
            }
           
        }
    }
}