<%@ Page Title="" Language="C#" MasterPageFile="~/NewMaster.master" AutoEventWireup="true" CodeFile="UserProfile.aspx.cs" Inherits="UserProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div id="profileheader">
        <asp:Label ID="lbl_profilehead" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="#E3E3E3"></asp:Label>
    </div>

    <div id="profileinformation">


        <table style="width: 99; color: black;" align="center">
            <tr>
                <td style="height: 23px; width: 99px; text-align: left">City</td>
                <td style="height: 23px; width: 183px">
                    <asp:Label ID="lbl_city" runat="server" ForeColor="#E3E3E3"></asp:Label>
                </td>
                <td style="height: 23px; text-align: left; width: 112px">Ethnicity</td>
                <td style="height: 23px">
                    <asp:Label ID="lbl_ethnic" runat="server" ForeColor="#E3E3E3"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 99px; text-align: left">State</td>
                <td style="width: 183px">
                    <asp:Label ID="lbl_state" runat="server" ForeColor="#E3E3E3"></asp:Label>
                </td>
                <td style="text-align: left; width: 112px">Smoke</td>
                <td>
                    <asp:Label ID="lbl_smoker" runat="server" ForeColor="#E3E3E3"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 99px; text-align: left">Profession</td>
                <td style="width: 183px">
                    <asp:Label ID="lbl_profession" runat="server" ForeColor="#E3E3E3"></asp:Label>
                </td>
                <td style="text-align: left; width: 112px">Drink</td>
                <td>
                    <asp:Label ID="lbl_drinker" runat="server" ForeColor="#E3E3E3"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 99px; text-align: left">Religion</td>
                <td style="width: 183px">
                    <asp:Label ID="lbl_religion" runat="server" ForeColor="#E3E3E3"></asp:Label>
                </td>
                <td style="text-align: left; width: 112px">Favorite Food</td>
                <td>
                    <asp:Label ID="lbl_food" runat="server" ForeColor="#E3E3E3"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 99px; text-align: left; height: 23px;"></td>
                <td style="width: 183px; height: 23px;"></td>
                <td style="text-align: left; width: 112px; height: 23px;"></td>
                <td style="height: 23px"></td>
            </tr>
        </table>
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSourceProfileInformation" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT ProfileInformation.Name, UserData.Age, ProfileInformation.City, ProfileInformation.State, ProfileInformation.Profession, ProfileInformation.Religion, ProfileInformation.Ethnicity, ProfileInformation.Smoke, ProfileInformation.Drink, ProfileInformation.FavoriteFood, ProfileInformation.Heading, ProfileInformation.Description, ProfileInformation.UserName, ProfileInformation.Zip FROM UserData INNER JOIN ProfileInformation ON UserData.UserName = ProfileInformation.UserName"></asp:SqlDataSource>
        <br />
        <br />

    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

