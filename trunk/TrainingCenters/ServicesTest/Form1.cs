using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace ServicesTest
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Calculator.DotNetCalculator dnc = new Calculator.DotNetCalculator();
            int sum=dnc.Add(Convert.ToInt32(textBox1.Text), Convert.ToInt32(textBox2.Text));
            lblAnswer.Text = Convert.ToString(sum);
        }
    }
}
