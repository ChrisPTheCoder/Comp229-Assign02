<%@ Page Title="CourseEnrollment" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CourseEnrollment.aspx.cs" Inherits="Comp229_Assign03.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Your contact page.</h3>
    <asp:Repeater ID="StudentName" runat="server" OnItemCommand="StudentName_ItemCommand" >
        
    </asp:Repeater>
</asp:Content>
