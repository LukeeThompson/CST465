using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab2
{
    public partial class Default : System.Web.UI.Page
    {
        protected override void OnInit(EventArgs e)
        {
            uxEventOutput.Text += "OnInit <br>";
            base.OnInit(e);
        }

        protected override void OnLoadComplete(EventArgs e)
        {
            uxEventOutput.Text += "OnLoad <br>";
            base.OnLoadComplete(e);
        }

        protected override void OnPreRenderComplete(EventArgs e)
        {
            uxEventOutput.Text += "OnPreRender <br>";
            base.OnPreRenderComplete(e);
        }
 
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
                uxIsPostBack.Text = "Yes";
            else
                uxIsPostBack.Text = "No";
        }

        protected void uxSubmit_Click(object sender, EventArgs e)
        {
            uxEventOutput.Text += "Submitted! <br>";
            uxFormOutput.Text = "";
            uxFormOutput.Text += "Name: " + uxName.Text + "<br>";
            uxFormOutput.Text += "Type: " + uxUserType.SelectedItem + "<br>";
            uxFormOutput.Text += "Hobby: " + uxHobby.Text + "<br>";
            uxFormOutput.Text += "Band: " + uxBand.Text + "<br>";
            uxFormOutput.Text += "Bio: " + uxBiography.Text + "<br>";
            uxFormOutput.Text += "Course Prefix: " + uxCoursePrefix.Text + "<br>";
            uxFormOutput.Text += "Course Number: " + uxCourseNumber.Text + "<br>";
            uxFormOutput.Text += "Course Description: " + uxCourseDescription.Text + "<br>";
        }
    }
}