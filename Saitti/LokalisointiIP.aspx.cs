﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LokalisointiIP : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSayHello_Click(object sender, EventArgs e)
    {
        string msg = GetLocalResourceObject("Tervehdys").ToString();
        lblMessage.Text = msg;
    }
}