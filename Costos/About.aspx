<%@ Page Title="About Us" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="About.aspx.cs" Inherits="Costos.About" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Inciar otro proceso
    </h2>
    <p>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            Text="Iniciar" />
    </p>
</asp:Content>
