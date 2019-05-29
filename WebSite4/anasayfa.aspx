<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="anasayfa.aspx.cs" Inherits="anasayfa" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 400px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" class="style4" align="center">
        <tr>
            <td align="right" height="50" width="200">
                HOŞGELDİNİZ</td>
            <td width="200">
                &nbsp; &nbsp;<asp:Label ID="Label1" runat="server"></asp:Label>
            &nbsp;&nbsp;<asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="Kişisel Bilgileri Güncelle" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                    DataFile="~/App_Data/uye.mdb" 
                    DeleteCommand="DELETE FROM [Table1] WHERE [email] = ?" 
                    InsertCommand="INSERT INTO [Table1] ([email], [ad], [soyad], [dogum_tarihi], [sifre]) VALUES (?, ?, ?, ?, ?)" 
                    SelectCommand="SELECT * FROM [Table1] WHERE ([email] = ?)" 
                    UpdateCommand="UPDATE [Table1] SET [ad] = ?, [soyad] = ?, [dogum_tarihi] = ?, [sifre] = ? WHERE [email] = ?">
                    <SelectParameters>
                        <asp:SessionParameter Name="email" SessionField="email" Type="String" />
                    </SelectParameters>
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
            </td>
            <td>
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
            </td>
        </tr>
    </table>
</asp:Content>

