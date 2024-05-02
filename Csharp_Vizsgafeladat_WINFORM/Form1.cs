using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

using MySqlConnector;       //mysqldata nuget


namespace Csharp_Vizsgafeladat_WINFORM
{

        public partial class Form1 : Form
    {
        MySqlConnection connection;


        public Form1()
        {
            InitializeComponent();

            
            
            string sqlParancs = "SELECT rank, building_name, floors FROM buildings";

            connection = new MySqlConnection("server=localhost;userid=root;password=;database=tallest_buildings");
            connection.Open();


            //
            MySqlDataAdapter adapter = new MySqlDataAdapter(sqlParancs, connection);

            //kell egy fogadó elem:
            DataSet ds = new DataSet();

            adapter.Fill(ds);

            //a GRIDhez kell, hogy belekerüljön az adat
            BindingSource bs = new BindingSource();
            bs.DataSource = ds.Tables[0];
            dataGridView1.DataSource = bs;

             //a kapcsolatot ne zárjuk le, a vizsgán nem kell

        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            string adat = dataGridView1.SelectedRows[0].Cells[2].Value.ToString();

            //sql parancs 
            string sqlParancs = "SELECT city FROM buildings WHERE building_name = '" + adat + "'";
            MySqlCommand sqlCommand2 = new MySqlCommand(sqlParancs, connection);
            //egy értéket várunk vissza ezért SCALAR
            string varos = sqlCommand2.ExecuteScalar().ToString();
            label1.Text = "Ország: " + varos;






            //próba kiíratás
            /*Console.WriteLine(adat);*/
        }

        private void button2_Click(object sender, EventArgs e)
        {
            string sqlParancs = "SELECT COUNT(building_name) FROM buildings WHERE height_m  > 400;";
            MySqlCommand sqlCommand = new MySqlCommand(sqlParancs, connection);
            //egy értéket várunk vissza ezért SCALAR
            string darab = sqlCommand.ExecuteScalar().ToString();
            label2.Text = "A 400 m-nél magasabb épületek száma: " + darab;
        }
    }
}
