using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AutoIdentificationProcess
{
    public partial class ReDefaults : System.Web.UI.Page
    {
        //select* from dbo.defaulters where Default_Status like '%ReDefault%'
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                BindGrid();
            }
        }
        protected void BindGrid()
        {

            SqlConnection con = new SqlConnection(@"Data Source=.;Initial Catalog=AIP;Trusted_Connection=true;");
            SqlCommand cmd = new SqlCommand("select* from dbo.defaulters where Default_Status like '%ReDefault%'", con);
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