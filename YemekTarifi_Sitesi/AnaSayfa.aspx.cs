using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls; 
using System.Data.SqlClient;

namespace YemekTarifi_Sitesi
{
    public partial class AnaSayfa : System.Web.UI.Page
    {
        sqlsinif bgl=new sqlsinif();  //sql bağlantı sınıfımızı çağırırız

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Select * From Tbl_Yemekler", bgl.baglanti());   //sqlsorgumuzu yazmak için kull
            SqlDataReader dr = komut.ExecuteReader();   //verileri okuyan bir nesne oluşturalım
            DataList2.DataSource = dr;    //Datalistin içini dr den gelen değerlerle doldururuz
            DataList2.DataBind();      //DataBind ile veribağlantıısnı gerçekleşrtirmş oluruz

        }

        protected void DataList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}