<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="GününYemeğiAdmin.aspx.cs" Inherits="YemekTarifi_Sitesi.GününYemeğiAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style10">
        <table class="auto-style15">
            <tr>
                <td class="auto-style8">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style11" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click"/>
                </td>
                <td class="auto-style8">
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style12" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click"/>
                </td>
                <td class="auto-style8">YEMEK&nbsp; LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="443px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
            <ItemTemplate>
                <table class="auto-style6">
                    <tr>
                        <td class="auto-style14">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style9" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style8">
                            <a href="YemekDüzenle.aspx?YemekID=<%#Eval("Yemekid")%>">
                               <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Resimler/iconlar/choose.png" Width="30px" />
                            </a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>

</asp:Content>
