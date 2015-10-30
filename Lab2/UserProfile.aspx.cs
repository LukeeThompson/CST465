using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab2
{
	public partial class UserProfile : System.Web.UI.Page
	{
        private Code.UserProfile ProfileData;

        protected void Page_Load(object sender, EventArgs e)
		{
            if (Session["ProfileData"] != null)
            {
                ProfileData = (Code.UserProfile)Session["ProfileData"];
                multiview.ActiveViewIndex = 1;
                lFname.Text = ProfileData._fname;
                lLname.Text = ProfileData._lname;
                lAge.Text = ProfileData._age;
                lPhone.Text = ProfileData._phone;
                lEmail.Text = ProfileData._email;
                lAddress.Text = ProfileData._address;
                lCity.Text = ProfileData._city;
                lState.Text = ProfileData._state;
                lZip.Text = ProfileData._zip;
                
                string base64String = null; 
                using (MemoryStream m = new MemoryStream(ProfileData._img))               
                    {                    
                        byte[] imageBytes = m.ToArray();
                        // Convert byte[] to Base64 String                    
                        base64String = Convert.ToBase64String(imageBytes);
                    }                
                    if (!string.IsNullOrEmpty(base64String))               
                    {                    
                         uxImage.ImageUrl = "data:image/jpeg;base64," + base64String;                
                    }           
            }

            }

        protected void uxSubmit_Click(object sender, EventArgs e)
        {
            if(Page.IsValid)
            {
                
                ProfileData = (Code.UserProfile)Session["ProfileData"];

                //multiview.ActiveViewIndex = 1;
                //lFname.Text = uxFname.Value;
                //lLname.Text = uxLname.Value;
                //lAge.Text = uxAge.Value;
                //lPhone.Text = uxPhone.Value;
                //lEmail.Text = uxEmail.Text;
                //lAddress.Text = uxAddress.Text;
                //lCity.Text = uxCity.Text;
                //lState.Text = uxState.SelectedValue;
                //lZip.Text = uxZipCode.Text;

                if (uxImageUpload.HasFile)            
                {                
                    string base64String = null;                
                    byte[] buffer = new byte[uxImageUpload.PostedFile.ContentLength];                
                    uxImageUpload.PostedFile.InputStream.Read(buffer, 0, uxImageUpload.PostedFile.ContentLength);               
                    Session["ProfileData"] = new Code.UserProfile(uxFname.Value, uxLname.Value, uxAge.Value, uxPhone.Value, uxEmail.Text, uxAddress.Text, uxCity.Text, uxState.SelectedValue, uxZipCode.Text, buffer);
                }

                Response.Redirect("UserProfile.aspx");
            }
        }

        protected void validateFile(object sender, ServerValidateEventArgs e)
        {
            if(Path.GetExtension(e.Value) == ".jpg" || Path.GetExtension(e.Value) == ".png" || Path.GetExtension(e.Value) == ".gif")
                e.IsValid = true;
            else
                e.IsValid = false;
        }
	}
}