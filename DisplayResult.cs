using System;
using System.Windows.Forms;
using MySql.Data.MySqlClient;

namespace TankstelleWinForm
{
    public partial class DisplayResult : Form
    {
        int kunId;
        public DisplayResult(int kunId)
        {
            this.kunId = kunId;
            InitializeComponent();
            Initialize();
        }

        public void Initialize()
        {
            MySqlDataReader reader = Repository.Instance.SearchCostumer(kunId);
            try
            {
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        editKundennummer.Text = reader.GetString(0);
                        editVorname.Text = reader.GetString(1);
                        editNachname.Text = reader.GetString(2);
                        editStrasse.Text = reader.GetString(3);
                        editPLZ.Text = reader.GetString(4);
                        editOrt.Text = reader.GetString(5);
                        editGeburtsdatum.Text = Convert.ToDateTime(reader.GetString(6)).ToString("yyyy-MM-dd");

                        editVerbrauch.Text = reader.GetString(7);
                        editPreis.Text = reader.GetString(8);
                    }
                }
                else
                {
                    MessageBox.Show("Der Kunde wurde nicht gefunden oder ungültige Eingabe!");
                }
                Repository.Instance.CleanUp();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                Repository.Instance.CleanUp();
            }
        }
    }
}
