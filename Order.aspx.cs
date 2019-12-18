using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Order : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblsq.Visible = false;

        if (lblPpu.Text == "/Piece")
        {
            DropDownList1.SelectedValue = "piece";
            float q = Convert.ToSingle(txtQ.Text);
            float p = Convert.ToSingle(lblPrice.Text);

            float bill = p * q;
            lblTamount.Text = bill.ToString();

            //
            float aqun = Convert.ToSingle(txtQ.Text);
            DataSet ds = DbConnection.FetchData("select * from tblItem where itemid='" + lblPid.Text + "'");
            var stock1 = ds.Tables[0].Rows[0]["stockQuantity"].ToString();
            float stock = Convert.ToSingle(stock1);
            if (aqun > stock)
            {

                Response.Write("<script>alert('We have not enough quantity of item ..please select low quantity')</script>");

                txtQ.Text = "";
            }
            ///



        }


        if (txtQ.Text=="")
        {
            DropDownList1.Enabled = false;
            
        }

        else
        {
            DropDownList1.Enabled = true;
            
        }
        

       
        if (Session["iid"]!=null)
        {
            lblPid.Text = Session["iid"].ToString();

            DataSet ds = DbConnection.FetchData("select * from tblItem where itemid='" + lblPid.Text + "'");
            imgItem.ImageUrl = ds.Tables[0].Rows[0]["image"].ToString();
            lblPname.Text = ds.Tables[0].Rows[0]["iname"].ToString();
            lblPrice.Text= ds.Tables[0].Rows[0]["price"].ToString();
            lblPpu.Text = ds.Tables[0].Rows[0]["ppu"].ToString();
            lblAvailable.Text = ds.Tables[0].Rows[0]["stockStatus"].ToString();

            lblsq.Text = ds.Tables[0].Rows[0]["stockQuantity"].ToString();
        

        }
       
   

        if(lblAvailable.Text == "Out Of Stock")
        {
            Button1.Enabled = false;
            Button2.Enabled = false;
           
        }

    }



    protected void Button2_Click(object sender, EventArgs e)
    {
        

        if (txtQ.Text == "")
        {
            Response.Write("<script>alert('Please Enter A Quantity')</script>");
        }
        else if (DropDownList1.SelectedValue == "0")
        {
            Response.Write("<script>alert('Please select A Quantity Unit')</script>");
        }
        
       


        else
        {
            if(Session["uid"]!=null)
            {
                

                lblUid.Text = Session["uid"].ToString();
                bool r = DbConnection.InsertData("insert into tblCart values('" + lblUid.Text + "','" + lblPid.Text+ "','" + lblPname.Text + "','" + txtQ.Text + "','" + DropDownList1.Text + "','" + lblTamount.Text + "','" +imgItem.ImageUrl+ "')");
                if (r == true)
                {
                    if (DropDownList1.SelectedValue == "gm")
                    {
                        float quantity = Convert.ToSingle(txtQ.Text);
                        float quantityinkg = quantity / 1000;



                        DataSet ds = DbConnection.FetchData("select stockQuantity from tblItem where itemid='" + lblPid.Text + "'");
                        lbltotalstock.Text = ds.Tables[0].Rows[0]["stockQuantity"].ToString();
                        float stockquantity = Convert.ToSingle(lbltotalstock.Text);

                        float newstock = stockquantity - quantityinkg;
                        if (newstock > 0)
                        {

                            DbConnection.InsertData("update tblItem set stockQuantity='" + newstock + "' where itemid='" + lblPid.Text + "'");

                        }
                        else
                        {
                            Response.Write("<script>alert('we have not suffient quantity of this product ')</script>");
                            DbConnection.InsertData("update tblItem set stockQuantity='" + "00" + "', stockStatus='" + "Out Of Stock" + "' where itemid='" + lblPid.Text + "'");
                        }
                       // DbConnection.InsertData("update tblItem set stockQuantity='" + newstock + "' where itemid='" + lblPid.Text + "'");
                    }
                    else if(DropDownList1.SelectedValue == "kg")
                    {
                        float quantity = Convert.ToSingle(txtQ.Text);
                        DataSet ds = DbConnection.FetchData("select stockQuantity from tblItem where itemid='" + lblPid.Text + "'");
                        lbltotalstock.Text = ds.Tables[0].Rows[0]["stockQuantity"].ToString();
                        float stockquantity = Convert.ToSingle(lbltotalstock.Text);

                        float newstock = stockquantity - quantity;
                        if (newstock > 0)
                        {

                            DbConnection.InsertData("update tblItem set stockQuantity='" + newstock + "' where itemid='" + lblPid.Text + "'");

                        }
                        else
                        {
                            Response.Write("<script>alert('we have not suffient quantity of this product ')</script>");
                            DbConnection.InsertData("update tblItem set stockQuantity='" + "00" + "', stockStatus='" + "Out Of Stock" + "' where itemid='" + lblPid.Text + "'");
                        }
                    }
                    else if (DropDownList1.SelectedValue == "ltr")
                    {
                        float quantity = Convert.ToSingle(txtQ.Text);
                        DataSet ds = DbConnection.FetchData("select stockQuantity from tblItem where itemid='" + lblPid.Text + "'");
                        lbltotalstock.Text = ds.Tables[0].Rows[0]["stockQuantity"].ToString();
                        float stockquantity = Convert.ToSingle(lbltotalstock.Text);

                        float newstock = stockquantity - quantity;
                        if (newstock > 0)
                        {

                            DbConnection.InsertData("update tblItem set stockQuantity='" + newstock + "' where itemid='" + lblPid.Text + "'");

                        }
                        else
                        {
                            Response.Write("<script>alert('we have not suffient quantity of this product ')</script>");
                            DbConnection.InsertData("update tblItem set stockQuantity='" + "00" + "', stockStatus='" + "Out Of Stock" + "' where itemid='" + lblPid.Text + "'");
                        }
                    }

                    else if (DropDownList1.SelectedValue == "piece")
                    {
                        float quantity = Convert.ToSingle(txtQ.Text);
                        DataSet ds = DbConnection.FetchData("select stockQuantity from tblItem where itemid='" + lblPid.Text + "'");
                        lbltotalstock.Text = ds.Tables[0].Rows[0]["stockQuantity"].ToString();
                        float stockquantity = Convert.ToSingle(lbltotalstock.Text);

                        float newstock = stockquantity - quantity;
                        if (newstock > 0)
                        {

                            DbConnection.InsertData("update tblItem set stockQuantity='" + newstock + "' where itemid='" + lblPid.Text + "'");

                        }
                        else
                        {
                            Response.Write("<script>alert('we have not suffient quantity of this product ')</script>");
                            DbConnection.InsertData("update tblItem set stockQuantity='" + "00" + "', stockStatus='" + "Out Of Stock" + "' where itemid='" + lblPid.Text + "'");
                        }
                    }
                    //float Quan = Convert.ToSingle(txtQ.Text);
                    //DataSet ds2 = DbConnection.FetchData("select stockQuantity from tblItem where itemid='" + lblPid.Text + "'");
                    //lbltotalstock.Text = ds2.Tables[0].Rows[0]["stockQuantity"].ToString();
                    //float totalstock = Convert.ToSingle(lbltotalstock.Text);
                    //if(Quan>totalstock)// && lblPpu.Text==DropDownList1.SelectedIndex.ToString())
                    //{
                    //    Response.Write("<script>alert('ewkhnfjnjefdnknwef')</script>");
                    //}


                    Session["uid"] = lblUid.Text;
                    Response.Redirect("Shipping.aspx");
                }
            }
            else
            {
                Session["pname"] = lblPname.Text;
                Session["pid"] = lblPid.Text;
                Session["img"] = imgItem.ImageUrl;
                Session["q"] = txtQ.Text;
                Session["qu"] = DropDownList1.Text;
                Session["tp"] = lblTamount.Text;
              
                   
                Response.Redirect("Login.aspx");
            }
            
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (txtQ.Text == "")
        {
            Response.Write("<script>alert('Please Enter A Quantity')</script>");
        }
        else if (DropDownList1.SelectedValue == "0")
        {
            Response.Write("<script>alert('Please select A Quantity Unit')</script>");
        }

        else
        {
            if (Session["uid"] != null)
            {
                lblUid.Text = Session["uid"].ToString();
                bool r = DbConnection.InsertData("insert into tblCart values('" + lblUid.Text + "','" + lblPid.Text + "','" + lblPname.Text + "','" + txtQ.Text + "','" + DropDownList1.Text + "','" + lblTamount.Text + "','" + imgItem.ImageUrl + "')");
                if (r == true)
                {
                    Response.Write("<script>alert('Item add your cart successfully')</script>");
                    if (DropDownList1.SelectedValue == "gm")
                    {
                        float quantity = Convert.ToSingle(txtQ.Text);
                        float quantityinkg = quantity / 1000;



                        DataSet ds = DbConnection.FetchData("select stockQuantity from tblItem where itemid='" + lblPid.Text + "'");
                        lbltotalstock.Text = ds.Tables[0].Rows[0]["stockQuantity"].ToString();
                        float stockquantity = Convert.ToSingle(lbltotalstock.Text);

                        float newstock = stockquantity - quantityinkg;
                        if (newstock > 0)
                        {

                            DbConnection.InsertData("update tblItem set stockQuantity='" + newstock + "' where itemid='" + lblPid.Text + "'");

                        }
                        else
                        {
                            Response.Write("<script>alert('we have not suffient quantity of this product ')</script>");
                            DbConnection.InsertData("update tblItem set stockQuantity='" + "00" + "', stockStatus='" + "Out Of Stock" + "' where itemid='" + lblPid.Text + "'");
                        }
                        // DbConnection.InsertData("update tblItem set stockQuantity='" + newstock + "' where itemid='" + lblPid.Text + "'");
                    }
                    else if (DropDownList1.SelectedValue == "kg")
                    {
                        float quantity = Convert.ToSingle(txtQ.Text);
                        DataSet ds = DbConnection.FetchData("select stockQuantity from tblItem where itemid='" + lblPid.Text + "'");
                        lbltotalstock.Text = ds.Tables[0].Rows[0]["stockQuantity"].ToString();
                        float stockquantity = Convert.ToSingle(lbltotalstock.Text);

                        float newstock = stockquantity - quantity;
                        if (newstock > 0)
                        {

                            DbConnection.InsertData("update tblItem set stockQuantity='" + newstock + "' where itemid='" + lblPid.Text + "'");

                        }
                        else
                        {
                            Response.Write("<script>alert('we have not suffient quantity of this product ')</script>");
                            DbConnection.InsertData("update tblItem set stockQuantity='" + "00" + "', stockStatus='" + "Out Of Stock" + "' where itemid='" + lblPid.Text + "'");
                        }
                    }
                    else if (DropDownList1.SelectedValue == "ltr")
                    {
                        float quantity = Convert.ToSingle(txtQ.Text);
                        DataSet ds = DbConnection.FetchData("select stockQuantity from tblItem where itemid='" + lblPid.Text + "'");
                        lbltotalstock.Text = ds.Tables[0].Rows[0]["stockQuantity"].ToString();
                        float stockquantity = Convert.ToSingle(lbltotalstock.Text);

                        float newstock = stockquantity - quantity;
                        if (newstock > 0)
                        {

                            DbConnection.InsertData("update tblItem set stockQuantity='" + newstock + "' where itemid='" + lblPid.Text + "'");

                        }
                        else
                        {
                            Response.Write("<script>alert('we have not suffient quantity of this product ')</script>");
                            DbConnection.InsertData("update tblItem set stockQuantity='" + "00" + "', stockStatus='" + "Out Of Stock" + "' where itemid='" + lblPid.Text + "'");
                        }
                    }

                    else if (DropDownList1.SelectedValue == "piece")
                    {
                        float quantity = Convert.ToSingle(txtQ.Text);
                        DataSet ds = DbConnection.FetchData("select stockQuantity from tblItem where itemid='" + lblPid.Text + "'");
                        lbltotalstock.Text = ds.Tables[0].Rows[0]["stockQuantity"].ToString();
                        float stockquantity = Convert.ToSingle(lbltotalstock.Text);

                        float newstock = stockquantity - quantity;
                        if (newstock > 0)
                        {

                            DbConnection.InsertData("update tblItem set stockQuantity='" + newstock + "' where itemid='" + lblPid.Text + "'");

                        }
                        else
                        {
                            Response.Write("<script>alert('we have not suffient quantity of this product ')</script>");
                            DbConnection.InsertData("update tblItem set stockQuantity='" + "00" + "', stockStatus='" + "Out Of Stock" + "' where itemid='" + lblPid.Text + "'");
                        }
                    }
                    
                    else
                    {
                        Response.Write("<script>alert('Please Login And Try Again')</script>");
                    }
                }
            }
            else
            {
                Response.Write("<script>alert('Please Login And Try Again')</script>");
            }

        }
    }


    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedValue == "kg")
        {
            float stock = Convert.ToSingle(lblsq.Text);
            float aqun = Convert.ToSingle(txtQ.Text);
            if (aqun > stock)
            {

                Response.Write("<script>alert('We have not enough quantity of item ..please select low quantity')</script>");

                txtQ.Text = "";
            }

            else
            {
                float q = Convert.ToSingle(txtQ.Text);
                float p = Convert.ToSingle(lblPrice.Text);
                float bill = p * q;
                lblTamount.Text = bill.ToString();

            }






        }


        else if (DropDownList1.SelectedValue == "gm")
        {
            float stock = Convert.ToSingle(lblsq.Text);
            float aqun = Convert.ToSingle(txtQ.Text);
            float qntkg = aqun / 1000;

            if (qntkg > stock)
            {
                Response.Write("<script>alert('We have not enough quantity of item ..please select low quantity')</script>");

                txtQ.Text = "";
            }
            else
            {
                float q = Convert.ToSingle(txtQ.Text);
                float p = Convert.ToSingle(lblPrice.Text);
                float bill = (q / 1000) * p;
                lblTamount.Text = bill.ToString();
            }




        }
        else if (DropDownList1.SelectedValue == "ltr")
        {
            float stock = Convert.ToSingle(lblsq.Text);
            float aqun = Convert.ToSingle(txtQ.Text);
            if (aqun > stock)
            {

                Response.Write("<script>alert('We have not enough quantity of item ..please select low quantity')</script>");

                txtQ.Text = "";
            }
            else
            {


                float q = Convert.ToSingle(txtQ.Text);
                float p = Convert.ToSingle(lblPrice.Text);

                float bill = p * q;
                lblTamount.Text = bill.ToString();

            }

        }

        else if (DropDownList1.SelectedValue == "piece")
        {

            // float stock = Convert.ToSingle(lblsq.Text);
          
            float aqun = Convert.ToSingle(txtQ.Text);
            DataSet ds = DbConnection.FetchData("select * from tblItem where itemid='" + lblPid.Text + "'");
            var stock1 = ds.Tables[0].Rows[0]["stockQuantity"].ToString();
            float stock = Convert.ToSingle(stock1);
            if (aqun > stock)
            {

                Response.Write("<script>alert('We have not enough quantity of item ..please select low quantity')</script>");

                txtQ.Text = "";
            }


            else
                  {

                      float q = Convert.ToSingle(txtQ.Text);
                        float p = Convert.ToSingle(lblPrice.Text);

                         float bill = p * q;
                         lblTamount.Text = bill.ToString();
                     }
        
        }
       
        else
        {
            Response.Write("<script>alert('Please select A Quantity Unit')</script>");
        }


    }

    protected void txtQ_TextChanged(object sender, EventArgs e)
    {
        //float quantity = Convert.ToSingle(txtQ.Text);
        //DataSet ds = DbConnection.FetchData("select stockQuantity from tblItem where itemid='" + lblPid.Text + "'");
        //lbltotalstock.Text = ds.Tables[0].Rows[0]["stockQuantity"].ToString();

        //float stockquantity = Convert.ToSingle(lbltotalstock.Text);
        //if(quantity>=stockquantity)
        //{
        //    Response.Write("<script>alert('We have no sufficient quantity of this item please select low quantity')</script>");
        //}
    }
}