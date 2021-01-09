using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Alumnos_crud.Models;
using Alumnos_crud.Models.ViewModels;

namespace Alumnos_crud.Controllers
{
    public class AlumnoController : Controller
    {
        // GET: Alumno 
        public ActionResult Index()
        {   //Obteniendo el listado de la tabla alumnos
            List<ListAlumnoViewModel> lst;
            using(Escuela02Entities db = new Escuela02Entities())
            {
                    lst = (from d in db.Alumno
                          select new ListAlumnoViewModel
                          {
                              Id = d.Id,
                              Nombre = d.Nombre,
                              Apellido_paterno = d.Apellido_paterno,
                              Apellido_materno = d.Apellido_materno,
                              Calle = d.Calle,
                              Colonia = d.Colonia
                          }).ToList();
            }
            return View(lst);
        }

        public ActionResult Nuevo()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Nuevo(AlumnoViewModel model)
        { //Agregando nuevos registros a la tabla
            try
            {
                if (ModelState.IsValid)
                {
                    using(Escuela02Entities db = new Escuela02Entities())
                    {
                        var oAlumno = new Alumno();
                        oAlumno.Nombre = model.Nombre;
                        oAlumno.Apellido_paterno = model.Apellido_paterno;
                        oAlumno.Apellido_materno = model.Apellido_materno;
                        oAlumno.Calle = model.Calle;
                        oAlumno.Colonia = model.Colonia;

                        db.Alumno.Add(oAlumno);
                        db.SaveChanges();
                    }
                    return Redirect("~/Alumno/");
                }
                return View(model);
               
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }
        public ActionResult Editar(int Id)
        { //Editar los registros de la tabla
            AlumnoViewModel model = new AlumnoViewModel();
            using (Escuela02Entities db = new Escuela02Entities())
            {
                var oElemento = db.Alumno.Find(Id);
                model.Nombre = oElemento.Nombre;
                model.Apellido_paterno = oElemento.Apellido_paterno;
                model.Apellido_materno = oElemento.Apellido_materno;
                model.Calle = oElemento.Calle;
                model.Colonia = oElemento.Colonia;
                model.Id = oElemento.Id;
            }
            return View(model);
        }

        [HttpPost]
        public ActionResult Editar(AlumnoViewModel model)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    using (Escuela02Entities db = new Escuela02Entities())
                    {
                        var oAlumno = db.Alumno.Find(model.Id);
                        oAlumno.Nombre = model.Nombre;
                        oAlumno.Apellido_paterno = model.Apellido_paterno;
                        oAlumno.Apellido_materno = model.Apellido_materno;
                        oAlumno.Calle = model.Calle;
                        oAlumno.Colonia = model.Colonia;

                        db.Entry(oAlumno).State=System.Data.Entity.EntityState.Modified;
                        db.SaveChanges();
                    }
                    return Redirect("~/Alumno/");
                }
                return View(model);

            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }
        [HttpGet]
        public ActionResult Eliminar(int Id)
        { //Eliminando registros de la tabla
            AlumnoViewModel model = new AlumnoViewModel();
            using (Escuela02Entities db = new Escuela02Entities())
            {
                var oElemento = db.Alumno.Find(Id);
                db.Alumno.Remove(oElemento);
                db.SaveChanges();
            }
            return Redirect("~/Alumno/");
        }

    }
}