using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class admin_client_view : System.Web.UI.Page
    {
        softsolutionEntities1 obj = new softsolutionEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
            var s = obj.sp_client_view().ToList();
            if (s.Count > 0)
            {
                grv_Request.DataSource = s;
                grv_Request.DataBind();
            }
            else
            {
                lbl_msg.Visible = true;
                lbl_msg.Text = "No Data To Display";
            }
            }
            catch (Exception ex)
            {
                HttpContext.Current.ClearError();
            }
        }
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int soft = Convert.ToInt32(grv_Request.DataKeys[e.RowIndex].Value);
            Session["projid"] = soft;
            Response.Redirect("admin_approve.aspx");
        }

        

    }
}