<%@ Page Title="" Language="C#" MasterPageFile="~/masterpace.Master" AutoEventWireup="true" CodeFile="nytprojekt.aspx.cs" Inherits="nytprojekt"%>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <!-- Tilføj form -->

    <table>
        <tr>
            <td>Projektnavn:</td>
            <td><asp:TextBox ID="TextBoxTitel" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Hovedbillede:</td>
            <td><asp:FileUpload ID="FileUploadImg" runat="server" /></td>
        </tr>
        <tr>
            <td>Indhold:</td>
            <td><CKEditor:CKEditorcontrol ID="TextBoxIndhold" runat="server"></CKEditor:CKEditorcontrol></td>
        </tr>
        <tr>
            <td></td>
            <td><asp:Button ID="ButtonSubmit" runat="server" Text="Send" OnClick="ButtonSubmit_Click"/></td>
        </tr>
    </table>
</asp:Content>