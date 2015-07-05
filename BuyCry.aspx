<%@ Page Title="" Language="C#" MasterPageFile="~/NewMaster.master" AutoEventWireup="true" CodeFile="BuyCry.aspx.cs" Inherits="BuyCry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="lbl_user" runat="server"></asp:Label>
    <br />

        <table style="width: 100%">
        <tr>
            <td style="width: 130px; text-align: right">Buying or Crying:</td>
            <td style="width: 211px">
                <asp:RadioButtonList ID="rb_boc" runat="server" AutoPostBack="True" style="text-align: left" Width="111px">
                    <asp:ListItem>Buying</asp:ListItem>
                    <asp:ListItem>Crying</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="rb_boc" ErrorMessage="You must either be buying or crying." ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 130px; text-align: right">Where:</td>
            <td style="width: 211px">
                <asp:TextBox ID="txt_where" runat="server" Width="191px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_where" ErrorMessage="You must enter a location." ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 130px; text-align: right">City:</td>
            <td style="width: 211px">
                <asp:TextBox ID="txt_city" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 130px; text-align: right">Type:</td>
            <td style="width: 211px">
                <asp:TextBox ID="txt_type" runat="server" Width="191px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 130px; text-align: right; height: 23px">Site:</td>
            <td style="width: 211px; height: 23px">
                <asp:TextBox ID="txt_site" runat="server" Width="191px"></asp:TextBox>
            </td>
            <td style="height: 23px"></td>
        </tr>
        <tr>
            <td style="width: 130px; text-align: right">Comments:</td>
            <td style="width: 211px">
                <asp:TextBox ID="txt_comments" runat="server" Height="80px" TextMode="MultiLine" Width="191px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 130px; text-align: right">&nbsp;</td>
            <td style="width: 211px">
                <asp:Button ID="btn_buyingcrying" runat="server" Text="Submit" Width="88px" OnClick="btn_buyingcrying_Click" />
                <input id="Reset1" type="reset" value="Reset" style="text-align: right" /></td>
            <td>&nbsp;</td>
        </tr>
        
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

