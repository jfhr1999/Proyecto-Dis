using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SistemaEgresados.Modelo
{
    public class DbConneccion
    {
        private DbConneccion dbCon;

        private DbConneccion() {

            /*
             set conn = Server.CreateObject("ADODB.Connection")
             conn.open "DRIVER={MySQL ODBC 3.51 Driver}; SERVER=server; PORT=3306; DATABASE=database; UID=username; PWD=password; OPTION=3;"
             */
            dbCon = new DbConneccion();
        }

        public DbConneccion getIntance() {
            if (dbCon != null)
            {
                return dbCon;
            }
            else {
                return dbCon = new DbConneccion();
            }
        }
    }
}