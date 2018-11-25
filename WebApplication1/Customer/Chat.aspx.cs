using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.Customer      
{
    public partial class Chat : System.Web.UI.Page
    {
        softsolutionEntities1 obj = new softsolutionEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                var x = obj.sp_view_chat(Convert.ToInt32(Session["logid"])).ToList();
                if (x.Count > 0)
                {
                    dl_chat.DataSource = x;
                    dl_chat.DataBind();
                }
                else
                {
                    lbl_msg.Text = "No New Chat Heads";
                    Response.Redirect("~/Customer/Thread.aspx");
                }
            }

        }
        protected void dl_chat_ItemCommand(object source, DataListCommandEventArgs e)
        {
            Session["profile_id"] = e.CommandArgument;
            Response.Redirect("~/Customer/Thread.aspx");
        }
    }
}