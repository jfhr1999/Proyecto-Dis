using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SistemaEgresados.Modelo
{
    public class DetalleMatricula
    {
        private String descripcion { get; set; }
        private DateTime fecha { get; set; }
        private String horainicio { get; set; }
        private String horaFinal { get; set; }

        public DetalleMatricula() { }
    }
}