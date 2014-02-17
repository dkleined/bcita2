using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Members_Toppings : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        MaryPizzaEntities ctx = new MaryPizzaEntities();
       

    }

    protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            string item = e.Row.Cells[0].Text;
            foreach (Button button in e.Row.Cells[2].Controls.OfType<Button>())
            {
                if (button.CommandName == "Delete")
                {
                    button.Attributes["onclick"] = "if(!confirm('Do you want to delete " + item + "?')){ return false; };";
                }
            }
        }
    }
    protected void gvToppings_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        Topping topping = new Topping();
        topping.name = lblName.Text;
        topping.active = "yes";
        MaryPizzaEntities ctx = new MaryPizzaEntities();
        ctx.Toppings.Add(topping);
        ctx.SaveChanges();
        Response.Redirect(Request.RawUrl);
    }
}