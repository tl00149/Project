<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="LoginSuccess.aspx.cs" Inherits="Project.LoginSuccess" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="over">
        <p style="margin: 15%; text-align: center; font-size: 45px; font-family:georgia">
            Welcome&nbsp;<asp:Label id="lblUser" runat="server" Text=""></asp:Label>,&nbsp;you have successfully logged in.
            <br />
            Click <a href="Default.aspx">here</a> to be redirected.
        </p>
    </div>
</asp:Content>
