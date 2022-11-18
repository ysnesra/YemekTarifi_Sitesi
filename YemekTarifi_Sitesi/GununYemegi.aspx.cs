using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifi_Sitesi
{
    public partial class GununYemegi : System.Web.UI.Page
    {
        sqlsinif bglconnection=new sqlsinif();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Select * from Tbl_Yemekler Where YemekDurum=1", bglconnection.baglanti());
            SqlDataReader oku = komut.ExecuteReader();
            DataList2.DataSource = oku;                
            DataList2.DataBind();
        }

        protected void DataList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}