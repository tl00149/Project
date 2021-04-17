<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Project.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="over">
        <img src="pictures/untpartay.jpg" style="width: 100%; height:100%; opacity: 0,6"/>
        <div class="loginContainer" style="margin-top: -570px">
            <div class="loginContainerTwo">
                <h2 style="font-family: verdana; margin-left: 13%; margin-top: 30%;">Sign In</h2>
                <asp:TextBox class="loginTwoContent" id="txtLogOne" type="text" name="graydefault" value="" placeholder="User ID" runat="server"/>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" style="font-size: 12px; color: red; margin-left: 18%;" ErrorMessage="Please provide a valid email address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtLogOne"></asp:RegularExpressionValidator>
                <asp:TextBox class="loginTwoContent" id="txtPassLog" type="password" name="graydefault" value="" placeholder="Password" runat="server"/>
                <div style="display: flex; margin-right: 72%; margin-left: 17%">
                    <!--add onclick-->
                    <asp:button class="buttonLog" style="margin-top: 18px;" id="LogButton" runat="server" Text="Log In" OnClick="Login_Click"/>
                    <!--add onclick-->
                    <asp:button class="buttonLog" style="margin-top: 18px; margin-left: 30%;" id="ClearButton" runat="server" Text="Clear" />
                </div>
                <asp:Label class="loginError" style="margin-left: 27%; margin-top: 40px;" ID="lblLogError" runat="server" Text=""></asp:Label>
                <br />
                <br />
                <br />
                <a href="#" style="font-size: 12px; text-decoration: none; margin-top: 200px; margin-left: 10%;">Forgot your password?</a>

            </div>

            <div class="loginContainerThree">
                <h2 style="font-family: verdana; margin-left: 13%; margin-top: 30%; color: white;">Sign Up</h2>
                <p style="color:white; margin-left:10%; font-size: 15px;">Sign up to be a customer or employee!
                </p>
                <!--add onclick-->
                <asp:button class="buttonLog" id="registerRedirect" style="border: 2px solid white; margin-left: 30%;" runat="server" type="button" Text="Sign Up" OnClick="RegisterRedirect_Click"/>
            </div>
        </div>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:Team13ConnectionString %>' SelectCommand="SELECT * FROM [Cust_Login] WHERE (([Cust_Email] = @Email) AND ([Cust_Password] = @Password))">
        <SelectParameters>
            <asp:Parameter Name="Email"></asp:Parameter>
            <asp:Parameter Name="Password"></asp:Parameter>
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
