<%@ Page Title="" Language="C#" MasterPageFile="~/masterpace.Master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="row">
            <div class="col-md-4">
            </div>
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-check"></i>login</h4>
                    </div>
                    <div class="panel-body">
    <%-- Emailen er den værdi der blive brugt til at finde den rigtige konto --%>
                    <h4>Username</h4>
                    <asp:TextBox ID="TextBoxUsername" runat="server"></asp:TextBox>

    <%-- Passwode er til at bekræft at du er den valgte bruger med emailen --%>
                    <h4>Password</h4>
                    <asp:TextBox ID="TextBoxPassword" runat="server"></asp:TextBox>
                    <br/>
                    <asp:Label ID="LabelFail" runat="server" Visible="false" ForeColor="#ff0000">Login failed</asp:Label>

   <%--En knap der udføre handlingen --%>
                    <asp:Button ID="ButtonLogin" runat="server" Text="Login" class="btn btn-default" OnClick="ButtonLogin_Click"/>

    <%-- Et link til opradelse siden --%>
                    <a href="Opradelse.aspx" class="btn btn-default"> Sign Up</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

