using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab2.Midterm
{
    public partial class Results : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["QuestionList"] == null)
                Session["QuestionList"] = new List<QuestionAnswer>();

            uxQuestionAnswers.DataSource = (List<QuestionAnswer>)Session["QuestionList"];
            uxQuestionAnswers.DataBind();
        }
    }
}