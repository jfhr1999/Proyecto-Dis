using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SistemaEgresados.Modelo
{
    public class Curso
    {
        private String codigo { get; set; }
        private String nombre { get; set; }
        private String descripcion { get; set; }
        private float horasPorSemana { get; set; }
        private Categoria categoria { get; set; }

        public Curso() { }
    }
}