using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AutoIdentificationProcess
{
    public partial class Transactions : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Site1 master = Master as Site1;
            master.Update_Tabs_Visibility(Session["Role"] as string);

            if (!this.IsPostBack)
            {
                BindGrid();
            }
        }
        protected void BindGrid()
        {
            Site1 master = Master as Site1;
            master.Update_Tabs_Visibility(Session["Role"] as string);
            SqlConnection con = new SqlConnection(@"Data Source=.;Initial Catalog=AIP;Trusted_Connection=true;");
            SqlCommand cmd = new SqlCommand("select * from dbo.TransactionsDetails where User_Id = "+Session["UserId"], con);
            con.Open();

            SqlDataAdapter sda = new SqlDataAdapter(cmd);

            SqlDataReader rdr = cmd.ExecuteReader();
            GridView1.DataSource = rdr;
            GridView1.DataBind();

            con.Close();
        }
        protected void OnPaging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            this.BindGrid();
        }
        protected void Logout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("~/Login_demo.aspx");
        }
    }
}