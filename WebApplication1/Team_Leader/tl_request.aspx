<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Team_leader.Master" AutoEventWireup="true" CodeBehind="tl_request.aspx.cs" Inherits="WebApplication1.Team_Leader.tl_request" %>
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
<br /><h2>Team Leader Request</h2>
<br />

    
                
                <asp:GridView ID="grv_mod_vw" runat="server" 
            AutoGenerateColumns="False" onrowdeleting="grv_mod_vw_RowDeleting" 
            CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="modulename" HeaderText="Module Name" />
                        <asp:BoundField DataField="divname" HeaderText="Division Name" />
                        <asp:BoundField DataField="daysneeded" HeaderText="Duration" />
                        <asp:BoundField DataField="eenddate" HeaderText="End Date" />
                    </Columns>
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
            <h4> <asp:Label ID="lbl_msg" runat="server" ForeColor="Aqua" Visible="False"></asp:Label></h4>
        <br />
        <div class="content_bg">
            <div class="mainbarnew">
                <asp:Panel ID="Panel2" runat="server" Visible="true">
                    <center>
                       <table class="style1">
            
        <tr>
            <td>
                Module Name</td>
            <td>
                <asp:DropDownList ID="ddl_modulename" runat="server">
                </asp:DropDownList>
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
                Days Needed</td>
            <td>
                <asp:TextBox ID="txt_days" runat="server"></asp:TextBox>
                 
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
                End Date</td>
            <td>
                <asp:TextBox ID="txt_enddate" runat="server"></asp:TextBox>
                 <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txt_enddate" Format="dd/MM/yyyy"></ajaxToolkit:CalendarExtender>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
        </tr>
        <tr>
            <td>
                Reason</td>
            <td>
                <asp:TextBox ID="txt_reason" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr><tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="btn_submit" runat="server"  
                    Text="Submit" Width="127px" onclick="btn_submit_Click" />
            </td>
        </tr>
    </table> 
                    </center>
                </asp:Panel>
            </div>
            <div class="sidebarnew">
                <center>
                    <h2>
                        &nbsp;</h2>
                    <br />
                </center>

            </div>
        </div>
        <div class="clr">
        </div>
           
        

</center>
</asp:Content>
