<%@ Page Title="" Language="C#" MasterPageFile="~/masterpace.Master" AutoEventWireup="true" CodeBehind="404.aspx.cs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="row">
            <div class="col-md-4">
            </div>
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-check"></i>404 fail</h4>
                    </div>
                    <div class="panel-body">

    <%--beskrivelse af en side der ikke er fundet--%>
    <h1> 404 Fail</h1>
    <h2>There has been an error, we could not find the page you're looking for try in gene still some errors please contact us</h2>

    <%-- Et link til opradelse siden --%>
                    <a href="default.aspx" class="btn btn-default"> Cancel</a>
                    </div>
                </div>
            </div>
</asp:Content>
