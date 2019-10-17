using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SistemaEgresados.Modelo
{
    public class Persona
    {

        protected String nombre { set; get; }
        protected String cedula { set; get; }
        protected DateTime fechaNacimiento { set; get; }
        protected String telefono { set; get; }
        protected String correo { set; get; }

        public Persona() { }
    }
}