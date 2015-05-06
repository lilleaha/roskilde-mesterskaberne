<%@ Page Title="" Language="C#" MasterPageFile="~/masterpace.Master" AutoEventWireup="true" CodeBehind="atikkel.aspx.cs"  %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
            <div class="col-md-4">
            </div>
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">         <%-- atiklens over skrift --%>
                        <h4><i class="fa fa-fw fa-check"></i>atikkel navn</h4>
                    </div>
                    <div class="panel-body">
                <%-- over titlen  --%>
                    <h4>tittel</h4>
                 <%-- main img --%>
                    <asp:Image ID="Image1" runat="server" />
                <%-- atiklen --%>
                    <p> atiklen  </p>
   
                    </div>
                </div>
            </div>
        </div>
</asp:Content>
