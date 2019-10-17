using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SistemaEgresados.Modelo
{
    public class Estudiante : Persona
    {
        private String carnet { set; get; }
        private Prematricula prematricula { set; get; }
        private Usuario usuario { set; get; }
        private List<Grupo> matriculados { get; set; }

        public Estudiante() :
            base()
        {
                
            matriculados = new List<Grupo>();
        }
    }
}