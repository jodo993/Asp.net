<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
<link rel="stylesheet" href="../Style/StyleSheet.css" type="text/css" media="screen" runat="server"/>
</head>
<body>
    <form id="form1" runat="server">
    <header> 
        <h2> <%: DateTime.Now.ToString() %> </h2> 
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
        <section>
            <p>Hello, this is the home page.</p>

        <asp:Wizard id="wizard" runat="server">
            <WizardSteps>
                <asp:WizardStep ID="WizardStep1" runat="server" Title="Step 1"></asp:WizardStep>
                <asp:WizardStep ID="WizardStep2" runat="server" Title="Step 2"></asp:WizardStep>
            </WizardSteps>
        </asp:Wizard>

        </section>
    </form>
    <footer>5489 Pokepoke Street, Kalen, CA 95872 <br/> &copy EVshop 2016</footer>
</body>
</html>
if(!IsPostBack)
leftListBox.Items.Add("First");

move right clcick
rightListBox.Items.Add(leftListBox.SelectedValue);