<%@ Page Title="" Language="C#" MasterPageFile="~/masterpace.Master" AutoEventWireup="true" CodeFile="opradelse.aspx.cs" Inherits="opradelse" %>

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
                        <h4><i class="fa fa-fw fa-check"></i>Register</h4>
                    </div>
                    <div class="panel-body">
    <%-- Brugernavn til komentar databasen og komentarfeltet --%>
                     <h4>Username</h4>
                     <asp:TextBox ID="TextBoxUsername" runat="server" placeholder="Username"></asp:TextBox>

    <%-- Email til at loggeind med og til kontakt af bugeren --%>
                     <h4>Email</h4>
                     <asp:TextBox ID="TextBoxEmail" runat="server" placeholder="Email"></asp:TextBox>

    <%--Det fulde navn bliver brugt så læsern ved hvem der har lavet aiklen--%>
                     <h4>Full Name</h4>
                     <asp:TextBox ID="TextBoxName" runat="server" placeholder="Full Name"></asp:TextBox>

    <%-- Din kodeord/passwood til at komme ind som bruger  --%>
                     <h4>Password</h4>
                     <asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
  
    <%--Gentag din kodeord/passwood til at få det rigtig kodeord/passwood til databasen--%>
                     <h4>Repeat Password</h4>
                     <asp:TextBox ID="TextBoxRepeatPassword" runat="server" TextMode="Password" placeholder="Repeat Password"></asp:TextBox><asp:Label ID="LabelFail" runat="server" ForeColor="#ff0000" Visible="false">The passwords do not match.</asp:Label>

    <%--Upload af profilbillede til atikler og profiler--%>
                    <h4>Profile picture</h4>
                     <asp:FileUpload ID="FileUploadProfilePic" runat="server" />

    <%-- Et link til default siden --%>
                    <a href="default.aspx" class="btn btn-default">Cancel</a>
                          
    <%--En knap der udføre en opradelse af bruger --%>
                    <asp:Button ID="ButtonReg" runat="server" Text="Register" class="btn btn-default" OnClick="ButtonReg_Click"/>
                    </div>
                </div>
            </div>
            </div>
    </div>
</asp:Content>

