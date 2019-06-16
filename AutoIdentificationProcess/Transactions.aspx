<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Transactions.aspx.cs" Inherits="AutoIdentificationProcess.Transactions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Transactions</h1>
    <form runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="true" AllowPaging="False" OnPageIndexChanging="OnPaging">
            <RowStyle ForeColor="Black" />
        </asp:GridView>
       <asp:Button href="Login_demo.aspx" id="LogoutButton"  runat="server" Text="Logout" OnClick="Logout_Click" align="Right" BackColor="#FF9933" ForeColor="Black"/>
    </form>
</asp:Content>