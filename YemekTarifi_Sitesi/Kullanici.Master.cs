using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifi_Sitesi
{
    public partial class Kullanici : System.Web.UI.MasterPage
    {
        sqlsinif bglconnection =new sqlsinif();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            SqlCommand komut = new SqlCommand("Select * from Tbl_Kategoriler", bglconnection.baglanti());
                                                       //bglconnection.baglanti() ile baglanti metodumuzla ilişkilendirdik
            SqlDataReader oku =komut.ExecuteReader();
            DataList1.DataSource = oku;                //DataListin verikaynağına; okuduğu değerleri atarız
            DataList1.DataBind();
        }
    }
}