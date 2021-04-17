<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Safety.aspx.cs" Inherits="Project.Safety" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="over">
        <!--Div container one-->
        <div style="background-color: #373B44; height: 520px; width: 100%; overflow: hidden;">
            <!--Safety Paragraph-->
            <div style="display: flex">
            <div style="margin:10% 0 0 10%; font-family: georgia; font-size: 75px; vertical-align: middle; color: white;">
                Safety First
            </div>
            <!--Subsearch-->
            <div class="subSearchRight">
            <div class="subText">
                About Us
            </div>
            <div style="border-top: 2px solid white;"></div>
            <div class="subTextTwo">
                <br />
                <a href="HowItWorks.aspx" style="text-decoration: none; color: black">How it Works</a>
                <br />
                <br />
                <a href="Safety.aspx" style="text-decoration: none; color: black">Safety</a>
            </div>
            </div>
            </div>
        <!--Header container-->
        <div style="margin: 2% 0 0 10%; font-family: georgia; font-size: 30px; color: white">
            GoodRoom Inc., we're concerned with
            <br />
            the safety of both our employees
            <br />
            and customers.
        </div>
        </div>
        <!--Beginning of the nested image-->
        <img src="pictures/dentonsquare.jpeg" style="width: 100%; opacity: 0.7; display: flex;"/>
        <div style="margin-top: -690px; height: 680px; width: 100%;">
                <!--box one-->
                <div style="background-color: black; height: 40%; width: 30%; opacity: 0.6; margin: 6% 0 0 20%; border-radius: 4px; ">
                    <p style="text-align: center; font-size: 35px; font-family: Georgia; color: white; justify-content: center;">
                        <br />
                        We run background checks on every employee candidate, so you can rest easy.
                    </p>
                </div>
                <!--box two-->
                <div style="background-color: black; height: 40%; width: 30%; opacity: 0.6; margin: 0 0 0 50%;border-radius: 4px;">
                    <p style="text-align: center; font-size: 35px; font-family: Georgia; color: white; justify-content: center;">
                        <br />
                        We're rolling out a reviews section, so you can choose from only the best.
                    </p>
                </div>
        </div>
    </div>
</asp:Content>
