<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MainMaster.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <div class="container">
        <form id="form1" runat="server">
            <div class="form-group">
                <label for="tbUsername">Username</label>
                <asp:TextBox CssClass="form-control" ID="tbUsername" Style="width: 200px" runat="server" />
            </div>
            <div class="form-group">
                <label for="tbPassword">Password</label>
                <asp:TextBox CssClass="form-control" ID="tbPassword" Style="width: 200px" runat="server" TextMode="Password" />
            </div>
            <div class="checkbox">
                <label>
                    <asp:CheckBox  ID="chkRemeber" runat="server" Text="Remember me" />
                </label>
            </div>
            <asp:Button CssClass="btn btn-primary" ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />

        </form>
    </div>
</asp:Content>

