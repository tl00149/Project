<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Employee.aspx.cs" Inherits="Project.Employee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="over"">
        <!--Div container one-->
        <div style="background-color: #373B44; height: 480px; width: 100%; overflow: hidden;">
            <!--Login Paragraph-->
            <div style="display: flex">
            <div style="margin:10% 0 0 45%; font-family: georgia; font-size: 75px; vertical-align: middle; color: white;">
                Career Portal
            </div>
            <!--Subsearch-->
            <div class="subSearch">
            <div class="subText">
                Careers
            </div>
            <div style="border-top: 2px solid white;"></div>
            <div class="subTextTwo">
                <br />
                <a href="FAQ.aspx" style="text-decoration: none; color: black">FAQs</a>
                <br />
                <br />
                <a href="Employee.aspx" style="text-decoration: none; color: black">Career Login</a>
            </div>
            </div>
            </div>
        <!--Header container-->
        <div style="margin: 2% 0 0 45%; font-family: georgia; font-size: 30px; color: white">
            Plan your future employment
            <br />
            one shift at a time
        </div>
        </div>
        <div style="background-color:#65000b; height: 300px; width: 100%; overflow: hidden;">
            <p style="color: white;"></p>Hello
        </div>
        <!--Container two-->
        <div style="background-color: #e6e4e2; height: 700px; width: 100%; overflow: hidden; display: flex;">
                <div style="background-color: dimgray; height: 45%; width: 30%; margin: 5% 0 0 10%; border-radius: 3px; overflow: hidden">
                    <div style="color: white; font-family: Georgia; text-align:center; font-size: 40px; margin-top: 3%">
                        Schedule
                    </div>
                    <div style="display: flex; color: white;">

                        <p style="font-family: georgia; margin: 2% 0 0 15%;">
                            Month
                        </p>
                        <p style="font-family: georgia; margin: 2% 0 0 30%">
                            Day
                        </p>
                    </div>
                    <div style="display: flex;">
                        <select name="styFall" id="styFall" class="select">
                            <option value="SelectMonth">--Select Month--</option>
                            <option value="January">January</option>
                            <option value="February"></option>
                            <option value="March"></option>
                            <option value="April"></option>
                            <option value="May"></option>
                            <option value="June"></option>
                            <option value="July"></option>
                            <option value="August"></option>
                            <option value="September"></option>
                            <option value="October"></option>
                            <option value="November"></option>
                            <option value="December"></option>
                            </select>

                         <asp:TextBox class="updateInputTwo" style="margin: 2% 0 0 2%; width: 30%" id="txtEmpDay" type="text" name="userForm" value="" placeholder="Day" runat="server" AutoPostBack="true"/>
                    </div>
                </div>
                <div style="background-color: dimgray; height: 80%; width: 30%; margin: 5% 0 0 15%; border-radius: 3px; overflow: hidden">
                    <div style="color: white; font-family: Georgia; text-align:center; font-size: 40px; margin-top: 3%">
                        Scheduled Shift
                    </div>
                </div>
        </div>
    </div>
</asp:Content>
