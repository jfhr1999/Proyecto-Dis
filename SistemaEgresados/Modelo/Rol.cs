using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SistemaEgresados.Modelo
{
    public class Rol
    {

        private int id { get; set; }
        private String descripcion { get; set; }
        private List<Funcionalidad> listaFuncionalidades { set; get; }

        public Rol() {
            listaFuncionalidades = new List<Funcionalidad>();
        }
    }
}