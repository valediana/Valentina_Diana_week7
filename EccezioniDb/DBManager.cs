using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EccezioniDb
{
    public class DBManager
    {
        //connectionString sbagliata (non esiste questo db)
        //string connectionString = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=Poliziotti;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
        //stringa corretta
        string connectionString = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=Studenti;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
        public List<Studente> GetAll()
        {
            SqlConnection connection = null;
            try
            {
                using (connection = new SqlConnection(connectionString))
                {
                    connection.Open();

                    SqlCommand command = new SqlCommand();
                    command.Connection = connection;
                    command.CommandType = System.Data.CommandType.Text;
                    command.CommandText = "select * from Studente";
                    //query sbagliata
                    //command.CommandText = "select fro Studente";
                    SqlDataReader reader = command.ExecuteReader();

                    List<Studente> studenti = new List<Studente>();

                    while (reader.Read())
                    {
                        var nomeStudente = (string)reader["Nome"];
                        var cognomeStudente = (string)reader["Cognome"];
                        var idStudente = (int)reader["ID"];

                        Studente s = new Studente();
                        s.Nome = nomeStudente;
                        s.Cognome = cognomeStudente;
                        s.ID = idStudente;

                        studenti.Add(s);
                    }
                    return studenti;
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine(ex.Message);
                return new List<Studente>();
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
                return new List<Studente>();
            }
            finally
            {
                if (connection != null)
                {
                    connection.Close();
                }
            }
        }
    }
}
    

