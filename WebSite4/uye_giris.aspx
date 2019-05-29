<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="uye_giris.aspx.cs" Inherits="uye_giris" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 400px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" class="style4" align="center" 
    width="250">
        <tr>
            <td align="right" height="50" width="150">
                E-mail:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" height="50">
                Şİfre:</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right">
                &nbsp;</td>
            <td align="center">
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                    Text="Kayıt Ol" />
                &nbsp;
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Giriş" />
                <br />
                <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right">
                &nbsp;</td>
            <td align="center">
                <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                    DataFile="~/App_Data/uye.mdb" 
                    DeleteCommand="DELETE FROM [Table1] WHERE [email] = ?" 
                    InsertCommand="INSERT INTO [Table1] ([email], [ad], [soyad], [dogum_tarihi], [sifre]) VALUES (?, ?, ?, ?, ?)" 
                    SelectCommand="SELECT * FROM [Table1]" 
                    UpdateCommand="UPDATE [Table1] SET [ad] = ?, [soyad] = ?, [dogum_tarihi] = ?, [sifre] = ? WHERE [email] = ?">
                    <DeleteParameters>
                        <asp:Parameter Name="email" Type="String" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="ad" Type="String" />
                        <asp:Parameter Name="soyad" Type="String" />
                        <asp:Parameter Name="dogum_tarihi" Type="String" />
                        <asp:Parameter Name="sifre" Type="String" />
                        <asp:Parameter Name="email" Type="String" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="ad" Type="String" />
                        <asp:Parameter Name="soyad" Type="String" />
                        <asp:Parameter Name="dogum_tarihi" Type="String" />
                        <asp:Parameter Name="sifre" Type="String" />
                    </InsertParameters>
                </asp:AccessDataSource>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="email" DataSourceID="AccessDataSource1">
                    <Columns>
                        <asp:BoundField DataField="email" HeaderText="email" ReadOnly="True" 
                            SortExpression="email" />
                        <asp:BoundField DataField="ad" HeaderText="ad" SortExpression="ad" />
                        <asp:BoundField DataField="soyad" HeaderText="soyad" SortExpression="soyad" />
                        <asp:BoundField DataField="dogum_tarihi" HeaderText="dogum_tarihi" 
                            SortExpression="dogum_tarihi" />
                        <asp:BoundField DataField="sifre" HeaderText="sifre" SortExpression="sifre" />
                    </Columns>
                </asp:GridView>
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

