using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using IntranetGB3;

namespace IntranetGB3.Controllers
{
    public class UsuarioC : Controller
    {
        private BD_GBEntities db = new BD_GBEntities();

        // GET: UsuarioC
        public ActionResult Index()
        {
            return View(db.UsuarioSet.ToList());
        }

        // GET: UsuarioC/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            UsuarioSet usuarioSet = db.UsuarioSet.Find(id);
            if (usuarioSet == null)
            {
                return HttpNotFound();
            }
            return View(usuarioSet);
        }

        // GET: UsuarioC/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: UsuarioC/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que quiere enlazarse. Para obtener 
        // más detalles, vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ID,Rut,Clave,Correo,Telefono")] UsuarioSet usuarioSet)
        {
            if (ModelState.IsValid)
            {
                db.UsuarioSet.Add(usuarioSet);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(usuarioSet);
        }

        // GET: UsuarioC/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            UsuarioSet usuarioSet = db.UsuarioSet.Find(id);
            if (usuarioSet == null)
            {
                return HttpNotFound();
            }
            return View(usuarioSet);
        }

        // POST: UsuarioC/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que quiere enlazarse. Para obtener 
        // más detalles, vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID,Rut,Clave,Correo,Telefono")] UsuarioSet usuarioSet)
        {
            if (ModelState.IsValid)
            {
                db.Entry(usuarioSet).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(usuarioSet);
        }

        // GET: UsuarioC/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            UsuarioSet usuarioSet = db.UsuarioSet.Find(id);
            if (usuarioSet == null)
            {
                return HttpNotFound();
            }
            return View(usuarioSet);
        }

        // POST: UsuarioC/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            UsuarioSet usuarioSet = db.UsuarioSet.Find(id);
            db.UsuarioSet.Remove(usuarioSet);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
