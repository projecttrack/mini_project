<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Customer.Master" AutoEventWireup="true" CodeBehind="Client_Profile.aspx.cs" Inherits="WebApplication1.Customer.Client_Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
    <br />
    <h2>Welcome&nbsp;&nbsp;<asp:Label ID="Label11" runat="server" ForeColor="#CC0000"></asp:Label></h2>
    <br />
    <asp:DataList ID="dl_profile" runat="server" 
        onitemcommand="dl_profile_ItemCommand" Width="400px">
        <ItemTemplate>
            <table class="style1">
                <tr>
                    <td>
                        Name</td>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Fname") %>'></asp:Label>
                        &nbsp;<asp:Label ID="Label10" runat="server" Text='<%# Eval("Lname") %>'></asp:Label></td>
                </tr>
                 <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        Sex</td>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Sex") %>'></asp:Label>
                    </td>
                </tr>
                 <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        Date Of Birth</td>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("DOB") %>'></asp:Label>
                    </td>
                </tr>
                 <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        Age</td>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("Age") %>'></asp:Label>
                    </td>
                </tr>
                 <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        Country</td>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("country") %>'></asp:Label>
                    </td>
                </tr>
                 <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        State</td>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("state") %>'></asp:Label>
                    </td>
                </tr>
                 <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        Address</td>
                    <td>
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("Address") %>'></asp:Label>
                    </td>
                </tr>
                 <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        Mobile</td>
                    <td>
                        <asp:Label ID="Label8" runat="server" Text='<%# Eval("Mobile") %>'></asp:Label>
                    </td>
                </tr>
                 <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        Email</td>
                    <td>
                        <asp:Label ID="Label9" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                    </td>
                </tr>
                 <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:LinkButton ID="LinkButton1" runat="server" 
                            CommandArgument='<%# Eval("logid") %>'>Edit</asp:LinkButton>
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
    </center>
</asp:Content>
