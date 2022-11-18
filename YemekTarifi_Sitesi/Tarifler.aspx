<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Tarifler.aspx.cs" Inherits="YemekTarifi_Sitesi.Tarifler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            text-align: right;
        }
        .auto-style9 {
            text-align: left;
            background-color: #2A5A75;
        }
        .auto-style10 {
            text-align: right;
            background-color: #2A5A75;
        }
        .auto-style11 {
            text-align: right;
            background-color: #90BACA;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
        <asp:Panel ID="Panel1" runat="server" CssClass="auto-style10">
        <table class="auto-style6">
            <tr>
                <td class="auto-style10">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style11" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click" />
                </td>
                <td class="auto-style10">
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style12" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click" />
                </td>
                <td class="auto-style9">ONAYSIZ TARİF LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
     <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="443px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
            <ItemTemplate>
                <table class="auto-style6">
                    <tr>
                        <td class="auto-style19">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style11" Text='<%# Eval("TarifAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style8">
                            <a href="TarifÖnerDetay.aspx?Tarifid=<%#Eval("Tarifid")%>">
                               <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Resimler/iconlar/öneri.png" Width="30px" />
                            </a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
      <asp:Panel ID="Panel3" runat="server" CssClass="auto-style10">
        <table class="auto-style6">
            <tr>
                <td class="auto-style10">
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style11" Height="30px"  Text="+" Width="30px" OnClick="Button3_Click" />
                </td>
                <td class="auto-style10">
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style12" Height="30px"  Text="-" Width="30px" OnClick="Button4_Click" />
                </td>
                <td class="auto-style9">ONAYLI TARİF LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
     <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="443px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
            <ItemTemplate>
                <table class="auto-style6">
                    <tr>
                        <td class="auto-style19">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style11" Text='<%# Eval("TarifAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style8">
                            <a href="TarifÖnerDetay.aspx?Tarifid=<%#Eval("Tarifid")%>">
                               <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Resimler/iconlar/öneri.png" Width="30px" />
                            </a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
</asp:Content>
