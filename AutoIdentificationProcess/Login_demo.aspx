<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login_demo.aspx.cs" Inherits="AutoIdentificationProcess.Login_demo" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<article>
        <h1>Login Form</h1>
        
        <form id="form1" runat="server">  
            <div >  
                <table style="width:100%;">  
                    
                    <tr>  
                        <td class="style2"> </td> 
                        <td>
                            &nbsp;</td>  
                        <td>
                            &nbsp;</td>  
                    </tr>  
                    <tr>  
                        <td class="style2" id="Lable1" style="color: #000000" > Username:</td>  
                        <td> <asp:TextBox ID="TextUserName" name="TextBox1" runat="server" ForeColor="Black"></asp:TextBox> </td>  
                        <td> <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextUserName" ErrorMessage="Please Enter Your Username" ForeColor="Red"></asp:RequiredFieldValidator>  </td>  
                    </tr>  
                    <tr>  
                        <td class="style2" id="Lable2" style="color: #000000">password:</td>  
                        <td> <asp:TextBox ID="TextPassword" runat="server" ForeColor="Black" TextMode="Password"></asp:TextBox> </td>  
                        <td>  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextPassword" ErrorMessage="Please Enter Your word" ForeColor="Red"></asp:RequiredFieldValidator>  </td>  
                    </tr>  
                    <tr>  
                        <td class="style2"> </td>  
                        <td>  </td>  
                        <td>  </td>  
                    </tr>  
                    <tr>  
                        <td> <asp:Button ID="Button2" runat="server" Text="Reset" OnClick="Reset_Click" BackColor="#FF9933" ForeColor="Black"/>  </td>  
                        <td> <asp:Button ID="Button1" runat="server" Text="Log In" OnClick="Button1_Click" BackColor="#FF9933" ForeColor="Black"/>  </td>  
                        <td> <asp:Label ID="Label3" runat="server" ForeColor="#0033CC"></asp:Label> </td>  
                    </tr>  
                </table>  
            </div> 
            
        </form>  
      <footer>
        <ul class="nospace inline pushright">
          <li><a class="btn" href="RegistrationFormCopy.aspx">New User</a></li>
           </ul>
      </footer>
    </article>
    </asp:Content>