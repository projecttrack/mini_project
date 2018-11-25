using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.Test
{
    public partial class Test : System.Web.UI.Page
    {
        softsolutionEntities1 obj = new softsolutionEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            txtUsername.Text = "Hello World";
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            
        }
    }
}