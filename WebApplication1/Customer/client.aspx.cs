using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class client : System.Web.UI.Page
    {
        softsolutionEntities1 obj = new softsolutionEntities1();
    
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("project1.aspx");  
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("newclient.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int logid =Convert.ToInt32(Session["logid"]);
            var soluti = obj.sp_client(txt_email.Text, txt_desc.Text, txt_type.Text, txt_front.Text, txt_back.Text, txt_date.Text,logid,txt_prjname.Text).ToList() ;        
            if (soluti.Contains("Sucess"))
            {
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('success');", true);
            }
            else 
            {
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('failed');", true);      
            }
            txt_email.Text = "";            
            txt_desc.Text="";
            txt_type.Text="";
            txt_front.Text="";
            txt_back.Text="";
            txt_date.Text="";
           
            
        }
    }
}