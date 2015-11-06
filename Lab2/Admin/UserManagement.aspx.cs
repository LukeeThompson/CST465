using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace Lab2.Admin
{
	public partial class UserManagement : System.Web.UI.Page
	{
        protected void Page_Init(object sender, EventArgs e)
        {
            LoadRoles();
        }

		protected void Page_Load(object sender, EventArgs e)
		{
            //if(!User.IsInRole("Admins"))
            //{
            //    Roles.AddUserToRole(User.Identity.Name, "Admin");
            //}
           

            Trace.Write("UserManagement.aspx has loaded successfully.");
		}

        protected void uxAddRole_click(object sender, EventArgs e)
        {
            if(!Roles.RoleExists(uxRoleName.Text))
            {
                Roles.CreateRole(uxRoleName.Text);
                LoadRoles();
            }
            
        }

        protected void LoadRoles()
        {
            uxRoles.Items.Clear();
            foreach(string role in Roles.GetAllRoles())
            {
                uxRoles.Items.Add(new ListItem(role));
            }
        }
	}
}