using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class AddManufacturer : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbConncetion"].ConnectionString);
    SqlDataAdapter ad = new SqlDataAdapter();
    DataSet ds = new DataSet();

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    void reset()
    {
        txtManufacturer.Text = "";
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            //ad.InsertCommand = new SqlCommand("Insert into tblManufacturerMast (M_Name, AddedBy, AddedBy_Date, UpdatedBy, UpdatedBy_Date, IP, MAC) values ('" + txtManufacturer.Text + "','','','','','','')", con);
            //con.Open();
            //ad.InsertCommand.ExecuteNonQuery();
            //con.Close();
            //reset();
        }
        catch (Exception ex)
        {

            //throw;
        }
        

    }
}
