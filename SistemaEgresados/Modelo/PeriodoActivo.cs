using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SistemaEgresados.Modelo
{
    public class PeriodoActivo
    {
        private Boolean activo { get; set; }
        private Modalidad modalidad { get; set; }
        private OfertaCursos oferta { set; get; }
        private DateTime fechaInicio { get; set; }
        private DateTime fechaFin { set; get; }
        private DateTime fechaPublicacionOferta { get; set; }
        private List<DetalleMatricula> listaMatriculas { set; get; }

        public PeriodoActivo() {
            listaMatriculas = new List<DetalleMatricula>();
        }

    }
}


enum Modalidad {
    Bimestral,
    Trimestral,
    Cuatrimestral,
    Semestral,
    Anual
}