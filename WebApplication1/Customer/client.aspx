<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Customer.Master" AutoEventWireup="true" CodeBehind="client.aspx.cs" Inherits="WebApplication1.client" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style3
        {
            width: 161px;
        }
        .style5
        {
            width: 161px;
            height: 26px;
        }
        .style6
        {
            height: 26px;
        }
        .style8
        {
            width: 161px;
            height: 25px;
        }
        .style9
        {
            height: 25px;
        }
        .style11
        {
            width: 161px;
            height: 39px;
        }
        .style12
        {
            height: 39px;
        }
        .style14
        {
            width: 161px;
            height: 38px;
        }
        .style15
        {
            height: 38px;
        }
        .style20
        {
            width: 161px;
            height: 36px;
        }
        .style21
        {
            height: 36px;
        }
        .style23
        {
            width: 161px;
            height: 33px;
        }
        .style24
        {
            height: 33px;
        }
        .style25
        {
            width: 118px;
        }
        .style26
        {
            width: 118px;
            height: 26px;
        }
        .style27
        {
            width: 118px;
            height: 33px;
        }
        .style28
        {
            width: 118px;
            height: 25px;
        }
        .style29
        {
            width: 118px;
            height: 38px;
        }
        .style30
        {
            width: 118px;
            height: 39px;
        }
        .style32
        {
            width: 118px;
            height: 36px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1">
        <tr>
            <td class="style25">
                &nbsp;</td>
            <td align="center" class="style3" style="font-size: medium; color: #0000FF">
                CLIENT</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style26">
            </td>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
        </tr>
          <tr>
            <td class="style26">
            </td>
            <td class="style5" style="color: #000000">
                Project Name</td>
            <td class="style6">
                <asp:TextBox ID="txt_prjname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                    ControlToValidate="txt_prjname" ErrorMessage="please enter description" 
                    ForeColor="Red" ValidationGroup="gp"></asp:RequiredFieldValidator>
              </td>
        </tr>
        <tr>
            <td class="style26">
            </td>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style26">
                <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#0066FF" 
                    onclick="LinkButton1_Click">HOME</asp:LinkButton>
            </td>
            <td class="style5" style="color: #000000">
                Email</td>
            <td class="style6">
                <asp:TextBox ID="txt_email" runat="server" ValidationGroup="gp"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ErrorMessage="please enter email" ForeColor="Red" ValidationGroup="gp" 
                    ControlToValidate="txt_email" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
                runat="server" ControlToValidate="txt_email" Display="Dynamic" 
                ErrorMessage="Invalid Email" ForeColor="Red" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                ValidationGroup="gp"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style27">
            </td>
            <td class="style23" style="color: #000000">
                &nbsp;</td>
            <td class="style24">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style28">
                <asp:LinkButton ID="LinkButton2" runat="server" ForeColor="#0066FF" 
                    onclick="LinkButton2_Click">BACK</asp:LinkButton>
            </td>
            <td class="style8" style="color: #000000">
                Description</td>
            <td class="style9">
                <asp:TextBox ID="txt_desc" runat="server" TextMode="MultiLine" 
                    ValidationGroup="gp"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txt_desc" ErrorMessage="please enter description" 
                    ForeColor="Red" ValidationGroup="gp"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style26">
            </td>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style25">
                &nbsp;</td>
            <td class="style3" style="color: #000000">
                Type</td>
            <td>
                <asp:RadioButtonList ID="txt_type" runat="server" ValidationGroup="gp" 
                    RepeatDirection="Horizontal">
                    <asp:ListItem Value="website"></asp:ListItem>
                    <asp:ListItem Value="window"></asp:ListItem>
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txt_type" ErrorMessage="please enter type" ForeColor="Red" 
                    ValidationGroup="gp"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style26">
            </td>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style29">
            </td>
            <td class="style14" style="color: #000000">
                Front end</td>
            <td class="style15">
                <asp:DropDownList ID="txt_front" runat="server" ValidationGroup="gp">
                    <asp:ListItem Value=".net"></asp:ListItem>
                    <asp:ListItem Value="java"></asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txt_front" ErrorMessage="please enter frontend" 
                    ForeColor="Red" ValidationGroup="gp"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style26">
            </td>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style30">
            </td>
            <td class="style11" style="color: #000000">
                Back end</td>
            <td class="style12">
                <asp:DropDownList ID="txt_back" runat="server" ValidationGroup="gp">
                    <asp:ListItem Value="sql"></asp:ListItem>
                    <asp:ListItem Value="orcle"></asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txt_back" ErrorMessage="please enter backend" ForeColor="Red" 
                    ValidationGroup="gp"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style26">
            </td>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
        </tr>
        <tr>
            <td class="style32">
            </td>
            <td class="style20" style="color: #000000">
                Expected Completion</td>
            <td class="style21">
                <asp:TextBox ID="txt_date" runat="server" ValidationGroup="gp"></asp:TextBox>
                <ajaxToolkit:CalendarExtender ID="ce_txt_From" runat="server" TargetControlID="txt_date" Format="dd/MM/yyyy"></ajaxToolkit:CalendarExtender>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="txt_date" ErrorMessage="please enter date" ForeColor="Red" 
                    ValidationGroup="gp"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style26">
            </td>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style25">
                &nbsp;</td>
            <td class="style3" style="color: #000000">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style26">
            </td>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style25">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Submit" ValidationGroup="gp" 
                    onclick="Button1_Click" style="height: 26px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        </tr>
    </table>
</asp:Content>
