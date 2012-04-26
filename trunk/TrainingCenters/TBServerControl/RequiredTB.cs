using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web.UI;
using System.ComponentModel;
using System.Web.UI.WebControls;

namespace TBServerControl
{
    [DefaultProperty("Text")]
    [ToolboxData("<{0}:RequiredTB runat=server ></{0}:RequiredTB>")]
    public class RequiredTB : TextBox
    {
        [Bindable(true)]
        [Category("Appearance")]
        [DefaultValue("")]
        [Localizable(true)]
        public string Text
        {
            get
            {
                String s = (String)ViewState["Text"];
                return ((s == null) ? "[" + this.ID + "]" : s);
            }

            set
            {
                ViewState["Text"] = value;
            }
        }
        RequiredFieldValidator rfv;
        protected override void Render(HtmlTextWriter w)
        {
            base.Render(w);
            rfv.RenderControl(w);
        }

        protected override void OnInit(EventArgs e)
        {
            rfv = new RequiredFieldValidator();
            rfv.ErrorMessage = "Required";
            rfv.ControlToValidate = this.ID;
            Controls.Add(rfv);
        }

         

    }
}
