using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace RapidApplicationDesign
{
    public partial class registrationform : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            label1.Text = "Successfully Registered";
            SqlConnection connect = new SqlConnection(ConfigurationManager.ConnectionStrings["registrationtable"].ConnectionString);
            connect.Open();
            var insertQuery = "insert into registrationtable(Username,EmailAddress,Password,ConfirmPassword,Gender,City) values(@Username,@EmailAddress,@Password,@ConfirmPassword,@Gender,@City)";
            SqlCommand cmd = new SqlCommand(insertQuery, connect);
            string Gender;
            if (RadioButton1.Checked)
                Gender = "male";
            else
                Gender = "female";
            cmd.Parameters.AddWithValue("@Username", TextBox1.Text);
            cmd.Parameters.AddWithValue("@EmailAddress", TextBox2.Text);
            cmd.Parameters.AddWithValue("@Password", TextBox4.Text);
            cmd.Parameters.AddWithValue("@ConfirmPassword", TextBox3.Text);
            cmd.Parameters.AddWithValue("@Gender", Gender);
            cmd.Parameters.AddWithValue("@City", DropDownList1.SelectedItem.ToString());
            cmd.ExecuteNonQuery();
            connect.Close();
            Response.Redirect("Admin.aspx");
        }
    }
}