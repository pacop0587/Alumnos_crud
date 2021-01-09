using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Alumnos_crud.Models.ViewModels
{
    public class AlumnoViewModel
    { //Modelo de tabla con required y display
        public int Id { get; set; }
        [Required]
        [Display(Name = "Nombre")]
        public string Nombre { get; set; }
        [Required]
        [Display(Name = "Apellido Paterno")]
        public string Apellido_paterno { get; set; }
        [Required]
        [Display(Name = "Apellido Materno")]
        public string Apellido_materno { get; set; }
        [Required]
        [Display(Name = "Calle")]
        public string Calle { get; set; }
        [Required]
        [Display(Name = "Colonia")]
        public string Colonia { get; set; }
    }
}