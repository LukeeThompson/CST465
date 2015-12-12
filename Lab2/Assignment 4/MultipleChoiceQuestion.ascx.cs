using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab2.Assignment_4
{
    public partial class MultipleChoiceQuestion : System.Web.UI.UserControl, ITestQuestion
    {
        public string QuestionText { get; set; }
        public string Answer { get { return Answers.SelectedValue; } set { } }

        public string OptionA { get; set; }
        public string OptionB { get; set; }
        public string OptionC { get; set; }
        public string OptionD { get; set; }

        public Label Question { get; set; }
        public RadioButtonList Answers { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Page_Init(object sender, EventArgs e)
        {
            Question = (Label)FindControl("uxQuestion");
            Question.Text = this.QuestionText;
            Answers = (RadioButtonList)FindControl("uxAnswers");

            Answers.Items.Add(new ListItem(this.OptionA));
            Answers.Items.Add(new ListItem(this.OptionB));
            Answers.Items.Add(new ListItem(this.OptionC));
            Answers.Items.Add(new ListItem(this.OptionD));
        }
    }
}