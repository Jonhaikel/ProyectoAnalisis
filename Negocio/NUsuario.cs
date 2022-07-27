using System;
using System.Collections.Generic;
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
    }
}
