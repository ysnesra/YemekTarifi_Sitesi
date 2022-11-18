using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifi_Sitesi
{
    public partial class YemekDetay : System.Web.UI.Page
    {
        sqlsinif bgl=new sqlsinif();
        string yemekidMove = ""; 

        protected void Page_Load(object sender, EventArgs e)
        {
            yemekidMove = Request.QueryString["yemekid"];  //diğer sayfadan gelen yemekid değişkeni yemekidMove değişkenine ata

            SqlCommand komut=new SqlCommand("Select YemekAd From Tbl_Yemekler Where Yemekid=@p1",bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", yemekidMove);
            SqlDataReader dr= komut.ExecuteReader();
            while (dr.Read())    //dr nesnesi okuma işlemi yaptığı sürece dr[0] daki değeri yazsın
            {
                Label3.Text = dr[0].ToString(); 
            }
            bgl.baglanti().Close();

            //Yorumları Listeleme

            SqlCommand komut2 = new SqlCommand("Select * from Tbl_Yorumlar Where Yemekid=@p2", bgl.baglanti());
            komut2.Parameters.AddWithValue("@p2",yemekidMove);
            SqlDataReader dr2 = komut2.ExecuteReader();
            DataList2.DataSource= dr2;
            DataList2.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)   
            //Butona tıkladığında kullanıcının textbox içine giridği bilgiler veritabanında Yorumlar tablosuna kaydedilecek 
        {
            SqlCommand komut = new SqlCommand("Insert into Tbl_Yorumlar(YorumAdSoyad,YorumMail,Yorumicerik,Yemekid) values (@p1,@p2,@p3,@p4)",bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut.Parameters.AddWithValue("@p4", yemekidMove);
            komut.ExecuteNonQuery();   //sorguyu gerçekleştiren komut
            bgl.baglanti().Close();
        }

        protected void DataList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}