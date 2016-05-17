<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="test1.Admin" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 64px;
        }
        .auto-style4 {
            height: 238px;
            vertical-align:baseline;
        }
        .auto-style6 {
            height: 124px;
        }
        .auto-style7 {
            width: 754px;
            text-align: center;
            height: 124px;
        }
        .auto-style10 {
            width: 133px;
        }
        .auto-style11 {
            height: 238px;
            width: 754px;
            vertical-align:baseline;
            
        }
        .auto-style12 {
            height: 238px;
        }
        .auto-style13 {
            height: 22px;
            width: 754px;
            text-align: center;
            vertical-align: baseline;
        }
        .auto-style14 {
            height: 24px;
            width: 754px;
            text-align: center;
            vertical-align: baseline;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style10">
                    <asp:Image ID="Image1" runat="server" Height="120px" ImageUrl="~/Pic/logo.jpg" Width="120px" style="text-align: left" />
                </td>
                <td class="auto-style7" colspan="2">
                    <asp:Label ID="Label1" runat="server" style="font-size: xx-large; text-align: left; font-weight: 700;" Text="Админка"></asp:Label>
                </td>
                <td style="text-align: right" class="auto-style6">
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="120px" ImageUrl="~/Pic/home.ico" OnClick="ImageButton1_Click" style="text-align: right" ToolTip="На стартовую страницу" Width="120px" />
                </td>
            </tr>
            <tr>
                <td colspan="3" style="text-align: center">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                        SelectCommand="SELECT * FROM [FIO]" 
                        UpdateCommand="UPDATE [FIO] SET [FIO] = @FIO, [Position] = @Position, [Rate] = @Rate, [Phone] = @Phone WHERE [ID] = @original_ID AND [FIO] = @original_FIO AND [Position] = @original_Position AND [Rate] = @original_Rate AND (([Phone] = @original_Phone) OR ([Phone] IS NULL AND @original_Phone IS NULL))" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [FIO] WHERE [ID] = @original_ID AND [FIO] = @original_FIO AND [Position] = @original_Position AND [Rate] = @original_Rate AND (([Phone] = @original_Phone) OR ([Phone] IS NULL AND @original_Phone IS NULL))" InsertCommand="INSERT INTO [FIO] ([ID], [FIO], [Position], [Rate], [Phone]) VALUES (@ID, @FIO, @Position, @Rate, @Phone)" OldValuesParameterFormatString="original_{0}"
                        >
                        <DeleteParameters>
                            <asp:Parameter Name="original_ID" Type="Int32" />
                            <asp:Parameter Name="original_FIO" Type="String" />
                            <asp:Parameter Name="original_Position" Type="String" />
                            <asp:Parameter Name="original_Rate" Type="String" />
                            <asp:Parameter Name="original_Phone" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="ID" Type="Int32" />
                            <asp:Parameter Name="FIO" Type="String" />
                            <asp:Parameter Name="Position" Type="String" />
                            <asp:Parameter Name="Rate" Type="String" />
                            <asp:Parameter Name="Phone" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="FIO" Type="String" />
                            <asp:Parameter Name="Position" Type="String" />
                            <asp:Parameter Name="Rate" Type="String" />
                            <asp:Parameter Name="Phone" Type="String" />
                            <asp:Parameter Name="original_ID" Type="Int32" />
                            <asp:Parameter Name="original_FIO" Type="String" />
                            <asp:Parameter Name="original_Position" Type="String" />
                            <asp:Parameter Name="original_Rate" Type="String" />
                            <asp:Parameter Name="original_Phone" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>

                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [Week] WHERE ([ID] = @ID) ORDER BY [DayID], [TimeStart]" OldValuesParameterFormatString="original_{0}" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Week] WHERE [IDnum] = @original_IDnum AND [ID] = @original_ID AND [DayID] = @original_DayID AND [Day] = @original_Day AND [TimeStart] = @original_TimeStart AND [TimeEnd] = @original_TimeEnd AND [KindWork] = @original_KindWork AND [WorkPlace] = @original_WorkPlace" 
                        InsertCommand="INSERT INTO [Week] ([ID], [DayID], [Day], [TimeStart], [TimeEnd], [KindWork], [WorkPlace]) VALUES (@ID, @DayID, @Day, @TimeStart, @TimeEnd, @KindWork, @WorkPlace)" 
                        UpdateCommand="UPDATE [Week] SET [ID] = @ID, [DayID] = @DayID, [Day] = @Day, [TimeStart] = @TimeStart, [TimeEnd] = @TimeEnd, [KindWork] = @KindWork, [WorkPlace] = @WorkPlace WHERE [IDnum] = @original_IDnum AND [ID] = @original_ID AND [DayID] = @original_DayID AND [Day] = @original_Day AND [TimeStart] = @original_TimeStart AND [TimeEnd] = @original_TimeEnd AND [KindWork] = @original_KindWork AND [WorkPlace] = @original_WorkPlace"
                        >
                        <DeleteParameters>
                            <asp:Parameter Name="original_IDnum" Type="Int32" />
                            <asp:Parameter Name="original_ID" Type="Int32" />
                            <asp:Parameter Name="original_DayID" Type="Int32" />
                            <asp:Parameter Name="original_Day" Type="String" />
                            <asp:Parameter Name="original_TimeStart" DbType="Time" />
                            <asp:Parameter Name="original_TimeEnd" DbType="Time" />
                            <asp:Parameter Name="original_KindWork" Type="String" />
                            <asp:Parameter Name="original_WorkPlace" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="ID" Type="Int32" />
                            <asp:Parameter Name="DayID" Type="Int32" />
                            <asp:Parameter Name="Day" Type="String" />
                            <asp:Parameter Name="TimeStart" DbType="Time" />
                            <asp:Parameter Name="TimeEnd" DbType="Time" />
                            <asp:Parameter Name="KindWork" Type="String" />
                            <asp:Parameter Name="WorkPlace" Type="String" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="GridView1" Name="ID" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="ID" Type="Int32" />
                            <asp:Parameter Name="DayID" Type="Int32" />
                            <asp:Parameter Name="Day" Type="String" />
                            <asp:Parameter Name="TimeStart" DbType="Time" />
                            <asp:Parameter Name="TimeEnd" DbType="Time" />
                            <asp:Parameter Name="KindWork" Type="String" />
                            <asp:Parameter Name="WorkPlace" Type="String" />
                            <asp:Parameter Name="original_IDnum" Type="Int32" />
                            <asp:Parameter Name="original_ID" Type="Int32" />
                            <asp:Parameter Name="original_DayID" Type="Int32" />
                            <asp:Parameter Name="original_Day" Type="String" />
                            <asp:Parameter Name="original_TimeStart" DbType="Time" />
                            <asp:Parameter Name="original_TimeEnd" DbType="Time" />
                            <asp:Parameter Name="original_KindWork" Type="String" />
                            <asp:Parameter Name="original_WorkPlace" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [WorkTime] WHERE ([Id] = @Id)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="GridView1" Name="Id" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" OnSelecting="SqlDataSource4_Selecting" SelectCommand="SELECT [ID] FROM [FIO] WHERE ([RatePos] = @RatePos)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="tr" Name="RatePos" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:Label ID="Label8" runat="server" ForeColor="#FF3300"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style4" rowspan="9">
                    <br />

                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" style="text-align: left" Width="500px" >
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" InsertVisible="False" />
                            <asp:BoundField DataField="FIO" HeaderText="FIO" SortExpression="FIO" />
                            <asp:BoundField DataField="Position" HeaderText="Position" SortExpression="Position" />
                            <asp:BoundField DataField="Rate" HeaderText="Rate" SortExpression="Rate" />
                            <asp:BoundField DataField="RatePos" HeaderText="RatePos" SortExpression="RatePos" />
                            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                            <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                    <br />
                    <br />
                </td>
                <td class="auto-style13">
                    <asp:Label ID="Label2" runat="server" Text="Добавить" style="font-size: x-large; font-weight: 700"></asp:Label>
                    </td>
                <td class="auto-style12" rowspan="9"></td>
            </tr>
            <tr>
                <td class="auto-style14">
                    <asp:Label ID="Label3" runat="server" style="text-align: left" Text="ID:"></asp:Label>
                    &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="ID" DataValueField="ID">
                        <asp:ListItem Selected="True" Value="1"></asp:ListItem>
                    </asp:DropDownList>
&nbsp;<asp:Label ID="Label4" runat="server" Text="День:"></asp:Label>
                    <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem Value="Понедельник" Selected="True">Понедельник</asp:ListItem>
                        <asp:ListItem Value="Вторник">Вторник</asp:ListItem>
                        <asp:ListItem Value="Среда">Среда</asp:ListItem>
                        <asp:ListItem Value="Четверг">Четверг</asp:ListItem>
                        <asp:ListItem Value="Пятница">Пятница</asp:ListItem>
                        <asp:ListItem Value="Суббота">Суббота</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <asp:Label ID="Label5" runat="server" Text="Время начала:"></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:Label ID="Label9" runat="server" Text="Время завершения:"></asp:Label>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:Label ID="Label6" runat="server" Text="Вид работы: "></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <asp:Label ID="Label7" runat="server" Text="Место работы:"></asp:Label>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:Button ID="Button1" runat="server" Text="ОК" Width="120px" OnClick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:Label ID="Label10" runat="server" Text="Добавить заседание кафедры" style="font-size: x-large; font-weight: 700"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:Label ID="Label11" runat="server" Text="День:"></asp:Label>
                    <asp:DropDownList ID="DropDownList3" runat="server">
                        <asp:ListItem Value="Понедельник" Selected="True">Понедельник</asp:ListItem>
                        <asp:ListItem Value="Вторник">Вторник</asp:ListItem>
                        <asp:ListItem Value="Среда">Среда</asp:ListItem>
                        <asp:ListItem Value="Четверг">Четверг</asp:ListItem>
                        <asp:ListItem Value="Пятница">Пятница</asp:ListItem>
                        <asp:ListItem Value="Суббота">Суббота</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Label ID="Label14" runat="server" Text="Место работы:"></asp:Label>
                    <asp:TextBox ID="TextBox7" runat="server" OnTextChanged="TextBox7_TextChanged"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:Label ID="Label12" runat="server" Text="Время начала:"></asp:Label>
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    <asp:Label ID="Label13" runat="server" Text="Время завершения:"></asp:Label>
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="ОК" Width="120px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <asp:Button ID="Button2" runat="server" Text="Обновить" />
                    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                            <asp:BoundField DataField="Monday" HeaderText="Monday" SortExpression="Monday" />
                            <asp:BoundField DataField="Tuesday" HeaderText="Tuesday" SortExpression="Tuesday" />
                            <asp:BoundField DataField="Wednesday" HeaderText="Wednesday" SortExpression="Wednesday" />
                            <asp:BoundField DataField="Thursday" HeaderText="Thursday" SortExpression="Thursday" />
                            <asp:BoundField DataField="Friday" HeaderText="Friday" SortExpression="Friday" />
                            <asp:BoundField DataField="Saturday" HeaderText="Saturday" SortExpression="Saturday" />
                            <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                    <br />
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" style="text-align: center" Width="500px" DataKeyNames="IDnum">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:BoundField DataField="IDnum" HeaderText="IDnum" ReadOnly="True" SortExpression="IDnum" InsertVisible="False" />
                            <asp:BoundField DataField="ID" HeaderText="ID"  SortExpression="ID" />
                            <asp:BoundField DataField="DayID" HeaderText="DayID" SortExpression="DayID" />
                            <asp:BoundField DataField="Day" HeaderText="Day" SortExpression="Day" />
                            <asp:BoundField DataField="TimeStart" HeaderText="TimeStart" SortExpression="TimeStart" />
                            <asp:BoundField DataField="TimeEnd" HeaderText="TimeEnd" SortExpression="TimeEnd" />
                            <asp:BoundField DataField="KindWork" HeaderText="KindWork" SortExpression="KindWork" />
                            <asp:BoundField DataField="WorkPlace" HeaderText="WorkPlace" SortExpression="WorkPlace" />
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                    </td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="3">&nbsp;</td>
                <td style="text-align: right">
                    <asp:ImageButton ID="ImageButton3" runat="server" Height="120px" ImageUrl="~/Pic/refresh.png" ToolTip="Обновить данные на стартовой странице" Width="120px" style="text-align: right" OnClick="ImageButton3_Click" />
                </td>
            </tr>
            </table>
    
    </div>
    </form>
</body>
</html>
