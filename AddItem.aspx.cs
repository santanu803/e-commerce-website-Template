using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class AddItem : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtItemid.Visible = false;

        lblSubcat.Visible = false;
        ddlsubcat.Visible = false;
        txtUscat.Visible = false;
        chk1.Visible = false;
        lblSub.Visible = false;


        if (ddlCategory.SelectedValue == "Grocary")
        {
            lblSubcat.Visible = true;
            ddlsubcat.Visible = true;
            chk1.Visible = true;
            lblSub.Visible = true;
        }
        if (chk1.Checked == true)
        {
            txtUscat.Visible = true;
            ddlsubcat.Enabled = false;
        }
        else
        {
            ddlsubcat.Enabled = true;
        }


    }





    protected void btnSubmit_Click(object sender, EventArgs e)
    {
       if(chk1.Checked==true)
        {
            string picname = ItemUpload.FileName.ToString();
            ItemUpload.PostedFile.SaveAs(Server.MapPath("~/image/ItemsImage/") + picname);
            string filepath = "~/image/ItemsImage/" + picname;
            imgItem.ImageUrl = filepath;
            bool r = DbConnection.InsertData("insert into tblItem values('" + txtItemname.Text + "','" + txtPrice.Text + "','" + ddlPunit.Text + "','" + txtStock.Text + "','" + ddlStockunit.Text + "','" + ddlCategory.Text + "','" + txtUscat.Text + "','" + imgItem.ImageUrl + "','" + ddlStatus.Text + "','" + "null" + "','" + ddlOffer.Text + "')");
            if (r == true)
            {
                Response.Write("<script>alert('Item Add successfully')</script>");
                txtItemname.Text = "";
                txtPrice.Text = "";
                txtStock.Text = "";

            }
//for subcategory entry
            bool r1= DbConnection.InsertData("insert into catagory values('" + txtUscat.Text +"')");
            if (r == true)
            {
                Response.Write("<script>alert('Please write a net subcategory.')</script>");
            }
        }
       else
        {
            string picname = ItemUpload.FileName.ToString();
            ItemUpload.PostedFile.SaveAs(Server.MapPath("~/image/ItemsImage/") + picname);
            string filepath = "~/image/ItemsImage/" + picname;
            imgItem.ImageUrl = filepath;
            bool r = DbConnection.InsertData("insert into tblItem values('" + txtItemname.Text + "','" + txtPrice.Text + "','" + ddlPunit.Text + "','" + txtStock.Text + "','" + ddlStockunit.Text + "','" + ddlCategory.Text + "','" + ddlsubcat.Text + "','" + imgItem.ImageUrl + "','" + ddlStatus.Text + "','" + "null" + "','" + ddlOffer.Text + "')");
            if (r == true)
            {
                Response.Write("<script>alert('Item Add successfully')</script>");
                txtItemname.Text = "";
                txtPrice.Text = "";
                txtStock.Text = "";

            }
        }
    }




    protected void ddlsubcat_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}