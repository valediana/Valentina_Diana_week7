using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EccezioniDb
{
    public class Studente
    {
        public string Nome { get; set; }
        public string Cognome { get; set; }
        public int ID { get; set; }
         public Studente()
        {

        }
        public Studente(string nome, string cognome, int iD)
        {
            Nome = nome;
            Cognome = cognome;
            ID = iD;
        }
    }
}
