<!-- The following tags are used to register the DevExpress.XtraCharts libraries and controls. -->
<%--my first change--%>
<%@ Page Title="" Language="C#" MasterPageFile="~/Root.master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="charts.WebForm1" %>

<%@ Register Assembly="DevExpress.XtraCharts.v22.2.Web, Version=22.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.XtraCharts.Web" TagPrefix="dx" %>
<%@ Register TagPrefix="dx" Namespace="DevExpress.XtraCharts" Assembly="DevExpress.XtraCharts.v22.2, Version=22.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="LeftPanelContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="RightPanelContent" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="PageToolbar" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="PageContent" runat="server">

    <%--This section contains a Doughnut chart created using DevExpress.XtraCharts libraries. 
        The chart data is obtained from the SQLDataSource control. 
        The chart can be double-clicked to open another page containing a Gantt chart. --%>
    <dx:WebChartControl ID="WebChartControl1" runat="server" CrosshairEnabled="True" DataSourceID="SqlDataSource1" Height="670px" Width="1200px" AppearanceNameSerializable="Northern Lights" IndicatorsPaletteName="Violet" PaletteName="Blue Green" ondblclick="openGanttDiagram()">
        <Legend Visibility="True">
            <Border Color="Transparent"></Border>
        </Legend>
        <SeriesSerializable>
            <dx:Series Name="Series 1" ArgumentDataMember="CountryName" ValueDataMembersSerializable="Revenue" LabelsVisibility="True">
                <ViewSerializable>
                    <dx:DoughnutSeriesView>
                        <Titles>
                            <dx:SeriesTitle Indent="29" Text="Revenue by countries" DXFont="Roboto, 16pt" TextColor="0, 0, 0"></dx:SeriesTitle>
                        </Titles>
                    </dx:DoughnutSeriesView>
                </ViewSerializable>
                <LabelSerializable>
                    <dx:DoughnutSeriesLabel DXFont="Tahoma, 16pt"></dx:DoughnutSeriesLabel>
                </LabelSerializable>
            </dx:Series>

        </SeriesSerializable>
    </dx:WebChartControl>
    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:NorthwindConnectionString %>' SelectCommand="SELECT * FROM [Countries]"></asp:SqlDataSource>
</asp:Content>


<asp:Content ID="PageHeaderContent" ContentPlaceHolderID="HeaderContent" runat="server">
    <%--This script defines a JavaScript function called 'openGanttDiagram' 
        that is called when the Doughnut chart is double-clicked. 
        The function redirects the user to a new web page named 'WebForm3.aspx' where another chart (Gantt diagram) is located.--%>
    <script type="text/javascript">
        function openGanttDiagram() {
            location.href = "WebForm3.aspx";
        }
    </script>
</asp:Content>


