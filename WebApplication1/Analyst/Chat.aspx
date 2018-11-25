<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Analyst.Master" AutoEventWireup="true" CodeBehind="Chat.aspx.cs" Inherits="WebApplication1.Analyst.Chat" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table class="style1">
    <tr>
        <td align="center">
            <asp:Label ID="lbl_msg" runat="server" Font-Size="20px" ForeColor="#000099"></asp:Label>
        </td>
    </tr>
</table>
<asp:DataList ID="dl_chat" runat="server" onitemcommand="dl_chat_ItemCommand">
    <ItemTemplate>
        <table class="style1">
            <tr>
                <td>
                    <asp:Label ID="lbl_name" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                </td>
                <td>
                    <asp:LinkButton ID="lnkbtn_view" runat="server" 
                        CommandArgument='<%# Eval("from_id") %>'>View Thread</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
 
    
   
</asp:Content>
