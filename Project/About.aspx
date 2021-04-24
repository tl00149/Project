<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Project.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="over">
        <!--Container quote-->
        <div style="height: 170px; width: 100%; margin: -15px; background-color: #bdc3c7">
            <p style="text-align: center; font-family: 'Segoe Script', Cursive;">
                <br />
                "The true sign of intelligence is not
                <br />
                intelligence but imagination"
                <br />
                -Albert Einstein
            </p>
        <div style="border-bottom: 1px solid black; width: 15%; margin: 0 auto;"></div>
        </div>
        <!-- About us container-->
        <div style="height: 450px; width: 100%; background-color: #bdc3c7; overflow: hidden;">
            <!--Search bar-->
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
            <!--About header-->
            <div style="margin: 0% 0 0 10%; font-size: 65px; font-family: georgia;">
                <br />
                About Us
            </div>
            <div style="margin: 0% 0 0 10%; font-size: 20px; font-family: georgia;">
                <br />
                Founded in 2021, we are a team of four students
                <br />
                based out of the University of North Texas.
                <br />
                Serving the students of the community, we seek 
                <br />
                to make life less stressful for students by
                <br />
                providing scheduled cleaning services for
                <br />
                students living in the dorms. Cleanings are
                <br />
                done by students, for students.
            </div>
        </div>
        <!--Pictures container-->
        <div style="height: 300px; width: 100%; background-color: #34568B; overflow: hidden;">
            <p style="text-align: center; vertical-align: middle; font-size: 50px; color: white; font-family: georgia;">
                <br />
                Who We Are
            </p>
        </div>
        <div style="height: 1300px; width: 100%; background-color: ghostwhite">
            <!--hey dawg, we dived ur div so you can div while you div flex-->
            <div style="display: flex;">
                <div style="margin: 10% 0 0 20%;">
                <img src="pictures/me.jpg" style="height: 320px; width: 270px"/>
                    <p>
                        Tae Hwan Lee is the CEO of GoodRoom Inc.
                        <br />
                        and a Senior BCIS and Accounting major 
                        <br />
                        at the University of North Texas. 
                        <br />
                        During his free time, he enjoys 
                        <br />
                        running and reading.
                    </p>
                </div>
                <div style="margin: 10% 0 0 17%;">
                <img src="pictures/ryan.jpg" style=" height: 320px; width: 270px;"/>
                    <p>
                        Ryan Malin is the CFO of GoodRoom Inc.
                        <br />
                        and a Senior BCIS major at the University
                        <br />
                        of North Texas. In his spare time, he 
                        <br />
                        likes to play video games or watch movies.
                    </p>
                </div>
            </div>
            <div style="display: flex;">
                <div style="margin: 10% 0 0 20%;">
                <img src="pictures/huy.jpg" style="height: 320px; width: 270px;"/>
                    <p>
                        Huy Nguyen is the COO of GoodRoom Inc.
                        <br />
                        and a Senior BCIS major 
                        <br />
                        at the University of North Texas. 
                        <br />
                        His hobbies include fishing, playing
                        <br />
                        video games, and hiking.
                    </p>
                </div>
                <div style="margin: 10% 0 0 17%;">
                <img src="pictures/harsh.jpg" style=" height: 320px; width: 270px;"/>
                    <p>
                        Harsh Ramesh is the CMO of GoodRoom Inc.
                        <br />
                        and a Senior BCIS major at the University
                        <br />
                        of North Texas. His hobbies include
                        <br />
                        reading and playing video games.
                    </p>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
