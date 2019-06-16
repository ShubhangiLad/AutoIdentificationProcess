using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AutoIdentificationProcess
{
    public partial class RegistrationFormCopy : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void Reset_Click(object sender, EventArgs e)
        {
            TextFirstName.Text = "";
            TextLastName.Text = "";
            TextAge.Text = "";
            RadioButtonGender.Text = "";
            TextContact.Text = "";
            TextEmail.Text = "";
            TextAddress.Text = "";
            DropDownListCity.Text = "";
            TextPassword.Text = "";
        }

        protected void RegisterButton_Click(object sender, EventArgs e)
        {
            string role = DropDownListRole.Text;
            string firstName = TextFirstName.Text;
            string lastName = TextLastName.Text;
            int age = int.Parse(TextAge.Text);
            string gender = RadioButtonGender.Text;
            string contact = TextContact.Text;
            string email = TextEmail.Text;
            string address = TextAddress.Text;
            string city = DropDownListCity.Text;
            int zipcode = int.Parse(DropDownListZipCode.Text);
            string password = TextPassword.Text;
            //Console.WriteLine(username + "  " + password);
            SqlConnection con = new SqlConnection(@"Data Source=.;Initial Catalog=AIP;Trusted_Connection=true;");
            string sql = "insert into dbo.[Registration/Login] values('" + role + "'," + getId() + ", '" + password + "', '" + firstName + "', '" + lastName + "', " + age + ", '" + gender + "', '" + email + "', '" + address + "', " + zipcode + ", '" + city + "','" + (firstName + lastName) + "','" + contact + "')";
            SqlCommand cmd = new SqlCommand(sql, con);
            con.Open();
            cmd.ExecuteNonQuery();
            WelcomeMessage.Text = "Registration is successful. Your UserName is " + (firstName + lastName);
        }

        public int getId()
        {
            SqlConnection con = new SqlConnection(@"Data Source=.;Initial Catalog=AIP;Trusted_Connection=true;");
            SqlCommand cmd = new SqlCommand("select max(Id) from dbo.[Registration/Login]", con);
           
            con.Open();
            int output = 0;
            SqlDataReader dataReader = cmd.ExecuteReader();

            while (dataReader.Read())
            {
                output = int.Parse(""+ dataReader.GetValue(0));
            }

            return output + 1;
        }

        protected void RadioButtonGender_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
    }
}