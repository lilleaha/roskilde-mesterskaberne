<%@ Page Title="" Language="C#" ClientIDMode="Static" MasterPageFile="~/masterpace.Master" AutoEventWireup="true" CodeBehind="logind.aspx.cs" Inherits="web.logind" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <%-- Emailen er den værdi der blive brugt til at finde den rigtige konto --%>
    <h4>Email</h4>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

    <%-- Passwode er til at bekræft at du er den valgte bruger med emailen --%>
    <h4>Passwode</h4>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>

    <input type="button" href="Opradelse.aspx" text="sinup">
    <asp:Button ID="Button1" runat="server" Text="Logind" />
</asp:Content>
