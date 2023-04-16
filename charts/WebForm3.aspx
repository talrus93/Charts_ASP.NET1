<%@ Page Title="" Language="C#" MasterPageFile="~/Root.master" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="charts.WebForm3" %>

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

    <%--This section contains a GanttDiagram created using DevExpress.XtraCharts libraries. 
        The chart data is obtained from the SQLDataSource control.  --%>
    <dx:WebChartControl ID="WebChartControl1" runat="server" CrosshairEnabled="True" DataSourceID="SqlDataSource1" Height="670px" Width="1200px" AppearanceNameSerializable="Light">
        <DiagramSerializable>
            <dx:GanttDiagram>
                <AxisX VisibleInPanesSerializable="-1"></AxisX>

                <AxisY VisibleInPanesSerializable="-1"></AxisY>
            </dx:GanttDiagram>
        </DiagramSerializable>
        <SeriesSerializable>
            <dx:Series Name="Series 1" ArgumentDataMember="ProjectName" ToolTipHintDataMember="Status" ValueDataMembersSerializable="StartDate;FinishDate" ValueScaleType="DateTime" LabelsVisibility="True">
                <ViewSerializable>
                    <dx:OverlappedGanttSeriesView ColorEach="True"></dx:OverlappedGanttSeriesView>
                </ViewSerializable>
                <LabelSerializable>
                    <dx:RangeBarSeriesLabel Kind="MaxValueLabel" Position="Inside" Indent="12" TextPattern="{HINT}"></dx:RangeBarSeriesLabel>
                </LabelSerializable>
            </dx:Series>
        </SeriesSerializable>
    </dx:WebChartControl>
    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:NorthwindConnectionString3 %>' SelectCommand="SELECT * FROM [Projects]"></asp:SqlDataSource>
</asp:Content>

