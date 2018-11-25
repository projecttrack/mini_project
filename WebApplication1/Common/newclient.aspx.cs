using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
namespace WebApplication1
{
    public partial class newclient : System.Web.UI.Page
    {
        softsolutionEntities1 obj = new softsolutionEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var type = obj.tbl_country.ToList();
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


            }
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("project1.aspx");
        }

        

        protected void Button1_Click(object sender, EventArgs e)
        {
            var solu = obj.sp_client_reg(Fname.Text, Lname.Text, sex.Text, DOB.Text, Convert.ToInt32(Age.Text), Convert.ToInt32(ddl_country.SelectedItem.Value), Convert.ToInt32(ddl_state.SelectedItem.Value), Address.Text, Mobile.Text, Email.Text, Password.Text).ToList();
            if (solu.Contains("Sucess"))
            {
                string email = Email.Text;
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('success');", true);
                MailMessage msg = new MailMessage();
                msg.From = new MailAddress("aryanair1123@gmail.com", "soft solution");
                msg.To.Add(new MailAddress(email));
                msg.Subject = "Online Puchase Details";
                msg.Body = "Hello" + Fname.Text + "Successfully Registered in Soft Solution System";
                msg.IsBodyHtml = true;


                SmtpClient smtp = new SmtpClient();

                smtp.Host = "smtp.gmail.com";
                smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
                smtp.UseDefaultCredentials = false;

                smtp.Credentials = new NetworkCredential("aryanair1123@gmail.com", "ursamajor..");


                smtp.EnableSsl = true;


                try
                {
                    smtp.Send(msg);

                    Label1.Text = "Email sent";

                }
                catch (Exception ex)
                {

                    Label1.Text = "Email not sent";

                }
            }
            else 
            {
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('"+solu[0]+"');", true);      
            }

            Fname.Text = "";
            Lname.Text ="";
            sex.Text ="";
            DOB.Text = "";
            Age.Text = "";
            ddl_country.SelectedIndex = 0;
            ddl_state.SelectedIndex = 0;
            Address.Text="";
            Mobile.Text="";
            Email.Text="";
           
            Password.Text = "";
        }

        protected void ddl_country_SelectedIndexChanged(object sender, EventArgs e)
        {
            int cntryid=Convert.ToInt32(ddl_country.SelectedItem.Value);
            var type = obj.tbl_state.Where(x => x.country_id == cntryid).ToList();
            ddl_state.DataSource = type;
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
        }

      
    }
}