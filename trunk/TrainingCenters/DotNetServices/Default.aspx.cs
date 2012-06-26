using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TCProject;
public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Institutes inst = new Institutes();
        string st = inst.HelloWorld();
        lblResp.Text = st;

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        Calculator.DotNetCalculator dnc = new Calculator.DotNetCalculator();
        int sum = dnc.Add(Convert.ToInt32(txtAdd.Text), Convert.ToInt32(txtAdd2.Text));
        lblReponse.Text = sum.ToString();
    }
}