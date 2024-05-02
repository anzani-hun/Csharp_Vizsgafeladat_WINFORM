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
        public Form1()
        {
            InitializeComponent();

            
            MySqlConnection connection;
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


            connection.Close();

        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }
    }
}
