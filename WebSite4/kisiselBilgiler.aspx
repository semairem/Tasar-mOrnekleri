<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="kisiselBilgiler.aspx.cs" Inherits="kisiselBilgiler" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">



</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table cellpadding="0" cellspacing="0" class="style1" width="800">

    <tr height="100" >
        <td></td>
        
        <td width="250">
        
            <table cellpadding="0" cellspacing="0" >
                    <tr>
                        <td style="text-align: right" width="250">
                            Ad:</td>
                        <td style="text-align: left" width="250">
                            <asp:TextBox ID="ad" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right" width="250">
                            Soyad:</td>
                        <td style="text-align: left" width="250">
                            <asp:TextBox ID="soyad" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right" width="250">
                            Doğum Tarihi :</td>
                        <td style="text-align: left" width="250">
                            <asp:TextBox ID="dogumtarihi" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right" width="250">
                            <asp:Button ID="Button1" runat="server" Text="Güncelle" 
                                onclick="Button1_Click" />
                        </td>
                        <td width="250">
                            &nbsp;</td>
                    </tr>
                </table>
        
        </td>
        <td></td>
        
    </tr>
    
     <tr height="50">
        <td></td>
        <td>
        
               <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                            DataFile="~/App_Data/uye.mdb" 
                            DeleteCommand="DELETE FROM [Table1] WHERE [email] = ?" 
                            InsertCommand="INSERT INTO [Table1] ([email], [ad], [soyad], [dogum_tarihi], [sifre]) VALUES (?, ?, ?, ?, ?)" 
                            SelectCommand="SELECT * FROM [Table1] WHERE (([ad] = ?) AND ([dogum_tarihi] = ?) AND ([soyad] = ?))" 
                            
                            
                            UpdateCommand="UPDATE [Table1] SET [ad] = ?, [soyad] = ?, [dogum_tarihi] = ?, [sifre] = ? WHERE [email] = ?" 
                            
                            
                            <SelectParameters>
                                <asp:ControlParameter ControlID="ad" Name="ad" PropertyName="Text" 
                                    Type="String" />
                                <asp:ControlParameter ControlID="dogumtarihi" Name="dogum_tarihi" 
                                    PropertyName="Text" Type="String" />
                                <asp:ControlParameter ControlID="soyad" Name="soyad" PropertyName="Text" 
                                    Type="String" />
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
        <td></td>
    </tr>
    
     <tr height="200">
        <td></td>
        <td>
        
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                            DataKeyNames="email" DataSourceID="AccessDataSource1">
                            <Columns>
                                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" 
                                    ReadOnly="True" />
                                <asp:BoundField DataField="ad" HeaderText="ad" 
                                    SortExpression="ad" />
                                <asp:BoundField DataField="soyad" HeaderText="soyad" 
                                    SortExpression="soyad" />
                                <asp:BoundField DataField="dogum_tarihi" HeaderText="dogum_tarihi" 
                                    SortExpression="dogum_tarihi" />
                                <asp:BoundField DataField="sifre" HeaderText="sifre" SortExpression="sifre" />
                            </Columns>
                        </asp:GridView>
        
        </td>
        <td></td>
    </tr>


</table>
</asp:Content>

