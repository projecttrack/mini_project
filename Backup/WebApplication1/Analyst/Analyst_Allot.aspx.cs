using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.Analyst
{
    public partial class Analyst_Allot : System.Web.UI.Page
    { softsolutionEntities1 obj=new softsolutionEntities1 ();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                int proid = Convert.ToInt32(Session["proid_p"]);
                if(Session["proid_p"]!=null)
                {
            
                        int logid = Convert.ToInt32(Session["logid"]);
             var re = obj.project_team.Where(x => x.status == 0).ToList();
                        if (re.Count > 0)
                        {
                            ddl_team.DataSource = re;
                            ddl_team.DataTextField = "teamname";
                            ddl_team.DataValueField = "teamid";
                            ddl_team.DataBind();
                        }
                        if (ddl_team.Items.Count > 0)
                        {
                            ddl_team.Items.Insert(0, new ListItem("---Select Team---", "0"));
                        }
                        else
                        {
                            ddl_team.Items.Add(new ListItem("---Select Team---", "0"));
                        }

                       

                      

                        var g2 = obj.spvwmodule_assign_prj(proid).ToList();
                        if (g2.Count > 0)
                        {
                            grv_assign.DataSource = g2;
                            grv_assign.DataBind();
                        }
                        else
                        {
                            lbl_msg2.Visible = true;
                            lbl_msg2.Text = "No Data To Display ";
                        }
                    }
                    else
                    {
                        lbl_msg2.Visible = true;
                        lbl_msg2.Text = "Invalid LogID or ProjectID ";
                    }
                var st = obj.tbl_module.Where(x=>x.prjid==proid && x.status==false).ToList();
                if (st.Count > 0)
                {
                    ddl_module.DataSource = st;
                    ddl_module.DataTextField = "modulename";
                    ddl_module.DataValueField = "moduleid";
                    ddl_module.DataBind();
                }
                if (ddl_module.Items.Count > 0)
                {
                    ddl_module.Items.Insert(0, new ListItem("---Select Module---", "0"));
                }
                else
                {
                    ddl_module.Items.Add(new ListItem("---Select Module---", "0"));
                }
        }
        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            try
            {
                int proid = Convert.ToInt32(Session["proid_p"]);
                var re = obj.sp_assignmodule(Convert.ToInt32(ddl_module.SelectedItem.Value), Convert.ToInt32(ddl_team.SelectedItem.Value), 
                    txt_startdate.Text,proid,
                   txt_enddate.Text).ToList();
                if (re.Contains("success"))
                {
                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('" + re[0] + "');", true);
                    Response.Redirect("~/Analyst/Analyst_Allot.aspx");

                }
                else
                {
                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('" + re[0] + "');", true);
                }
            }
            catch (Exception ex)
            {
                HttpContext.Current.ClearError();
            }
        }

        protected void grv_assign_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int modid = Convert.ToInt32(grv_assign.DataKeys[e.RowIndex].Value);
           
        }
    }
}