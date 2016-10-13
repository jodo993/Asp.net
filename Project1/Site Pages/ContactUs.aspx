<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact Us</title>
<link rel="stylesheet" href="../Style/StyleSheet.css" media="screen"/>
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
            <p>Hello, this is the Contact page. </p>
                <asp:Wizard ID="wizard" runat="server" ActiveStepIndex="1" Width="700px" OnFinishButtonClick="wizard_FinishButtonClick1">
                <WizardSteps>
                    <asp:WizardStep runat="server" title="General Information">
                        <div id="generalInformation">
                        <asp:Label runat="server" Text="First Name"></asp:Label>
                        <asp:TextBox ID="firstName" runat="server"></asp:TextBox>
                        <asp:Label ID="Label1" runat="server" Text="Last Name"></asp:Label>
                        <asp:TextBox ID="lastName" runat="server"></asp:TextBox>
                        <br />
                        <asp:Label ID="Label2" runat="server" Text="E-mail"></asp:Label>
                        <asp:TextBox ID="email" runat="server" TextMode="Email"></asp:TextBox>
                        <asp:Label ID="Label3" runat="server" Text="Phone"></asp:Label>
                        <asp:TextBox ID="phone" runat="server" TextMode="Phone"></asp:TextBox>
                        <br />
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                            <asp:ListItem>Email</asp:ListItem>
                            <asp:ListItem>Telephone</asp:ListItem>
                        </asp:RadioButtonList>
                        </div>
                    </asp:WizardStep>
                    <asp:WizardStep runat="server" title="Interest">
                        <asp:Label ID="Label4" runat="server" Text="Quantity"></asp:Label>
                        <asp:ListBox ID="quantity" runat="server">
                            <asp:ListItem>One</asp:ListItem>
                            <asp:ListItem>Two</asp:ListItem>
                            <asp:ListItem>Three</asp:ListItem>
                            <asp:ListItem>Four</asp:ListItem>
                            <asp:ListItem>Five</asp:ListItem>
                            <asp:ListItem>Six</asp:ListItem>
                            <asp:ListItem>Seven</asp:ListItem>
                            <asp:ListItem>Eight</asp:ListItem>
                        </asp:ListBox>
                        <br />
                        <asp:Label ID="Label5" runat="server" Text="Type"></asp:Label>
                        <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                            <asp:ListItem>Normal</asp:ListItem>
                            <asp:ListItem>Fire</asp:ListItem>
                            <asp:ListItem>Electric</asp:ListItem>
                            <asp:ListItem>Water</asp:ListItem>
                            <asp:ListItem>Psychic</asp:ListItem>
                            <asp:ListItem>Dark</asp:ListItem>
                            <asp:ListItem>Grass</asp:ListItem>
                            <asp:ListItem>Ice</asp:ListItem>
                            <asp:ListItem>Fairy</asp:ListItem>
                        </asp:CheckBoxList>
                        <br />
                    </asp:WizardStep>
                    <asp:WizardStep runat="server" Title="Comment" StepType="Finish">
                        <asp:TextBox ID="TextBox1" runat="server" Height="150px" Width="200px" TextMode="MultiLine"></asp:TextBox>
                    </asp:WizardStep>
                    <asp:WizardStep runat="server" Title="Submission" StepType="Complete">
                        <asp:Label ID="Result1" runat="server" Text="Label"></asp:Label><br />
                        <asp:Label ID="Result2" runat="server" Text="Label"></asp:Label><br />
                        <asp:Label ID="Result3" runat="server" Text="Label"></asp:Label><br />
                        <asp:Label ID="Result4" runat="server" Text="Label"></asp:Label><br />
                        <asp:Label ID="Result5" runat="server" Text="Label"></asp:Label><br />
                        <asp:Label ID="Result6" runat="server" Text="Label"></asp:Label><br />
                        <br />
                    </asp:WizardStep>
                </WizardSteps>
                </asp:Wizard>
        </section>
    </form>
    <footer>5489 Pokepoke Street, Kalen, CA 95872 n, CA 95872 <br/> &copy EVshop 2016</footer>
</body>
</html>
