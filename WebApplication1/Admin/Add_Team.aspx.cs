using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.Admin
{
    public partial class Add_Team : System.Web.UI.Page
    {
        softsolutionEntities1 obj = new softsolutionEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    var leader = obj.sp_vw_TeamLeader();
                    ddl_leader.DataSource = leader;
                    ddl_leader.DataTextField = "email";
                    ddl_leader.DataValueField = "logid";
                    ddl_leader.DataBind();
                    if (ddl_leader.Items.Count > 0)
                    {
                        ddl_leader.Items.Insert(0, new ListItem("---Select Leader---", "0"));
                    }
                    else
                    {
                        ddl_leader.Items.Add(new ListItem("---Select Leader---", "0"));
                    }
                }
                catch (Exception ex)
                {
                    HttpContext.Current.ClearError();
                }
            }

        }

        protected void tn_create_Click(object sender, EventArgs e)
        {
            try
            {
                var add = obj.sp_addteam(Convert.ToInt32(ddl_leader.SelectedItem.Value), txt_teamname.Text).ToList();
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('" + add[0] + "');", true);
                var leader = obj.sp_vw_TeamLeader();
                ddl_leader.DataSource = leader;
                ddl_leader.DataTextField = "email";
                ddl_leader.DataValueField = "logid";
                ddl_leader.DataBind();
                if (ddl_leader.Items.Count > 0)
                {
                    ddl_leader.Items.Insert(0, new ListItem("---Select Leader---", "0"));
                }
                else
                {
                    ddl_leader.Items.Add(new ListItem("---Select Leader---", "0"));
                }
            }
            catch (Exception ex)
            {
                HttpContext.Current.ClearError();
            }
        }
    }
}