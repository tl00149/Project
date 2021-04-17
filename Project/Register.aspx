<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Project.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="over" style="background-color: lightgray">
        <div class="subSearchRight">
            <div class="subText">
                Login
            </div>
            <div style="border-top: 2px solid white;"></div>
            <div class="subTextTwo">
                <br />
                <a href="Login.aspx" style="text-decoration: none; color: black">Login</a>
            </div>
            </div>
        <div class="registerContainer" style="margin-top: 7%; z-index: 100;">
        <div class="registerContainerTwo">
            <div style="margin: auto; text-align: center; overflow: hidden;">
                <div>
                <p style="font-size: 25px; font-family: sans-serif; color: black; margin: 5%;">
                    Create Account
                </p>
                </div>
            </div>
        </div>
        <div class="registerContainerThree">
            <!--Div for names as flex-->
            <br />
            <div style="display:flex; margin: 0 auto; justify-content: center;">
                <asp:TextBox class="registerName" style="margin-top: 5%;" id="txtRegFirst" type="text" name="userForm" value="" placeholder="First Name" runat="server"/>
                <asp:TextBox class="registerName" style="margin-top: 5%; margin-left: 15px;" id="txtRegLast" type="text" name="userForm" value="" placeholder="Last Name" runat="server"/>
            </div>
            <div style="display:flex; margin: 0 auto;">
                <asp:RequiredFieldValidator Class="registerError" ID="reqRegFirst" runat="server" ErrorMessage="Enter a first name" ControlToValidate="txtRegFirst"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator Class="registerError" ID="reqRegLast" runat="server" ErrorMessage="Enter a last name" ControlToValidate="txtRegLast" style="margin-left: 28%"></asp:RequiredFieldValidator>
            </div>
            <!--Email field-->
            <div>
                <asp:TextBox class="registerName" style="margin-top: 2%; margin-left: 3%; width: 92%;" id="txtRegEmail" type="text" name="userForm" value="" placeholder="Email" runat="server"/>
                <div style="display: inline;">
                    <asp:RegularExpressionValidator ID="RegexEmailReg" runat="server" class="registerError" ErrorMessage="Please provide a valid email address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtRegEmail"></asp:RegularExpressionValidator>
                    <br />
                    <asp:RequiredFieldValidator Class="registerError" style="margin-top: -10px;" ID="rfvRegEmail" runat="server" ErrorMessage="Enter an email address" ControlToValidate="txtRegEmail"></asp:RequiredFieldValidator>
                </div>
                <!--Password-->
                <asp:TextBox class="registerNamePass" style="margin-top: 0%; margin-left: 3%; width: 92%;" id="txtRegPass" type="Password" name="userForm" value="" placeholder="Password" runat="server"/>
                <div>
                    <asp:RequiredFieldValidator Class="registerError" style="" ID="rfvRegPass" runat="server" ErrorMessage="Enter a password" ControlToValidate="txtRegPass"></asp:RequiredFieldValidator>
                </div>
                <asp:TextBox class="registerNamePass" style="margin-top: 4%; margin-left: 3%; width: 92%;" id="txtRegPassConfirm" type="Password" name="userForm" value="" placeholder="Confirm Password" runat="server"/>
                <div>
                    <asp:CompareValidator Class="registerError" ID="cvRegPassConfirm" runat="server" ErrorMessage="Passwords must match" ControlToCompare="txtRegPass" ControlToValidate="txtRegPassConfirm"></asp:CompareValidator>
                </div>
                <!--YOB-->
                <asp:TextBox class="registerName" style="margin-top: 4%; margin-left: 3%; width: 92%;" id="txtRegYOB" type="Text" InitialValue="YYYY" name="userForm" value="" placeholder="Year of Birth" runat="server"/>
                <div>
                    <asp:RequiredFieldValidator Class="registerError" style="" ID="rfvDOB" runat="server" ErrorMessage="Date of birth cannot be blank" ControlToValidate="txtRegYOB"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RangeValidator class="registerError" ID="rvDOB" runat="server" ErrorMessage="Must be at least 18 or a valid year" ControlToValidate="txtRegYOB"></asp:RangeValidator>
                </div>
                <!--Address and so on-->
                <asp:TextBox class="registerName" style="margin-top: 0%; margin-left: 3%; width: 92%;" id="txtRegAddress" type="text" name="userForm" value="" placeholder="Address" runat="server"/>
                <div style="display: inline;">
                    <asp:RequiredFieldValidator Class="registerError" style="margin-top: -10px;" ID="rfvRegAddress" runat="server" ErrorMessage="Enter an address" ControlToValidate="txtRegAddress"></asp:RequiredFieldValidator>
                </div>
                <div style="display:flex; margin: 0 auto; justify-content: center;">
                    <asp:TextBox class="registerName" style="margin-top: 0%;" id="txtRegCity" type="text" name="userForm" value="" placeholder="City" runat="server"/>
                    <asp:TextBox class="registerName" style="margin-top: 0%; margin-left: 15px;" id="txtRegZip" type="text" name="userForm" value="" placeholder="Zipcode" runat="server"/>
                </div>
                <div style="display:flex; margin: 0 auto;">
                    <asp:RequiredFieldValidator Class="registerError" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter a City" ControlToValidate="txtRegCity"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator Class="registerError" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter a ZIPcode" ControlToValidate="txtRegZip" style="margin-left: 35%"></asp:RequiredFieldValidator>
                </div>
                <!--I dont think i'll need this, but i'll keep it just incase, SELECT
                <select name="custemp" id="custemp" class="select">
                    <option value="Customer">Customer</option>
                    <option value="Employee">Employee</option>
                </select>
                -->
            </div>
            <!--The button-->
            <div style="display:flex; margin: 0 auto; justify-content: center;">
                <!-- RegisterButton_Click-->
                <asp:button class="buttonReg" style="margin-top: 5%;" id="SubmitRegister" runat="server" Text="Submit" OnClick="RegisterButton_Click"/>
            </div>
        </div>
        </div>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:Team13ConnectionString %>' InsertCommand="INSERT INTO [Cust_Login] ([Cust_Email], [Cust_Password], [Cust_FName], [Cust_LName], [Cust_YOB], [Cust_Address], [Cust_City], [Cust_Zip]) VALUES (@Email, @Password, @FName, @LName, @YOB, @Address, @City, @Zip)" SelectCommand="Select * FROM [Cust_Login]">
        <InsertParameters>
            <asp:Parameter Name="Email"></asp:Parameter>
            <asp:Parameter Name="Password"></asp:Parameter>
            <asp:Parameter Name="FName"></asp:Parameter>
            <asp:Parameter Name="LName"></asp:Parameter>
            <asp:Parameter Name="YOB"></asp:Parameter>
            <asp:Parameter Name="Address"></asp:Parameter>
            <asp:Parameter Name="City"></asp:Parameter>
            <asp:Parameter Name="Zip"></asp:Parameter>
        </InsertParameters>
    </asp:SqlDataSource>
</asp:Content>
