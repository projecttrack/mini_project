using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class admin_approve : System.Web.UI.Page
    {
        softsolutionEntities1 obj = new softsolutionEntities1();
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                if (Session["projid"] != null)
                {
                    int proid = Convert.ToInt32(Session["projid"]);
                    var s = obj.sp_Admin_Approve(proid).ToList();
                    if (s.Count > 0)
                    {
                        GridView1.DataSource = s;
                        GridView1.DataBind();
                    }
                    else
                    {
                        lbl_msg.Visible = true;
                        lbl_msg.Text = "No New Entries ";
                    }
                }
                else
                {
                    lbl_msg.Visible = true;
                    lbl_msg.Text = "Invalid Project Id ";
                }
                var an = obj.login_tbl.Where(x => x.usertype == 2 && x.status==false).ToList();
                ddl_analyst.DataSource = an;
                ddl_analyst.DataTextField = "email";
                ddl_analyst.DataValueField = "logid";
                ddl_analyst.DataBind();
                if (ddl_analyst.Items.Count > 0)
                {
                    ddl_analyst.Items.Insert(0, new ListItem("---Select Analyst---", "0"));
                }
                else
                {
                    ddl_analyst.Items.Add(new ListItem("---Select Analyst---", "0"));
                }
                }
                catch (Exception ex)
                {
                    HttpContext.Current.ClearError();
                }
            }
        }
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
             int proid = Convert.ToInt32(Session["projid"]);

             Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('Please Select An Analyst');", true);      

            
             
           
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            try
            {
            int proid = Convert.ToInt32(Session["projid"]);
            obj.sp_cancel(proid);
            Response.Redirect("admin_approve.aspx");
            }
            catch (Exception ex)
            {
                HttpContext.Current.ClearError();
            }
        }



        protected void btn_approve_Click(object sender, EventArgs e)
        {
            try
            {
            if (Session["projid"] != null)
            {
                int proid = Convert.ToInt32(Session["projid"]);
                var res = obj.sp_Approve(proid, txt_startdate.Text, txt_enddate.Text, Convert.ToInt32(ddl_analyst.SelectedItem.Value)).ToList();
                if (res.Contains("success"))
                {
                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('" + res[0] + "');", true);
               
                }
                else
                {
                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('" + res[0] + "');", true);
                }
            }
            else
            {
                lbl_msg.Visible = true;
                lbl_msg.Text = "Invalid Project Id ";
            }
            }
            catch (Exception ex)
            {
                HttpContext.Current.ClearError();
            }
            }
        
    }
}