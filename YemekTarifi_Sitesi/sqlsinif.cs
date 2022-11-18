using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;   
using System.Data.SqlClient; /*sql connection için bağlantı adresini kütüphaneyi tanımladık*/

namespace YemekTarifi_Sitesi
{
    public class sqlsinif
    {
        public SqlConnection baglanti()   /*SqlConnection tipinde bir method oluşturduk*/
        {
            SqlConnection baglan = new SqlConnection(@"Data Source= LAPTOP-Q370FPUN; Initial Catalog=dbo_yemektarifi; Integrated Security=True ");
            baglan.Open();
            return baglan;
        }
    }
}