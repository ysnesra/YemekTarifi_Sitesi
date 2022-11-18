<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="HakkimizdaAdmin.aspx.cs" Inherits="YemekTarifi_Sitesi.HakkimizdaAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style8 {
        margin-left: 80px;
    }
    .auto-style9 {
        background-color: #294E6E;
    }
    .auto-style10 {
        font-size: large;
        background-color: #294E6E;
    }
    .auto-style11 {
        text-align: right;
        margin-left: 80px;
    }
    .auto-style12 {
        text-align: center;
        margin-left: 80px;
    }
    .auto-style13 {
        font-size: medium;
        background-color: #294E6E;
    }
    .auto-style14 {
        font-size: small;
    }
        .auto-style15 {
            font-size: large;
            background-color: #294E6E;
            width: 84px;
        }
        .auto-style16 {
            font-size: large;
            background-color: #294E6E;
            width: 77px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <asp:Panel ID="Panel1" runat="server" CssClass="auto-style10">
        <table class="auto-style6">
            <tr>
                <td class="auto-style16">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style11" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click"  />
                </td>
                <td class="auto-style15">
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style12" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click"  />
                </td>
                <td class="auto-style9">HAKKIMIZDA</td>
            </tr>
        </table>
    </asp:Panel>

    <asp:Panel ID="Panel2" runat="server">
        <table class="auto-style6">
            <tr>
                <td class="auto-style8"><em>
                    <asp:TextBox ID="TextBox1" runat="server" Height="200px" TextMode="MultiLine" Width="435px"></asp:TextBox>
                    </em></td>
            </tr>
            <tr>
                <td class="auto-style12"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style13" Text="Güncelle" Width="250px" OnClick="Button3_Click" />
                    </strong></td>
            </tr>
        </table>
</asp:Panel>
</asp:Content>
