using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab2.Assignment_4
{
    [DefaultProperty("Text")]
    [ToolboxData("<{0}:TrueFalseQuestion runat=server></{0}:TrueFalseQuestion>")]
    public class TrueFalseQuestion : CompositeControl, ITestQuestion
    {
        public string QuestionText { get; set; }
        public string Answer { get { return truefalse.SelectedValue; } set { Answer = value; } }

        [Bindable(true)]
        [Category("Appearance")]
        [DefaultValue("")]
        [Localizable(true)]

        public string Text
        {
            get
            {
                String s = (String)ViewState["Text"];
                return ((s == null) ? String.Empty : s);
            }
            set
            {
                ViewState["Text"] = value;
            }
        }

        //protected override void RenderContents(HtmlTextWriter output)
        //{
        //    output.Write(Text);
        //}


        public Label questiontext;
        public RadioButtonList truefalse;

        protected override void CreateChildControls()
        {
            //label radiobuttonlist, req'd valid
            //Two list items, true false
            base.CreateChildControls();

            questiontext = new Label();
            truefalse = new RadioButtonList();

            questiontext.ID = "uxLabel";
            questiontext.Text = this.QuestionText;
            truefalse.ID = "uxTrueFalse";
            truefalse.Items.Add(new ListItem("True"));
            truefalse.Items.Add(new ListItem("False"));
            Controls.Add(questiontext);
            Controls.Add(truefalse);

            RequiredFieldValidator ReqValidator = new RequiredFieldValidator();
            ReqValidator.ControlToValidate = "uxTrueFalse";
            Controls.Add(ReqValidator);
        }
    }
}
