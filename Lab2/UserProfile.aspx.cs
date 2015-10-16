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
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void uxSubmit_Click(object sender, EventArgs e)
        {
            if(Page.IsValid)
            {
                multiview.ActiveViewIndex = 1;
                lFname.Text = uxFname.Value;
                lLname.Text = uxLname.Value;
                lAge.Text = uxAge.Value;
                lPhone.Text = uxPhone.Value;
                lEmail.Text = uxEmail.Text;
                lAddress.Text = uxAddress.Text;
                lCity.Text = uxCity.Text;
                lState.Text = uxState.SelectedValue;
                lZip.Text = uxZipCode.Text;

                if (uxImageUpload.HasFile)            
                {                
                    string base64String = null;                
                    byte[] buffer = new byte[uxImageUpload.PostedFile.ContentLength];                
                    uxImageUpload.PostedFile.InputStream.Read(buffer, 0, uxImageUpload.PostedFile.ContentLength);               
                    using (MemoryStream m = new MemoryStream(buffer))               
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