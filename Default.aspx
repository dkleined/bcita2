<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MainMaster.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <form id="form1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-md-12">
                <div class="thumbnail">
                    <img src="Images/pizza.jpg" alt="..." />
                </div>
            </div>
            <div class="col-xs-12 col-md-12">
                <div class="caption">
                    <asp:Label id="lblContent" runat="server" Text="When Mary founded Mary's Pizzeria in 1945, she had one dream: Pizza made using the highest quality ingredients available and constructed with love. Decades later, we are proud to honour her time tested tradition, and bring you the worlds finest pizza at an affordable price." Font-Bold="True" Font-Size="Large"/>
                    
                </div>
            </div>
        </div>
    </div>
    </form>
</asp:Content>

