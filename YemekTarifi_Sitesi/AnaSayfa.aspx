<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="AnaSayfa.aspx.cs" Inherits="YemekTarifi_Sitesi.AnaSayfa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            width: 100%;
        }
        .auto-style6 {
            font-size: x-large;
        color: #000000;
    }
        .auto-style7 {
            background-color: #4892B2;
        }
        .auto-style8 {
            color: #FFFFFF;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server" OnSelectedIndexChanged="DataList2_SelectedIndexChanged">
        <ItemTemplate>
            <table class="auto-style5">
                <tr>
                    <td class="auto-style7">

                        <a href="YemekDetay.aspx?Yemekid=<%#Eval("Yemekid")%>">
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("YemekAd") %>' CssClass="auto-style6"></asp:Label>
                        </a>
                    </td>
                </tr>
                <tr>
                    <td>
                        <strong>Malzemeler:</strong><asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <strong>Yemek Tarifi:</strong>
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <strong>Eklenme Tarihi:</strong><asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarih") %>' CssClass="auto-style8"></asp:Label>
                        <strong>-</strong> <strong>Puan:</strong><asp:Label ID="Label7" runat="server" Text='<%# Eval("YemekPuan") %>' CssClass="auto-style8"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="border-bottom-style: groove; border-bottom-width: thick; border-bottom-color: #333333">&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
