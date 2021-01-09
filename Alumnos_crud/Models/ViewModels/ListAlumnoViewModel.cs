using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Alumnos_crud.Models.ViewModels
{
    public class ListAlumnoViewModel
    { //Modelo de tabla alumnos
        public int Id { get; set; }
        public string Nombre { get; set; }
        public string Apellido_paterno { get; set; }
        public string Apellido_materno { get; set; }
        public string Calle { get; set; }
        public string Colonia { get; set; }

    }
}