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

public partial class contact : System.Web.UI.Page
{
    string constr = ConfigurationManager.ConnectionStrings["success"].ConnectionString.ToString();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["success"].ConnectionString);
        con.Open();
        string inscmd = "insert into contact(name,email,phone,msg)values(@name,@email,@phone,@msg)";
        SqlCommand insertuser = new SqlCommand(inscmd, con);
        insertuser.Parameters.AddWithValue("@name", TextBox1.Text);
        insertuser.Parameters.AddWithValue("@email", TextBox2.Text);
        insertuser.Parameters.AddWithValue("@phone", TextBox3.Text);
        insertuser.Parameters.AddWithValue("@msg", msg.Text);

        try
        {
            insertuser.ExecuteNonQuery();
            con.Close();
            ClientScript.RegisterStartupScript(this.GetType(), "Alert", string.Format("alert('Message sent successfully');"), true);
           Response.Redirect("home.aspx");
            //ClientScript.RegisterStartupScript(this.GetType(), "Alert", string.Format("alert('Event Applied Successfully');"), true);

        }
        catch (Exception er)
        {
            Response.Write("something going wrong" + er.Message + "");
        }
        finally
        {

        }
    }
    }
