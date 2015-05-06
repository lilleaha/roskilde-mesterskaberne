<%@ Page Title="" Language="C#" ClientIDMode="Static" MasterPageFile="~/masterpace.Master" AutoEventWireup="true" CodeBehind="Opradelse.aspx.cs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="row">
            <div class="col-md-4">
            </div>
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-check"></i>Opradelse system</h4>
                    </div>
                    <div class="panel-body">
    <%-- Brugernavn til komentar databasen og komentarfeltet --%>
                     <h4>Brugernavn</h4>
                     <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>

    <%-- Email til at loggeind med og til kontakt af bugeren --%>
                     <h4>Email</h4>
                     <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>

    <%--Det fulde navn bliver brugt så læsern ved hvem der har lavet aiklen--%>
                     <h4>Dit fulde Navn</h4>
                     <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>

    <%-- Din kodeord/passwood til at komme ind som bruger  --%>
                     <h4>Passwood</h4>
                     <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
  
    <%--Gentag din kodeord/passwood til at få det rigtig kodeord/passwood til databasen--%>
                     <h4>Gentag Passwood</h4>
                     <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>

    <%--Upload af profilbillede til atikler og profiler--%>
   

    <%--Her kan du ser hvordan dit profil billed ser ud  --%>
                    <asp:Image ID="Image1" runat="server" />

    <%--Bekræftilistige af krav--%>
                    <h4><asp:CheckBox ID="CheckBox2" runat="server"/>Her bekræfter du at du overgiver din sjæl og vores krav</h4>

    <%-- Et link til default siden --%>
                    <a href="default.aspx" class="btn btn-default"> Cancel</a>'
                          
    <%--En knap der udføre en opradelse af bruger --%>
                    <asp:Button ID="Button1" runat="server" Text="Bekræft" class="btn btn-default"/>
                    </div>
                </div>
            </div>
</asp:Content>
