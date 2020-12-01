using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace Rental_movies

{
    public partial class Alldata : Form
    {
        
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=" + Application.StartupPath + "\\ourdata.mdf;Integrated Security=True;Connect Timeout=30;");



        public Alldata()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "insert into Customerdata values('" + textBox1.Text + "','" + textBox2.Text + "','" + textBox3.Text + "','" + textBox4.Text + "','" + textBox5.Text + "')";
                cmd.ExecuteNonQuery();
                con.Close();
                textBox1.Text = "";
                textBox2.Text = "";
                textBox3.Text = "";
                textBox4.Text = "";
                textBox5.Text = "";

            ShowcustomerData();

                MessageBox.Show("Successfully Add New Customer");

            }

        private void button2_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "delete from Customerdata where CustomerId='" + textBox1.Text+"'";
            cmd.ExecuteNonQuery();
            con.Close();
            ShowcustomerData();
            textBox1.Text = "";

            MessageBox.Show("Successfully Delete Customer");

        }

        private void button3_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "update Customerdata  set Firstname='" + textBox2.Text + "', Lastname='" + textBox3.Text + "', Address='" + textBox4.Text + "',  Phone_no='" + textBox5.Text + "' where CustomerId='" + textBox1.Text + "'";
            cmd.ExecuteNonQuery();
            con.Close();
            ShowcustomerData();
            textBox1.Text = "";
            textBox2.Text = "";
            textBox3.Text = "";
            textBox4.Text = "";
            textBox5.Text = "";

            MessageBox.Show("Successfully Update Customer");

        }
        
        private void button4_Click(object sender, EventArgs e)
        {            
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "insert into Moviedata values('" + textBox6.Text + "','" + textBox7.Text + "','" + textBox8.Text + "','" + textBox9.Text + "','" + textBox10.Text + "','" + textBox11.Text + "','" + textBox12.Text + "','" + textBox13.Text + "')";
                cmd.ExecuteNonQuery();
                con.Close();
                textBox6.Text = "";
                textBox7.Text = "";
                textBox8.Text = "";
                textBox9.Text = "";
                textBox10.Text = "";
                textBox11.Text = "";
                textBox12.Text = "";
                textBox13.Text = "";

            ShowmovieData();

                MessageBox.Show("Successfully Add New Movie");
        }       

        private void button5_Click(object sender, EventArgs e)
        {

            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "delete from Moviedata where MovieId='" + textBox6.Text + "'";
            cmd.ExecuteNonQuery();
            con.Close();
            ShowmovieData();
            textBox6.Text = "";

            MessageBox.Show("Successfully Delete Movie");
        }

        private void button6_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "update Moviedata  set Title='" + textBox7.Text + "', Genre='" + textBox8.Text + "', Rating='" + textBox9.Text + "', Rental_Cost='" + textBox10.Text + "', Relase_Date='" + textBox11.Text + "' where MovieId='" + textBox6.Text + "'";
            cmd.ExecuteNonQuery();
            con.Close();
            ShowmovieData();
            textBox6.Text = "";
            textBox7.Text = "";
            textBox8.Text = "";
            textBox9.Text = "";
            textBox10.Text = "";
            textBox11.Text = "";
            MessageBox.Show("Successfully Update Movie");

        }
        
        private void button7_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into Rentaldata values('" + textBox14.Text + "','" + textBox15.Text + "','" + textBox16.Text + "','" + textBox17.Text + "','" + textBox18.Text + "')";
            cmd.ExecuteNonQuery();
            con.Close();
            textBox14.Text = "";
            textBox15.Text = "";
            textBox16.Text = "";
            textBox17.Text = "";
            textBox18.Text = "";

            ShowrentalMovies();

            MessageBox.Show("Successfully Issue Movie");
        }

        private void button8_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "update Rentaldata  set Return_date='" + textBox18.Text + "' where RMId='" + textBox14.Text + "'";
            cmd.ExecuteNonQuery();
            con.Close();
            ShowrentalMovies();
            textBox14.Text = "";
            textBox18.Text = "";

            MessageBox.Show("Successfully Return Movie");
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBox2_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBox3_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBox4_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBox5_TextChanged(object sender, EventArgs e)
        {

        }

        private void tabControl1_SelectedIndexChanged(object sender, EventArgs e)

        {

        }
        
        private void textBox6_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBox7_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBox8_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBox9_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBox10_TextChanged(object sender, EventArgs e)
        {

        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }
               
        private void dataGridView2_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void dataGridView3_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        public void ShowcustomerData()
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from Customerdata";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            dataGridView1.DataSource = dt;
            con.Close();
        }

        public void ShowmovieData()
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from Moviedata";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            dataGridView2.DataSource = dt;
            con.Close();
        }
        
        public void ShowrentalMovies()
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from Rentaldata";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            dataGridView3.DataSource = dt;
            con.Close();
        }
                
        private void Form1_Load(object sender, EventArgs e)
        {
            ShowcustomerData();

            ShowmovieData();

            ShowrentalMovies();
        }

        private void label4_Click(object sender, EventArgs e)
        {

        }

        private void label10_Click(object sender, EventArgs e)
        {

        }

        private void radioButton1_CheckedChanged(object sender, EventArgs e)
        {
            SqlDataAdapter sda = new SqlDataAdapter("Select RMId, Firstname, Address, Title, Rental_Cost, Renteddate, Returndate from Rentaldata JOIN Customerdata ON Rentaldata.CustomerId = Customerdata.CustomerId JOIN Moviedata ON Moviedata.MovieId=Rentaldata.MovieId", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            dataGridView3.DataSource = dt;
        }

        private void radioButton2_CheckedChanged(object sender, EventArgs e)
        {
            SqlDataAdapter sda = new SqlDataAdapter("Select RMId, Firstname, Address, Title, Rental_Cost, Renteddate, Returndate from Rentaldata JOIN Customerdata ON Rentaldata.CustomerId = Customerdata.CustomerId JOIN Moviedata ON Moviedata.MovieId=Rentaldata.MovieId where Rentaldata.Returndate=''", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            dataGridView3.DataSource = dt;
        }

        private void radioButton3_CheckedChanged(object sender, EventArgs e)
        {
            SqlDataAdapter sda = new SqlDataAdapter("Select * From Moviedata Where Rating=(select max (Rating) from Moviedata)", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            dataGridView3.DataSource = dt;
        }
    }
}