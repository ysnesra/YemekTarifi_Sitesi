<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="YemekTarifi_Sitesi.iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style5 {
        width: 100%;
    }
    .auto-style6 {
        font-weight: bold;
            background-color: #FF6666;
        }
    .auto-style7 {
        text-align: right;
    }
    .auto-style8 {
        font-size: large;
        background-color: #4892B2;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style5">
    <tr>
        <td class="auto-style8" colspan="2"><strong>MESAJ PANELİ</strong></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7"><strong>Ad Soyad:</strong></td>
        <td>
            <asp:TextBox ID="TxtGonderen" runat="server" CssClass="tb5" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7"><strong>Mail Adresiniz:</strong></td>
        <td>
            <asp:TextBox ID="TxtMail" runat="server" CssClass="tb5" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7"><strong>Konu:</strong></td>
        <td>
            <asp:TextBox ID="TxtBaslik" runat="server" CssClass="tb5" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7"><strong>Mesaj:</strong></td>
        <td>
            <asp:TextBox ID="TxtMesaj" runat="server" CssClass="tb5" Height="150px" TextMode="MultiLine" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td><strong>
            <asp:Button ID="BtnMesajGonder" runat="server" CssClass="fb8" BackColor="#FF6666" Height="35px" Text="Gönder" Width="250px" OnClick="Button1_Click1" />
            </strong></td>
    </tr>
</table>
</asp:Content>
