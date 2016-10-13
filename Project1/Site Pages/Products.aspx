<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="Products" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Products</title>
<link rel="stylesheet" href="../Style/StyleSheet.css" media="screen"/>
</head>
<body>
    <form id="form1" runat="server">
    <header> 
        
    </header>
        <div id="pageTop">
            <nav>
                <ul>
                    <li><a href="Default.aspx">Home</a></li>
                    <li><a href="AboutUs.aspx">About Us</a></li>
                    <li><a href="Products.aspx">Products</a></li>
                    <li><a href="Login.aspx">Login</a></li>
                    <li><a href="ContactUs.aspx">Contact Us</a></li>
                </ul>
            </nav>
        </div>
        <section class="wow">
            <p>Hello, this is the product page.</p>
                <asp:Panel ID="Panel1" runat="server">
                    <asp:ListBox ID="leftListBox" runat="server" Height="100px" Width="150px"></asp:ListBox>
                <asp:Button ID="addButton" runat="server" OnClick="addButton_Click" Text="Add" />
                <asp:Button ID="removeButton" runat="server" OnClick="removeButton_Click" Text="Remove" />
                    <asp:ListBox ID="rightListBox" runat="server" Height="100px" Width="150px"></asp:ListBox>
                </asp:Panel>
            <p id="labels">
            <asp:Label ID="totalLabel" runat="server"></asp:Label>
            <br />
            <asp:Label ID="sumLabel" runat="server"></asp:Label>
            </p>
        </section>           
             
            
    </form>
    <footer>5489 Pokepoke Street, Kalen, CA 95872 <br/> &copy EVshop 2016</footer>
</body>
</html>
