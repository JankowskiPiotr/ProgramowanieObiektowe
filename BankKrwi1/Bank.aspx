<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Bank.aspx.cs" Inherits="Bank" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 223px;
        }
        .auto-style3 {
            width: 312px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Bank Krwi<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:defaultConnectionString %>" SelectCommand="SELECT * FROM [Table]"></asp:SqlDataSource>
        </div>

        <div>


            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">ID użytkownika</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtId" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Imię</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtImie" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtImie" ErrorMessage="Wprowadź imię" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Nazwisko</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtNazwisko" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtNazwisko" ErrorMessage="Wprowadź nazwisko" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Kontakt</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtKontakt" runat="server" MaxLength="9"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Wiek</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtWiek" runat="server"></asp:TextBox>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtWiek" ErrorMessage="Wprowadź wiek 18-65" ForeColor="Red" MaximumValue="65" MinimumValue="18"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">E-mail</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail" ErrorMessage="Wprowadź e-mail" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Niepoprawny adres e-mail" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Adres</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtAdres" runat="server" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Grupa krwi</td>
                    <td class="auto-style3">
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>Wybierz grupę krwii</asp:ListItem>
                            <asp:ListItem>0 Rh -</asp:ListItem>
                            <asp:ListItem>0 Rh +</asp:ListItem>
                            <asp:ListItem>A Rh -</asp:ListItem>
                            <asp:ListItem>A Rh +</asp:ListItem>
                            <asp:ListItem>B Rh -</asp:ListItem>
                            <asp:ListItem>B Rh +</asp:ListItem>
                            <asp:ListItem>AB Rh -</asp:ListItem>
                            <asp:ListItem>AB Rh +</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Wybierz grupę krwii" ForeColor="Red" InitialValue="Wybierz grupę krwii"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Zapisz" />
                    </td>
                    <td class="auto-style3">
                        <asp:Button ID="Button2" runat="server" Text="Pokaż" />
                    </td>
                </tr>
            </table>


        </div>
    </form>
</body>
</html>
