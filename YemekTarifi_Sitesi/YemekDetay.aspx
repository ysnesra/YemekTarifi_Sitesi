<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="YemekDetay.aspx.cs" Inherits="YemekTarifi_Sitesi.YemekDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            width: 100%;
        }
        .auto-style7 {
            font-size: xx-small;
        }
        .auto-style8 {
            font-size: x-large;
        }
        .auto-style9 {
            font-size: xx-large;
        }
        .auto-style10 {
            background-color: #4892B2;
        }
        .auto-style11 {
            text-align: right;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style6">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <asp:Label ID="Label3" runat="server" CssClass="auto-style9" Text="Label"></asp:Label>
    <asp:DataList ID="DataList2" runat="server" OnSelectedIndexChanged="DataList2_SelectedIndexChanged">
        <ItemTemplate>
            <table class="auto-style6">
                <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("YorumAdSoyad") %>' CssClass="auto-style8"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="border-bottom-style: inset; border-bottom-width: thin; border-bottom-color: #FFFFFF">
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("Yorumicerik") %>'></asp:Label>
                        &nbsp;-
                        <asp:Label ID="Label5" runat="server" CssClass="auto-style7" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <div class="auto-style10" >YORUM YAPMA PANELİ</div>
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style6">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11"><strong>Ad Soyad:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11"><strong>Mail:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="20px" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11"><strong>Yorumunuz:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="100px" TextMode="MultiLine" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Height="30px" OnClick="Button1_Click" Text="Yorum Yap" Width="250px" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
