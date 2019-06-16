using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AutoIdentificationProcess
{
    public partial class ManualDefaults : System.Web.UI.Page
    {
        //protected void Page_Load(object sender, EventArgs e)
        //{
        //    if (!this.IsPostBack)
        //    {
        //        BindGrid();
        //    }
        //}
        //protected void BindGrid()
        //{

        //    SqlConnection con = new SqlConnection(@"Data Source=.;Initial Catalog=AIP;Trusted_Connection=true;");
        //    SqlCommand cmd = new SqlCommand("select * from dbo.defaulters where Borrower_Rating between 5 and 8 and Accrual_Status in (1,6,7) and Days_Past_Due >= 90", con);
        //    con.Open();

        //    SqlDataAdapter sda = new SqlDataAdapter(cmd);

        //    SqlDataReader rdr = cmd.ExecuteReader();
        //    GridView1.DataSource = rdr;
        //    GridView1.DataBind();

        //    con.Close();
        //}
        //protected void OnPaging(object sender, GridViewPageEventArgs e)
        //{
        //    GridView1.PageIndex = e.NewPageIndex;
        //    this.BindGrid();
        //}
        protected void Logout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("~/Login_demo.aspx");
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}