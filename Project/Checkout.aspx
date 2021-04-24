<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="Project.Checkout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="over" style="height: 700px; width: 95%; background-color: #404040; overflow: hidden; display: flex; justify-content: center;">
        <div style="height:550px; width: 400px; background-color: #778899; margin: 5%; box-shadow: 0px 0 8px 0px white; border-radius: 5px;">
            <p style="font-size: 40px; font-family: Georgia; text-align: center; color: white;">Checkout</p>
            <!--First name-->
            <div style="display: flex;">
                <div style="font-size: 13px; font-family: Georgia; text-align: center; color: white; margin: 0 0 0 5%">
                    Name
                </div>
                <div style="width: 100%">
                    <asp:TextBox class="updateInputFour" style="margin-left:15%" id="txtName" type="text" name="userForm" value="" placeholder="Name" runat="server" AutoPostBack="true"/>
                </div>
            </div>

            <!--City-->
            <div style="display: flex; margin-top: 5%; margin-left: 0%">
                <div style="font-size: 13px; font-family: Georgia; text-align: center; color: white; margin: 0 0 0 5%">
                    City
                </div>
                <div style="width: 100%">
                    <asp:TextBox class="updateInputFour" style="margin-left:18%; width: 72%" id="TextBox2" type="text" name="userForm" value="" placeholder="City" runat="server" AutoPostBack="true"/>
                </div>
            </div>
            <!--State-->
            <div style="display: flex; margin-top: 5%; margin-left: 0%">
                <div style="font-size: 13px; font-family: Georgia; text-align: center; color: white; margin: 0 0 0 5%">
                    State
                </div>
                <div style="width: 100%">
                    <asp:TextBox class="updateInputFour" style="margin-left:17%; width: 73%" id="TextBox3" type="text" name="userForm" value="" placeholder="State" runat="server" AutoPostBack="true"/>
                </div>
            </div>
            <!--Zip-->
            <div style="display: flex; margin-top: 5%; margin-left: 0%">
                <div style="font-size: 13px; font-family: Georgia; text-align: center; color: white; margin: 0 0 0 3%">
                    Zip Code
                </div>
                <div style="width: 100%">
                    <asp:TextBox class="updateInputFour" style="margin-left:15%; width: 75%" id="TextBox4" type="text" name="userForm" value="" placeholder="Zip Code" runat="server" AutoPostBack="true"/>
                </div>
            </div>
            <!--Card Number-->
            <div style="display: flex; margin-top: 5%; margin-left: 0%">
                <div style="font-size: 13px; font-family: Georgia; text-align: center; color: white; margin: 0 0 0 1%">
                    Card Number
                </div>
                <div style="width: 100%">
                    <asp:TextBox class="updateInputFour" style="margin-left:12%; width: 78%" id="TextBox5" type="text" name="userForm" value="" placeholder="Card Number" runat="server" AutoPostBack="true"/>
                </div>
            </div>
            <!--CVV-->
            <div style="display: flex; margin-top: 4%; margin-left: 5%">
                <div style="font-size: 13px; font-family: Georgia; text-align: center; color: white; margin: 0 0 0 1%">
                    CVV
                </div>
                <div style="width: 100%">
                    <asp:TextBox class="updateInputFour" style="margin-left:17%; width: 74%" id="txtCVV" type="text" name="userForm" value="" placeholder="CVV" runat="server" AutoPostBack="true"/>
                </div>
            </div>
            <!--Submit-->
            <div class="centerStage">
                <asp:button class="buttonReg" style="margin-top: 20%;" id="btnAddCart" runat="server" Text="Submit" OnClick="Check_Click"/>
            </div>
        </div>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:Team13ConnectionString %>' SelectCommand="SELECT * FROM [Check]" InsertCommand="INSERT INTO [Check] ([Check_Name], [Check_City], [Check_State], [Check_Zip], [Check_Card], [Check_CVV]) VALUES (@Name, @City, @State, @Zip, @Card, @CVV)">
        <InsertParameters>
            <asp:Parameter Name="Name"></asp:Parameter>
            <asp:Parameter Name="City"></asp:Parameter>
            <asp:Parameter Name="State"></asp:Parameter>
            <asp:Parameter Name="Zip"></asp:Parameter>
            <asp:Parameter Name="Card"></asp:Parameter>
            <asp:Parameter Name="CVV"></asp:Parameter>
        </InsertParameters>

    </asp:SqlDataSource>
</asp:Content>
