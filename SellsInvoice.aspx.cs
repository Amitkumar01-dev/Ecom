using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class SellsInvoice : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindRepeater();
        }
    }

    protected void btnadd_Click(object sender, EventArgs e)
    {
        int rowIndex = 0;

        if (ViewState["Curtbl"] != null)
        {
            DataTable dt = (DataTable)ViewState["Curtbl"];
            DataRow drCurrentRow = null;
            if (dt.Rows.Count > 0)
            {
                for (int i = 1; i <= dt.Rows.Count; i++)
                {
                    TextBox txtname = (TextBox)Repeater1.Items[rowIndex].FindControl("txtname");
                    TextBox txtemail = (TextBox)Repeater1.Items[rowIndex].FindControl("txtemail");
                    TextBox txtmobile = (TextBox)Repeater1.Items[rowIndex].FindControl("txtmobile");
                    drCurrentRow = dt.NewRow();
                    dt.Rows[i - 1]["txtname"] = txtname.Text;
                    dt.Rows[i - 1]["txtemail"] = txtemail.Text;
                    dt.Rows[i - 1]["txtmobile"] = txtmobile.Text;
                    rowIndex++;
                }
                dt.Rows.Add(drCurrentRow);
                ViewState["Curtbl"] = dt;
                Repeater1.DataSource = dt;
                Repeater1.DataBind();
            }
        }
        else
        {
            Response.Write("ViewState Value is Null");
        }
        SetOldData();
    }

    protected void btndel_Click(object sender, EventArgs e)
    {
        RepeaterItem item = (sender as LinkButton).NamingContainer as RepeaterItem;

        int rowIndex = 0;
        int rowID = item.ItemIndex;
        if (ViewState["Curtbl"] != null)
        {
            DataTable dt = (DataTable)ViewState["Curtbl"];
            if (dt.Rows.Count > 0)
            {
                for (int i = 1; i <= Repeater1.Items.Count; i++)
                {
                    TextBox txtname = (TextBox)Repeater1.Items[rowIndex].FindControl("txtname");
                    TextBox txtemail = (TextBox)Repeater1.Items[rowIndex].FindControl("txtemail");
                    TextBox txtmobile = (TextBox)Repeater1.Items[rowIndex].FindControl("txtmobile");
                    dt.Rows[i - 1]["txtname"] = txtname.Text;
                    dt.Rows[i - 1]["txtemail"] = txtemail.Text;
                    dt.Rows[i - 1]["txtmobile"] = txtmobile.Text;
                    rowIndex++;
                }

                if (item.ItemIndex < dt.Rows.Count - 1)
                {
                    dt.Rows.Remove(dt.Rows[rowID]);
                }
            }

            ViewState["Curtbl"] = dt;
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
        }

        SetOldData();
    }

    protected void BindRepeater()
    {
        DataTable dt = new DataTable();
        dt.Columns.Add("txtname", typeof(string));
        dt.Columns.Add("txtemail", typeof(string));
        dt.Columns.Add("txtmobile", typeof(string));
        dt.Columns.Add("txtmobile", typeof(string));
        dt.Columns.Add("txtmobile", typeof(string));
        dt.Columns.Add("txtmobile", typeof(string));
        DataRow dr = dt.NewRow();
        dr["txtname"] = string.Empty;
        dr["txtemail"] = string.Empty;
        dr["txtmobile"] = string.Empty;
        dt.Rows.Add(dr);
        ViewState["Curtbl"] = dt;
        Repeater1.DataSource = dt;
        Repeater1.DataBind();

    }

    private void SetOldData()
    {
        int rowIndex = 0;
        if (ViewState["Curtbl"] != null)
        {
            DataTable dt = (DataTable)ViewState["Curtbl"];
            if (dt.Rows.Count > 0)
            {
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    TextBox txtname = (TextBox)Repeater1.Items[rowIndex].FindControl("txtname");
                    TextBox txtemail = (TextBox)Repeater1.Items[rowIndex].FindControl("txtemail");
                    TextBox txtmobile = (TextBox)Repeater1.Items[rowIndex].FindControl("txtmobile");
                    txtname.Text = dt.Rows[i]["txtname"].ToString();
                    txtemail.Text = dt.Rows[i]["txtemail"].ToString();
                    txtmobile.Text = dt.Rows[i]["txtmobile"].ToString();
                    rowIndex++;
                }
            }
        }
    }
}