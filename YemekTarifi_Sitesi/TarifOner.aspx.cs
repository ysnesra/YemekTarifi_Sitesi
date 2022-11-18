 using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifi_Sitesi
{
    public partial class TarifOner : System.Web.UI.Page
    {
        sqlsinif bglconnection = new sqlsinif();
        protected void Page_Load(object sender, EventArgs e)
        {
              
        }

        protected void BtnTarifOner_Click(object sender, EventArgs e)
        {
            //boş kontrolleri yapılacak,



            SqlCommand komut = new SqlCommand("Insert into Tbl_Tarifler(TarifAd,TarifMalzeme,TarifYapilis,TarifResim,TarifSahip,TarifSahipMail) values (@t1,@t2,@t3,@t4,@t5,@t6)", bglconnection.baglanti());
          
            komut.Parameters.AddWithValue("@t1", TxtTarifAd.Text);
            komut.Parameters.AddWithValue("@t2", TxtMalzemeler.Text);
            komut.Parameters.AddWithValue("@t3", TxtYapilis.Text);
            komut.Parameters.AddWithValue("@t4", FileUpload1.FileName);
            komut.Parameters.AddWithValue("@t5", TxtTarifOneren.Text);
            komut.Parameters.AddWithValue("@t6", TxtMailAdresi.Text);
            var res =  komut.ExecuteNonQuery();    //sorguyu gerçekleştirmesi için yazıyoruz
            if (res > 0)
            {

            }
            bglconnection.baglanti().Close();
            Response.Write("Tarifiniz alınmıştır");  //ekrana mesaj verecek

        }
    }
}