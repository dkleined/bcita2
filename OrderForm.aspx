<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MainMaster.master" AutoEventWireup="true" CodeFile="OrderForm.aspx.cs" Inherits="OrderForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">

    <form runat="server">
        <div class="row">

            <div class="form-group col-xs-3 ">
                <asp:RequiredFieldValidator ID="rfvFirstName" runat="server"
                    ControlToValidate="tbFirstName"
                    ErrorMessage="First name required."
                    ForeColor="Red">*</asp:RequiredFieldValidator>
                <label for="tbFirstName">First Name</label>
                <asp:TextBox CssClass="form-control" ID="tbFirstName" Style="width: 200px" runat="server" />
            </div>
        </div>
        <div class="row">

            <div class="form-group col-xs-3 ">
                <asp:RequiredFieldValidator ID="rfvLastName" runat="server"
                    ControlToValidate="tbLastName"
                    ErrorMessage="Last name required."
                    ForeColor="Red">*</asp:RequiredFieldValidator>
                <label for="tbLastName">Last Name</label>
                <asp:TextBox CssClass="form-control" ID="tbLastName" Style="width: 200px" runat="server" />
            </div>
        </div>

        <div class="row">

            <div class="form-group col-xs-3 ">
                <asp:RequiredFieldValidator ID="rfvEmail" runat="server"
                    ControlToValidate="tbEmail"
                    ErrorMessage="Email required."
                    ForeColor="Red">*</asp:RequiredFieldValidator>
                <label for="tbEmail">Email</label>
                <asp:TextBox CssClass="form-control" ID="tbEmail" Style="width: 200px" runat="server" TextMode="Email" />
            </div>
        </div>
        <div class="row">
            <div class="form-group col-xs-3">
                <asp:RequiredFieldValidator ID="rfvPhone" runat="server"
                    ControlToValidate="tbPhone"
                    ErrorMessage="Phone number required."
                    ForeColor="Red">*</asp:RequiredFieldValidator>
                <label for="tbPhone">Phone Number</label>
                <asp:TextBox CssClass="form-control" ID="tbPhone" Style="width: 200px" runat="server" TextMode="Phone" />
            </div>
        </div>
        <div class="row">
            <div class="form-group col-xs-3">
                <label for="tbPizzaSize">Pizza Size</label>
                <asp:DropDownList ID="ddlSize" runat="server" />

            </div>
        </div>
        <div class="row">
            <div class="form-group col-xs-3">
                <asp:RequiredFieldValidator ID="rfvNumberPizza" runat="server"
                    ControlToValidate="tbNumberPizza"
                    ErrorMessage="Please specify number of pizzas."
                    ForeColor="Red">*</asp:RequiredFieldValidator>
                <label for="tbNumberPizza">Number of Pizzas</label>
                <asp:TextBox CssClass="form-control" ID="tbNumberPizza" Style="width: 200px" runat="server" TextMode="Number" />
            </div>
        </div>
        <div class="row">
            <div class="form-group col-xs-11">
                <label for="cblToppings">Toppings</label>
                <asp:CheckBoxList ID="cblToppings" runat="server" RepeatColumns="3" />
            </div>
        </div>
        <div class="row">
            <div class="form-group col-xs-11">
                <asp:RadioButtonList ID="rblDelivery" runat="server">
                    <asp:ListItem>Delivery</asp:ListItem>
                    <asp:ListItem>Pickup</asp:ListItem>
                </asp:RadioButtonList>
            </div>
        </div>
        <div class="row">
            <asp:Button CssClass="btn btn-primary" ID="btnSubmit" runat="server" Text="Submit" />
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        </div>
    </form>
</asp:Content>

