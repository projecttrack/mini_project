using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.Analyst
{
    public partial class Chat_analyst : System.Web.UI.Page
    {
        softsolutionEntities1 obj = new softsolutionEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                var x = obj.sp_view_thread(Convert.ToInt32(Session["logid"]), Convert.ToInt32(Session["profile_id"])).ToList();
                if (x.Count > 0)
                {
                    dl_thread.DataSource = x;
                    dl_thread.DataBind();
                }
                else
                {
                    lbl_msg.Text = "No conversations";
                }
            }
            
        }

        protected void dl_thread_ItemCommand(object source, DataListCommandEventArgs e)
        {
            int id=Convert.ToInt32(Session["log_id"]);
            var x = obj.sp_msg_delete(Convert.ToInt32(e.CommandArgument),id );
            if (x.Contains("mds"))
            {
                //Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('Message Deleted')", true);
                var y = obj.sp_view_thread_bind(Convert.ToInt32(Session["logid"]), Convert.ToInt32(Session["profile_id"])).ToList();
                if (y.Count > 0)
                {
                    dl_thread.DataSource = y;
                    dl_thread.DataBind();
                }
                else
                {
                    lbl_msg.Text = "No conversations";
                    dl_thread.DataSource = y;
                    dl_thread.DataBind();
                }

            }
            else
            {
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('Some Error Occured')", true);
            }
        }

        protected void lnkbtn_clr_con_Click(object sender, EventArgs e)
        {
            var x = obj.sp_msg_delete_all(Convert.ToInt32(Session["logid"]), Convert.ToInt32(Session["profile_id"]));
            if (x.Contains("mds"))
            {
                var y = obj.sp_view_thread_bind(Convert.ToInt32(Session["logid"]), Convert.ToInt32(Session["profile_id"])).ToList();
                if (y.Count > 0)
                {
                    dl_thread.DataSource = y;
                    dl_thread.DataBind();
                }
                else
                {
                    lbl_msg.Text = "No Conversations";
                    dl_thread.DataSource = y;
                    dl_thread.DataBind();
                }

            }
            else
            {
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('Some Error Occured')", true);
            }

        }

        protected void btn_send_Click(object sender, EventArgs e)
        {
            try
            {
                var x = obj.sp_message(Convert.ToInt32(Session["logid"]), Convert.ToInt32(Session["profile_id"]), txt_msg.Text).ToList();
                if (x[0].Contains("mss"))
                {
                    var y = obj.sp_view_thread_bind(Convert.ToInt32(Session["logid"]), Convert.ToInt32(Session["profile_id"])).ToList();
                    if (y.Count > 0)
                    {
                        dl_thread.DataSource = y;
                        dl_thread.DataBind();
                    }
                    else
                    {
                        lbl_msg.Text = "No Conversations";
                        dl_thread.DataSource = y;
                        dl_thread.DataBind();
                    }

                }
            }
            catch (Exception ex)
            {

                var y = obj.sp_view_thread_bind(Convert.ToInt32(Session["logid"]), Convert.ToInt32(Session["profile_id"])).ToList();
                if (y.Count > 0)
                {
                    dl_thread.DataSource = y;
                    dl_thread.DataBind();
                }
                else
                {
                    lbl_msg.Text = "No Conversations";
                    dl_thread.DataSource = y;
                    dl_thread.DataBind();
                }


            }
        }
    }
}