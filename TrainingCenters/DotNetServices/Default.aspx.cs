using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Hello.Institutes inst = new Hello.Institutes();
        string st = inst.HelloWorld();
        lblResp.Text = st;

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        Calculator1.DotNetCalculator dnc = new Calculator1.DotNetCalculator();
        int sum = dnc.Add(Convert.ToInt32(txtAdd.Text), Convert.ToInt32(txtAdd2.Text));
        lblReponse.Text = sum.ToString();
    }
    protected void btnSqrt_Click(object sender, EventArgs e)
    {
        WebS.Sqrt sq = new WebS.Sqrt();
        double res = sq.Srrt(Convert.ToDouble(tbNumber.Text));
        lblSqrt.Text = res.ToString();
    }
}