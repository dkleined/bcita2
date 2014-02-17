using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class MasterPages_MainMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (HttpContext.Current.User.Identity.Name != "")
        {
            liLogin.Visible = false;
            liLogout.Visible = true;
            MaryPizzaEntities ctx = new MaryPizzaEntities();
            var list = new List<string>();
            list = ctx.aspnet_UsersInRoles_GetRolesForUser("/MaryPizza", HttpContext.Current.User.Identity.Name).ToList();
            if (list.Contains("sales"))
            {
                liOrders.Visible = true;
            }
            else
            {
                liOrders.Visible = false;

            }
            if (list.Contains("admin"))
            {
                liToppings.Visible = true;
            }
            else
            {
                liToppings.Visible = false;
            }
        }
        else
        {
            liLogout.Visible = false;
            liLogin.Visible = true;
            liOrders.Visible = false;
            liToppings.Visible = false;
        }
    }

    protected override void OnLoad(EventArgs e)
    {
        base.OnLoad(e);
        Page.Header.DataBind();
    }
}
