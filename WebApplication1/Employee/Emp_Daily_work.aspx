<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Employee.Master" AutoEventWireup="true" CodeBehind="Emp_Daily_work.aspx.cs" Inherits="WebApplication1.Employee.Emp_Daily_work" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .style1
    {
        width: 100%;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content_bg">
      <div class="mainbarnew">
     <asp:Panel ID="Panel1" runat="server" Visible="False" Height="337px">
      
<center>
<h2>Employee Submit Work</h2>

<br />

    <asp:Chart ID="Chart1" runat="server">
        <Series>
            <asp:Series Name="Series1" ChartType="Pie" ChartArea="ChartArea1">
            </asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1">
            <AxisX Title="Division Name"></AxisX>
            <AxisY Title="Percentage"></AxisY>
            </asp:ChartArea>
        </ChartAreas>
    </asp:Chart>

</center>
    
      </asp:Panel>
       </div>
      <div class="sidebarnew">
      <center>
     <center><h2>Daily Work
</h2>
    <table class="style1">
        <tr>
            <td>
                Division Name</td>
            <td>
                <asp:DropDownList ID="ddl_divname" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="ddl_divname_SelectedIndexChanged">
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
                Already completed Percent</td>
            <td>
                <asp:Label ID="txt_prevpercent" runat="server"></asp:Label>
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
                Percentage Completed</td>
            <td>
                <asp:TextBox ID="txt_cuepercent" runat="server"></asp:TextBox>
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
                Expecting Duration</td>
            <td>
                <asp:TextBox ID="txt_expduration" runat="server" TextMode="Number"></asp:TextBox>
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
                <asp:Button ID="btn_submit" runat="server" Text="Submit" Width="104px" 
                    onclick="btn_submit_Click" />
            </td>
        </tr>
    </table>
<br />
</center>
</center>

      </div>
      </div>
      <div class="clr"></div>



    
</asp:Content>

