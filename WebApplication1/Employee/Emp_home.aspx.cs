using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.Employee
{
    public partial class Emp_home : System.Web.UI.Page
    {
        softsolutionEntities1 obj = new softsolutionEntities1();



       
        protected void Page_Load(object sender, EventArgs e)
        {
            int logid=Convert.ToInt32(Session["logid"]);
            var res = obj.sp_vw_moddiv_emp(logid).ToList();
            if (res.Count > 0)
            {
                grv_emp_tasks.DataSource = res;
                grv_emp_tasks.DataBind();
            }
            else
            {
                lbl_msg.Visible = true;
                lbl_msg.Text = "No Data To Display ";
            }

        }

        protected void grv_emp_tasks_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Session["moddivid1"] = Convert.ToInt32(grv_emp_tasks.DataKeys[e.RowIndex].Value);
            
           panel2.Visible=false;
            Panel1.Visible=true;

        }

     

        protected void btn_submit_Click(object sender, EventArgs e)
        {

            if (Session["moddivid"] != null && Session["logid"]!=null)
            {
                int moddivid = Convert.ToInt32(Session["moddivid"]);
                int logid = Convert.ToInt32(Session["logid"]);
                var res = obj.sp_employee_requests(moddivid, logid, txt_reason.Text, Convert.ToInt32(txt_days.Text), txt_edate.Text).ToList();

                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('" + res[0] + "');", true);               
            }
            else
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('Division Id or Log Id Invalid');", true);
        }
        protected void btn_submit_work_Click(object sender, EventArgs e)
        {
            if (Session["moddivid1"] != null && Session["logid"]!=null)
            {
                int logid = Convert.ToInt32(Session["logid"]);
                if (fup_document.HasFile)
                {
                    string Path = "~/tleaderfile/" + fup_document.FileName;
                    int moddivid = Convert.ToInt32(Session["moddivid1"]);
                    var res = obj.sp_employee_submit(moddivid, logid, Path).ToList();
                    if (res.Contains("success"))
                    {
                        fup_document.SaveAs(Server.MapPath(Path));
                        Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('" + res[0] + "');", true);
                      
                        var re = obj.sp_incentive(logid, moddivid).ToList();

                        Response.Redirect("~/Employee/Emp_home.aspx");
                    }
                    else
                    {
                        Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('" + res[0] + "');", true);
                    }


                }
                else
                {
                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('No File Chosen');", true);
                }
            }
            else
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('Please select any one');", true);
               }

       

        protected void grv_emp_tasks_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            int modid = Convert.ToInt32(grv_emp_tasks.DataKeys[e.NewSelectedIndex].Value);
            Session["moddivid"] = modid;
            Panel1.Visible = false;
            panel2.Visible = true;

            var res = obj.tbl_moddiv.Where(x => x.moddivid == modid).ToList();
            if (res.Count > 0)
            {
                txt_divname.Text = res[0].divname;
            }
           
        }
        }
    }
