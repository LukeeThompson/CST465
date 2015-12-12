using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab2.Assignment_4
{
    public partial class EssayQuestion : System.Web.UI.UserControl , ITestQuestion
    {
        [PersistenceMode(PersistenceMode.InnerProperty)]
        public string QuestionText { get; set; }
        public string Answer { get { return AnswerText.Text; } set { Answer = value;} }
        public Label Question;

        protected void Page_Load(object sender, EventArgs e)
        {
            Question = (Label)FindControl("uxQuestion");
            Question.Text = this.QuestionText;
        }
    }
}