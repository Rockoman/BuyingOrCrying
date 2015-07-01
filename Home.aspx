<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <img src="~/Images/Main/friends.jpg" runat="server" class="imgLeft" />

<p>
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vehicula purus blandit, commodo metus id, posuere leo. 
    Suspendisse eu justo lacus. Integer sagittis dictum leo. Nullam malesuada egestas arcu, eu faucibus metus luctus non. 
    Nullam pulvinar tellus ac odio congue eleifend. Phasellus egestas egestas lacus, vel sagittis dolor porttitor a. 
    Etiam auctor commodo ligula, sit amet tristique ipsum interdum in. Ut sit amet magna sit amet sapien viverra condimentum quis a purus. 
    Donec tempus imperdiet elit et vestibulum.</p>
<img id="Img1" src="~/Images/Main/pizza.jpg" runat="server" class="imgRight" />

<p>
    In hac habitasse platea dictumst. Ut porttitor, velit tempor tincidunt pellentesque, dolor ex pharetra ex, vel blandit nisi nisl vitae mauris. 
    In maximus luctus rutrum. Nulla facilisi. Phasellus eleifend ante quam, non feugiat orci viverra ac. Aliquam vel euismod erat. Duis non sem varius, 
    tincidunt magna et, dapibus nibh. Nulla sit amet lorem quis tellus semper dapibus. Suspendisse tristique, nunc ac vestibulum pulvinar, nibh nibh viverra nisi, 
    non viverra velit justo sed dui. Pellentesque commodo porta vestibulum. Vestibulum mi diam, tristique vitae est id, eleifend iaculis neque. </p>

<img id="Img2" src="~/Images/Main/friends2.jpg" runat="server" class="imgLeft2" />

<p>
Pellentesque vel velit sodales, lobortis felis eget, feugiat felis. Nulla vestibulum ligula id nisl aliquet pharetra at vel lorem. 
    Nam a turpis a mi hendrerit rutrum quis sed nibh. Integer non magna suscipit, lacinia orci ac, fermentum lectus. Ut et nisi cursus urna imperdiet semper. 
    Nunc condimentum sapien lacus, eu interdum nibh auctor non. Morbi posuere nibh ac libero scelerisque, vel auctor massa consequat. Aliquam sed varius ligula. 
    Etiam nec convallis ipsum, ut dapibus purus.</p>



</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">

    <div id="login" style="height: 127px; text-align: right;">
    <div id ="loginText">

        <table style="width: 100%">
            <tr>
                <td>Username</td>
                <td style="text-align: left">
                    <asp:TextBox ID="userName" runat="server" Width="85px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Password</td>
                <td style="text-align: left">
                    <asp:TextBox ID="password" runat="server" Width="85px" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Registration.aspx">Register</asp:HyperLink>
                </td>
                <td>
                    <asp:Button ID="btn_login" runat="server" Text="Login" style="float:left;" OnClick="btn_login_Click" Width="88px" />
                </td>
            </tr>
        </table>

        <table style="width: 100%; height: 99px">
            <tr>
                <td style="text-align: left; height: 97px">
                    <asp:Label ID="lbl_confirm" runat="server" style="text-align: left" ForeColor="#FF3300"></asp:Label>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="userName" ErrorMessage="Enter a username." ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="password" ErrorMessage="Please enter a password." ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: left; height: 38px">&nbsp;</td>
            </tr>
        </table>

    </div>
</div>
 
</asp:Content>

