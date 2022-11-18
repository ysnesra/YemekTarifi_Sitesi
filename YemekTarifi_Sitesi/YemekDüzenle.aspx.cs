using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifi_Sitesi
{
    public partial class YemekDüzenle : System.Web.UI.Page
    {
        sqlsinif bgl=new sqlsinif();
        string id;
        //Güncelleme butonuna basınca bu sayfa açılacağı için; açılışta yemekid ye göre textboxlar dolu gelecek
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Yemekid"];

            if (Page.IsPostBack == false)   //Sayfayı yeniden yükleme.Her işlem yaptığında sayfayı sıfırlamasın
            {
                SqlCommand komut = new SqlCommand("Select * From Tbl_Yemekler Where Yemekid=@p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TextBox1.Text = dr[1].ToString();
                    TextBox2.Text = dr[2].ToString();
                    TextBox3.Text = dr[3].ToString();
                }
                bgl.baglanti().Close();
            }

            //Kategori Listesi

            if (Page.IsPostBack == false)
            {
                SqlCommand komut2 = new SqlCommand("Select * From Tbl_Kategoriler", bgl.baglanti());
                SqlDataReader dr2 = komut2.ExecuteReader();

                DropDownList1.DataTextField = "KategoriAd";  //veritabanındaki Kategoriid değerine göre KategoriAd değerinşi Dropdown a getirir
                DropDownList1.DataValueField = "Kategoriid";

                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();
            }
        }
        //Yemek Güncelle butonu
        protected void Button1_Click(object sender, EventArgs e)
        {
            //Resimler klasörünün içine yemekresmini alır,kaydeder 
            FileUpload1.SaveAs(Server.MapPath("/Resimler/" + FileUpload1.FileName));

            SqlCommand komut = new SqlCommand("Update Tbl_Yemekler Set YemekAd=@p1,YemekMalzeme=@p2,YemekTarif=@p3,Kategoriid=@p4, YemekResim=@p6 Where Yemekid=@p5", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut.Parameters.AddWithValue("@p5", id);
            komut.Parameters.AddWithValue("@p6", "~/Resimler/" + FileUpload1.FileName);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }

        protected void BtnGününYemegiSec_Click(object sender, EventArgs e)
        {
            //Butona basınca bütün yemeklerin YemekDurumunu sıfıra çekelim
            SqlCommand komut = new SqlCommand("Update Tbl_Yemekler Set YemekDurum=0", bgl.baglanti());
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();

            //Günün Yemeği için id ye göre durumu true yapalım
            SqlCommand komut2 = new SqlCommand("Update Tbl_Yemekler Set YemekDurum=1 Where Yemekid=@p1",bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1", id);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();

        }
    }
}