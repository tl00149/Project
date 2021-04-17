<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="HowItWorks.aspx.cs" Inherits="Project.HowItWorks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="over" style="">
        <!--Picture-->
        <img src="pictures/HIWImage.jpg" style="width: 100%; height: 610px"/>
        <div style="margin-top: -450px; text-align: center; color: white; font-size: 70px">
            We hate your messy
            <br />
            roommate too.
        </div>
        <!--Second container for message-->
        <div style="margin-top: 285px; height: 70px; background-color: #e6e6fa; text-align: center; overflow: hidden;">
            <p style="font-size: 40px; margin-top:1%">
                Confused? We've got you covered.
            </p>
        </div>
        <!--Third container with info (flex)-->
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
</asp:Content>
