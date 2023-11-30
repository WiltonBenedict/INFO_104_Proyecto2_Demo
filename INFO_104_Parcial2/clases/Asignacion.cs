using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace INFO_104_Parcial2.clases
{
    public class Asignacion
    {
        public int AsignacionID { get; set; }
        public int ReparacionID { get; set; }
        public int TecnicoID { get; set; }
        public DateTime FechaAsignacion {  get; set; }

        public Asignacion(int reparacionID, int tecnicoID, DateTime fechaAsignacion)
        {
            ReparacionID = reparacionID;
            TecnicoID = tecnicoID;
            FechaAsignacion = fechaAsignacion;
        }

        public Asignacion() { }

        public static int Agregar(int ReparacionID, int TecnicoID, DateTime FechaAsignacion)
        {
            int retorno = 0;

            SqlConnection Conn = new SqlConnection();
            try
            {
                using (Conn = DBConn.ObtenerConexion())
                {
                    SqlCommand cmd = new SqlCommand("agregarAsignaciones", Conn)
                    {
                        CommandType = CommandType.StoredProcedure
                    };
                    cmd.Parameters.Add(new SqlParameter("@reparacionID", ReparacionID));
                    cmd.Parameters.Add(new SqlParameter("@tecnicoID", TecnicoID));
                    cmd.Parameters.Add(new SqlParameter("@fechaAsignacion", FechaAsignacion));


                    retorno = cmd.ExecuteNonQuery();
                }
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                retorno = -1;
            }
            finally
            {
                Conn.Close();
            }

            return retorno;
        }

        public static int Borrar(int AsignacionID)
        {
            int retorno = 0;

            SqlConnection Conn = new SqlConnection();
            try
            {
                using (Conn = DBConn.ObtenerConexion())
                {
                    SqlCommand cmd = new SqlCommand("borrarAsignacion", Conn)
                    {
                        CommandType = CommandType.StoredProcedure
                    };
                    cmd.Parameters.Add(new SqlParameter("@asignacionID", AsignacionID));

                    retorno = cmd.ExecuteNonQuery();
                }
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                retorno = -1;
            }
            finally
            {
                Conn.Close();
            }

            return retorno;
        }

        public static int Modificar(int AsignacionID,int ReparacionID, int TecnicoID, DateTime FechaAsignacion)
        {
            int retorno = 0;

            SqlConnection Conn = new SqlConnection();
            try
            {
                using (Conn = DBConn.ObtenerConexion())
                {
                    SqlCommand cmd = new SqlCommand("modificarAsignacion", Conn)
                    {
                        CommandType = CommandType.StoredProcedure
                    };
                    cmd.Parameters.Add(new SqlParameter("@asignacionID", AsignacionID));
                    cmd.Parameters.Add(new SqlParameter("@reparacionID", ReparacionID));
                    cmd.Parameters.Add(new SqlParameter("@tecnicoID", TecnicoID));
                    cmd.Parameters.Add(new SqlParameter("@fechaAsignacion", FechaAsignacion));


                    retorno = cmd.ExecuteNonQuery();
                }
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                retorno = -1;
            }
            finally
            {
                Conn.Close();
            }

            return retorno;
        }
    }
}