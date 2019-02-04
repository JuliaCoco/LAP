using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;

namespace TankstelleWinForm
{
    class Repository
    {
        private MySqlConnection databaseConnection;
        private MySqlCommand commandDatabase;
        MySqlDataReader reader;

        public static Repository Instance = new Repository();

        private Repository()
        {
            databaseConnection = new MySqlConnection(MySqlFacade.ConnectionString);
            databaseConnection.Open();
            commandDatabase.CommandTimeout = 60;
        }

        ~Repository()
        {
            CleanUp();
        }

        public MySqlDataReader SearchCostumer(int kunId)
        {
            commandDatabase = new MySqlCommand(MySqlFacade.QueryTankstelle, databaseConnection);
            commandDatabase.Parameters.AddWithValue("@kunId", kunId);

            reader = commandDatabase.ExecuteReader();
            return reader;
        }

        public void CleanUp()
        {
            databaseConnection.Close();
        }
    }
}
