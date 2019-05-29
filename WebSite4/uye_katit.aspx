<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="uye_katit.aspx.cs" Inherits="uye_katit" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 400px;
        }
        .style5
        {
            height: 22px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" class="style4" align="center">
        <tr>
            <td align="right" style="color: #FFFFFF; font-family: 'trebuchet MS';" 
                width="150">
                E-mail</td>
            <td width="250">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Boş Bırakmayınız"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" style="color: #FFFFFF; font-family: 'trebuchet MS';">
                Ad</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" style="color: #FFFFFF; font-family: 'trebuchet MS';">
                Soyad</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style5" style="color: #FFFFFF; font-family: 'trebuchet MS';">
                DoğumTarihi</td>
            <td class="style5">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" style="color: #FFFFFF; font-family: 'trebuchet MS';">
                Şifre</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="Boş Bırakmayınız"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" style="color: #FFFFFF; font-family: 'trebuchet MS';" 
                class="style3">
                ŞifreTekrarı</td>
            <td class="style3">
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TextBox5" ControlToValidate="TextBox6" Display="Dynamic" 
                    ErrorMessage="şifre uyuşmuyor"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Kayıt Ol" 
                    onclick="Button1_Click" />
                <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
            &nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                    Text="Giriş Yap" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
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
                        <asp:ControlParameter ControlID="TextBox1" Name="email" PropertyName="Text" 
                            Type="String" />
                        <asp:ControlParameter ControlID="TextBox2" Name="ad" PropertyName="Text" 
                            Type="String" />
                        <asp:ControlParameter ControlID="TextBox3" Name="soyad" PropertyName="Text" 
                            Type="String" />
                        <asp:ControlParameter ControlID="TextBox4" Name="dogum_tarihi" 
                            PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="TextBox5" Name="sifre" PropertyName="Text" 
                            Type="String" />
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
            </td>
        </tr>
    </table>
</asp:Content>

