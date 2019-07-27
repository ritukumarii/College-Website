using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;

public partial class facultylogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["success"].ConnectionString);
        con.Open();
        string inscmd = "select * from facul_reg where email='" + txtmail.Text.ToString() + "' and pass='" + txtpass.Text.ToString() + "'";
        SqlCommand cmd = new SqlCommand(inscmd, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            Session["username"] = dt.Rows[0]["name"].ToString();
            Session["useremail"] = dt.Rows[0]["email"].ToString();
            Session["dept"] = dt.Rows[0]["dept"].ToString();
            Response.Redirect("Facultyhome.aspx");
        }
        else
        {
            ClientScript.RegisterStartupScript(this.GetType(), "Alert", string.Format("alert('Incorrect email or password');"), true);
        }
    }
}