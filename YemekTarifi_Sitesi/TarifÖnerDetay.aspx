<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="TarifÖnerDetay.aspx.cs" Inherits="YemekTarifi_Sitesi.TarifÖnerDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            text-align: right;
        }
        .auto-style9 {
            font-weight: bold;
        }
    .auto-style10 {
        background-color: #24506A;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="auto-style10" ><strong>TARİF ÖNERME PANELİ</strong></div>
    <strong>
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style6">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8"><strong>Tarif Ad:</strong></td>
                <td>
                    <strong>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style9" Height="20px" Width="250px"></asp:TextBox>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style8"><strong>Tarif Malzemeler:</strong></td>
                <td>
                    <strong>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style9" Height="20px" Width="250px"></asp:TextBox>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style8"><strong>Yapılışı:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="100px" TextMode="MultiLine" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8"><strong>Tarif Resim:</strong></td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="250px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style8"><strong>Tarif Öneren:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8"><strong>Öneren Mail:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Kategori:</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="250px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style10" Height="30px" OnClick="Button1_Click" Text="Tarif Onayla" Width="250px" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</strong>
</asp:Content>
