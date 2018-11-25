using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.Customer
{
    public partial class Client_Profile : System.Web.UI.Page
    {
        softsolutionEntities1 obj = new softsolutionEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int logid = Convert.ToInt32(Session["logid"]);
                var r = obj.client_reg.Where(x => x.logid == logid).ToList();
                Label11.Text = r[0].Fname;
                var re = obj.sp_clientprofile(logid);
                dl_profile.DataSource = re;
                dl_profile.DataBind();
            }
        }

        protected void dl_profile_ItemCommand(object source, DataListCommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument);
            Session["prof_id"] = id;
            Response.Redirect("~/Customer/Profile_Edit.aspx");

        }
    }
}