<%@ Page Title="" Language="C#" MasterPageFile="~/NewMaster.master" AutoEventWireup="true" CodeFile="UserProfile.aspx.cs" Inherits="UserProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div id="profileheader">
        <asp:Label ID="lbl_profilehead" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="#E3E3E3"></asp:Label>
    </div>
    <br />
    <br />

    <div id="profileinformation">

        

    <br />
    <br />
        <table style="color: black;">
            <tr>
                <td style="height: 23px; width: 99px; text-align: left">City</td>
                <td style="height: 23px; width: 183px">
                    <asp:Label ID="lbl_city" runat="server" ForeColor="#E3E3E3"></asp:Label>
                </td>
                <td style="height: 23px; text-align: left; width: 109px">Zip</td>
                <td style="height: 23px">
                    <asp:Label ID="lbl_zip" runat="server" ForeColor="#E3E3E3"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 99px; text-align: left">State</td>
                <td style="width: 183px">
                    <asp:Label ID="lbl_state" runat="server" ForeColor="#E3E3E3"></asp:Label>
                </td>
                <td style="text-align: left; width: 109px">Smoke</td>
                <td>
                    <asp:Label ID="lbl_smoker" runat="server" ForeColor="#E3E3E3"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 99px; text-align: left">Profession</td>
                <td style="width: 183px">
                    <asp:Label ID="lbl_profession" runat="server" ForeColor="#E3E3E3"></asp:Label>
                </td>
                <td style="text-align: left; width: 109px">Drink</td>
                <td>
                    <asp:Label ID="lbl_drinker" runat="server" ForeColor="#E3E3E3"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 99px; text-align: left; height: 20px;">Religion</td>
                <td style="width: 183px; height: 20px;">
                    <asp:Label ID="lbl_religion" runat="server" ForeColor="#E3E3E3"></asp:Label>
                </td>
                <td style="text-align: left; width: 109px; height: 20px;">Favorite Food</td>
                <td style="height: 20px">
                    <asp:Label ID="lbl_food" runat="server" ForeColor="#E3E3E3"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 99px; text-align: left; height: 25px;">Ethnicity</td>
                <td style="width: 183px; height: 25px;">
                    <asp:Label ID="lbl_ethnic" runat="server" ForeColor="#E3E3E3"></asp:Label>
                </td>
                <td style="text-align: left; width: 109px; height: 25px;">Age</td>
                <td style="border-style: none; border-color: inherit; border-width: medium; height: 25px; ">
                    <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" DataSourceID="SqlDataSourceProfileInformation" ForeColor="#E3E3E3" Height="20px" Width="123px" BorderStyle="None">
                        <Fields >
                                <asp:BoundField DataField="Age" SortExpression="Age" ApplyFormatInEditMode="True" ShowHeader="False" >
                                <ControlStyle BorderStyle="None" />
                                <FooterStyle BorderStyle="None" />
                                <HeaderStyle BorderStyle="None" />
                                <ItemStyle BorderStyle="None" />
                                </asp:BoundField>
                        </Fields>
                    </asp:DetailsView>
                </td>
            </tr>
        </table>

        <br/>
        <div class="aboutyou">
        <asp:Label ID="lbl_aboutyou" runat="server"></asp:Label>
        </div>
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSourceProfileInformation" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT Age FROM UserData"></asp:SqlDataSource>
        <br />
        <br />

    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

