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
   public class NRequisicion
    {

        public static string CrearRequisicion(string Cedula, string Descripcion, double Monto, int Cantidad, string Nombre)
        {
            DRequisicion Datos = new DRequisicion();


                Requisicion obj = new Requisicion();
                obj.Cedula = Cedula;
                obj.Descripcion = Descripcion;
                obj.Monto = Monto;
                obj.Cantidad = Cantidad;
                obj.Nombre = Nombre;
                return Datos.InsertarRequisicion(obj);
            }


        public static string CrearRequisicionHist(string Cedula, string Descripcion)
        {
            DRequisicion Datos = new DRequisicion();


            Requisicion obj = new Requisicion();
            obj.Cedula = Cedula;
            obj.Descripcion = Descripcion;
            return Datos.InsertarRequisicionHist(obj);
        }

        public static DataTable ListarRequisicones(string Cedula, string Valor)
        {
            DRequisicion Datos = new DRequisicion();
            return Datos.ListarRequisiciones(Cedula, Valor);

        }

        /*Metodo para aprobadores jefe actualicen las solicitudes*/
        public static string ActualizarRequisicionAproJefe(string CedulaUsu, int IdRequisicion, string Descripcion, string Estado)
        {
            DRequisicion Datos = new DRequisicion();

                Requisicion obj = new Requisicion();
                obj.Cedula = CedulaUsu;
                obj.IdRequisicion = IdRequisicion;
                obj.Descripcion = Descripcion;
                obj.Estado = Estado;
                return Datos.ActualizarRequisicionAproJefe(obj);
        }

        /*Metodo para consultar solicitudes aprobador*/
        public static DataTable ConsultarRequisicionesAproJefe(string Cedula, string Valor)
        {
            DRequisicion Datos = new DRequisicion();
            return Datos.ConsultarRequisicionesAproJefe(Cedula, Valor);

        }

        /*Listar Requisiciones Aprobador Financiero*/
        public static DataTable ListarRequisicionesAproFina(string Cedula)
        {
            DRequisicion Datos = new DRequisicion();
            return Datos.ListarRequisicionesAproFina(Cedula);

        }

        /*Para que los aprobadores Finacieros actualicen la requisicion*/
        public static string ActualizarRequisicionAproFina(string CedulaUsu, int IdRequisicion, string Descripcion, string Estado)
        {
            DRequisicion Datos = new DRequisicion();

            Requisicion obj = new Requisicion();
            obj.Cedula = CedulaUsu;
            obj.IdRequisicion = IdRequisicion;
            obj.Descripcion = Descripcion;
            obj.Estado = Estado;
            return Datos.ActualizarRequisicionAproFina(obj);
        }

        /*Buscar requisicion de aprobador financiero por nombre de solictante*/
        public static DataTable BuscarRequisicionesAproFinaNombre(string Cedula, string Valor)
        {
            DRequisicion Datos = new DRequisicion();
            return Datos.BuscarRequisicionesAproFinaNombre(Cedula, Valor);

        }

        /*Buscar Requisicion de aprobador Financiero por Id de requisicion*/
        public static DataTable BusquedaRequisicionesAproFinaId(string Cedula, string IdRequisicion)
        {
            DRequisicion Datos = new DRequisicion();
            return Datos.BuscarRequisicionesAproFinaId(Cedula, IdRequisicion);

        }

        /*Consultas solicitudes aprobadas, rechazadas y pendientes*/
        public static DataTable ConsultarRequisicionesAproFina(string Cedula, string Valor)
        {
            DRequisicion Datos = new DRequisicion();
            return Datos.ConsultarRequisicionesAproFina(Cedula, Valor);

        }

        /*Lisatr general*/
        public static DataTable ListarRequisicionesGeneral(string Nombre)
        {
            DRequisicion Datos = new DRequisicion();
            return Datos.ListarRequisicionesGeneral(Nombre);
        }

        /*Lisatr general*/
        public static DataTable ListarRequisicionesGeneralClie(string Clie)
        {
            DRequisicion Datos = new DRequisicion();
            return Datos.ListarRequisicionesGeneralClie(Clie);
        }

        public static DataTable ListarRequisicionesGeneralFina(string Nombre)
        {
            DRequisicion Datos = new DRequisicion();
            return Datos.ListarRequisicionesGeneralFina(Nombre);
        }

    }

}
