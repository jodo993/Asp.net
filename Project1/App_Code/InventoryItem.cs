using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for InventoryItem
/// </summary>
public class InventoryItem
{
    private string name;
    private decimal price;
    public InventoryItem()
    {
        // TODO: Add constructor logic here
        name = "";
        price = 0.0m;
    }

    public InventoryItem(string productName, decimal productPrice)
    {
        name = productName;
        price = productPrice;
    }

    public string Name
    {
        get { return name; }
        set { name = value; }
    }

    public decimal Price
    {
        get { return price; }
        set { price = value; }
    }
}