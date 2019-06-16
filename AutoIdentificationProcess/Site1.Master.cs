using System;
using System.Collections.Generic;
using System.Diagnostics.Eventing.Reader;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AutoIdentificationProcess
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Update_Tabs_Visibility(Session["Role"] as string);
        }

        public void Update_Tabs_Visibility(string role)
        {
            if (role!= null && role.Equals("Admin"))
            {
                Registration.Visible = false;
                AutoDefaults.Visible = true;
                ReDefaults.Visible = true;
                ManualDefaults.Visible = true;
                Transactions.Visible = false;
                
            }
            else if (role != null && role.Equals("User"))
            {
                Registration.Visible = false;
                AutoDefaults.Visible = false;
                ReDefaults.Visible = false;
                ManualDefaults.Visible = false;
                Transactions.Visible = true;
                
            }
            else
            {
                AutoDefaults.Visible = false;
                ReDefaults.Visible = false;
                ManualDefaults.Visible = false;
                Transactions.Visible = false;
                
            }
        }
        
    }
}