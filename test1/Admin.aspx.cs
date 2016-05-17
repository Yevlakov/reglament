using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Configuration;

using System.Threading;
using System.Globalization;

namespace test1
{
    public partial class Admin : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }


        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("/Start.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            con.Open();
            SqlCommand cmd = new SqlCommand("insert into Week values(N'" + DropDownList1.Text + "',N'" + DropDownList2.SelectedIndex + "',N'" + Convert.ToString(DropDownList2.SelectedValue) + "',N'" + TextBox1.Text + "',N'" + TextBox4.Text + "',N'" + TextBox2.Text + "',N'" + TextBox3.Text + "')", con);
            cmd.ExecuteNonQuery();


            con.Close();
            GridView2.DataBind();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            //con.Open();
            //SqlCommand cmdTimeInfo = new SqlCommand("SELECT [ID],[DayID][TimeStart],[TimeEnd] FROM [Week]", con);
            //SqlDataReader drTimeInfo = cmdTimeInfo.ExecuteReader();
            //DateTime tmp = new DateTime();

            //while (drTimeInfo.Read())
            //{
            //    if (drTimeInfo["DayID"].ToString() == "0")
            //    {
                    
            //        DateTime dtStart = Convert.ToDateTime(drTimeInfo["TimeStart"].ToString());
            //        DateTime dtEnd = Convert.ToDateTime(drTimeInfo["TimeEnd"].ToString());
            //        tmp = Convert.ToDateTime((dtEnd - dtStart).ToString());
            //        SqlCommand cmd = new SqlCommand("insert into WorkTime values(N'" + ""+"',N'"+tmp+ "')", con);
            //        cmd.ExecuteNonQuery();
            //    }


            //}
            //drTimeInfo.Close();
            //con.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            con.Open();

            List<int> ListID = new List<int>();
            int tmpCount = 0;

            
            //SqlDataSource4.SelectCommand
            //string s = .ToString();

            SqlCommand cmdd = new SqlCommand("SELECT [ID] FROM [FIO] WHERE ([RatePos] = [tr])", con);
            //SqlCommand cmdd = new SqlCommand(SqlDataSource4.SelectCommand, con);//();
            //cmdd.CommandText = SqlDataSource4.InsertCommand;
            //cmdd.Connection = con;
           


            SqlDataReader dr = cmdd.ExecuteReader();
            while (dr.Read())
            {
                ListID.Add(Convert.ToInt32(dr[0].ToString()));
                tmpCount++;
            }
            dr.Close();

            for (int i = 0; i < tmpCount; i++)
            {
                SqlCommand cmd = new SqlCommand("insert into Week values(N'" + ListID[i].ToString() + "',N'" + DropDownList3.SelectedIndex + "',N'" + Convert.ToString(DropDownList3.SelectedValue) + "',N'" + TextBox5.Text + "',N'" + TextBox6.Text + "',N'" + "Засідання кафедры" + "',N'" + TextBox7.Text + "')", con);
                cmd.ExecuteNonQuery();
            }
            


            con.Close();
            GridView2.DataBind();
            /////////
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
        }

        protected void TextBox7_TextChanged(object sender, EventArgs e)
        {



        }

        protected void SqlDataSource4_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
        

    }
}