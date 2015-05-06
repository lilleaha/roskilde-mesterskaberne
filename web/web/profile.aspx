<%@ Page Title="" Language="C#" MasterPageFile="~/masterpace.Master" AutoEventWireup="true" CodeBehind="profile.aspx.cs"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <asp:Image ID="Image1" runat="server" />
     <div class="row">
            <div class="col-md-4">
            </div>
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-check"></i>You Profile</h4>
                    </div>
                    <div class="panel-body"
                       
                        <%-- profilbillede --%>
                    <asp:Image ID="Image2" runat="server" />

                   <%-- navn af profil ejern --%>
                        <h2> fulde navn </h2> 

                        <%-- brugernavn --%>
                        <h2>Username</h2>

                    </div>
                </div>
            </div>
</asp:Content>
