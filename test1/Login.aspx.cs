using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace test1
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ScriptManager.ScriptResourceMapping.AddDefinition("jquery", new ScriptResourceDefinition
            {
                Path = "~/scripts/jquery-1.7.2.min.js",

            });

        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {

        }



        protected void Login1_Authenticate1(object sender, AuthenticateEventArgs e)
        {

        }


        protected void LoginButton_Click(object sender, EventArgs e)
        {
            LogErrorLabel.Text = "";
            try
            {
                //доработать
                if ((Login1.UserName == "")||(Login1.Password == ""))
                {
                    LogErrorLabel.Text = "Неполные данные для авторизации";
                }
                else
                {
                    if (Login1.UserName == "adm")
                    {
                        if (Login1.Password == "123")
                        {
                            Response.Redirect("/Admin.aspx");
                        }
                        else
                        {
                            LogErrorLabel.Text = "Ошибка авторизации";
                        }
                    }
                    else
                    {
                        LogErrorLabel.Text = "Ошибка авторизации";
                    }
                }
            }
            catch (SystemException)
            {
                LogErrorLabel.Text = "Упс";
            }
        }

    }
}