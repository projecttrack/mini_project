using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.Admin
{
    public partial class prj_complete : System.Web.UI.Page
    {
        softsolutionEntities1 obj = new softsolutionEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var res = obj.sp_vw_prj_complete_admin();
                grv_admn_req_vw.DataSource = res;
                grv_admn_req_vw.DataBind();
            }
        }

        protected void grv_admn_req_vw_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id=Convert.ToInt32(grv_admn_req_vw.DataKeys[e.RowIndex].Value);
            obj.sp_update_analyst_submit(id);
            Response.Redirect("~/Admin/prj_complete.aspx");
        }

    }
}