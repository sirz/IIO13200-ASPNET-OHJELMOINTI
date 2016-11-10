﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using JAMK.IT;
using Newtonsoft.Json;

public partial class DemoJsonIP : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnGet_Click(object sender, EventArgs e)
    {
        try
        {
            //haetaan jsonia ja näytetään se UI:ssa
            string json = GetJsonFrom("http://student.labranet.jamk.fi/~salesa/mat/JsonTestP");
            ltResult.Text = json;
        }
        catch (Exception ex)
        {
            ltResult.Text = ex.Message;
        }
    }

    protected void btnGetPerson_Click(object sender, EventArgs e)
    {
        //muutetaan luettu json Person-olioksi
        try
        {
            string json = GetJsonFrom("http://student.labranet.jamk.fi/~salesa/mat/JsonTestP");
            JAMK.IT.Person p = Newtonsoft.Json.JsonConvert.DeserializeObject<Person>(json);
            //p-olion tiedot näkyviin
            ltResult.Text = 
                string.Format("Löytyi henkilö {0} syntynyt {1}", p.Name, p.Birthday);
        }
        catch (Exception ex)
        {
            ltResult.Text = ex.Message;
        }
    }
    protected string GetJsonFrom(string url)
    {
        using (WebClient wc = new WebClient())
        {
            var json = wc.DownloadString(url);
            return json;
        }
    }

    protected void btnGetPolticis_Click(object sender, EventArgs e)
    {
        //muutetaan json Politician-oliokokoelmaksi
        try
        {
            string json = 
                GetJsonFrom("http://student.labranet.jamk.fi/~salesa/mat/JsonTest");
            List<Politician> hallitus = JsonConvert.DeserializeObject<List<Politician>>(json);
            //poliitikot-oliot näkyviin
            string ret = "<h2>Suomen vankka hallitus</h2><ul>";
            foreach (var ministeri in hallitus)
            {
                ret += "<li>" + ministeri.Name 
                    + " " + ministeri.Party + "</li>";
            }
            ret += "</ul>";
            ltResult.Text = ret;
        }
        catch (Exception ex)
        {
            ltResult.Text = ex.Message;
        }

    }
}