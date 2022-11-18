<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="GununYemegi.aspx.cs" Inherits="YemekTarifi_Sitesi.GununYemegi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
        width: 96%;
    }
        .auto-style5 {
            width: 405px;
        }
        .auto-style6 {
            height: 186px;
        }
        .auto-style7 {
            width: 100%;
        }
        .auto-style8 {
            text-align: right;
        }
        .auto-style9 {
            width: 144px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server" style="margin-right: 0px" OnSelectedIndexChanged="DataList2_SelectedIndexChanged">
        <ItemTemplate>
            <table class="auto-style4">
                <tr>
                    <td>
                        <table class="auto-style4">
                            <tr>
                                <td class="auto-style5">&nbsp;</td>
                            </tr>
                        </table>
                        <table class="auto-style4">
                            <tr>
                                <td style="text-align: center">
                                    <asp:Label ID="Label3" runat="server" style="font-weight: 700; font-size: x-large; text-align: center;" Text='<%# Eval("YemekAd") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td><strong>MALZEMELER:</strong>
                                    <br />
                                    <asp:Label ID="Label4" runat="server" style="text-align: center;" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td><strong>YAPILIŞI:</strong><b><br /></b>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6" style="text-align: center">
                                    <asp:Image ID="Image2" runat="server" Height="193px" Width="248px" ImageUrl='<%# Eval("YemekResim") %>' style="margin-left: 49px; margin-top: 26px" />
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                        <table class="auto-style7">
                            <tr>
                                <td class="auto-style9"><strong>PUAN:</strong>&nbsp;<asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                                </td>
                                <td class="auto-style8"><strong>TARİH: </strong><em>
                                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                                    </em></td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
