<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AutoDefaults.aspx.cs" Inherits="AutoIdentificationProcess.AutoDefaults" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Auto Defaults</h1>
    <form runat="server">
      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  AutoGenerateEditButton="True" DataSourceID="SqlDataSource1">
          <Columns>
              <asp:CommandField ShowSelectButton="True" />
              <asp:BoundField DataField="Defaulter_id" HeaderText="Defaulter_id" SortExpression="Defaulter_id" />
              <asp:BoundField DataField="Default_Status" HeaderText="Default_Status" SortExpression="Default_Status" />
              <asp:BoundField DataField="Borrower_Name" HeaderText="Borrower_Name" SortExpression="Borrower_Name" />
              <asp:BoundField DataField="Borrower_Rating" HeaderText="Borrower_Rating" SortExpression="Borrower_Rating" />
              <asp:BoundField DataField="Accrual_Status" HeaderText="Accrual_Status" SortExpression="Accrual_Status" />
              <asp:BoundField DataField="Bank_Number" HeaderText="Bank_Number" SortExpression="Bank_Number" />
              <asp:BoundField DataField="Account_Number" HeaderText="Account_Number" SortExpression="Account_Number" />
              <asp:BoundField DataField="Days_Past_Due" HeaderText="Days_Past_Due" SortExpression="Days_Past_Due" />
              <asp:BoundField DataField="Comments" HeaderText="Comments" SortExpression="Comments" />
          </Columns>
        <RowStyle ForeColor="Black" />
    </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=DESKTOP-GCBIVSA;Initial Catalog=AIP;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="
select * from dbo.defaulters where Borrower_Rating &gt;=8 and Accrual_Status in (2,3,4,5) and Default_Status like '%auto%' " UpdateCommand="update defaulters set Default_Status=@Default_Status where Defaulter_id=@Defaulter_id"></asp:SqlDataSource>
        <asp:Button id="LogoutButton" href="Login_demo.aspx" runat="server" Text="Logout" OnClick="Logout_Click" align="Right" BackColor="#FF9933" ForeColor="Black"/>
    </form>
</asp:Content>
