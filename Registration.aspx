<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table style="width: 100%">
        <tr>
            <td style="height: 30px; text-align: right; width: 227px">User Name</td>
            <td style="height: 30px; width: 219px">
                <asp:TextBox ID="txt_userName" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td style="height: 30px; width: 249px">
                <asp:Label ID="lbl_taken" runat="server" ForeColor="Red"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_userName" ErrorMessage="User Name is required." ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 227px; height: 30px;">E-Mail</td>
            <td style="width: 219px; height: 30px;">
                <asp:TextBox ID="txt_eMail" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td style="width: 249px; height: 30px;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_eMail" ErrorMessage="E-Mail address is required." ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_eMail" ErrorMessage="You must enter a valid email address." ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Font-Size="Small"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 227px; height: 30px">Password</td>
            <td style="width: 219px; height: 30px">
                <asp:TextBox ID="txt_password" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
            </td>
            <td style="height: 30px; width: 249px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_age" ErrorMessage="Please enter a valid age." ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 227px; height: 29px;">Confirm Password</td>
            <td style="width: 219px; height: 29px;">
                <asp:TextBox ID="txt_confirmPassword" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
            </td>
            <td style="width: 249px; height: 29px;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_password" ErrorMessage="Password is required." ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 227px; height: 31px;">Age</td>
            <td style="width: 219px; height: 31px;">
                <asp:TextBox ID="txt_age" runat="server" TextMode="Number"></asp:TextBox>
            </td>
            <td style="width: 249px; height: 31px;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txt_confirmPassword" ErrorMessage="Confirm password is required." ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Both passwords must match." ForeColor="Red" ControlToCompare="txt_password" ControlToValidate="txt_confirmPassword"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 227px; height: 42px">I agree to the Terms of Service</td>
            <td style="width: 219px; height: 42px">
                <asp:CheckBox ID="cb_tos" runat="server" />
                <asp:Label ID="lbl_tos" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td style="height: 42px; width: 249px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: right; width: 227px">&nbsp;</td>
            <td style="width: 219px">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" Width="100px" />
                <input id="Reset1" style="width: 57px" type="reset" value="Reset" /></td>
            <td style="width: 249px">&nbsp;</td>
        </tr>
    </table>
    <div>
        
        <asp:Label ID="lbl_error" runat="server" ForeColor="Red"></asp:Label>
        
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

