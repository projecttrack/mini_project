<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Registration.Master" AutoEventWireup="true" CodeBehind="newclient.aspx.cs" Inherits="WebApplication1.newclient" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .style1
    {
        width: 100%;
    }
    
    .style2
    {
            width: 105px;
        }
    
</style>
 <style type="text/css">
.VeryPoorStrength
{
background: Red;
color:White;
font-weight:bold;
}
.WeakStrength
{
background: Gray;
color:White;
font-weight:bold;
}
.AverageStrength
{
background: orange;
color:black;
font-weight:bold;
}
.GoodStrength


 

{
background: blue;
color:White;
font-weight:bold;
}
.ExcellentStrength

{
background: Green;
color:White;
font-weight:bold;
}
.BarBorder
{
border-style: solid;
border-width: 1px;
width: 180px;
padding:2px;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="style1">
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td align="center" class="style3" style="font-size: medium; color: #0000FF">
            NEW CLIENT</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <td class="style2" style="color: #0000FF">
            &nbsp;</td>
        <td class="style5" style="color: #000000">
            First name</td>
        <td class="style6">
            <asp:TextBox ID="Fname" runat="server"></asp:TextBox>
             <ajaxtoolkit:filteredtextboxextender ID="Filteredtextboxextender2" 
                    TargetControlID="Fname" FilterType="LowercaseLetters" runat="server"></ajaxtoolkit:filteredtextboxextender>

            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="Fname" ErrorMessage="please enter fname" ForeColor="Red" 
                ValidationGroup="sub"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3" style="color: #000000">
            Last name</td>
        <td>
            <asp:TextBox ID="Lname" runat="server"></asp:TextBox>
            <ajaxtoolkit:filteredtextboxextender ID="Filteredtextboxextender3" 
                    TargetControlID="Lname" FilterType="LowercaseLetters" runat="server"></ajaxtoolkit:filteredtextboxextender>

            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="Lname" ErrorMessage="please enter lname" ForeColor="Red" 
                ValidationGroup="sub"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2" style="color: #0000FF">
            &nbsp;</td>
        <td class="style8" style="color: #000000">
            Sex</td>
        <td class="style9">
            <asp:RadioButtonList ID="sex" runat="server" 
                RepeatDirection="Horizontal">
                <asp:ListItem Value="male">Male</asp:ListItem>
                <asp:ListItem Value="Female"></asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="sex" ErrorMessage="please enter sex" ForeColor="Red" 
                ValidationGroup="sub"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
        </td>
        <td class="style5" style="color: #000000">
            DOB</td>
        <td class="style6">
            <asp:TextBox ID="DOB" runat="server"></asp:TextBox>
             <ajaxToolkit:CalendarExtender ID="ce_txt_From" runat="server" TargetControlID="DOB" Format="dd/MM/yyyy"></ajaxToolkit:CalendarExtender>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="DOB" ErrorMessage="please enter dob" ForeColor="Red" 
                ValidationGroup="sub"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2" style="color: #0000FF">
            &nbsp;</td>
        <td class="style5" style="color: #000000">
            Age</td>
        <td class="style6">
            <asp:TextBox ID="Age" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="Age" ErrorMessage="please enter age" ForeColor="Red" 
                ValidationGroup="sub"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            </td>
        <td class="style5" style="color: #000000">
            Country</td>
        <td class="style6">
            <asp:DropDownList ID="ddl_country" runat="server" 
                onselectedindexchanged="ddl_country_SelectedIndexChanged" 
                AutoPostBack="True">
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                ControlToValidate="ddl_country" ErrorMessage="please enter country" ForeColor="Red" 
                ValidationGroup="sub" InitialValue="0"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2" style="color: #0000FF">
            &nbsp;</td>
        <td class="style3" style="color: #000000">
            State</td>
        <td>
            <asp:DropDownList ID="ddl_state" runat="server">
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                ControlToValidate="ddl_state" ErrorMessage="please enter state" ForeColor="Red" 
                ValidationGroup="sub" InitialValue="0"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
        </td>
        <td class="style5" style="color: #000000">
            Address</td>
        <td class="style6">
            <asp:TextBox ID="Address" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                ControlToValidate="Address" ErrorMessage="please enter address" ForeColor="Red" 
                ValidationGroup="sub"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2" style="color: #0000FF">
            &nbsp;</td>
        <td class="style3" style="color: #000000">
            Mobile</td>
        <td>
            <asp:TextBox ID="Mobile" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                ControlToValidate="Mobile" ErrorMessage="please enter mobile number" 
                ForeColor="Red" ValidationGroup="sub"></asp:RequiredFieldValidator>
        &nbsp;
            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                ControlToValidate="Mobile" Display="Dynamic" ErrorMessage="Invalid Mobile" 
                ForeColor="Red" ValidationExpression="^[7-9][0-9]{9}$" ValidationGroup="reg"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3" style="color: #000000">
            Email</td>
        <td>
            <asp:TextBox ID="Email" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                ControlToValidate="Email" ErrorMessage="please enter email" ForeColor="Red" 
                ValidationGroup="sub"></asp:RequiredFieldValidator>
        &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
                runat="server" ControlToValidate="Email" Display="Dynamic" 
                ErrorMessage="Invalid Email" ForeColor="Red" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                ValidationGroup="sub"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3" style="color: #000000">
            Password</td>
        <td>
            <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
           <asp:Label ID="lblhelp1" runat="server"/>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                ControlToValidate="Password" ErrorMessage="please enter password" 
                ForeColor="Red" ValidationGroup="sub"></asp:RequiredFieldValidator>
                <ajaxToolkit:PasswordStrength ID="PasswordStrength1" TargetControlID="Password" 
                StrengthIndicatorType="BarIndicator" PrefixText="Strength:" 
                HelpStatusLabelID="lblhelp1" PreferredPasswordLength="8"
    MinimumNumericCharacters="0" MinimumSymbolCharacters="0" BarBorderCssClass="BarBorder"
 TextStrengthDescriptionStyles="VeryPoorStrength;WeakStrength;
AverageStrength;GoodStrength;ExcellentStrength" runat="server" ></ajaxToolkit:PasswordStrength>
              
             
        </td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3" style="color: #000000">
            </td>
        <td>
            <br />
        </td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3" style="color: #000000">
            Confirm Password</td>
        <td style="color: #000000">
            <asp:TextBox ID="txt_cpassword" runat="server" TextMode="Password"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="Password" ControlToValidate="txt_cpassword" 
                ErrorMessage="not match" ForeColor="Red" ValidationGroup="sub"></asp:CompareValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                ControlToValidate="txt_cpassword" Display="Dynamic" 
                ErrorMessage="Minimum 8 characters required." ForeColor="Red" 
                ValidationExpression="^[\s\S]{8,}$" ValidationGroup="sub"></asp:RegularExpressionValidator>
         
        </td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td>
            <asp:Button ID="btn_submit" runat="server" onclick="Button1_Click" 
                Text="Submit" Width="110px" ValidationGroup="sub" />
            &nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            <br />
        </td>
    </tr>
</table>
</asp:Content>
