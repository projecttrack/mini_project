using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class analyst_ : System.Web.UI.Page
    {
        softsolutionEntities1 obj = new softsolutionEntities1();
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {   int id=Convert.ToInt32(Session["logid"]);
                    var re=obj.tbl_analystallot.Where(x=>x.analystid==id && x.completed==false).ToList();
                    Session["proid_p"] = re[0].projid;
                    if (Session["logid"] != null)
                    {
                        int proid = Convert.ToInt32(Session["proid_p"]);
                        int logid = Convert.ToInt32(Session["logid"]);
                        var sol = obj.sp_view_analyst_projects(logid).ToList();
                        if (sol.Count > 0)
                        {
                            grv_analyst.DataSource = sol;
                            grv_analyst.DataBind();
                        }
                        else
                        {
                            lbl_msg.Visible = true;
                            lbl_msg.Text = "No Data To Display ";
                        }
                    }
                    else
                    {
                        lbl_msg.Visible = true;
                        lbl_msg.Text = "Invalid LogID ";
                    }

                }
                catch (Exception ex)
                {
                    HttpContext.Current.ClearError();
                }
                
            }
        }

      

       

      

        protected void grv_analyst_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            try
            {

               
                int proid = Convert.ToInt32(grv_analyst.DataKeys[e.NewSelectedIndex].Value);
                Session["proid_p"] = proid;
                Response.Redirect("~/Analyst/Analyst_Split.aspx");
               
               
            }
            catch (Exception ex)
            {
                HttpContext.Current.ClearError();
            }
        }
    }
}