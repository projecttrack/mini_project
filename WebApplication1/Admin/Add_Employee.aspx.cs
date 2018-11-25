using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.Admin
{
    public partial class Add_Employee : System.Web.UI.Page
    {
        softsolutionEntities1 obj = new softsolutionEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

       

        protected void lbl_analyst_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Admin/Add_analyst.aspx");
        }

        protected void lbl_tleader_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Admin/Add_TeamLeader.aspx");
        }

        protected void lbl_team_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Admin/Add_Team.aspx");
        }

        protected void lbl_progrmr_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Admin/Add_Programmer.aspx");
        }
    }
}