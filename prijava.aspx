<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="prijava.aspx.cs" Inherits="Domaci.prijava" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1> Prijava </h1>
            <br />
            Prezime i ime:
            <asp:TextBox ID="txtIme" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="txtImeValidator"
                ErrorMessage="Required"
                ControlToValidate="txtIme"
                Display="Static"
                ForeColor="Red"
                SetFocusOnError="true"
                ValidatonGroup="Group1"
                EnableClientscript="false"
                runat="server"></asp:RequiredFieldValidator>
            <br />
            Email:
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="txtEmailValidator"
                ErrorMessage="Required"
                ControlToValidate="txtEmail"
                Display="Static"
                ForeColor="Red"
                SetFocusOnError="true"
                ValidatonGroup="Group1"
                EnableClientScript="false"
                runat="server"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="txtEmailFormat"
                ErrorMessage="Nije u ispravnom formatu"
                ControlToValidate="txtEmail"
                ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"
                Display="Static"
                ForeColor="Red"
                SetFocusOnError="true"
                ValidatonGroup="Group1"
                EnableClientScript="false"
                runat="server"></asp:RegularExpressionValidator>
            Potvrdi email: 
            <asp:TextBox ID="txtPotvrda"
                runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="txtPotvrdaValidator"
                ErrorMessage="Required"
                ControlToValidate="txtPotvrda"
                Display="Static"
                ForeColor="Red"
                SetFocusOnError="True"
                ValidationGroup="Group1"
                EnableClientScript="False"
                runat="server"></asp:RequiredFieldValidator>
            <asp:CompareValidator
                ID="txtUporediValidator"
                ErrorMessage="Email se ne poklapa"
                ControlToCompare="txtPotvrda"
                ControlToValidate="txtEmail"
                Display="Static"
                ForeColor="Red"
                SetFocusOnError="True"
                ValidationGroup="Group1"
                EnableClientScript="False"
                runat="server" ></asp:CompareValidator>
            <br />
            Godina rodjenja: 
            <asp:TextBox ID="txtGodinaRodjenja" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="txtGodinaRodjenjaValidator"
                ErrorMessage="Required"
                ControlToValidate="txtGodinaRodjenja"
                Display="Static"
                ForeColor="Red"
                SetFocusOnError="True"
                ValidationGroup="Group1"
                EnableClientScript="False"
                runat="server"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="txtGodineValidator"
                ErrorMessage="Range (2003-2010)"
                ControlToValidate="txtGodinaRodjenja"
                Display="Static"
                ForeColor="Red"
                SetFocusOnError="True"
                ValidationGroup="Group1"
                EnableClientScript="False"
                MinimumValue="2003"
                MaximumValue="2010"
                Type="Integer"
                runat="server"></asp:RangeValidator>
            <br />
            Razred:
            <asp:RadioButtonList ID="rblRazred" runat="server">
                <asp:ListItem Text="I" Value="0"></asp:ListItem>
                <asp:ListItem Text="II" Value="1"></asp:ListItem>
                <asp:ListItem Text="III" Value="2"></asp:ListItem>
                <asp:ListItem Text="IV" Value="3"></asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="rblRazredValidator"
                ErrorMessage="Required"
                ControlToValidate="rblRazred"
                Display="Static"
                ForeColor="Red"
                SetFocusOnError="true"
                ValidatonGroup="Group1"
                EnableClientScript="false"
                runat="server"></asp:RequiredFieldValidator>
            <br />
            <asp:Button ID="btnPrijava"
                ValidationGroup="Group1"
                CausesValidation="true"
                OnClick="btnPrijava_Click"
                Text="Prijavi se"
                runat="server"/>
            <br />
            <asp:Label ID="lblIzvestaj" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
