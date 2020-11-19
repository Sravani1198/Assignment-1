using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace StateManagement_in_MVC
{
    public partial class Form1 : Form
    {
        int count=0; //global declaration
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            //logic to demonstate for count on bitton click
            count += 1;
            MessageBox.Show("number of hit counts are : " + count);
        }
    }
}
