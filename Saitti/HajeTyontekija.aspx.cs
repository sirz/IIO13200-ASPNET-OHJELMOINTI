using System;
using System.Configuration; //webconfig varten
using System.Data; //ADO.NETin luokkia varten
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HajeTyontekija : System.Web.UI.Page
{
    string xmlfilu;
    protected void Page_Load(object sender, EventArgs e)
    {
        //luetaan webconfista xml-tiedoston nimi
        xmlfilu = ConfigurationManager.AppSettings["tiedosto"];
        lblMessage.Text = xmlfilu;
    }

    protected void btnHaje_Click(object sender, EventArgs e)
    {
        //luetaan xml ja esitetään ne gridviews
        DataSet ds = new DataSet();
        DataTable dt = new DataTable();
        DataView dv = new DataView();
        ds.ReadXml(Server.MapPath(xmlfilu));
        dt = ds.Tables[0];
        dv = dt.DefaultView;
        //datan sitominen ui-kontrolliin
        gvData.DataSource = dv;
        gvData.DataBind();
        lblMessage.Text = string.Format("Löytyi {0} työntekijää", dt.Rows.Count);
    }
}