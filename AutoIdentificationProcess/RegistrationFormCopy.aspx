<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="RegistrationFormCopy.aspx.cs" Inherits="AutoIdentificationProcess.RegistrationFormCopy" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <article>
        <h1>Registration Form</h1>
        
         <form id="form1" runat="server">

        <div style="font-size: larger; font-family: 'Times New Roman', Times, serif; font-weight: bold; font-style: normal; font-variant: small-caps; text-transform: capitalize;"> 
            
        <div style ="width:100%;height:100%; alignment: center">
            <table style="width: 100%; height: 236px;">
            <tr><td class="auto-style9"></td>
                <td class="auto-style10"></td>
                <td class="auto-style11"></td>
            </tr>
                <tr>
                    <td class="auto-style1"><asp:Label ID="Label4" runat="server" Text="Role" ForeColor="Black"></asp:Label></td>
                    <td class="auto-style6">
                        <asp:DropDownList ID="DropDownListRole" runat="server" ForeColor="Black">
                            <asp:ListItem>Admin</asp:ListItem>
                            <asp:ListItem>User</asp:ListItem>
                            </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9"><asp:Label ID="Label1" runat="server" Text="First Name" ForeColor="Black"></asp:Label></td>
                    <td class="auto-style10"><asp:TextBox ID="TextFirstName" runat="server" ForeColor="Black" ></asp:TextBox></td>
                    <td class="auto-style11">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextFirstName" ErrorMessage="ENTER FIRST NAME">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="ENTER VALID NAME" ValidationExpression="^[a-zA-Z'.\s]{0,20}" ControlToValidate="TextFirstName" ForeColor="Red"></asp:RegularExpressionValidator>
                    </td>
                </tr>

                <tr>
                    <td class="auto-style1"><asp:Label ID="Label2" runat="server" Text="Last Name" ForeColor="Black"></asp:Label></td>
                    <td class="auto-style6"><asp:TextBox ID="TextLastName" runat="server" ForeColor="Black"></asp:TextBox></td>
                    <td class="auto-style11"><asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TextLastName" ErrorMessage="ENTER VALID LAST NAME" ValidationExpression="^[a-zA-Z'.\s]{0,20}" ForeColor="Red"></asp:RegularExpressionValidator></td>
                </tr>

                <tr>
                    <td class="auto-style1"><asp:Label ID="LblAge" runat="server" Text="Age" ForeColor="Black"></asp:Label></td>
                    <td class="auto-style6"><asp:TextBox ID="TextAge" runat="server" ForeColor="Black"></asp:TextBox></td>
                    <td class="auto-style11"><asp:RangeValidator ID="ageValidator" runat="server" ErrorMessage="AGE SHOULD BE GREATER THAN 21" MinimumValue="21" Type="Integer" ControlToValidate="TextAge" MaximumValue="200" ForeColor="Red"></asp:RangeValidator></td>
                </tr>

                <tr>
                    <td class="auto-style2"><asp:Label ID="Label9" runat="server" Text="Gender" ForeColor="Black"></asp:Label></td>
                    <td class="auto-style8">
                        <asp:RadioButtonList ID="RadioButtonGender" runat="server" AutoPostBack="True" ForeColor="Black" Height="10px" Width="207px">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                
                <tr>
                    <td class="auto-style1"><asp:Label ID="Label14" runat="server" Text="Contact" ForeColor="Black"></asp:Label></td>
                    <td class="auto-style6"><asp:TextBox ID="TextContact" runat="server" ForeColor="Black"></asp:TextBox></td>
                    <td><asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextContact" ErrorMessage="ENTER VALID MOBILE NUMBER" SetFocusOnError="True" ValidationExpression="^([0]|\+91)?[789]\d{9}$" ForeColor="Red"></asp:RegularExpressionValidator></td>
                </tr>

                
                <tr>
                    <td class="auto-style1"><asp:Label ID="Label3" runat="server" Text="Email" ForeColor="Black"></asp:Label></td>
                    <td class="auto-style6"><asp:TextBox ID="TextEmail" runat="server" ForeColor="Black"></asp:TextBox></td>
                    <td><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextEmail" ErrorMessage="ENTER VALID EMAIL ID" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator></td>
                </tr>

                <tr>
                    <td class="auto-style1"><asp:Label ID="Label10" runat="server" Text="Address" ForeColor="Black"></asp:Label></td>
                    <td class="auto-style6"><asp:TextBox ID="TextAddress" runat="server" ForeColor="Black"></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextAddress" ErrorMessage="ENTER ADDRESS" ForeColor="Red"></asp:RequiredFieldValidator></td>

                </tr>

                <tr>
                    <td class="auto-style1"><asp:Label ID="Label5" runat="server" Text="City" ForeColor="Black"></asp:Label></td>
                    <td class="auto-style6">
                        <asp:DropDownList ID="DropDownListCity" runat="server" ForeColor="Black">
                            <asp:ListItem>MUMBAI</asp:ListItem>
                            <asp:ListItem>PUNE</asp:ListItem>
                            <asp:ListItem>DELHI</asp:ListItem>
                            <asp:ListItem>HYDERABAD</asp:ListItem>
                            <asp:ListItem>BANGALORE</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>

                <tr>

                    <td class="auto-style1"><asp:Label ID="Label6" runat="server" Text="Zip Code" ForeColor="Black"></asp:Label></td>
                    <td class="auto-style6">
                        <asp:DropDownList ID="DropDownListZipCode" runat="server" ForeColor="Black">
                            <asp:ListItem>400004</asp:ListItem>
                            <asp:ListItem>411002</asp:ListItem>
                            <asp:ListItem>110001</asp:ListItem>
                            <asp:ListItem>500001</asp:ListItem>
                            <asp:ListItem>530068</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>

                <tr>
                    <td class="auto-style9"><asp:Label ID="Label7" runat="server" Text="Password" ForeColor="Black"></asp:Label></td>
                    <td class="auto-style10"><asp:TextBox ID="TextPassword" runat="server" TextMode="Password" ForeColor="Black"></asp:TextBox></td>
                    <td class="auto-style11"><asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextPassword" ErrorMessage="enter valid password" ValidationExpression="^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&amp;*-]).{8,}$" ForeColor="Red"></asp:RegularExpressionValidator></td>
                </tr>

                <tr>
                    <td class="auto-style9"><asp:Label ID="Label8" runat="server" Text="Confirm Password" ForeColor="Black"></asp:Label></td>
                    <td class="auto-style10"><asp:TextBox ID="TextConfirmPassword" runat="server" TextMode="Password" ForeColor="Black" Text="password">password</asp:TextBox></td>
                    <td class="auto-style11"><asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextPassword" ControlToValidate="TextConfirmPassword" ErrorMessage="PASSWORD NOT MATCHED" ForeColor="Red"></asp:CompareValidator></td>
                </tr>
            
            <tr>
                <td class="auto-style10"> <asp:Button ID="ResetButton" runat="server" Text="Reset" OnClick="Reset_Click" BackColor="#FF9933" ForeColor="Black"/>  </td>
                <td class="auto-style10"> <asp:Button ID="Button1" runat="server" Text="Register" OnClick="RegisterButton_Click" BackColor="#FF9933" ForeColor="Black"/>  </td>
                <td class="auto-style11"><asp:Label ID="WelcomeMessage" runat="server" ForeColor="Green"></asp:Label></td>
             </tr>   
            </table>
            </div>
        </div>

    </form>
      <footer>
        <ul class="nospace inline pushright">
          <li><a class="btn" href="Login_demo.aspx">Already Registered</a></li>
          
        </ul>
      </footer>
    </article>
</asp:Content>
