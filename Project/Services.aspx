<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Services.aspx.cs" Inherits="Project.Services" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="over">
        <img src="pictures/dentonstreet.jpg" style="width: 100%; height: 90%"/>
        <p style="margin-top: -400px; color: white; font-size: 100px; text-align: center; font-family: georgia">
            Services
        </p>
        <p style="color: white; font-size: 35px; text-align:center; font-family: Georgia; margin-top: -7%">
            Schedule your cleaning appointment today!
        </p>
        <div style="margin-top: 220px; background-color: transparent;">

        </div>
        <div style="background-color: transparent; height: 450px; width: 100%;">
            <div style="background-color: #f5f5f5; height: 160px; display: flex;align-content: center; overflow:hidden;">
                <div style="margin:0% 0 0 10%">
                    <br />
                    <img src="pictures/phone.png" style="margin-left: 5%; width: 15%; height: 80%"/>
                    <img src="pictures/calendar.png"  style="margin-left: 15%;  width: 15%; height: 80%"/>
                    <img src="pictures/cleanclip.png"  style="margin-left: 15%; width: 15%; height: 80%"/>
                </div>
            </div>
        <!--Fourth div with actual info-->
            <div style="background-color: #f5f5f5; height: 300px; ">
                <!--flex round one-->
                <div style="margin:0% 0 0 18%;display: flex; overflow: hidden;">
                    <p style="margin-left: 0%; font-size: 30px; font-family: Verdana">
                        Click
                    </p>
                    <p style="margin-left: 25%; font-size: 30px; font-family: Verdana">
                        Choose
                    </p>
                    <p style="margin-left: 25%; font-size: 30px; font-family: Verdana">
                        Clean
                    </p>
                </div>
                <!--flex round two-->
                <div>
                    <div style="margin:0% 0 0 10%;display: flex; overflow: hidden;">
                        <p style="margin-left: 0%; font-size: 16px; font-family: Verdana">
                            Browse through our website and 
                            <br />
                            discover which types of cleanings
                            <br />
                            you want for your dorm room.
                            <br />
                        </p>
                        <p style="margin-left: 7%; font-size: 16px; font-family: Verdana">
                            Choose whatever times are best for
                            <br />
                            you. If an employee is available
                            <br />
                            at that time, then the slot is 
                            <br />
                            yours!
                        </p>
                        <p style="margin-left: 7%; font-size: 16px; font-family: Verdana">
                            Let the employee in to and let 
                            <br />
                            them clean up your room.
                            <br />
                            Final step: Make up with your
                            <br />
                            roommate.
                        </p>
                    </div>

                </div>
            </div>
        </div>
        <!--Fifth div, almost out of the woods-->
        <div style="background-color: #e6e4e2; height: 500px; width: 100%;">
            <div style="display: flex">


            </div>
        </div>
    </div>
</asp:Content>
