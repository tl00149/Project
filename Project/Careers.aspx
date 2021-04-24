<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Careers.aspx.cs" Inherits="Project.Careers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--Overall container div-->
    <div class="over">
        <!-- first container-->
        <div style="height: 500px; width: 100%; background-color: #E6DADA; overflow: hidden;">
            <!--Sub search menu-->
            <div class="subSearch">
                <div class="subText">
                    Careers
                </div>
                <div style="border-top: 2px solid white;"></div>
                <div class="subTextTwo">
                    <br />
                    <a href="FAQ.aspx" style="text-decoration: none; color: black">FAQ</a>
                    <br />
                    <br />
                    <a href="Employee.aspx" style="text-decoration: none; color: black">Careers Portal</a>
                </div>
            </div>
            <!--Right text top-->
            <div style="margin: 5% 0 0 45%; font-size: 75px; font-family: 'georgia';">
                Make the world
                <br />
                a cleaner place
            </div>
            <div style="margin: 2% 0 0 45%; font-size: 20px; font-family: 'Segoe UI';">
                Maybe you need money for a loved one's birthday.
                <br />
                Maybe you need it to pay tuition.
                <br />
                Join our competitive team and save money
                <br />
                for a rainy day.
                <br />
                Sign up to be an employee today - it only
                <br />
                takes five minutes!
            </div>
        </div>
        <!--Second div container-->
        <div style="height: 450px; width: 100%; background-color: #ebceff">
            <div>
                <br />
                <img src="pictures/CleanOne.jpg" style="height: 300px; margin: 5% 0 0 5%" class="leftImage"/>
                <br />
                <br />
                <p style="margin-left: 55%; font-size: 17px; font-family: 'Segoe UI'">
                    <br />
                    <br />
                    <p style="margin-left: 55%; font-size: 17px; font-family: 'arial'; font-style: italic">Addicted to cleaning but scrubbing toilets not your thing?</p>
                    <br />
                    <p style="margin-left: 55%; font-size: 17px; font-family: 'arial';">Don't worry, we got you covered. Pick what you want to clean.</p>
                    <br />
                    <p style="margin-left: 55%; font-size: 17px; font-family: 'arial';"> Oh, and we've got the cleaning supplies covered.</p>
                </p>
            </div>
        </div>
        <!--Third div container-->
        <div style="height: 400px; width: 100%; background-color: white">
            <br />
            <br />
            <br />
            <br />
            <p style="font-size: 40px; font-family: 'Segoe UI'; text-align: center">
                No time? No problem.
            </p>
            <p style="font-size: 15px; font-family: 'Segoe UI'; text-align: center;">
                Our schedule is your schedule.
                <br />
                You can choose your own shifts - and your own hours.
                <br />
                All we ask is that you make things sparkle.
            </p>
        </div>
    </div>
</asp:Content>
