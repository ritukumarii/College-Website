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
using System.Drawing;
using System.IO;
public partial class register : System.Web.UI.Page
{
    string constr = ConfigurationManager.ConnectionStrings["success"].ConnectionString.ToString();
    string path,fileup;
    int sem, s1;  
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["success"].ConnectionString);
        con.Open();
        SqlCommand com = new SqlCommand("select dname from dept", con);
        SqlDataAdapter da = new SqlDataAdapter(com);
        DataSet ds = new DataSet();
        da.Fill(ds);
        DropDownList1.DataTextField = ds.Tables[0].Columns["dname"].ToString();
        DropDownList1.DataValueField = ds.Tables[0].Columns["dname"].ToString();
        DropDownList1.DataSource = ds.Tables[0];
        DropDownList1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string usercheck = "select * from reg where email='" + TextBox4.Text.ToString() + "'";
        SqlConnection con1 = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand(usercheck, con1);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "Alert", string.Format("alert('already exist');"), true);

        }
        else
        {

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["success"].ConnectionString);
            con.Open();
            if (fu.HasFile)
            {
                try
                {
                    string filename = Path.GetFileName(fu.FileName);

                     fileup = "~/uploadfile/" + filename;
                    path = Server.MapPath("~/uploadfile/");
                    fu.SaveAs(path + filename);
                    //StatusLabel.Text = "Upload status: File uploaded!";
                }
                catch (Exception ex)
                {
                    //StatusLabel.Text = "Upload status: The file could not be uploaded. The following error occured: " + ex.Message;
                }
            }
            string inscmd = "insert into reg(fname,lname,mname,email,year,dept,paddress,caddress,pass,image,mobile,gender,dob,father,mother)values(@fname,@lname,@mname,@email,@year,@dept,@paddress,@caddress,@pass,@path,@mobile,@gender,@dob,@father,@mother)";
            SqlCommand insertuser = new SqlCommand(inscmd, con);
            insertuser.Parameters.AddWithValue("@fname", TextBox1.Text);
            insertuser.Parameters.AddWithValue("@lname", TextBox2.Text);
            insertuser.Parameters.AddWithValue("@mname", TextBox3.Text);
            insertuser.Parameters.AddWithValue("@email", TextBox4.Text);
            insertuser.Parameters.AddWithValue("@year", TextBox5.Text);
            insertuser.Parameters.AddWithValue("@mobile", TextBox6.Text);
            insertuser.Parameters.AddWithValue("@gender", DropDownList2.SelectedItem.Text);
            insertuser.Parameters.AddWithValue("@dob", TextBox13.Text);
            insertuser.Parameters.AddWithValue("@father", TextBox11.Text);
            insertuser.Parameters.AddWithValue("@mother", TextBox12.Text);
            insertuser.Parameters.AddWithValue("@dept", DropDownList1.SelectedItem.Text);
            insertuser.Parameters.AddWithValue("@paddress", TextBox7.Text);
            insertuser.Parameters.AddWithValue("@caddress", TextBox8.Text);
            insertuser.Parameters.AddWithValue("@pass", TextBox9.Text);
            insertuser.Parameters.AddWithValue("@path", fileup);
            
            try
            {
                if (TextBox9.Text == TextBox10.Text)
                {
                    insertuser.ExecuteNonQuery();
                    con.Close();
                    //Exam roll generation
                    SqlConnection con2 = new SqlConnection(ConfigurationManager.ConnectionStrings["success"].ConnectionString);
                    con2.Open();
                    string inscmd1 = "select * from reg where email='" + TextBox4.Text.ToString() + "' and pass='" + TextBox9.Text.ToString() + "'";
                    SqlCommand cmd1 = new SqlCommand(inscmd1, con2);
                    SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
                    DataTable dt1 = new DataTable();
                    da1.Fill(dt1);
                    if (dt1.Rows.Count > 0)
                    {
                        string roll = dt1.Rows[0]["year"].ToString() + dt1.Rows[0]["dept"].ToString() + dt1.Rows[0]["id"].ToString();
                        SqlCommand UpdateCommand = new SqlCommand("UPDATE reg SET examroll = @examroll WHERE id= @id ", con2);
                        UpdateCommand.Parameters.Add("@examroll", SqlDbType.NVarChar).Value = roll;
                        UpdateCommand.Parameters.Add("@id", SqlDbType.NVarChar).Value = dt1.Rows[0]["id"].ToString();
                        try
                        {
                            UpdateCommand.ExecuteNonQuery();
                            con2.Close();
                        }
                        catch
                        {
                            Response.Write("something going wrong");
                        }
                    }

                    SendingMail(TextBox4.Text, "sweetritz78@gmail.com", "ritu@wtf", " Registration Successful!!", "Dear " + TextBox1.Text + " " + TextBox2.Text + " " + TextBox3.Text + ", You have successfully registered on college(Women's college) online portal.");
                    Response.Redirect("login.aspx");
                }
                else { 
                     ClientScript.RegisterStartupScript(this.GetType(), "Alert", string.Format("alert('Password Mismatch!');"), true);
                    
                }
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
    public string SendingMail(string mailTo, string from, string pass, string subject, string body)
    {
        string msg = string.Empty;
        if (mailTo != "")
        {

            MailMessage message = new MailMessage();
            SmtpClient smtpClient = new SmtpClient();

            try
            {
                MailAddress fromAddress = new MailAddress(from);
                message.From = fromAddress;
                message.To.Add(mailTo);

                message.Subject = subject;
                message.IsBodyHtml = true;
                message.Body = body;
                smtpClient.Host = "smtp.gmail.com";
                smtpClient.Port = 587;
                smtpClient.EnableSsl = true;
                smtpClient.UseDefaultCredentials = true;
                smtpClient.Credentials = new System.Net.NetworkCredential(from, pass);
                smtpClient.Send(message);
                msg = "true";

            }
            catch (Exception ex)
            {
                throw ex;
                // msg = ex.Message;
            }
        }
        return msg;
    }
}



