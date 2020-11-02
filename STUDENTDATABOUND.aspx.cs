using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;



namespace DataBound
{
   
    public partial class Student1 : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString1"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                Bind();
            }

        }
        public void Bind()
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("select * from StudentTable", conn);
            SqlDataAdapter sd = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sd.Fill(ds,"StudentTable");
            RP1.DataSource = ds.Tables[0];
            RP1.DataBind();
            conn.Close();
        }
    }
}