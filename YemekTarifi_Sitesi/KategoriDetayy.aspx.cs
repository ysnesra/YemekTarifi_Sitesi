using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifi_Sitesi
{
    public partial class KategoriDetayy : System.Web.UI.Page
    {
        sqlsinif bgl=new sqlsinif();
        string kategoriidMove = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            kategoriidMove=Request.QueryString["Kategoriid"];
            SqlCommand komut=new SqlCommand("Select * From Tbl_Yemekler Where Kategoriid=@p1",bgl.baglanti());
            komut.Parameters.AddWithValue("@p1",kategoriidMove);
            SqlDataReader dr = komut.ExecuteReader();
            DataList2.DataSource = dr;
            DataList2.DataBind();
        }

        protected void DataList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}