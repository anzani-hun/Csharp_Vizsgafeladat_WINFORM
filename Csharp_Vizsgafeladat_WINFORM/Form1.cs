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
            MySqlCommand Command;
            string sqlParancs = "SELECT rank, buildings, floors FROM buildings WHERE 1";

            connection = new MySqlConnection("server=localhost;userid=root;password=;database=tallest_buildings");
            connection.Open();

        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }
    }
}
