﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Collections.Generic;

public partial class account
{
    public int ID { get; set; }
    public string username { get; set; }
    public string email { get; set; }
    public string hashedpassword { get; set; }
}

public partial class Book
{
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public Book()
    {
        this.Orderitems = new HashSet<Orderitem>();
    }

    public int id { get; set; }
    public string name { get; set; }
    public Nullable<int> year { get; set; }
    public string author { get; set; }
    public string country { get; set; }
    public Nullable<decimal> price { get; set; }

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<Orderitem> Orderitems { get; set; }
}

public partial class Customer
{
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public Customer()
    {
        this.Orders = new HashSet<Order>();
    }

    public int id { get; set; }
    public string firstname { get; set; }
    public string lastname { get; set; }

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<Order> Orders { get; set; }
}

public partial class Order
{
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public Order()
    {
        this.Orderitems = new HashSet<Orderitem>();
    }

    public int oid { get; set; }
    public System.DateTime odate { get; set; }
    public int customerid { get; set; }

    public virtual Customer Customer { get; set; }
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<Orderitem> Orderitems { get; set; }
}

public partial class Orderitem
{
    public int id { get; set; }
    public int orderid { get; set; }
    public int bookid { get; set; }
    public int count { get; set; }

    public virtual Book Book { get; set; }
    public virtual Order Order { get; set; }
}
