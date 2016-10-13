using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ContactUs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void wizard_FinishButtonClick1(object sender, WizardNavigationEventArgs e)
    {
        Result1.Text = "Your full name is " + firstName.Text + " " + lastName.Text + "<br />";
        Result2.Text = "Your email is " + email.Text + "<br />";
        Result3.Text = "Your phone number is " + phone.Text + "<br />";
        Result4.Text = "Quantity: " + quantity.SelectedValue + "<br />";
        Result5.Text = "Type: " + CheckBoxList1.SelectedValue + "<br />";
        Result6.Text = "Comment: " + TextBox1.Text + "<br />";
    }
}