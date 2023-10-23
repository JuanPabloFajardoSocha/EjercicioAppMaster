using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


namespace AppMaster.logica
{
    public class ClValidacion
    {

        public bool MtdValidarIngreso(string email, string password)
        {
            bool ingreso = false;
            if (email == "diego@gmail.com" && password == "diego123")
            {
                HttpContext.Current.Session["usuario"] = "diego Gomez";
                HttpContext.Current.Session["rol"] = "admin";
                ingreso = true;
            }
            else if (email == "paula@gmail.com" && password == "paula123")
            {
                HttpContext.Current.Session["usuario"] = "paula laverde";
                HttpContext.Current.Session["rol"] = "cliente";
                ingreso = true;
            }
            return ingreso;
        }
    }
}