using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.Customer
{
    public partial class Profile_Edit : System.Web.UI.Page
    {
        softsolutionEntities1 obj = new softsolutionEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
if(!IsPostBack)

            {

                var type = obj.tbl_country;
                ddl_country.DataSource = type;
                ddl_country.DataTextField = "Name";
                ddl_country.DataValueField = "Country_id";
                ddl_country.DataBind();
                if (ddl_country.Items.Count > 0)
                {
                    ddl_country.Items.Insert(0, new ListItem("---select Country---", "0"));
                }
                else
                {
                    ddl_country.Items.Add(new ListItem("---select Country---", "0"));
                }


                var typ = obj.tbl_state;
                ddl_state.DataSource = typ;
                ddl_state.DataTextField = "name";
                ddl_state.DataValueField = "state_id";
                ddl_state.DataBind();
                if (ddl_state.Items.Count > 0)
                {
                    ddl_state.Items.Insert(0, new ListItem("---select State---", "0"));
                }
                else
                {
                    ddl_state.Items.Add(new ListItem("---select State---", "0"));
                }



                int logid = Convert.ToInt32(Session["logid"]);
                var re = obj.sp_clientprofile(logid).ToList();
                txt_fname.Text = re[0].Fname;
                txt_lname.Text = re[0].Lname;
                txt_dob.Text = re[0].DOB;
                txt_email.Text = re[0].Email;
                txt_mobile.Text = re[0].Mobile;
                txt_address.Text = re[0].Address;
                ddl_country.SelectedIndex = ddl_country.Items.IndexOf(ddl_country.Items.FindByText(re[0].country));
                ddl_state.SelectedIndex = ddl_state.Items.IndexOf(ddl_state.Items.FindByText(re[0].state));
                txt_age.Text = re[0].Age.ToString();

               
            }
        }

        protected void lbn_update_Click(object sender, EventArgs e)
        {
            int logid = Convert.ToInt32(Session["logid"]);
            var res = obj.sp_updateclient_profile(logid, txt_fname.Text, txt_lname.Text, txt_dob.Text, Convert.ToInt32(ddl_country.SelectedItem.Value),
                Convert.ToInt32(ddl_state.SelectedItem.Value), txt_address.Text, txt_mobile.Text, txt_email.Text).ToList();
            if (res.Contains("success"))
            {
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('Updated Successfully');", true);
            }
            else
            {
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('failed');", true);
            }
        
        }
    }
}