using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SistemaEgresados.Modelo
{
    public class Grupo
    {
        private String numero { get; set; }
        private int cuposDisponibles { get; set; }
        private int cantidadMatriculados { get; set; }
        private String aula { get; set; }
        private Boolean activo { get; set; }
        private float costo { get; set; }
        private Horario horario { get; set; }
        private Profesor profesor { get; set; }
        private Curso curso { get; set; }
        private List<Estudiante> estudiantes { get; set; }

        public Grupo() {
            estudiantes = new List<Estudiante>();
        }
    }
}