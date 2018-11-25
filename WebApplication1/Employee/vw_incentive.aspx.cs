using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.Employee
{
    public partial class vw_incentive : System.Web.UI.Page
    {
        softsolutionEntities1 obj = new softsolutionEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var re = obj.sp_vw_incentive_employee(Convert.ToInt32(Session["logid"]));
                grv_incentive.DataSource = re;
                grv_incentive.DataBind();

            }

        }
    }
}