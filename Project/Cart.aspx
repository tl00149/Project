<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Project.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="over">
        <div style="background-color: transparent; height: 500px; width: 90%; margin: 3% 0 0 5%; border: 1px solid #dddddd;">
            <div style="text-align: center; font-size: 40px; margin: 2%;">
                Cart
            </div>
            <div style="display: flex; align-items: center; justify-content: center; margin: 1%;">
                <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="Service" HeaderText="Service" SortExpression="Service"></asp:BoundField>
                        <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" ReadOnly="True"></asp:BoundField>
                        <asp:BoundField DataField="Subtotal" HeaderText="Subtotal" SortExpression="Subtotal" ReadOnly="True"></asp:BoundField>
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:Team13ConnectionString %>' SelectCommand='SELECT Serv_Name as "Service", SUM(Serv_Qty) as "Quantity", SUM(Serv_Qty * Serv_Price) AS "Subtotal"
                     FROM [Ca] INNER JOIN Service ON (Ca.Serv_ID = Service.Serv_ID)
                    WHERE ([Li_ID] = @Li_ID)
                    Group by Serv_Name;'>
                    <SelectParameters>
                        <asp:SessionParameter SessionField="Cust_ID" Name="Li_ID" Type="Int32"></asp:SessionParameter>
                    </SelectParameters>
                </asp:SqlDataSource>
                
            </div>
            <div style="display: flex; justify-content: center; margin: 5%">
                <br />
                <br />
                <asp:GridView ID="GridView2" runat="server" DataSourceID="Source5"></asp:GridView>

            </div>
            <!--Checkout button-->
            <div style="display: flex; align-items: center; justify-content: center;">
                    <asp:button class="buttonReg" style="margin-top: 3%;" id="btnCart" runat="server" Text="Checkout" OnClick="cart_Click"/>
            </div>
            <!--Clear cart button-->
            <div style="display:flex; margin: 0 auto; justify-content: center;">
                <asp:button class="buttonReg" style="margin-top: 2%; background-color: indianred;" id="btnClearCart" runat="server" Text="Clear Cart" OnClick="btnClearCart_Click"/>
            </div>
        </div>
    </div>
    <asp:SqlDataSource ID="Source5" runat="server" ConnectionString='<%$ ConnectionStrings:Team13ConnectionString %>' SelectCommand='SELECT SUM(Ca.Serv_Qty*Service.Serv_Price) as "Total"
    FROM [Ca] 
    INNER JOIN Service ON (CA.Serv_ID = Service.Serv_ID)
    WHERE ([Li_ID] = @Li_ID);'>
        <SelectParameters>
            <asp:SessionParameter SessionField="Cust_ID" Name="Li_ID"></asp:SessionParameter>
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString='<%$ ConnectionStrings:Team13ConnectionString %>' SelectCommand="SELECT * FROM [Ca] WHERE ([Li_ID] = @Li_ID)" DeleteCommand="DELETE Serv_Name, SUM(Serv_Qty), SUM(Serv_Qty * Serv_Price)
FROM [Ca] INNER JOIN Service ON (Ca.Serv_ID = Service.Serv_ID)
WHERE ([Li_ID] = @Li_ID)
Group by Serv_Name;">
        <DeleteParameters>
            <asp:Parameter Name="Li_ID"></asp:Parameter>
        </DeleteParameters>
        <SelectParameters>
            <asp:SessionParameter SessionField="Cust_ID" Name="Li_ID" Type="Int32"></asp:SessionParameter>
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
