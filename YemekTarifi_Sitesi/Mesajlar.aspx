<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Mesajlar.aspx.cs" Inherits="YemekTarifi_Sitesi.Mesajlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            background-color: #2C5067;
        }
    .auto-style9 {
        background-color: #2C5067;
        text-align: right;
    }
    .auto-style10 {
        background-color: #90BACA;
        text-align: right;
    }
    .auto-style11 {
        background-color: #2C5067;
        text-align: left;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <asp:Panel ID="Panel1" runat="server" CssClass="auto-style10">
        <table class="auto-style6">
            <tr>
                <td class="auto-style8">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style11" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click"/>
                </td>
                <td class="auto-style8">
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style12" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click"/>
                </td>
                <td class="auto-style11">MESAJLAR LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
     <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="443px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
            <ItemTemplate>
                <table class="auto-style6">
                    <tr>
                        <td class="auto-style19">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style10" Text='<%# Eval("MesajGonderen") %>'></asp:Label>
                        </td>
                        <td class="auto-style9">
                            <a href="MesajDetay.aspx?Mesajid=<%#Eval("Mesajid")%>">
                               <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Resimler/iconlar/okunduIcon.png" Width="30px" />
                            </a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>

</asp:Content>
