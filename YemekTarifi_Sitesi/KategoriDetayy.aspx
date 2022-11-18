<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="KategoriDetayy.aspx.cs" Inherits="YemekTarifi_Sitesi.KategoriDetayy" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            width: 100%;
        }
        .auto-style6 {
            color: #FFFFFF;
        }
        .auto-style7 {
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server" OnSelectedIndexChanged="DataList2_SelectedIndexChanged">
        <ItemTemplate>
            <table class="auto-style5">
                <tr>
                    <td><strong>
                        <a href="YemekDetay.aspx?Yemekid=<%#Eval("Yemekid")%>">
                           <asp:Label ID="Label3" runat="server" CssClass="auto-style7" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </a>
                        </strong></td>
                </tr>
                <tr>
                    <td><strong>Malzemeler:</strong><asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><strong>Yemek Tarifi:</strong><asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><strong>Eklenme Tarihi:</strong><asp:Label ID="Label6" runat="server" CssClass="auto-style6" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                        - Puan:<asp:Label ID="Label7" runat="server" CssClass="auto-style6" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
