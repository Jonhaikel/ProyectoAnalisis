using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidad
{
   public  class Requisicion
    {

        public int IdRequisicion
        {
            get;
            set;
        }
        public string Cedula
        {
            get;
            set;
        }

        public string Descripcion
        {
            get;
            set;
        }

        public double Monto
        {
            get;
            set;
        }

        public DateTime Fecha
        {
            get;
            set;
        }

        public string Estado
        {
            get;
            set;
        }

        public int Cantidad
        {
            get;
            set;
        }
        public string Nombre
        {
            get;
            set;
        }


    }
}
