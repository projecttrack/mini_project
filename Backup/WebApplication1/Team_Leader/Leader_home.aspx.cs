using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.Team_Leader
{
    public partial class Leader_home : System.Web.UI.Page
    {
        softsolutionEntities1 obj = new softsolutionEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int lid = Convert.ToInt32(Session["logid"]);
                var re = obj.sp_vw_emp_team(lid).ToList();
                if (re.Count > 0)
                {
                    grv_employee.DataSource = re;
                    grv_employee.DataBind();
                }
                else
                {
                    lbl_msg1.Visible = true;
                    lbl_msg1.Text = "No Data To Display ";
                }
                var allot = obj.sp_vw_module_team(lid).ToList();
                if (allot.Count > 0)
                {
                    grv_allot.DataSource = allot;
                    grv_allot.DataBind();
                }
                else
                {
                    lbl_msg.Visible = true;
                    lbl_msg.Text = "No Data To Display ";
                }
                var emp = obj.sp_vw_emp().ToList();
                if (emp.Count > 0)
                {
                    ddl_empname.DataSource = emp;
                    ddl_empname.DataTextField = "Ename";
                    ddl_empname.DataValueField = "logid";
                    ddl_empname.DataBind();
                }
                if (ddl_empname.Items.Count > 0)
                {
                    ddl_empname.Items.Insert(0, new ListItem("---Select Employee---", "0"));
                }
                else
                {
                    ddl_empname.Items.Add(new ListItem("---Select Employee---", "0"));
                }
            }
        }
        protected void btn_submit_Click(object sender, EventArgs e)
        {
            int lid=Convert.ToInt32(Session["logid"]);

           
            var emp = obj.sp_assign_employee(lid, Convert.ToInt32(ddl_empname.SelectedItem.Value), txt_designation.Text).ToList();
            Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('" + emp[0] + "');", true);
            Response.Redirect("~/Team_Leader/Leader_home.aspx");
        }

         

           protected void grv_allot_RowDeleting1(object sender, GridViewDeleteEventArgs e)
           {
               int modid = Convert.ToInt32(grv_allot.DataKeys[e.RowIndex].Value);
               Session["moduleid_split"] = modid;
               Response.Redirect("~/Team_Leader/Split_module.aspx");
           }
    }
}