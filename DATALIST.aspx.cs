using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Datalist
{
    public partial class datalist : System.Web.UI.Page
    {
        SqlConnection connect = new SqlConnection(ConfigurationManager.ConnectionStrings["studenttable"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                Bind();
            }
        }
        public void Bind()
        {
            connect.Open();
            SqlCommand cmd = new SqlCommand("select * from StudentTable", connect);
            SqlDataAdapter sd = new SqlDataAdapter(cmd);

            DataSet ds = new DataSet();
            sd.Fill(ds, "StudentTable");
            DataList1.DataSource = ds.Tables[0];
            DataList1.DataBind();
            connect.Close(); //sql server connection closed
        }


    }
}