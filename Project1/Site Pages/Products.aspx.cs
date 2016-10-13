using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Products : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ItemList myList = new ItemList();
            foreach (InventoryItem item in myList.getList())
            {
                string str = item.Name + " ( $" + item.Price + " )";
                leftListBox.Items.Add(new ListItem(str,item.Price.ToString()));
            }

        }
    }

    protected void addButton_Click(object sender, EventArgs e)
    {
        
        rightListBox.Items.Add(leftListBox.SelectedItem);
        totalLabel.Text = "";

        for (int j = 0; j < rightListBox.Items.Count; j ++)
        {
            totalLabel.Text = totalLabel.Text + rightListBox.Items[j].ToString() + "<br/>";
        }

        decimal sum = 0.0m;
        foreach (ListItem item in rightListBox.Items)
        {
            sum = sum + decimal.Parse(item.Value);
            sumLabel.Text = sumLabel.Text + item.Text;
        }
        sumLabel.Text = "Total Amount is: " + sum.ToString();
        rightListBox.ClearSelection();
    }

    protected void removeButton_Click(object sender, EventArgs e)
    {
        rightListBox.Items.Remove(rightListBox.SelectedItem);

        totalLabel.Text = "";
        for (int j = 0; j < rightListBox.Items.Count; j++)
        {
            totalLabel.Text = totalLabel.Text + rightListBox.Items[j].ToString() + "<br/>";
        }

        decimal sum = 0.0m;
        foreach (ListItem item in rightListBox.Items)
        {
            sum = sum - decimal.Parse(item.Value) * -1;
            sumLabel.Text = sumLabel.Text + item.Text;
        }
        sumLabel.Text = "Total Amount is: " + sum.ToString();
        rightListBox.ClearSelection();
    }
}