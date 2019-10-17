using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SistemaEgresados.Modelo
{
    public class Prematricula
    {
        private Estudiante estudiante { set; get; }
        private String comprobantePago { set; get; }
        private List<Grupo> gruposDeInteres { get; set; }

        public Prematricula() {
            gruposDeInteres = new List<Grupo>();
        }
    }
}