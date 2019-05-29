using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class uye_katit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int kontrol = 1;
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            if (TextBox1.Text == GridView1.Rows[i].Cells[0].Text)
            {
                kontrol = 0;

            }
        }
        if (kontrol == 1)
        {
            AccessDataSource1.Insert();
        }
        else
        {
            Label1.Text = "farklı bi email giriniz";
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("uye_giris.aspx");
    }
}
