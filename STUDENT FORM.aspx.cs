using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace studentform
{
    public partial class studentform : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (RadioButton1.Checked)
            {
                if (CheckBox1.Checked)
                    Label2.Text = "you have checked " + CheckBox1.Text +"<br> ";
                if (CheckBox2.Checked)
                    Label2.Text = Label2.Text+ " you have checked " + CheckBox2.Text + "<br> ";
                if (CheckBox3.Checked)
                    Label2.Text = Label2.Text + " you have checked " + CheckBox3.Text + "<br> ";
            }
            else
            {
                if (CheckBox4.Checked)
                    Label2.Text = Label2.Text + " you have checked " + CheckBox4.Text + "<br> ";
                if (CheckBox5.Checked)
                    Label2.Text = Label2.Text + " you have checked " + CheckBox5.Text + "<br> ";
                if (CheckBox6.Checked)
                    Label2.Text = Label2.Text + " you have checked " + CheckBox6.Text + "<br> ";
            }
            Label1.Text = "Registered Successfully";
        }
    }
}