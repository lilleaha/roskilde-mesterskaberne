<%@ Page Title="" Language="C#" ClientIDMode="Static" MasterPageFile="~/masterpace.Master" AutoEventWireup="true" CodeBehind="logind.aspx.cs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Welcome To Logind </h1>
            </div>
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-check"></i>login system</h4>
                    </div>
                    <div class="panel-body">
    <%-- Emailen er den værdi der blive brugt til at finde den rigtige konto --%>
                    <h4>Email</h4>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

    <%-- Passwode er til at bekræft at du er den valgte bruger med emailen --%>
                    <h4>Passwode</h4>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <br/>

   <%--En knap der udføre handlingen --%>
                    <asp:Button ID="Button1" runat="server" Text="Logind" class="btn btn-default"/>

    <%-- Et link til opradelse siden --%>
                    <a href="Opradelse.aspx" class="btn btn-default"> Sinup</a>
                    </div>
                </div>
            </div>
</asp:Content>
