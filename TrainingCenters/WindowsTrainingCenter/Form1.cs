using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using TCBusinessLogic.DTO;
using TCBusinessLogic.DAL;

namespace WindowsTrainingCenter
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
#if DEBUG
            label3.Text = "debuggin";

#endif
        }

        private void button1_Click(object sender, EventArgs e)
        {

            InstituteDTO ins = InstituteDAL.ValidateInstitute(textBox1.Text,textBox2.Text);
            if (ins != null)
            {

                label3.Text = "Successful Login.";
            }
            else
            {
                label3.Text = "Login Failed!";
            }

        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }
    }
}
