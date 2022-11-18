<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yorumlar.aspx.cs" Inherits="YemekTarifi_Sitesi.Yorumlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style10 {
            background-color: #304F64;
        }
        .auto-style14 {
            width: 36px;
            height: 37px;
        }
        .auto-style11 {
            font-size: medium;
        }
        .auto-style13 {
            width: 40px;
            height: 37px;
        }
        .auto-style12 {
            font-size: medium;
            margin-left: 0px;
        }
        .auto-style19 {
            width: 551px;
        }
    .auto-style9 {
        font-size: large;
    }
        .auto-style8 {
        text-align: right;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style10">
        <table class="auto-style6">
            <tr>
                <td class="auto-style14">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style11" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click" />
                </td>
                <td class="auto-style13">
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style12" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click" />
                </td>
                <td>ONAYLANAN YORUMLAR LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="443px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
            <ItemTemplate>
                <table class="auto-style6">
                    <tr>
                        <td class="auto-style19">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style9" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td class="auto-style8">
                           
                               <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/Resimler/iconlar/delete.jpeg" Width="30px" />
                            
                        </td>
                        <td class="auto-style8">
                           
                               <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Resimler/iconlar/update.jpg" Width="30px" />
                            
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
     <asp:Panel ID="Panel3" runat="server" CssClass="auto-style10">
        <table class="auto-style6">
            <tr>
                <td class="auto-style14">
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style11" Height="30px"  Text="+" Width="30px" OnClick="Button3_Click" />
                </td>
                <td class="auto-style13">
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style12" Height="30px"  Text="-" Width="30px" OnClick="Button4_Click" />
                </td>
                <td>ONAYSIZ YORUMLAR LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
        <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="443px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
            <ItemTemplate>
                <table class="auto-style6">
                    <tr>
                        <td class="auto-style19">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style9" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td class="auto-style8">
                           
                               <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/Resimler/iconlar/delete.jpeg" Width="30px" />
                            
                        </td>
                        <td class="auto-style8">
                           
                            <a href="YorumDetay.aspx?Yorumid=<%#Eval("Yorumid")%>">
                               <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Resimler/iconlar/update.jpg" Width="30px" />
                            </a>
                            
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>

</asp:Content>
