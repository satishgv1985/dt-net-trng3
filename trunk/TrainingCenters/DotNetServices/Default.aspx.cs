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
       // subref.sub s = new subref.sub();
        //string r = s.HelloWorld();
       // lblRes.Text = r.ToString();
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        Calculator1.DotNetCalculator dnc = new Calculator1.DotNetCalculator();
        int sum = dnc.Add(Convert.ToInt32(txtAdd.Text), Convert.ToInt32(txtAdd2.Text));
        lblRes.Text = sum.ToString();
    }
    protected void btnSqrt_Click(object sender, EventArgs e)
    {
        WebS.Sqrt sq = new WebS.Sqrt();
        double res = sq.Srrt(Convert.ToDouble(tbNumber.Text));
        lblSqrt.Text = res.ToString();
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
      //  sub1.sub a=new sub1.sub();
      //  int res = a.sub1(Convert.ToInt32(TextBox1.Text), Convert.ToInt32(TextBox2.Text));
      //  sult.Text = res.ToString();
    }
}