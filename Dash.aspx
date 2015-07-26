<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Dash.aspx.cs" Inherits="Dash" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="lbl_welcome" runat="server" Text="Hello... "></asp:Label>
    <br />
    <asp:Label ID="lbl_test" runat="server" Text="Label"></asp:Label>
    <br />
    <br />
    <br />
    <div id="aboutyou">
        <div class="profilesurround">
            <h3 class="newhead">HEADLINE</h3>
            <asp:TextBox ID="txt_headline" runat="server" Width="100%"></asp:TextBox>
        </div>
    <br />
    <br />
    <br />
        <div class ="profilesurround">
            <h3 class="newhead">UPLOAD PICTURES</h3>
                <table style="width: 100%">
                    <tr>
                        <td style="width: 219px">
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 219px">
                            <asp:Button ID="btn_upload" runat="server" Text="Upload" style="float: left; margin-left: 1px;" Width="90px" OnClick="btn_upload_Click" />
                            <asp:Label ID="lbl_pic" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td>
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/UserProfile.aspx">View Profile</asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 219px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    </table>
            <div style="background-color: #374F66">    
                <asp:Panel ID="Panel1" runat="server" BorderStyle="Dashed" Width="500px">
                </asp:Panel>
                <br />
            </div>


        </div>

    <br />
    <br />
    <br />

        <div class="profilesurround">
            <h3 class="newhead">ABOUT YOU</h3>
            <div id="aboutyoutable" style="color: black">
                <table style="width: 99%">
                    <tr>
                        <td style="width: 127px; text-align: right">Name:</td>
                        <td style="width: 186px">
                            <asp:TextBox ID="txt_name" runat="server" Width="161px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ControlToValidate="txt_name" ErrorMessage="Please enter a name." ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                        <td style="width: 209px; text-align: right">Religion:</td>
                        <td style="width: 186px">
                            <asp:DropDownList ID="list_religions" runat="server">
                                <asp:ListItem>Non-religious</asp:ListItem>
                                <asp:ListItem>Catholic</asp:ListItem>
                                <asp:ListItem>Christian</asp:ListItem>
                                <asp:ListItem>Jewish</asp:ListItem>
                                <asp:ListItem>Wiccan</asp:ListItem>
                                <asp:ListItem>Baptist</asp:ListItem>
                                <asp:ListItem>Lutheran</asp:ListItem>
                                <asp:ListItem>Muslim</asp:ListItem>
                                <asp:ListItem>Hindu</asp:ListItem>
                                <asp:ListItem>Buddist</asp:ListItem>
                                <asp:ListItem>Presbyterian</asp:ListItem>
                                <asp:ListItem>Sikh</asp:ListItem>
                                <asp:ListItem>Other</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 127px; text-align: right">City:</td>
                        <td style="width: 186px">
                            <asp:TextBox ID="txt_city" runat="server" Width="161px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorCity" runat="server" ControlToValidate="txt_city" ErrorMessage="Please enter a city." ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                        <td style="width: 209px; text-align: right">Ethnicity:</td>
                        <td style="width: 186px">
                            <asp:DropDownList ID="list_ethnic" runat="server">
                                <asp:ListItem>Caucasian</asp:ListItem>
                                <asp:ListItem>Black</asp:ListItem>
                                <asp:ListItem>Hispanic</asp:ListItem>
                                <asp:ListItem>Asian</asp:ListItem>
                                <asp:ListItem>Middle-Eastern</asp:ListItem>
                                <asp:ListItem>Indian</asp:ListItem>
                                <asp:ListItem>Native American</asp:ListItem>
                                <asp:ListItem>Mixed</asp:ListItem>
                                <asp:ListItem>Other</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 127px; text-align: right">State:</td>
                        <td style="width: 186px">
                            <asp:DropDownList ID="list_states" runat="server">
	                            <asp:ListItem Value="AL">Alabama</asp:ListItem>
	                            <asp:ListItem Value="AK">Alaska</asp:ListItem>
	                            <asp:ListItem Value="AZ">Arizona</asp:ListItem>
	                            <asp:ListItem Value="AR">Arkansas</asp:ListItem>
	                            <asp:ListItem Value="CA">California</asp:ListItem>
	                            <asp:ListItem Value="CO">Colorado</asp:ListItem>
	                            <asp:ListItem Value="CT">Connecticut</asp:ListItem>
	                            <asp:ListItem Value="DC">District of Columbia</asp:ListItem>
	                            <asp:ListItem Value="DE">Delaware</asp:ListItem>
	                            <asp:ListItem Value="FL">Florida</asp:ListItem>
	                            <asp:ListItem Value="GA">Georgia</asp:ListItem>
	                            <asp:ListItem Value="HI">Hawaii</asp:ListItem>
	                            <asp:ListItem Value="ID">Idaho</asp:ListItem>
	                            <asp:ListItem Value="IL">Illinois</asp:ListItem>
	                            <asp:ListItem Value="IN">Indiana</asp:ListItem>
	                            <asp:ListItem Value="IA">Iowa</asp:ListItem>
	                            <asp:ListItem Value="KS">Kansas</asp:ListItem>
	                            <asp:ListItem Value="KY">Kentucky</asp:ListItem>
	                            <asp:ListItem Value="LA">Louisiana</asp:ListItem>
	                            <asp:ListItem Value="ME">Maine</asp:ListItem>
	                            <asp:ListItem Value="MD">Maryland</asp:ListItem>
	                            <asp:ListItem Value="MA">Massachusetts</asp:ListItem>
	                            <asp:ListItem Value="MI">Michigan</asp:ListItem>
	                            <asp:ListItem Value="MN">Minnesota</asp:ListItem>
	                            <asp:ListItem Value="MS">Mississippi</asp:ListItem>
	                            <asp:ListItem Value="MO">Missouri</asp:ListItem>
	                            <asp:ListItem Value="MT">Montana</asp:ListItem>
	                            <asp:ListItem Value="NE">Nebraska</asp:ListItem>
	                            <asp:ListItem Value="NV">Nevada</asp:ListItem>
	                            <asp:ListItem Value="NH">New Hampshire</asp:ListItem>
	                            <asp:ListItem Value="NJ">New Jersey</asp:ListItem>
	                            <asp:ListItem Value="NM">New Mexico</asp:ListItem>
	                            <asp:ListItem Value="NY">New York</asp:ListItem>
	                            <asp:ListItem Value="NC">North Carolina</asp:ListItem>
	                            <asp:ListItem Value="ND">North Dakota</asp:ListItem>
	                            <asp:ListItem Value="OH">Ohio</asp:ListItem>
	                            <asp:ListItem Value="OK">Oklahoma</asp:ListItem>
	                            <asp:ListItem Value="OR">Oregon</asp:ListItem>
	                            <asp:ListItem Value="PA">Pennsylvania</asp:ListItem>
	                            <asp:ListItem Value="RI">Rhode Island</asp:ListItem>
	                            <asp:ListItem Value="SC">South Carolina</asp:ListItem>
	                            <asp:ListItem Value="SD">South Dakota</asp:ListItem>
	                            <asp:ListItem Value="TN">Tennessee</asp:ListItem>
	                            <asp:ListItem Value="TX">Texas</asp:ListItem>
	                            <asp:ListItem Value="UT">Utah</asp:ListItem>
	                            <asp:ListItem Value="VT">Vermont</asp:ListItem>
	                            <asp:ListItem Value="VA">Virginia</asp:ListItem>
	                            <asp:ListItem Value="WA">Washington</asp:ListItem>
	                            <asp:ListItem Value="WV">West Virginia</asp:ListItem>
	                            <asp:ListItem Value="WI">Wisconsin</asp:ListItem>
	                            <asp:ListItem Value="WY">Wyoming</asp:ListItem>
                            </asp:DropDownList>
                            <br />
                            <br />
                        </td>
                        <td style="width: 209px; text-align: right">Smoke:</td>
                        <td style="width: 186px">
                            <asp:DropDownList ID="list_smoker" runat="server">
                                <asp:ListItem>No</asp:ListItem>
                                <asp:ListItem>Yes</asp:ListItem>
                                <asp:ListItem>Socially</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 127px; text-align: right">Zip:</td>
                        <td style="width: 186px">
                            <asp:TextBox ID="txt_zip" runat="server" Width="161px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorZip" runat="server" ControlToValidate="txt_zip" ErrorMessage="Please enter a zip." ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                        <td style="width: 209px; text-align: right">Drink:</td>
                        <td style="width: 186px">
                            <asp:DropDownList ID="list_drinker" runat="server">
                                <asp:ListItem>No</asp:ListItem>
                                <asp:ListItem>Yes</asp:ListItem>
                                <asp:ListItem>Socially</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 127px; text-align: right">Profession:</td>
                        <td style="width: 186px">
                            <asp:TextBox ID="txt_profession" runat="server" Width="161px"></asp:TextBox>
                        </td>
                        <td style="width: 209px; text-align: right">Favorite Food:</td>
                        <td style="width: 186px">
                            <br />
                            <asp:TextBox ID="txt_favorite" runat="server" Width="161px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorFavorite" runat="server" ControlToValidate="txt_favorite" ErrorMessage="Please enter your favorite food." ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                </table>
            
            </div>
        </div>
         <br />
        <div class="profilesurround">
            <h3 class="newhead">DESCRIPTION</h3>
            <table style="width: 99%">
                <tr>
                    <td style="width: 205px"><b>Talk about:</b></td>
                    <td style="width: 255px"><b>Don&#39;t talk about:</b></td>
                </tr>
                <tr>
                    <td style="width: 205px; text-align: left">Your hobbies.</td>
                    <td style="width: 255px; text-align: left">Your full name.</td>
                </tr>
                <tr>
                    <td style="width: 205px; text-align: left">Your taste in food.</td>
                    <td style="width: 255px; text-align: left">Your phone number.</td>
                </tr>
                <tr>
                    <td style="width: 205px; text-align: left; height: 11px;">Your goals.</td>
                    <td style="width: 255px; text-align: left; height: 11px;">Your address.</td>
                </tr>
                <tr>
                    <td style="width: 205px; text-align: right">
            <asp:TextBox ID="txt_description" runat="server" Height="89px" TextMode="MultiLine" Width="55%" style="float: left; margin-left: 0px"></asp:TextBox>
                    </td>
                    <td style="width: 255px; text-align: left; margin-top: -38px">
                        <asp:Label ID="lbl_error" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
            <br />
    <asp:Button ID="txt_update" runat="server" Text="Update" Width="106px" OnClick="txt_update_Click" />
        <asp:Label ID="lbl_updated" runat="server"></asp:Label>
    <br />

    </div>

    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:Button ID="btn_logout0" runat="server" Text="Logout" OnClick="btn_logout_Click" />
</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder3">
            <div id="navigation">
                <ul id="nav">
                    <li><a href="Dash.aspx">Home</a></li>
                    <li><a href="#">Tickets</a>
                        <ul>
                            <li><a href="BuyCry.aspx">Submit</a></li>
                            <li><a href="Tickets.aspx">View</a></li>
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











