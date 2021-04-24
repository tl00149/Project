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
        <div style="background-color:#65000b; height: 300px; width: 100%; overflow: hidden; display: flex; justify-content: center;">
            <p style="color: white; font-size: 40px; font-family: georgia; margin: 10%">Track your shifts and hours here. </p>
        </div>
        <!--Container two-->
        <div style="background-color: #e6e4e2; height: 700px; width: 100%; overflow: hidden; display: flex;">
                <div style="background-color: dimgray; height: 45%; width: 35%; margin: 5% 0 0 10%; border-radius: 3px; overflow: hidden">
                    <div style="color: white; font-family: Georgia; text-align:center; font-size: 40px; margin-top: 3%">
                        Schedule
                    </div>
                    <div style="display: flex; color: white;">

                        <p style="font-family: georgia; margin: 2% 0 0 15%;">
                            Month
                        </p>
                        <p style="font-family: georgia; margin: 2% 0 0 33%">
                            Day
                        </p>
                        <p style="font-family: georgia; margin: 2% 0 0 15%">
                            Year
                        </p>
                    </div>
                    <div style="display: flex;">

                        <asp:DropDownList runat="server" id="styFall" class="select">
                            <asp:ListItem Value="Select Month">--Select Month--</asp:ListItem>
                            <asp:ListItem Value="January">January</asp:ListItem>
                            <asp:ListItem Value="February">February</asp:ListItem>
                            <asp:ListItem Value="March">March</asp:ListItem>
                            <asp:ListItem Value="April">April</asp:ListItem>
                            <asp:ListItem Value="May">May</asp:ListItem>
                            <asp:ListItem Value="June">June</asp:ListItem>
                            <asp:ListItem Value="July">July</asp:ListItem>
                            <asp:ListItem Value="August">August</asp:ListItem>
                            <asp:ListItem Value="September">September</asp:ListItem>
                            <asp:ListItem Value="October">October</asp:ListItem>
                            <asp:ListItem Value="November">November</asp:ListItem>
                            <asp:ListItem Value="December">December</asp:ListItem>
                        </asp:DropDownList>

                         <asp:TextBox class="updateInputTwo" style="margin: 2% 0 0 4%; width: 20%" id="txtEmpDay" type="text" name="userForm" value="" placeholder="Day" runat="server"/>

                        <asp:DropDownList runat="server" id="styEmpYear" class="select" style="width: 24%;">
                            <asp:ListItem Value="2021">2021</asp:ListItem>
                            <asp:ListItem Value="2022">2022</asp:ListItem>
                        </asp:DropDownList>

                    </div>
                    <div style="display: flex">
                        <p style="font-family: georgia; margin: 2% 0 0 15%; color: white">
                            Shift
                        </p>
                        <p style="font-family: georgia; margin: 2% 0 0 37%; color: white">
                            Service Type
                        </p>
                    </div>
                    <div style="display: flex;">
                        <asp:DropDownList runat="server" id="styEmpShift" class="select" style="width: 45%;">
                            <asp:ListItem Value="9:00am - 10:00am">9:00am - 10:00am</asp:ListItem>
                            <asp:ListItem Value="10:00am - 11:00am">10:00am - 11:00am</asp:ListItem>
                            <asp:ListItem Value="11:00am - 12:00pm">11:00am - 12:00pm</asp:ListItem>
                            <asp:ListItem Value="1:00pm - 1:00pm">1:00pm - 2:00pm</asp:ListItem>
                            <asp:ListItem Value="2:00pm - 3:00pm">2:00pm - 3:00pm</asp:ListItem>
                            <asp:ListItem Value="3:00pm - 4:00pm">2:00pm - 3:00pm</asp:ListItem>

                        </asp:DropDownList>

                        <asp:DropDownList runat="server" id="styEmpCategory" class="select" style="width: 40%; margin-left: 4%">
                            <asp:ListItem Value="Bathroom Cleaning">Bathroom Cleaning</asp:ListItem>
                            <asp:ListItem Value="Room Cleaning">Room Cleaning</asp:ListItem>
                            <asp:ListItem Value="Laundry Service">Laundry Service</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <!--Submit Button  OnClick="RegisterButton_Click"/-->
                    <br />
                    <br />
                    <asp:button class="buttonReg" style="margin: 5% 0 0 40%;" id="EmployeeButton" runat="server" Text="Submit" OnClick="Schedule_Button"/>
                </div>

                <div style="background-color: dimgray; height: 80%; width: 30%; margin: 5% 0 0 10%; border-radius: 3px; overflow: hidden">
                    <div style="color: white; font-family: Georgia; text-align:center; font-size: 40px; margin-top: 3%">
                        Scheduled Shifts
                    </div>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="EmpDB" BackColor="White" BorderColor="White" AllowPaging="True">
                        <Columns>
                            <asp:BoundField DataField="Cust_FName" HeaderText="First Name" SortExpression="Cust_Login.Cust_FName"></asp:BoundField>
                            <asp:BoundField DataField="Cust_LName" HeaderText="Last Name" SortExpression="Cust_Login.Cust_LName"></asp:BoundField>
                            <asp:BoundField DataField="Emp_Month" HeaderText="Month" SortExpression="Emp_Schedule.Emp_Month"></asp:BoundField>
                            <asp:BoundField DataField="Emp_Day" HeaderText="Day" SortExpression="Emp_Schedule.Emp_Day"></asp:BoundField>
                            <asp:BoundField DataField="Emp_Year" HeaderText="Year" SortExpression="Emp_Schedule.Emp_Year"></asp:BoundField>
                            <asp:BoundField DataField="Emp_Hour" HeaderText="Hour" SortExpression="Emp_Schedule.Emp_Hour"></asp:BoundField>
                            <asp:BoundField DataField="Emp_Category" HeaderText="Category" SortExpression="Emp_Schedule.Emp_Category"></asp:BoundField>
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource runat="server" ID="EmpDB" ConnectionString='<%$ ConnectionStrings:Team13ConnectionString %>' SelectCommand="SELECT Cust_Login.Cust_FName, Cust_Login.Cust_LName, Emp_Schedule.Emp_Month, Emp_Schedule.Emp_Day, Emp_Schedule.Emp_Year, Emp_Schedule.Emp_Hour, Emp_Schedule.Cust_ID, Emp_Schedule.Emp_Category 
                    FROM [Cust_Login] INNER JOIN [Emp_Schedule] ON Cust_Login.Cust_ID = Emp_Schedule.Cust_ID;" InsertCommand="INSERT INTO [Emp_Schedule] ([Emp_Month], [Emp_Day], [Emp_Year], [Emp_Hour], [Cust_ID], [Emp_Category]) VALUES (@EMonth, @EDay, @EYear, @EHour, @Cust_ID, @ECategory)"></asp:SqlDataSource>

                </div>
        </div>
    </div>
</asp:Content>
