using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.Team_Leader
{
    public partial class tl_submit : System.Web.UI.Page
    {
        softsolutionEntities1 obj = new softsolutionEntities1();
        int moduleid;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
            int lid = Convert.ToInt32(Session["logid"]);
            var res = obj.spempvwempcomplete(lid).ToList();
            if (res.Count > 0)
            {
                grv_tlsubmit.DataSource = res;
                grv_tlsubmit.DataBind();
            }
            else
            {   lbl_msg.Visible = true;
                lbl_msg.Text = "No Data To Display ";
            }
            
                var team=obj.project_team.Where(x=>x.leader_id==lid).ToList();
                if (team.Count > 0)
                {
                    int teamid = team[0].teamid;
                    var mod = obj.tbl_moddivallot.Where(x => x.teamid == teamid).ToList();
                    if (mod.Count > 0)
                    {
                        moduleid = Convert.ToInt32(mod[0].modid);
                    }
                }
               var re = obj.spvw_moduletl(lid).ToList();
               if (re.Count > 0)
               {
                   ddl_module.DataSource = re;
                   ddl_module.DataTextField = "modulename";
                   ddl_module.DataValueField = "modid";
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
            if (fup_doc.HasFile)
            {
                int lid = Convert.ToInt32(Session["logid"]);
              string  Path = "~/analystfile/" + fup_doc.FileName;
              var res = obj.spTlsubmit(lid, Path).ToList();
              if (res.Contains("success"))
              {
                  fup_doc.SaveAs(Server.MapPath(Path));
                  Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('" + res[0] + "');", true); 
              }
              else
              {
                                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('" + res[0] + "');", true); 

              }
            }
            else
            {
                                  Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('No file chosen');", true); 

            }

            }
        }
    }
