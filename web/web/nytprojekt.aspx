<%@ Page Title="" Language="C#" MasterPageFile="~/masterpace.Master" AutoEventWireup="true" CodeFile="nytprojekt.aspx.cs" Inherits="nytprojekt"%>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <!-- Tilføj form -->
    <div class="container">
    <h1 class="col-xs-12" style="text-align:center;margin-bottom:10px;">Tilføj projekt</h1>
        <table>
        <tr>
            <td class="col-xs-6" style="text-align:right; padding-right:5px;">Projektnavn:</td>
            <td class="col-xs-6"><asp:TextBox ID="TextBoxTitel" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td class="col-xs-6" style="text-align:right; padding-right:5px;">Hovedbillede:</td>
            <td><asp:FileUpload ID="FileUploadImg" runat="server" /></td>
        </tr>
        <tr>
            <td class="col-xs-6" style="text-align:right; padding-right:5px;">Indhold:</td>
            <td class="col-xs-6"><CKEditor:CKEditorcontrol ID="TextBoxIndhold" runat="server"></CKEditor:CKEditorcontrol></td>
        </tr>
        <tr>
            <td class="col-xs-6" style="text-align:right; padding-right:5px;"></td>
            <td class="col-xs-6"><asp:Button ID="ButtonSubmit" runat="server" Text="Send" OnClick="ButtonSubmit_Click"/></td>
        </tr>
    </table>
        </div>
</asp:Content>