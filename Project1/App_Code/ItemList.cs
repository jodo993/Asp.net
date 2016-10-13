using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ItemList
/// </summary>
public class ItemList
{
    List<InventoryItem> items = new List<InventoryItem>();
    public ItemList()
    {
        // TODO: Add constructor logic here
        items.Add(new InventoryItem("Eevee", 5.00m));
        items.Add(new InventoryItem("Vaporeon", 6.00m));
        items.Add(new InventoryItem("Jolteon", 7.00m));
        items.Add(new InventoryItem("Flareon", 8.00m));
        items.Add(new InventoryItem("Umbreon", 9.50m));
        items.Add(new InventoryItem("Espeon", 10.50m));
        items.Add(new InventoryItem("Leafeon", 11.25m));
        items.Add(new InventoryItem("Glaceon", 12.25m));
        items.Add(new InventoryItem("Sylveon", 15.25m));
    }

    public List<InventoryItem> getList()
    {
        return items;
    }
}