using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifi_Sitesi
{
    public partial class Yemekler : System.Web.UI.Page
    {
        sqlsinif bgl=new sqlsinif();

        string islemm = "";
        string id = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible= false;
            Panel4.Visible=false;

            //Kategori Listesi

            if (Page.IsPostBack == false)
            {
                id=Request.QueryString["Yemekid"];
                islemm = Request.QueryString["islem"];

                //Kategori Listesi
                SqlCommand komut2 = new SqlCommand("Select * From Tbl_Kategoriler", bgl.baglanti());
                SqlDataReader dr2 = komut2.ExecuteReader();

                DropDownList1.DataTextField = "KategoriAd";  //veritabanındaki Kategoriid değerine göre KategoriAd değerinşi Dropdown a getirir
                DropDownList1.DataValueField = "Kategoriid";

                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();
            }

            //Yemek listesi

            SqlCommand komut = new SqlCommand("Select * From Tbl_Yemekler ", bgl.baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();

            //Silme işlemi aynı sayfada göreceğimiz için 

            if (islemm == "sil")
            {
                SqlCommand komutsil = new SqlCommand("Delete From Tbl_Yemekler Where Yemekid=@p1",bgl.baglanti());
                komutsil.Parameters.AddWithValue("@p1", id);
                komutsil.ExecuteNonQuery();
                bgl.baglanti().Close();
            }
        }

     

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }

        //Yemek Ekleme 
        protected void BtnEkle_Click(object sender, EventArgs e)    
        {
            SqlCommand komut = new SqlCommand("Insert Into Tbl_Yemekler (YemekAd,YemekMalzeme,YemekTarif,Kategoriid) Values(@p1,@p2,@p3,@p4)", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);   
            komut.ExecuteNonQuery();
            bgl.baglanti().Close(); 

            //Kategori Sayısı Arttırmma

            SqlCommand komut2 = new SqlCommand("Update Tbl_Kategoriler Set KategoriAdet=KategoriAdet+1 Where Kategoriid=@p1",bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1", DropDownList1.SelectedValue);
            komut2.ExecuteReader();
            bgl.baglanti().Close();

        }
        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}