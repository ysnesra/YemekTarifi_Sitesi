﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifi_Sitesi
{
    public partial class KategoriAdminDetay : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string id;

        protected void Page_Load(object sender, EventArgs e)
        {
            id= Request.QueryString["Kategoriid"];

            if (Page.IsPostBack == false)   //Sayfayı yeniden yükleme.Her işlem yaptığında sayfayı sıfırlamasın
            {
                SqlCommand komut = new SqlCommand("Select * From Tbl_Kategoriler Where Kategoriid=@p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TextBox1.Text = dr[1].ToString();
                    TextBox2.Text = dr[2].ToString();
                }
                bgl.baglanti().Close();
            }
        }
        //Güncelle butonuna tıklayınca değişiklik yaptığı yeni değerleri ekleyp veritababına kaydedeceğiz (textboxlar dolu geliyor zaten) 
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Update Tbl_Kategoriler Set KategoriAd=@p1,KategoriAdet=@p2 Where Kategoriid=@p3", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", id);
            komut.ExecuteNonQuery();  //sorgumuzu çalıştırır
            bgl.baglanti().Close();

        }
    }
}