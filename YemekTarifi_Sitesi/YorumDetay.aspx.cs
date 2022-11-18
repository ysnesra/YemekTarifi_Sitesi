using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifi_Sitesi
{
    public partial class YorumDetay : System.Web.UI.Page
    {
        sqlsinif bgl=new sqlsinif();
        string id = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                id = Request.QueryString["Yorumid"];
                SqlCommand komut = new SqlCommand("Select YorumAdSoyad,YorumMail,Yorumicerik,YemekAd" +
                    " From Tbl_Yorumlar Join Tbl_Yemekler On Tbl_Yorumlar.Yemekid=Tbl_Yemekler.Yemekid " +
                    "Where Yorumid=@p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TxtAd.Text = dr[0].ToString();
                    TxtMail.Text = dr[1].ToString();
                    TxtIçerik.Text = dr[2].ToString();
                    TxtYemek.Text = dr[3].ToString();

                }
                bgl.baglanti().Close();
            }       
        }

        protected void BtnOnayla_Click(object sender, EventArgs e)
        {
            SqlCommand komut2 = new SqlCommand("Update Tbl_Yorumlar Set Yorumicerik=@p1, YorumOnay=@p2 Where Yorumid=@p3", bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1", TxtIçerik.Text);
            komut2.Parameters.AddWithValue("@p2", "True");
            komut2.Parameters.AddWithValue("@p3", id);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}