using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.Team_Leader
{
    public partial class Split_module : System.Web.UI.Page
    {
        softsolutionEntities1 obj = new softsolutionEntities1();
        
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if(Session["moduleid_split"]!=null)
                {
                int modid=Convert.ToInt32(Session["moduleid_split"]);

               

                var res = obj.sp_vw_module_id(modid).ToList();
                if (res.Count > 0)
                {


                    grv_module.DataSource = res;
                    grv_module.DataBind();
                }
                else
                {
                    lbl_msg.Visible = true;
                    lbl_msg.Text = "No Data To Display ";
                }
               
                }
              

            }
        }

     
        protected void btn_submit_Click(object sender, EventArgs e)
        {
            int modid = Convert.ToInt32(Session["moduleid_split"]);
            if (fup_doc.HasFile)
            {
                string path = "~/empfile/" + fup_doc.FileName;

                var split = obj.sp_create_division(modid, txt_divname.Text, txt_desc.Text,path).ToList();

                if (split.Contains("success"))

                {
                    fup_doc.SaveAs(Server.MapPath(path));
                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('" + split[0] + "');", true);
                    Response.Redirect("~/Team_Leader/Split_module.aspx");
                }
                else
                {
                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('" + split[0] + "');", true);

                }
            }
            else
            {
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('No File Chosen');", true);
            }
        }

       
      
      

       

       
        protected void grv_module_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Team_Leader/Allot_Module.aspx");
        }
        }
    }
