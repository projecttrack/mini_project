using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.Admin
{
    public partial class Add_analyst : System.Web.UI.Page
    {
        softsolutionEntities1 obj = new softsolutionEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_submit_an_Click(object sender, EventArgs e)
        {
            try
            {
                var analyst = obj.sp_addanalyst(txt_analystname.Text, txt_analyst_cpassword.Text).ToList();
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('" + analyst[0] + "');", true);
            }
            catch (Exception ex)
            {
                HttpContext.Current.ClearError();
            }
        }
    }
}