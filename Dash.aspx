<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Dash.aspx.cs" Inherits="Dash" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="lbl_welcome" runat="server" Text="Hello... "></asp:Label>
    <br />
    <br />

    <asp:Button ID="btn_logout" runat="server" Text="Logout" OnClick="btn_logout_Click" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder3">
            <div id="navigation">
                <ul id="nav">
                    <li><a href="Dash.aspx">Home</a></li>
                    <li><a href="#">Tickets</a>
                        <ul>
                            <li><a href="#">Buying</a></li>
                            <li><a href="#">Crying</a></li>
                        </ul>
                    </li>
                    <li><a href="#">Messages</a></li>
                    <li><a href="#">Reviews</a></li>
                        <ul>
                            <li><a href="#"></a></li>
                        </ul>
                </ul>
            </div>

</asp:Content>











