<%@ Page Title="" Language="C#" MasterPageFile="~/masterpace.Master" AutoEventWireup="true" CodeFile="profil.aspx.cs" Inherits="profil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <asp:Image ID="Image1" runat="server" />
     <div class="row">
            <div class="col-md-4">
            </div>
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-check"></i>Profile</h4>
                    </div>
                    <div class="panel-body">
                       <asp:Repeater ID="RepeaterProfile" runat="server">
                           <ItemTemplate>
                        <%-- profilbillede --%>
                               ***BILLEDE HER***
                   <%-- navn af profil ejern --%>
                        Full name: <asp:Label ID="name" runat="server"><%# Eval("fuld_navn") %></asp:Label>
                               <br />
                        <%-- brugernavn --%>
                        Username: <asp:Label ID="username" runat="server"><%# Eval("brugernavn") %></asp:Label>
                               </ItemTemplate>
                           </asp:Repeater>
                    </div>
                    </div>
                </div>
            </div>
</asp:Content>

