<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Start.aspx.cs" Inherits="test1.Start" %>

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
            width: 613px;
            text-align: center;
        }
        .auto-style3 {
            width: 236px;
            text-align: right;
        }
        .auto-style4 {
            width: 49px;
            text-align: center;
        }
        .auto-style5 {
        }
        .auto-style7 {
            width: 135px;
        }
        .auto-style9 {
            width: 236px;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table align="center" class="auto-style1">
            <tr>
                <td class="auto-style4" rowspan="3">
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="120px" ImageUrl="~/Pic/logo.jpg" OnClick="ImageButton1_Click" Width="120px" />
                </td>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="МІНІСТЕРСТВО ОСВІТИ І НАУКИ УКРАЇНИ"></asp:Label>
                </td>
                <td class="auto-style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="ДНІПРОПЕТРОВСЬКИЙ НАЦІОНАЛЬНИЙ УНІВЕРСИТЕТ"></asp:Label>
                </td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Text="Імені Олеся Гончара"></asp:Label>
                </td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style9">
                    <asp:Label ID="Label7" runat="server" Text="ЗАТВЕРДЖУЮ:"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server" style="font-size: larger; font-weight: 700; text-align: center;" Text="РЕГЛАМЕНТ"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:Label ID="Label8" runat="server" Text="Зав. кафедри"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style9">
                    <asp:Label ID="Label9" runat="server" Text="«______» ___________________"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="Label5" runat="server" Text="Роботи науково-педагогічного складу кафедри комп’ютерних технологій"></asp:Label>
                </td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="Label6" runat="server" Text="на другий семестр 2015 /16 навчального року"></asp:Label>
                </td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
        </table>
    
    </div>
        <table class="auto-style1">
                        
            



            <tr>
                <td class="auto-style5" colspan="20">
                    <asp:Table ID="Table1" runat="server">
                       
                         <asp:TableRow runat="server">
                            <asp:TableCell runat="server" RowSpan ="3">№</asp:TableCell>
                            <asp:TableCell runat="server" RowSpan ="3">Прізвище, ім’я та по батькові, посада</asp:TableCell>
                            <asp:TableCell runat="server" ColumnSpan ="18" style="text-align: center">ДНІ ТИЖНЯ</asp:TableCell>
                        </asp:TableRow>

                        <asp:TableRow runat="server">
                            <asp:TableCell runat="server" ColumnSpan ="3" style="text-align: center">Понеділок </asp:TableCell>
                            <asp:TableCell runat="server" ColumnSpan ="3" style="text-align: center">Вівторок</asp:TableCell>
                            <asp:TableCell runat="server" ColumnSpan ="3" style="text-align: center"> Середа</asp:TableCell>
                            <asp:TableCell runat="server" ColumnSpan ="3" style="text-align: center">Четвер</asp:TableCell>
                            <asp:TableCell runat="server" ColumnSpan ="3" style="text-align: center">П’ятниця</asp:TableCell>
                            <asp:TableCell runat="server" ColumnSpan ="3" style="text-align: center">Субота</asp:TableCell>
                        </asp:TableRow>




                         <asp:TableRow runat="server">

                             <asp:TableCell runat="server">Час</asp:TableCell>
                             <asp:TableCell runat="server">Вид роботи</asp:TableCell>
                             <asp:TableCell runat="server">Місце роботи</asp:TableCell>

                             <asp:TableCell runat="server">Час</asp:TableCell>
                             <asp:TableCell runat="server">Вид роботи</asp:TableCell>
                             <asp:TableCell runat="server">Місце роботи</asp:TableCell>

                             <asp:TableCell runat="server">Час</asp:TableCell>
                             <asp:TableCell runat="server">Вид роботи</asp:TableCell>
                             <asp:TableCell runat="server">Місце роботи</asp:TableCell>

                             <asp:TableCell runat="server">Час</asp:TableCell>
                             <asp:TableCell runat="server">Вид роботи</asp:TableCell>
                             <asp:TableCell runat="server">Місце роботи</asp:TableCell>

                             <asp:TableCell runat="server">Час</asp:TableCell>
                             <asp:TableCell runat="server">Вид роботи</asp:TableCell>
                             <asp:TableCell runat="server">Місце роботи</asp:TableCell>

                             <asp:TableCell runat="server">Час</asp:TableCell>
                             <asp:TableCell runat="server">Вид роботи</asp:TableCell>
                             <asp:TableCell runat="server">Місце роботи</asp:TableCell>
                         </asp:TableRow>




                    </asp:Table>
                </td>
            </tr>

            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>

        </table>
        <asp:Label ID="Label18" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        
        <br />
    </form>
</body>
</html>
