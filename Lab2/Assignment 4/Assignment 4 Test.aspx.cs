using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab2.Assignment_4
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubmitClick(object sender, EventArgs e)
        {
            TestLiteral.Text = EssayQuestion.Answer 
                             + MultipleChoiceQuestion.Answer
                             + TrueFalseQuestion.Answer
                             + ShortTextQuestion.Answer;
        }
    }
}