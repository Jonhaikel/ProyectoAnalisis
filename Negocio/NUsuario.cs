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

        public static DataTable BuscarRequisicionesAproJefe(string Cedula, string Valor)
        {
            DUsuario Datos = new DUsuario();
            return Datos.BuscarRequisicionesAproJefe(Cedula, Valor);

        }

        /*Administrador General*/
        /*Insertar Usuarios al sistema*/
        public static string InsertarUsuario(string Cedula, string Nombre, string Telefono, string Direccion, string CorreoElectronico, int IdRol,  string Clave, string IdJefe, int Estado)
        {
            DUsuario Datos = new DUsuario();

            string Existe = Datos.Existe(Cedula);

            if (Existe.Equals("1"))
            {
                return "El Usuario ya existe";
            }
            else
            {
                Usuario obj = new Usuario();
                obj.Cedula = Cedula;
                obj.Nombre = Nombre;
                obj.Telefono = Telefono;
                obj.Direccion = Direccion;
                obj.Email = CorreoElectronico;
                obj.IdRol = IdRol;
                obj.Clave = Clave;
                obj.IdJefe = IdJefe;
                obj.Estado = Estado;
                return Datos.InsertarUsuario(obj);
            }
        }

        /*Listar Rol*/
        public static DataTable Listar()
        {
            DUsuario Datos = new DUsuario();
            return Datos.Listar();

        }

        public static DataTable ListarJefe()
        {
            DUsuario Datos = new DUsuario();
            return Datos.ListarJefe();

        }

        public static string AutoJefe(string Cedula)
        {
            DUsuario Datos = new DUsuario();

            return Datos.AutoJefe(Cedula);
        }

        public static DataTable ListarUsuarios()
        {
            DUsuario Datos = new DUsuario();
            return Datos.ListarUsuarios();

        }
    }
}
