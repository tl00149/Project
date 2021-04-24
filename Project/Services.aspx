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
        <div style="background-color: green; height: 350px; width: 100%;">
            <div style="background-color: #f5f5f5; height: 150px; display: flex;align-content: center; overflow:hidden;">
                <div style="margin:0% 0 0 10%">
                    <br />
                    <img src="pictures/phone.png" style="margin-left: 5%; width: 15%; height: 80%"/>
                    <img src="pictures/calendar.png"  style="margin-left: 15%;  width: 15%; height: 80%"/>
                    <img src="pictures/cleanclip.png"  style="margin-left: 15%; width: 15%; height: 80%"/>
                </div>
            </div>
        <!--Fourth div with actual info-->
            <div style="background-color: #f5f5f5; height: 200px; ">
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
        <div style="background-color: #e6e4e2; height: 570px; width: 100%;">
            <div style="display: flex;">
                <!--Left-->
                <div style="height: 550px; width: 50%; background-color: #373B44;">
                    <div class="centerStage" style="font-size: 35px; font-family: Georgia; color: white; margin: 8%">
                        <br />
                        Services
                    </div>
                    <!--Category-->
                    <div style="display: flex; overflow: hidden; margin-top: 1%">
                        <p style="font-size: 20px; font-family: Georgia; color: white; margin: 0 0 0 5%">
                            Category:
                        </p>
                        <asp:DropDownList runat="server" ID="ddlType" class="select2" Style="width: 55%; margin-left: 13%" DataSourceID="Source1" DataTextField="Serv_Category" DataValueField="Serv_Category" AutoPostBack="true"></asp:DropDownList>
                    </div>
                    <!--Products submenu-->
                    <div style="display: flex; margin: 5%">
                        <p  style="font-size: 20px; font-family: Georgia; color: white; margin: 0 0 0 0%">
                            Service Type:
                        </p>
                        <asp:DropDownList ID="ddlMonth" runat="server" class="select2" style="width: 61%; margin-left: 9%;" DataSourceID="Source2" DataTextField="Serv_Name" DataValueField="Serv_ID" OnSelectedIndexChanged="ddlMonth_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                    </div>
                    <!--Quantity-->
                    <div style="display: flex;">
                        <p  style="font-size: 20px; font-family: Georgia; color: white; margin: 0 0 0 5%">
                            Quantity: 
                        </p>
                        <div style="margin: 0 0 0 14%">
                            <asp:DropDownList class="select" style="margin: 0 0 0 0%; width:100%; height: 25px" ID="ddlQty" runat="server" OnSelectedIndexChanged="ddlMonth_SelectedIndexChanged">
                                <asp:ListItem Value="1">1</asp:ListItem>
                                <asp:ListItem Value="2">2</asp:ListItem>
                                <asp:ListItem Value="3">3</asp:ListItem>
                                <asp:ListItem Value="4">4</asp:ListItem>
                                <asp:ListItem Value="5">5</asp:ListItem>
                            </asp:DropDownList>        
                        </div>
                    </div>
                    <!--Submit button-->
                    <div class="centerStage">
                        <asp:button class="buttonReg" style="margin-top: 10%;" id="btnAddCart" runat="server" Text="Add to Cart" OnClick="btnAddCart_Click"/>
                    </div>
                </div>
                <!--Right side-->
                <div style="height: 550px; width: 50%; background-color: #34568B; overflow: hidden;">
                    <div class="centerStage" style="background-color: #34568B; height: 150px; width: 100%; margin: 10% 0 0 0">
                        <asp:Image ID="imgPic" runat="server" style="margin: 3%"/>
                    </div>
                    <div class="centerStage" style="background-color: #34568B; height: 10%; width: 100%; margin: 0% 0 0 0">
                        <asp:Label ID="lblPrice" runat="server" Text="lblPrice" style="font-size: 30px; color: white; margin: 5%"></asp:Label>
                    </div>
                    <div style="display: flex; justify-content: center; background-color: #34568B; height: 80%; width: 100%; margin: 0% 0 0 0%">
                        <asp:Label ID="lblDesc" runat="server" Text="lblDesc" style="text-align: center;font-size: 20px; color: white; font-family: georgia; margin: 10%"></asp:Label>
                    </div>
                    <asp:Label ID="lblID" runat="server" Text="lblID" Visible="False"></asp:Label>
                </div>
            </div>
            </div>
        </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:Team13ConnectionString %>' SelectCommand="SELECT [Category_Category] FROM [Category]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString='<%$ ConnectionStrings:Team13ConnectionString %>' SelectCommand="SELECT [Emp_Month] FROM [Emp_Schedule] INNER JOIN [Category] ON Category_Category = Emp_Schedule.Emp_Category;"></asp:SqlDataSource>
    <asp:SqlDataSource ID="Source1" runat="server" ConnectionString='<%$ ConnectionStrings:Team13ConnectionString %>' SelectCommand="SELECT DISTINCT [Serv_Category] FROM [Service]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="Source2" runat="server" ConnectionString='<%$ ConnectionStrings:Team13ConnectionString %>' SelectCommand="SELECT * FROM [Service] WHERE ([Serv_Category] = @Serv_Category)">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlType" PropertyName="SelectedValue" Name="Serv_Category" Type="String"></asp:ControlParameter>
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="Source3" runat="server" ConnectionString='<%$ ConnectionStrings:Team13ConnectionString %>' SelectCommand="SELECT * FROM [Service] WHERE ([Serv_ID] = @Serv_ID)">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlMonth" PropertyName="SelectedValue" Name="Serv_ID" Type="Int32"></asp:ControlParameter>
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="Source4" runat="server" ConnectionString='<%$ ConnectionStrings:Team13ConnectionString %>' SelectCommand="SELECT * FROM [Ca]" InsertCommand="INSERT INTO [Ca] ([Li_ID], [Serv_ID], [Serv_Qty]) VALUES (@Li_ID, @Serv_ID, @Serv_Qty)" UpdateCommand="UPDATE [Ca] SET [Li_ID] = @Li_ID, [Serv_ID] = @Serv_ID, [Serv_Qty] = @Serv_Qty WHERE [Ca_ID] = @Ca_ID">
        <InsertParameters>
            <asp:Parameter Name="Li_ID"></asp:Parameter>
            <asp:Parameter Name="Serv_ID"></asp:Parameter>
            <asp:Parameter Name="Serv_Qty"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Li_ID"></asp:Parameter>
            <asp:Parameter Name="Serv_ID"></asp:Parameter>
            <asp:Parameter Name="Serv_Qty"></asp:Parameter>
            <asp:Parameter Name="Ca_ID"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>
