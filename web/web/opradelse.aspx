<%@ Page Title="" Language="C#" MasterPageFile="~/masterpace.Master" AutoEventWireup="true" CodeBehind="Opradelse.aspx.cs" Inherits="web.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%-- Brugernavn til komentar databasen og komentarfeltet --%>
    <h4>Brugernavn</h4>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

    <%-- Email til at loggeind med og til kontakt af bugeren --%>
    <h4>Email</h4>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>

    <%--Det fulde navn bliver brugt så læsern ved hvem der har lavet aiklen--%>
    <h4>Dit fulde Navn</h4>
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>

    <%-- Din kodeord/passwood til at komme ind som bruger  --%>
    <h4>Passwood</h4>
    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>

    <%--Gentag din kodeord/passwood til at få det rigtig kodeord/passwood til databasen--%>
    <h4>Gentag Passwood</h4>
    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>

    <%--Upload af profilbillede til atikler og profiler--%>
    <%--<asp:FileUpl ID="FileUpload1" runat="server" db="">--%>
    </asp:FileUpl>

    <%--Her kan du ser hvordan dit profil billed ser ud  --%>
    <asp:Image ID="uplodeimg" runat="server" />

    <%--Bekræftilistige af krav--%>
    <h4><asp:CheckBox ID="CheckBox1" runat="server"/>Her bekræfter du at du overgiver din sjæl og vores krav</h4>
</asp:Content>
