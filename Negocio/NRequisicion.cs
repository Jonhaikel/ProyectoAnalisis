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

        /*Metodo para aprobadores actualicen las solicitudes*/
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

    }

}
