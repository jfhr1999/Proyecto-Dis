using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SistemaEgresados.Modelo

{
    public class Usuario
    {
        private TEstado estado { get; set; }
        private String login { set; get; }
        private String pwd { set; get; }
        private Rol rol { set; get; }

        public Usuario() { }
    }

    enum TEstado {
           Activo,
           Inactivo,
           Bloqueado
    }
}