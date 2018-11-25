<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Analyst.Master" AutoEventWireup="true" CodeBehind="Chat_analyst.aspx.cs" Inherits="WebApplication1.Analyst.Chat_analyst" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<table class="style1">
    <tr>
        <td align="center" colspan="2">
            <asp:Label ID="lbl_msg" runat="server" Font-Size="20px" ForeColor="#000099"></asp:Label>
        </td>
    </tr>
    <tr>
        <td align="center" colspan="2">
            <asp:DataList ID="dl_thread" runat="server" 
                onitemcommand="dl_thread_ItemCommand">                
                <ItemTemplate>
                    <table class="style1">
                        <tr>
                            <td>
                              
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                              
                            </td>
                            <td align="center">
                                :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("message") %>'></asp:Label>
                            </td>
                            <td align="right">
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td align="right">
            <asp:LinkButton ID="lnkbtn_clr_con" runat="server" 
                onclick="lnkbtn_clr_con_Click">Clear Conversation</asp:LinkButton>
&nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td align="right">
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            Message :</td>
        <td align="center">
            <asp:TextBox ID="txt_msg" runat="server" Height="75px" TextMode="MultiLine" 
                Width="332px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td align="center">
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td align="center">
            <asp:Button ID="btn_send" runat="server" Text="Send" onclick="btn_send_Click" />
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td align="center">
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td align="center">
            &nbsp;</td>
    </tr>
</table>
</asp:Content>
