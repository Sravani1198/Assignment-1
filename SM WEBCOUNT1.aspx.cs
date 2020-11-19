using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StateManagementDemoWeb
{
    public partial class WebCount : System.Web.UI.Page
    {
        int count = 0; //global declaration
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            count = int.Parse(hfcount1.Value); //hidden fiels is by default string returning specimen.
            count += 1;
            Response.Write("Number of clicks on the button are: " + count);
            hfcount1.Value = count.ToString();
        }

        
    }
}