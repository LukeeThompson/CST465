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
    [ToolboxData("<{0}:ShortTextQuestion runat=server></{0}:ShortTextQuestion>")]
    public class ShortTextQuestion : CompositeControl , ITestQuestion
    {
        public string QuestionText { get; set; }
        public string Answer { get { return AnswerText.Text; } set { Answer = value; } }
        public Label Question { get; set; }
        public TextBox AnswerText { get; set; }

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

        protected override void CreateChildControls()
        {
            base.CreateChildControls();

            Question = new Label();
            Question.Text = QuestionText;

            AnswerText = new TextBox();
            AnswerText.ID = "uxAnswerText";
            Controls.Add(Question);
            Controls.Add(new LiteralControl("<br/><br/>"));
            Controls.Add(AnswerText);

            RequiredFieldValidator ReqValidator = new RequiredFieldValidator();
            ReqValidator.ControlToValidate = "uxAnswerText";
            Controls.Add(ReqValidator);
        }
    }
}
