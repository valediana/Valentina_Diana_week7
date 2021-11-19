using System;
using System.Collections.Generic;

namespace EccezioniDb
{
    class Program
    {
        static void Main(string[] args)
        {
            DBManager studenti = new DBManager();
            Console.WriteLine("Benvenuto in registro di classe");

            List<Studente> stud = studenti.GetAll();
            if (stud.Count == 0)
            {
                Console.WriteLine("Non sono stati trovati studenti");

            }
            else
            {
                Console.WriteLine("Gli studenti trovati sono:");
                foreach(var item in stud)
                {
                    Console.WriteLine($"Studente {item.ID}-Nome: {item.Nome}-Cognome: {item.Cognome}");
                }
            }
        }

       
    }
}
