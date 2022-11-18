<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yemekler.aspx.cs" Inherits="YemekTarifi_Sitesi.Yemekler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style8 {
        background-color: #3597B2;
    }
    .auto-style9 {
        width: 101px;
        background-color: #90BACA;
    }
    .auto-style10 {
        width: 100px;
        background-color: #3597B2;
    }
    .auto-style11 {
        width: 99px;
        background-color: #3597B2;
    }
    .auto-style12 {
        width: 98px;
        background-color: #3597B2;
    }
    .auto-style13 {
        width: 29px;
        background-color: #3597B2;
    }
    .auto-style14 {
        width: 341px;
    }
    .auto-style15 {
        width: 451%;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <asp:Panel ID="Panel1" runat="server" CssClass="auto-style10">
        <table class="auto-style15">
            <tr>
                <td class="auto-style8">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style11" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click" />
                </td>
                <td class="auto-style8">
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style12" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click" />
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
                        <td class="auto-style13">
                            <a href="Yemekler.aspx?Yemekid=<%#Eval("Yemekid")%>&islem=sil">
                               <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/Resimler/iconlar/delete.jpeg" Width="30px" />
                            </a>
                        </td>
                        <td class="auto-style8">
                            <a href="YemekDüzenle.aspx?YemekID=<%#Eval("Yemekid")%>">
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
                <td class="auto-style8">
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style11" Height="30px" Text="+" Width="30px" OnClick="Button3_Click" />
                </td>
                <td class="auto-style8">
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style12" Height="30px" Text="-" Width="30px" OnClick="Button4_Click" />
                </td>
                <td class="auto-style8">YEMEK EKLEME</td>
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
                <td>YEMEK AD:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="285px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>MALZEMELER:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="100px" TextMode="MultiLine" Width="285px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>YEMEK TARİFİ:</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="200px" TextMode="MultiLine" Width="285px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>KATEGORİ:</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="285px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="BtnEkle" runat="server" CssClass="auto-style11" OnClick="BtnEkle_Click" Text="Ekle" Width="285px" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
