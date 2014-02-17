using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class login : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }


    protected void btnLogin_Click(object sender, EventArgs e)
    {
        if (tbPassword.Text == "P@$$w0rd")
        {
            MaryPizzaEntities ctx = new MaryPizzaEntities();
            aspnet_Users[] users = ctx.aspnet_Users.ToArray();
            var user = from c in ctx.aspnet_Users where c.UserName == tbUsername.Text select c;
            FormsAuthentication.RedirectFromLoginPage(tbUsername.Text, chkRemeber.Checked);
        }
    }
}