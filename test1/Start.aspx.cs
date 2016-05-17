using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Configuration;



namespace test1
{
    public partial class Start : System.Web.UI.Page

    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        public int FullTime()
        {
            int full;
            SqlCommand cmdFullTime = new SqlCommand("SELECT COUNT(*) [TimeStart] FROM [Week]", con);
            SqlDataReader drFullTime = cmdFullTime.ExecuteReader();
            drFullTime.Read();
            full = Convert.ToInt32(drFullTime[0].ToString());
            drFullTime.Close();
            return full;
 
        }


        int day = 6;
        public int MaxKolTimeID(int ID)
        {
            
            int[] mas = new int[day];

            for (int i = 0; i < day; i++)
            {
                SqlCommand cmdKolTimeID = new SqlCommand("SELECT COUNT(*) [TimeStart] FROM [Week] WHERE [ID] = " + ID.ToString()+"AND [DayID] = "+i.ToString(), con);
                SqlDataReader drKolTimeID = cmdKolTimeID.ExecuteReader();
                drKolTimeID.Read();
                mas[i] = Convert.ToInt32(drKolTimeID[0].ToString());
                drKolTimeID.Close();
            }

            return Convert.ToInt32(mas.Max());
        }


        /// <summary>
        /// ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        /// </summary>
        List<string> ListTimeID = new List<string>();
        //int kkk = 0;
        public void TimeID(int ID,int DAY)
        {
            //for (int i = 0; i < day; i++)
            //{
            ListTimeID.Clear();

                SqlCommand cmdTimeIDStart = new SqlCommand("SELECT [TimeStart],[TimeEnd] FROM [Week] WHERE [ID] = " + ID.ToString() + "AND [DayID] = " + DAY.ToString(), con);
                SqlDataReader drTimeIDStart = cmdTimeIDStart.ExecuteReader();

                //SqlCommand cmdTimeIDEnd = new SqlCommand("SELECT [TimeEnd] FROM [Week] WHERE [ID] = " + ID.ToString() + "AND [DayID] = " + DAY.ToString(), con);
                //SqlDataReader drTimeIDEnd = cmdTimeIDEnd.ExecuteReader();

                while (drTimeIDStart.Read())
                {
                    ListTimeID.Add((drTimeIDStart[0]+"-"+drTimeIDStart[1]).ToString());
                    //kkk++;
                }

                drTimeIDStart.Close();
               // drTimeIDEnd.Close();
            //}
           }

        List<string> ListKindWorkID = new List<string>();
        public void KindWorkID(int ID, int DAY)
        {
            ListKindWorkID.Clear();

            SqlCommand cmdKindWorkID = new SqlCommand("SELECT [KindWork] FROM [Week] WHERE [ID] = " + ID.ToString() + "AND [DayID] = " + DAY.ToString(), con);
            SqlDataReader drKindWorkID = cmdKindWorkID.ExecuteReader();
            while (drKindWorkID.Read())
            {
                ListKindWorkID.Add(drKindWorkID[0].ToString());
            }

            drKindWorkID.Close();

        }

        List<string> ListWorkPlaceID = new List<string>();
        public void WorkPlaceID(int ID, int DAY)
        {
            ListWorkPlaceID.Clear();

            SqlCommand cmdWorkPlaceID = new SqlCommand("SELECT [WorkPlace] FROM [Week] WHERE [ID] = " + ID.ToString() + "AND [DayID] = " + DAY.ToString(), con);
            SqlDataReader drWorkPlaceID = cmdWorkPlaceID.ExecuteReader();
            while (drWorkPlaceID.Read())
            {
                ListWorkPlaceID.Add(drWorkPlaceID[0].ToString());
            }

            drWorkPlaceID.Close();

        }







        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            Table1.BorderStyle = BorderStyle.Ridge;
            Table1.GridLines = GridLines.Both;
            

            ////////////////////////////////////////////////////
            //выводим горизонтальную нумерацию колонок

            try
            {
                
                TableRow r = new TableRow();

                for (int i = 1; i < 21; i++)
                {
                    TableCell c = new TableCell();
                    c.Controls.Add(new LiteralControl(i.ToString()));
                    //c.Attributes.Add("style", "text-align: center");
                   // Table1.Rows[3].Cells.Add(c);
                    //r.Cells.Add(c);
                }
                r.Attributes.Add("style", "text-align: center");
                Table1.Rows.Add(r);
            }
            catch { }

            /////////////////////////////////////////////////////
            //считаем кол. людей
            int kolFio = 0;
            try
            {
                //кол. людей
                SqlCommand cmd = new SqlCommand("SELECT COUNT(*) [FIO] FROM [FIO]", con);
                SqlDataReader dr = cmd.ExecuteReader();
                dr.Read();
                kolFio = Convert.ToInt32(dr[0].ToString());
                dr.Close();
            }
            catch { }

            //Label18.Text = kolFio.ToString(); 


            ////////////////////////////////////////////////////////////
            //выводим строки!
            //фио

           // List lfio = new List();
            List<string> ListFio = new List<string>();
            ListFio.Clear();
            try
            {
                SqlCommand cmdFio = new SqlCommand("SELECT [FIO] FROM [FIO]", con);
                SqlDataReader drFio = cmdFio.ExecuteReader();
                while (drFio.Read())
                {
                    ListFio.Add(drFio["FIO"].ToString());
                }
                drFio.Close();

            }
            catch { }
            ///////////////////////////////////////////////////
            //Колличество дней всего
            //int kolDay;
            //SqlCommand cmdDaykol = new SqlCommand("SELECT COUNT(*) [Day] FROM [Week]", con);
            //SqlDataReader drDaykol = cmdDaykol.ExecuteReader();
            //drDaykol.Read();
            //kolDay = Convert.ToInt32(drDaykol[0].ToString());
            //drDaykol.Close();
            /////////////////////////////////////////////////////////////////

            //// генерим таблицу

            
            //для каждого
            //for (int k = 1; k < kolFio+1; k++)
            //{

            //создали нужнно колличество строк
            for (int j = 0; j < kolFio; j++)
            {
                for (int i = 0; i < MaxKolTimeID(j+1); i++) // по ФИО -- перевести в колл. ечеек!!!
                {
                    TableRow DataRow = new TableRow();
                    Table1.Rows.Add(DataRow);
                }
            }


            int indexFIO = 0;
            int tmp = 3;

           // Label18.Text = tmp.ToString();

            for (int ii = 3; ii < FullTime()+3; ii++)
            {
               // tmp++;
                TableCell cNum = new TableCell();
                TableCell cFio = new TableCell();


                //MaxKolTimeID(indexFIO + 1)
                if (ii==tmp)//||tmp))
                {

                    cNum.Attributes.Add("RowSpan", MaxKolTimeID(indexFIO + 1).ToString());
                    cFio.Attributes.Add("RowSpan", MaxKolTimeID(indexFIO + 1).ToString());

                    cNum.Controls.Add(new LiteralControl((indexFIO + 1).ToString()));
                    cFio.Controls.Add(new LiteralControl(ListFio[indexFIO].ToString()));

                   

                    //Table1.Rows[tmp].Cells.Attributes.
                    Table1.Rows[tmp].Cells.Add(cNum);
                    
                    Table1.Rows[tmp].Cells.Add(cFio);

                    tmp += MaxKolTimeID(indexFIO + 1);
                    indexFIO++;
                    

                }
            }

            Label18.Text = tmp.ToString();

            

            for (int j = 0; j < 6; j++)
            {
                int jj = 0;
                for (int i = 1; i < kolFio + 1; i++)
                {
                    int k = 0;

                    if (MaxKolTimeID(i) != k)
                    {
                        TimeID(i, j);
                        KindWorkID(i, j);
                        WorkPlaceID(i, j);

                        for (int l = 0; l < MaxKolTimeID(i); l++)
                        {
                            TableCell cTime = new TableCell();
                            TableCell cKindWork = new TableCell();
                            TableCell cWorkPlace = new TableCell();
                            try
                            {
                                cTime.Controls.Add(new LiteralControl(ListTimeID[l].ToString()));
                                Table1.Rows[3 + jj].Cells.Add(cTime);

                                cKindWork.Controls.Add(new LiteralControl(ListKindWorkID[l].ToString()));
                                Table1.Rows[3 + jj].Cells.Add(cKindWork);

                                cWorkPlace.Controls.Add(new LiteralControl(ListWorkPlaceID[l].ToString()));
                                Table1.Rows[3 + jj].Cells.Add(cWorkPlace);


                                k++;
                                jj++;
                            }
                            catch
                            {
                                cTime.Controls.Add(new LiteralControl(""));
                                Table1.Rows[3 + jj].Cells.Add(cTime);

                                cKindWork.Controls.Add(new LiteralControl(""));
                                Table1.Rows[3 + jj].Cells.Add(cKindWork);

                                cWorkPlace.Controls.Add(new LiteralControl(""));
                                Table1.Rows[3 + jj].Cells.Add(cWorkPlace);

                                k++;
                                jj++;
                            }
                        }

                    }

                }
            }

           // }





       }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("/Login.aspx");
        }

              
    }
}