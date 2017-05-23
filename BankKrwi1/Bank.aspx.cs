using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;


public partial class Bank : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["defaultConnectionString"].ConnectionString);
            conn.Open();
            string insertQuery = "insert into info (uzytkownik_id,Imie,Nazwisko,Kontakt,Email,Adres,GrKrwii) values(@uid,@imie,@nazwisko,@kontakt,@email,@adres,@gkrwi) ";
            SqlCommand com = new SqlCommand(insertQuery, conn);
            com.Parameters.AddWithValue("@uid", txtId.Text);
            com.Parameters.AddWithValue("@imie", txtImie.Text);
            com.Parameters.AddWithValue("@nazwisko", txtNazwisko.Text);
            com.Parameters.AddWithValue("@kontakt", txtKontakt.Text);
            com.Parameters.AddWithValue("@email", txtEmail.Text);
            com.Parameters.AddWithValue("@adres", txtAdres.Text);
            com.Parameters.AddWithValue("@gkrwi", DropDownList1.SelectedIndex.ToString());
            com.ExecuteNonQuery();
            Response.Redirect("Dawcy.aspx");
            Response.Write("działa");
            conn.Close();

        
       /* string constr = ConfigurationManager.ConnectionStrings["defaultConnectionString"].ConnectionString;
        using (var conn = new SqlConnection(constr))
        using (var cmd = conn.CreateCommand())
        {
            conn.Open();
            string query = "Insert into [Table](" + txtId.Text.Trim() + ",'" + txtImie.Text.Trim() + " ','" + txtNazwisko.Text.Trim() + "'," + txtKontakt.Text.Trim() + ",'" + txtEmail.Text.Trim() + "','" + txtAdres.Text.Trim() + "','" + DropDownList1.SelectedItem.ToString() + "')";
            SqlCommand command = new SqlCommand(query, conn);
            command.ExecuteNonQuery();
            conn.Close();
            
            Response.Write("Wprowadzono dane sukces");
        }*/
    }

    
    }