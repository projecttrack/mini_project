using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.Team_Leader
{
    public partial class Allot_Module : System.Web.UI.Page
    {
        softsolutionEntities1 obj = new softsolutionEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int lid = Convert.ToInt32(Session["logid"]);
                var result=obj.sp_vw_moduleid_team(lid).ToList();
                Session["modid_allot"] = result[0].modid;
                 int modid = Convert.ToInt32(Session["modid_allot"]);
                if (Session["modid_allot"] != null && Session["logid"] != null)
                {
                   
                    
                    var rest = obj.sp_vw_emp_team_status(lid);
                    ddl_empname.DataSource = rest;
                    ddl_empname.DataTextField = "Ename";
                    ddl_empname.DataValueField = "Empid";
                    ddl_empname.DataBind();
                    if (ddl_empname.Items.Count > 0)
                    {
                        ddl_empname.Items.Insert(0, new ListItem("---Select Employee---", "0"));
                    }
                    else
                    {
                        ddl_empname.Items.Add(new ListItem("---Select Employee---", "0"));
                    }
                    var re = obj.sp_vw_division_id_staus(modid).ToList();
                    if (re.Count > 0)
                    {
                        grv_split.DataSource = re;
                        grv_split.DataBind();
                    }
                    else
                    {
                        lbl_msg2.Visible = true;
                        lbl_msg2.Text = "No Data To Display ";
                    }
                    var abc = obj.sp_vw_division_id_module(modid).ToList();
                    grv_allot.DataSource = abc;
                    grv_allot.DataBind();
                }

            }
        }


        protected void grv_allot_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Session["moddivall"] = Convert.ToInt32(grv_allot.DataKeys[e.RowIndex].Value);


            int moddivall = Convert.ToInt32(Session["moddivall"]);
           
            int lid = Convert.ToInt32(Session["logid"]);
            var rest = obj.sp_vw_emp_team_status(lid);
            ddl_empname.DataSource = rest;
            ddl_empname.DataTextField = "Ename";
            ddl_empname.DataValueField = "Empid";
            ddl_empname.DataBind();
            if (ddl_empname.Items.Count > 0)
            {
                ddl_empname.Items.Insert(0, new ListItem("---Select Employee---", "0"));
            }
            else
            {
                ddl_empname.Items.Add(new ListItem("---Select Employee---", "0"));
            }
            var res1 = obj.sp_vw_moddiv_id(moddivall).ToList();
            txt_div_allot.Text = res1[0].divname;

        }

        protected void ddl_empname_SelectedIndexChanged(object sender, EventArgs e)
        {
            int empid = Convert.ToInt32(ddl_empname.SelectedItem.Value);
            var res = obj.sp_check_allot(empid).ToList();
            if (res.Contains("Eligible"))
            {
                Label1.ForeColor = System.Drawing.Color.Green;
                Label1.Text = "Eligible";
            }
            else
            {
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Text = "Already assigned";
            }
        }

        protected void btn_allot_Click(object sender, EventArgs e)
        {
            int moddivall = Convert.ToInt32(Session["moddivall"]);
            var allot = obj.sp_division_allot(moddivall, Convert.ToInt32(ddl_empname.SelectedItem.Value), txt_startdate.Text, txt_enddate.Text).ToList();


            Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('" + allot[0] + "');", true);

            Response.Redirect("~/Team_Leader/Allot_Module.aspx");
        }
    }
}