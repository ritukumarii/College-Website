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

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["success"].ConnectionString);
        //con.Open();
        //String name = Session["name"].ToString();
        //try
        //{
        //    while (reader.Read())
        //    {
        //        TextBox1.Text = reader[name].ToString();
        //    }
        //}
        //finally
        //{
        //    reader.Close();
        //}
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["success"].ConnectionString);
        con.Open();
        string inscmd = "select * from reg where email='" + txtmail.Text.ToString() + "' and pass='"+txtpass.Text.ToString()+"'";
        SqlCommand cmd = new SqlCommand(inscmd, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            Session["username"] = dt.Rows[0]["fname"].ToString();
            Session["useremail"] = dt.Rows[0]["email"].ToString();
            Session["dept"] = dt.Rows[0]["dept"].ToString();
            Session["roll"] = dt.Rows[0]["examroll"].ToString();
            Response.Redirect("stuhome.aspx");
        }
        else
        {
            ClientScript.RegisterStartupScript(this.GetType(), "Alert", string.Format("alert('Incorrect email or password');"), true);
        }
    }
}


           
