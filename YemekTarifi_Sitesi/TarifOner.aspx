<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="TarifOner.aspx.cs" Inherits="YemekTarifi_Sitesi.TarifOner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 100%;
        }
        .auto-style13 {
            width: 173px;
        }
        .auto-style14 {
            width: 173px;
            text-align: right;
        }
        .auto-style15 {
            background-color: #FF6666;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style4">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <table class="auto-style4">
        <tr>
            <td class="auto-style14">Tarif Ad:</td>
            <td>
                <asp:TextBox ID="TxtTarifAd" runat="server" CssClass="tb5" Width="250px"></asp:TextBox>
            </td>
        </tr>
    </table>
    <table class="auto-style4">
        <tr>
            <td class="auto-style14">Malzemeler:</td>
            <td>
                <asp:TextBox ID="TxtMalzemeler" runat="server" Height="80px" TextMode="MultiLine" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
    </table>
    <table class="auto-style4">
        <tr>
            <td class="auto-style14">Yapılışı:</td>
            <td>
                <asp:TextBox ID="TxtYapilis" runat="server" Height="150px" TextMode="MultiLine" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
    </table>
    <table class="auto-style4">
        <tr>
            <td class="auto-style14">Resim:</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="tb5" Width="250px" />
            </td>
        </tr>
    </table>
    <table class="auto-style4">
        <tr>
            <td class="auto-style14">Tarif Öneren:</td>
            <td>
                <%--<input type="text" id="TxtTarifOneren" Width="350px" runat="server" style="tb5"  />--%>
                <asp:TextBox ID="TxtTarifOneren" runat="server" CssClass="tb5" Width="250px"></asp:TextBox>
            </td>
        </tr>
    </table>
    <table class="auto-style4">
        <tr>
            <td class="auto-style14">Mail Adresi:</td>
            <td>
                <asp:TextBox ID="TxtMailAdresi" runat="server" TextMode="Email" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
    </table>
    <table class="auto-style4">
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td>
                <asp:Button ID="BtnTarifOner" runat="server" BackColor="#FF6666" Height="30px" Text="Tarif Öner" Width="260px" OnClick="BtnTarifOner_Click" CssClass="fb8" />
            </td>
        </tr>
    </table>
</asp:Content>
