<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Kategoriler.aspx.cs" Inherits="YemekTarifi_Sitesi.Kategoriler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style8 {
        text-align: right;
    }
    .auto-style9 {
        font-size: large;
    }
        .auto-style10 {
            background-color: #304F64;
        }
        .auto-style11 {
            font-size: medium;
        }
        .auto-style12 {
            font-size: medium;
            margin-left: 0px;
        }
        .auto-style13 {
            width: 40px;
        }
        .auto-style14 {
            width: 36px;
        }
        .auto-style15 {
            background-color: #2F4D61;
        }
        .auto-style16 {
            width: 40px;
            background-color: #2F4D61;
        }
        .auto-style17 {
            width: 36px;
            background-color: #2F4D61;
        }
        .auto-style18 {
            text-align: right;
            width: 221px;
        }
        .auto-style19 {
            width: 551px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style10">
        <table class="auto-style6">
            <tr>
                <td class="auto-style14">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style11" Height="30px" OnClick="Button1_Click" Text="+" Width="30px" />
                </td>
                <td class="auto-style13">
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style12" Height="30px" OnClick="Button2_Click" Text="-" Width="30px" />
                </td>
                <td>KATEGORİLER LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="443px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
            <ItemTemplate>
                <table class="auto-style6">
                    <tr>
                        <td class="auto-style19">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style9" Text='<%# Eval("KategoriAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style8">
                            <a href="Kategoriler.aspx?Kategoriid=<%#Eval("Kategoriid")%>&islem=sil">
                               <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/Resimler/iconlar/delete.jpeg" Width="30px" />
                            </a>
                        </td>
                        <td class="auto-style8">
                            <a href="KategoriAdminDetay.aspx?Kategoriid=<%#Eval("Kategoriid")%>">
                               <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Resimler/iconlar/update.jpg" Width="30px" />
                            </a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
    <asp:Panel ID="Panel3" runat="server" >
         <table class="auto-style6">
            <tr>
                <td class="auto-style17">
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style11" Height="30px" Text="+" Width="30px" OnClick="Button3_Click" />
                </td>
                <td class="auto-style16">
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style12" Height="30px" Text="-" Width="30px" OnClick="Button4_Click" />
                </td>
                <td class="auto-style15">KATEGORİ EKLEME</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style6">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>KATEGORİ AD:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>KATEGORİ İKON:</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="BtnEkle" runat="server" CssClass="auto-style11" Text="Ekle" Width="200px" OnClick="BtnEkle_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
