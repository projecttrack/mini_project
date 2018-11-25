using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.Common
{
    public partial class Login_Page : System.Web.UI.Page
    {
        softsolutionEntities1 obj = new softsolutionEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            var login = obj.login_tbl.Where(x => x.email == txt_username.Text && x.password == txt_password.Text).ToList();
            if (login.Count > 0 && login[0].usertype == 1)
            {
                Session["logid"] = login[0].logid;
                Response.Redirect("~/Admin/admin_client_view.aspx");
            }
            else if (login.Count > 0 && login[0].usertype == 2)
            {
                Session["logid"] = login[0].logid;
                Response.Redirect("~/Analyst/analyst_home.aspx");
            }
            else if (login.Count > 0 && login[0].usertype == 3)
            {
                Session["logid"] = login[0].logid;
                Response.Redirect("~/Team_Leader/Leader_home.aspx");
            }
            else if (login.Count > 0 && login[0].usertype == 4)
            {
                Session["logid"] = login[0].logid;
                Response.Redirect("~/Employee/Emp_home.aspx");
            }
            else if (login.Count > 0 && login[0].usertype == 5)
            {
                Session["logid"] = login[0].logid;
                Response.Redirect("~/Customer/Customer_Home.aspx");
            }
            else
            {
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('Invalid user');", true);
            }
        }

        protected void btn_register_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Common/newclient.aspx");
        }

        protected void txt_username_TextChanged(object sender, EventArgs e)
        {

        }
    }
}