<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Update.aspx.cs" Inherits="Project.Update" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="over" style="background-color: #363945; height: 100%">
    <div style="display: flex; height: 100%">
        <div style="display: inline-block; margin: 10% 0 0 20%">
            <div class="updateContainerOne" style="vertical-align: middle; text-align: center; display: table-cell">
                 <img src="pictures/avatar0.png" alt="my will to live" width="200" height="200"/>
            </div>
        </div>
        <!--big momma container-->
        <div class="updateContainerTwo" style="margin-top: 4%">
            <div class="updateContainerThree">
                <h1 style="font-family: Verdana; font-size: 25px; text-align: center; color: white">
                    Account Update
                </h1>
                <div style="text-align: center">
                    <p style="text-align: left; font-size: 9px; color: white">
                        <i>Change?</i>
                    </p>
                    <!--names-->
                    <div style="display: flex;">
                        <!--Fird name-->
                        <div style="display: flex">

                            <div style="display:inline-block; margin: 2% 0 0 0px;">
                                <div class="" style="vertical-align: middle; text-align: center; display: table-cell">
                                    <!-- Check="chUpFName_Checked" / OnCheckedChanged="chUpFName_CheckedChanged / -->
                                    <asp:CheckBox style="justify-content: center;" ID="chUpFName" AutoPostBack="true" runat="server" OnCheckedChanged="chUpFName_CheckedChanged"/>
                                </div>
                            </div>
                            <div style="display:inline-block; margin: 2% 0 0 20px">
                                <div class="" style="vertical-align: middle; text-align: center; display: table-cell; font-family: Verdana; font-size: 14px; color: white">
                                    <b>
                                    Name:
                                    </b>
                                </div>
                            </div>
                            <div class="" style="vertical-align: middle; text-align: center; display: table-cell">
                                <asp:Label style="color: white;" class="updateLabel" ID="lblUpFName" runat="server" Text="lblUpFName"></asp:Label>
                            </div>
                        </div>
                        <!--Last name-->
                        <div style="display: flex; margin-left: 18%">
                            <div style="display:inline-block; margin: 2% 0 0 0%">
                                <div class="" style="vertical-align: middle; text-align: center; display: table-cell">
                                    <!--/ Check="chUpLName_Checked" OnCheckedChanged="chUpLName_CheckedChanged"-->
                                    <asp:CheckBox style="justify-content: center;" ID="chUpLName" AutoPostBack="true" runat="server" OnCheckedChanged="chUpLName_CheckedChanged"/>
                                </div>
                            </div>
                            <asp:Label style="color: white;" class="updateLabel" ID="lblUpLName" runat="server" Text="lblUpLName"></asp:Label>
                        </div>
                    </div>
                    <div>
                        <!--Email fields-->
                        <div style="display: flex; background-color: transparent; margin-top: 3%">
                            <div style="display:inline-block; margin: 2% 0 0 0px;">
                                <div class="" style="vertical-align: middle; text-align: center; display: table-cell">
                                    <!-- OnCheckedChanged="chUpEmail_CheckedChanged"--> 
                                    <asp:CheckBox style="justify-content: center;" ID="chUpEmail" runat="server" AutoPostBack="true" OnCheckedChanged="chUpEmail_CheckedChanged"/>
                                </div>
                            </div>
                            <div style="display:inline-block; margin: 2% 0 0 20px">
                                <div class="" style="vertical-align: middle; text-align: center; display: table-cell; font-family: Verdana; font-size: 14px; color: white;">
                                    <b>
                                    Email: 
                                    </b>
                                </div>
                            </div>
                            <div style="display: flex">
                                <div style="display:inline-block; margin: 3% 0 0 0%">
                                    <div class="" style="vertical-align: middle; text-align: center; display: table-cell">
                                        <asp:Label style="color: white" class="updateLabelTwo" ID="lblUpEmail" runat="server" Text="lblUpEmail"></asp:Label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--Password fields-->
                        <div style="display: flex; background-color: transparent; margin-top: 3%">

                            <div style="display:inline-block; margin: 2% 0 0 0%">
                                <div class="" style="vertical-align: middle; text-align: center; display: table-cell">
                                    <!--OnCheckedChanged="chUpPass_CheckedChanged"-->
                                    <asp:CheckBox style="justify-content: center;" ID="chUpPass" AutoPostBack="true" runat="server" OnCheckedChanged="chUpPass_CheckedChanged"/>
                                </div>
                            </div>
                            <div style="display:inline-block; margin: 2% 0 0 20px">
                                <div class="" style="vertical-align: middle; text-align: center; display: table-cell; font-family: Verdana; font-size: 14px; color: white">
                                    <b>
                                    Password:
                                    </b>
                                </div>
                            </div>
                            <div style="display: flex">
                                <div style="display:inline-block; margin: 8% 0 0 0%">
                                    <div class="" style="vertical-align: middle; text-align: center; display: table-cell">
                                        <asp:Label style="color: white;" class="updateLabelThree" ID="lblUpPass" runat="server" Text="lblUpPass"></asp:Label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--Year of birth fields-->
                        <div style="display: flex; background-color: transparent; margin-top: 3%">
                            <div style="display:inline-block; margin: 2% 0 0 0%">
                                <div class="" style="vertical-align: middle; text-align: center; display: table-cell">
                                    <!--OnCheckedChanged="chUpYOB_CheckedChanged"-->
                                    <asp:CheckBox style="justify-content: center;" ID="chUpYOB" AutoPostBack="true" runat="server" OnCheckedChanged="chUpYOB_CheckedChanged"/>
                                </div>
                            </div>
                            <div style="display:inline-block; margin: 2% 0 0 20px">
                                <div class="" style="vertical-align: middle; text-align: center; display: table-cell; font-family: Verdana; font-size: 14px; color: white;">
                                    <b>
                                    Year of Birth: 
                                    </b>
                                </div>
                            </div>
                            <div style="display: flex">
                                <div style="display:inline-block; margin: 10% 0 0 0%">
                                    <div class="" style="vertical-align: middle; text-align: center; display: table-cell">
                                        <asp:Label style="color: white;" class="updateLabelFour" ID="lblUpYOB" runat="server" Text="lblUpYOB"></asp:Label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--Address-->
                        <div style="display: flex; background-color: transparent; margin-top: 3%">
                            <div style="display:inline-block; margin: 2% 0 0 0px;">
                                <div class="" style="vertical-align: middle; text-align: center; display: table-cell">
                                    <!-- OnCheckedChanged="chUpEmail_CheckedChanged"--> 
                                    <asp:CheckBox style="justify-content: center;" ID="chUpAddress" runat="server" AutoPostBack="true" OnCheckedChanged="chUpAddress_CheckedChanged"/>
                                </div>
                            </div>
                            <div style="display:inline-block; margin: 2% 0 0 20px">
                                <div class="" style="vertical-align: middle; text-align: center; display: table-cell; font-family: Verdana; font-size: 14px; color: white;">
                                    <b>
                                    Address: 
                                    </b>
                                </div>
                            </div>
                            <div style="display: flex">
                                <div style="display:inline-block; margin: 3% 0 0 0%">
                                    <div class="" style="vertical-align: middle; text-align: center; display: table-cell">
                                        <asp:Label style="color: white" class="updateLabelTwo" ID="lblUpAddress" runat="server" Text="lblUpAddress"></asp:Label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--City-->
                        <div style="display: flex; background-color: transparent; margin-top: 3%">
                            <div style="display:inline-block; margin: 2% 0 0 0px;">
                                <div class="" style="vertical-align: middle; text-align: center; display: table-cell">
                                    <!-- OnCheckedChanged="chUpEmail_CheckedChanged"--> 
                                    <asp:CheckBox style="justify-content: center;" ID="chUpCity" runat="server" AutoPostBack="true" OnCheckedChanged="chUpCity_CheckedChanged"/>
                                </div>
                            </div>
                            <div style="display:inline-block; margin: 2% 0 0 20px">
                                <div class="" style="vertical-align: middle; text-align: center; display: table-cell; font-family: Verdana; font-size: 14px; color: white;">
                                    <b>
                                    City: 
                                    </b>
                                </div>
                            </div>
                            <div style="display: flex">
                                <div style="display:inline-block; margin: 3% 0 0 0%">
                                    <div class="" style="vertical-align: middle; text-align: center; display: table-cell">
                                        <asp:Label style="color: white" class="updateLabelTwo" ID="lblUpCity" runat="server" Text="lblUpCity"></asp:Label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--Zip-->
                        <div style="display: flex; background-color: transparent; margin-top: 3%">
                            <div style="display:inline-block; margin: 2% 0 0 0px;">
                                <div class="" style="vertical-align: middle; text-align: center; display: table-cell">
                                    <!-- OnCheckedChanged="chUpEmail_CheckedChanged"--> 
                                    <asp:CheckBox style="justify-content: center;" ID="chUpZip" runat="server" AutoPostBack="true" OnCheckedChanged="chUpZip_CheckedChanged"/>
                                </div>
                            </div>
                            <div style="display:inline-block; margin: 2% 0 0 20px">
                                <div class="" style="vertical-align: middle; text-align: center; display: table-cell; font-family: Verdana; font-size: 14px; color: white;">
                                    <b>
                                    Zip Code: 
                                    </b>
                                </div>
                            </div>
                            <div style="display: flex">
                                <div style="display:inline-block; margin: 3% 0 0 0%">
                                    <div class="" style="vertical-align: middle; text-align: center; display: table-cell">
                                        <asp:Label style="color: white" class="updateLabelTwo" ID="lblUpZip" runat="server" Text="lblUpZip"></asp:Label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div style="display: flex; background-color: transparent; margin-top: 3%">
                            <div style="display:inline-block; margin: 2% 0 0 0%">
                                <div class="" style="vertical-align: middle; text-align: center; display: table-cell">
                                    <asp:CheckBox style="justify-content: center;" ID="chDeleteAcc" runat="server" AutoPostBack="true"/>
                                </div>
                            </div>
                            <div style="display:inline-block; margin: 2% 0 0 20px">
                                <div class="" style="vertical-align: middle; text-align: center; display: table-cell; font-family: Verdana; font-size: 14px; color: indianred;">
                                    <b>
                                    Delete my account
                                    </b>
                                </div>
                            </div>
                        </div>
                        <asp:Label class="updateLabelFive" ID="lblDeleteAcc" runat="server" Text=""></asp:Label>
                    </div>
                </div>
            </div>
            <!--------------------Beginning of container four--------------------->
            <div class="updateContainerFour" style="margin-top: 20%">
                <div style="text-align: center; margin-bottom: 2%">
                    <asp:Label style=" font-size: 20px; color: white;" ID="h1UpChange" runat="server" Text="Change Your Info"></asp:Label>
                </div>
                    <!--names-->
                    <div style="display: flex;">
                        <!--Fird name-->
                        <div style="display: flex">
                            <asp:TextBox class="updateInputTwo" style="margin-left:13%" id="txtUpFName" type="text" name="userForm" value="" placeholder="First Name" runat="server" AutoPostBack="true"/>
                        </div>
                        <!--Last name-->
                        <div style="display: flex; margin-left: 5%">
                            <asp:TextBox class="updateInputTwo" id="txtUpLName" type="text" name="userForm" value="" placeholder="Last Name" runat="server" AutoPostBack="true"/>
                        </div>
                    </div>
                    <div style="display: flex; margin-left: 3%">
                        <asp:RequiredFieldValidator Class="registerError" ID="rfvUpFName" runat="server" ErrorMessage="*Required" ControlToValidate="txtUpFName"></asp:RequiredFieldValidator>
                        <asp:RequiredFieldValidator style="margin-left: 32%;" Class="registerError" ID="rfvUpLName" runat="server" ErrorMessage="*Required" ControlToValidate="txtUpLName"></asp:RequiredFieldValidator>
                    </div>
                    <!-- last name-->
                    <div>
                        <!--Email fields-->
                            <asp:TextBox class="updateInputTwo" id="txtUpEmail" type="text" name="userForm" value="" placeholder="Email" runat="server" AutoPostBack="true"/>
                            <div style="display: flex; margin-left: 3%;">
                                <asp:RequiredFieldValidator Class="registerError" ID="rfvUpEmail" runat="server" ErrorMessage="*Required" ControlToValidate="txtUpEmail"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="regexUpEmail" runat="server" class="registerError" ErrorMessage="*Please provide a valid email address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtUpEmail"></asp:RegularExpressionValidator>
                            </div>

                        <!--Password fields-->
                            <asp:TextBox class="updateInputThree" id="txtUpPass" type="Password" name="userForm" value="" placeholder="Password" runat="server" AutoPostBack="true"/>
                                <div style="display: flex; margin-left: 13%;">
                                    <asp:RequiredFieldValidator Class="registerError" ID="rfvUpPass" runat="server" ErrorMessage="*Required" ControlToValidate="txtUpPass"></asp:RequiredFieldValidator>
                                </div>
                            <asp:TextBox class="updateInputThree" id="txtUpPassConf" type="Password" name="userForm" value="" placeholder="Confirm Password" runat="server" AutoPostBack="true"/>
                                <div style="display: flex; margin-left: 13%;">
                                    <asp:CompareValidator Class="registerError" ID="cvRegPassConfirm" runat="server" ErrorMessage="*Passwords must match" ControlToCompare="txtUpPass" ControlToValidate="txtUpPassConf"></asp:CompareValidator>
                                </div>
                        <!--Year of birth fields-->
                            <asp:TextBox class="updateInputTwo" id="txtUpYOB" type="text" name="userForm" value="" placeholder="Year of birth" runat="server" AutoPostBack="true"/>
                            <div style="display: flex; margin-left: 3%;">
                                <asp:RequiredFieldValidator Class="registerError" ID="rfvUpYOB" runat="server" ErrorMessage="*Required" ControlToValidate="txtUpYOB"></asp:RequiredFieldValidator>
                                <asp:RangeValidator class="registerError" ID="rvDOB2" runat="server" ErrorMessage="*Must be at least 18 or a valid year" ControlToValidate="txtUpYOB"></asp:RangeValidator>
                            </div>
                        <!--Address-->
                            <asp:TextBox class="updateInputTwo" id="txtUpAddress" type="text" name="userForm" value="" placeholder="Address" runat="server" AutoPostBack="true"/>
                            <div style="display: flex; margin-left: 3%;">
                                <asp:RequiredFieldValidator Class="registerError" ID="rfvUpAddress" runat="server" ErrorMessage="*Required" ControlToValidate="txtUpEmail"></asp:RequiredFieldValidator>
                            </div>
                        <!--City-->
                        <div style="display: flex;">
                            <div style="display: flex">
                                <asp:TextBox class="updateInputTwo" style="margin-left:13%" id="txtUpCity" type="text" name="userForm" value="" placeholder="City" runat="server" AutoPostBack="true"/>
                            </div>
                        <!--Gasazip-->
                            <div style="display: flex; margin-left: 5%">
                                <asp:TextBox class="updateInputTwo" id="txtUpZip" type="text" name="userForm" value="" placeholder="Zip Code" runat="server" AutoPostBack="true"/>
                            </div>
                        </div>
                        <div style="display: flex; margin-left: 3%">
                            <asp:RequiredFieldValidator Class="registerError" ID="rfvUpCity" runat="server" ErrorMessage="*Required" ControlToValidate="txtUpCity"></asp:RequiredFieldValidator>
                            <asp:RequiredFieldValidator style="margin-left: 32%;" Class="registerError" ID="rfvUpZip" runat="server" ErrorMessage="*Required" ControlToValidate="txtUpZip"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                <!-- Submit button for update -->
                <div style="display:flex; margin: 0 auto; justify-content: center;">
                    <!-- OnClick="SubmitUp_Click"-->
                    <asp:button class="buttonReg" style="margin-top: 3%;" id="SubmitUp" runat="server" Text="Submit" OnClick="SubmitUp_Click"/>
                </div>
                <!-- Submit button for DELETE -->
                <div style="display:flex; margin: 0 auto; justify-content: center;">
                    <!-- OnClick="DeleteButton_Click"-->
                    <asp:button class="buttonReg" style="margin-top: 3%; background-color: indianred;" id="DeleteButton" runat="server" Text="Delete Account" CausesValidation="false" EnableClientScript="false"/>
                </div>
            </div>
        </div>
    </div>
        <div style="height: 400px; margin-top: -20%; Background-color: #363945; width: 100%;">
        </div>
    </div>
    <asp:SqlDataSource ID="SqlDataSourceUpdate" runat="server" ConnectionString='<%$ ConnectionStrings:Team13ConnectionString %>' DeleteCommand="DELETE from [Cust_Login] WHERE [Cust_EMAIL] = @EMAIL" SelectCommand="SELECT * FROM [Cust_Login] WHERE ([Cust_Email] = @Email)" UpdateCommand="UPDATE [Cust_Login] SET [Cust_Password] = @Password, [Cust_FName] = @FName, [Cust_LName] = @LName, [Cust_YOB] = @YOB, [Cust_Address] = @Address, [Cust_City] = @City, [Cust_Zip] = @Zip WHERE [Cust_EMAIL] = @EMAIL">
        <DeleteParameters>
            <asp:Parameter Name="EMAIL"></asp:Parameter>
        </DeleteParameters>
        <SelectParameters>
            <asp:Parameter Name="Email"></asp:Parameter>
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Password"></asp:Parameter>
            <asp:Parameter Name="FName"></asp:Parameter>
            <asp:Parameter Name="LName"></asp:Parameter>
            <asp:Parameter Name="YOB"></asp:Parameter>
            <asp:Parameter Name="Address"></asp:Parameter>
            <asp:Parameter Name="City"></asp:Parameter>
            <asp:Parameter Name="Zip"></asp:Parameter>
            <asp:Parameter Name="EMAIL"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
