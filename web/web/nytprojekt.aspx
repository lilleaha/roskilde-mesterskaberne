<%@ Page Title="" Language="C#" MasterPageFile="~/masterpace.Master" AutoEventWireup="true" CodeFile="nytprojekt.aspx.cs" Inherits="nytprojekt"%>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div class="row">
            <div class="col-md-4">
            </div>
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-check"></i>Tilføj projekt</h4>
                    </div>
                    <div class="panel-body">
                         <table>
        <tr>
            <td class="col-xs-6">   <asp:TextBox ID="TextBoxTitel" runat="server" placeholder="Projektnavn"></asp:TextBox></td>
        </tr>
        <tr>
            <td class="col-xs-6"><h4>Hovedbillede</h4><asp:FileUpload ID="FileUploadImg" runat="server" /></td></> 
        </tr>
        <tr>
            <td class="col-xs-6" =><h4>Indhold</h4><CKEditor:CKEditorcontrol ID="TextBoxIndhold" runat="server"></CKEditor:CKEditorcontrol></td>
        </tr>
        <tr>
            <td class="col-xs-6"><asp:Button ID="Button1" runat="server" Text="Send" OnClick="ButtonSubmit_Click"/></td>
        </tr>
    </table>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>