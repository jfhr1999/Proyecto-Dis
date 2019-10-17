using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SistemaEgresados.Modelo
{
    public class OfertaCursos
    {
        private List<Grupo> listaGrupos { set; get; }
        private Boolean habilitada { set; get; }

        public OfertaCursos() {
            listaGrupos = new List<Grupo>();
        }

        public void agregarGrupo(Grupo grupo) {
            listaGrupos.Add(grupo);
        }

        public void removerGrupo(Grupo grupo) {
            listaGrupos.Remove(grupo);
        }
    }
}