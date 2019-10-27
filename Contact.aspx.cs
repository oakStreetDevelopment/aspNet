using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace dataExample
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submitButton_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dataTestConnectionString"].ConnectionString);
            SqlCommand sqlCmd = new SqlCommand("INSERT INTO contactInfoTable(firstName, lastName, streetAddress, city, state, zip, telephone, emailAddress) VALUES (@firstName, @lastName, @streetAddress, @city, @state, @zip, @telephone, @emailAddress)", conn);
            sqlCmd.CommandType = CommandType.Text;
            sqlCmd.Parameters.AddWithValue("@firstName", firstNameTextBox.Text);
            sqlCmd.Parameters.AddWithValue("@LastName", LastNameTextBox.Text);
            sqlCmd.Parameters.AddWithValue("@streetAddress", streetAddressTextBox.Text);
            sqlCmd.Parameters.AddWithValue("@city", cityTextBox.Text);
            sqlCmd.Parameters.AddWithValue("@state", stateTextBox.Text);
            sqlCmd.Parameters.AddWithValue("@zip", zipTextBox.Text);
            sqlCmd.Parameters.AddWithValue("@telephone", telephoneTextBox.Text);
            sqlCmd.Parameters.AddWithValue("@emailAddress", emailAddressTextBox.Text);
            conn.Open();
            sqlCmd.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("~\\WebForm1.aspx");
        }
    }
}