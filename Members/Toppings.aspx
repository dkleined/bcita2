<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MainMaster.master" AutoEventWireup="true" CodeFile="Toppings.aspx.cs" Inherits="Members_Toppings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <form id="form1" runat="server">
        <div class="col-xs-12 col-md-5">
            <asp:GridView ID="gvToppings" runat="server" AutoGenerateColumns="False" DataSourceID="Toppings" DataKeyNames="toppingId" OnSelectedIndexChanged="gvToppings_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField ShowEditButton="True" />
                    <asp:BoundField DataField="toppingId" HeaderText="toppingId" ReadOnly="True" SortExpression="toppingId" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="active" HeaderText="active" SortExpression="active" />

                </Columns>
            </asp:GridView>

            <asp:EntityDataSource ID="Toppings" runat="server" ConnectionString="name=MaryPizzaEntities" DefaultContainerName="MaryPizzaEntities" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="Toppings">
            </asp:EntityDataSource>
        </div>
        <div class="col-xs-12 col-md-7">
            <div class="form-group">
                <label for="inputPassword">Topping Name</label>
                <asp:TextBox CssClass="form-control" id="lblName" style="width: 200px" runat="server" />
            </div>
            <asp:Button CssClass="btn btn-primary" id="btnAdd" Runat="server" Text="Add" OnClick="btnAdd_Click"  />
            
        </div>

    </form>
</asp:Content>

