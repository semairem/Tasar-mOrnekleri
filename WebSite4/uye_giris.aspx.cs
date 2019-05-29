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

public partial class uye_giris : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("uye_katit.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["email"] = Convert.ToString(TextBox1.Text);
        Session["sifre"] = Convert.ToString(TextBox2.Text);
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            if (TextBox1.Text == GridView1.Rows[i].Cells[0].Text && TextBox2.Text == GridView1.Rows[i].Cells[4].Text)
            {
                Session["oturum"] = "1";
                Session["email"] = GridView1.Rows[i].Cells[1].Text + "" + GridView1.Rows[i].Cells[2].Text;
                Response.Redirect("anasayfa.aspx");
            }
            else
            {
                Label1.Text = "geçerli bi email gir";
            }
        }
    }
}
