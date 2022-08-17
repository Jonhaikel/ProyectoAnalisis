using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Datos;
using Entidad;

namespace Negocio
{
    public class NUsuario
    {
        public static string ActualizarEstadoU(string Cedula)
        {
            DUsuario Datos = new DUsuario();

            Usuario obj = new Usuario();
            obj.Cedula = Cedula;
            return Datos.ActualizarEstadoU(obj);
        }
        public static DataTable ListarRequisicionesAproJefe(string Cedula)
        {
            DUsuario Datos = new DUsuario();
            return Datos.ListarRequisicionesAproJefe(Cedula);

        }

        //
        public static DataTable BusquedaRequisicionesAproJefeId(string Cedula, string IdRequisicion)
        {
            DUsuario Datos = new DUsuario();
            return Datos.BusquedaRequisicionesAproJefeId(Cedula, IdRequisicion);

        }

        //ver esto al rato eliminar
        public static DataTable BuscarRequisicionesAproJefe(string Cedula, string Valor)
        {
            DUsuario Datos = new DUsuario();
            return Datos.BuscarRequisicionesAproJefe(Cedula, Valor);

        }
    }
}
