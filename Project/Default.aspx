<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Project.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="over">
        <!--Eagle image overlay-->
        <div>
            <img src="pictures/UNT.jpg" style="height: 400px; width: 100%"/>
            <p style="margin-top: -350px; font-size: 120px; text-align: center; color: white;">GoodRoom Inc.</p>
            <p style="margin-top: -110px; font-size: 55px; text-align: center; color: white;">Denton, TX</p>
        </div>
        <!--Text following image-->
        <div style="height: 500px; width: 100%; background-color: #e6e4e2; margin-top: 9%">
            <p style="text-align: center; font-size: 50px; font-family:'Segoe UI'; font-style: italic;">
                <br />
                <br />
                A new way to clean
            </p>
            <p style="text-align: center; font-size: 17px; font-family:'Segoe UI'">
                Nobody likes a dirty roommate, and we don't either.
                <br />
                We at GoodRoom Inc. want to make the world a cleaner place.
                <br />
                Our services help you keep your space tidy and neat, so you
                can cram in peace.
            </p>
        </div>
        <!--second image container-->
        <div style="height: 500px; width: 100%; background-color: silver; margin-top: 0%">
            <img src="pictures/UNTNIGHT.jpg" style="height:500px; width: 100%"/>
            <p style="margin-top: -350px; font-size: 29px; text-align: center; color: white;">
                Headquartered here at UNT, we service every dorm on campus.
                <br />
                <br />
                "By the students, for the students"
                <br />
                We hire students to help other students!
                <br />

            </p>
        </div>
        <div style="height: 425px; width: 100%; background-color: white; margin-top: 0%">
            <p style="text-align: center; font-size: 50px; font-family:'Segoe UI'; font-style: italic;">
                <br />
                Curious for more?
            </p>
            <p style="text-align: center; font-size: 17px; font-family:'Segoe UI';">

                Call us at (999) 999-9999 or
                <br />
                email us at Cleaners@CleanRoom.com.
                <br />
                <br />
                Shy? Click through our website to apply online.
            </p>
        </div>
    </div>
</asp:Content>
