using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class OrderForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            String[] sizes = { "small", "medium", "large" };
            ddlSize.DataSource = sizes;
            ddlSize.DataBind();

            MaryPizzaEntities ctx = new MaryPizzaEntities();
            foreach (Topping t in ctx.Toppings.ToList())
            {
                cblToppings.Items.Add(t.name);
            }

            cblToppings.DataBind();
        }
    }
}