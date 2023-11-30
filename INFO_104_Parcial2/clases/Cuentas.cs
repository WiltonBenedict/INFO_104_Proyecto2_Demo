using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Security.Claims;
using System.Web;

namespace INFO_104_Parcial2.clases
{
    public class Cuentas
    {

        //atributos
        private static int Id;
        private static string Clave;
        private static string Correo;
        private static string Nombre;

        //constructor
        public Cuentas( string clave, string correo, string nombre)
        {
            Clave = clave;
            Correo = correo;
            Nombre = nombre;
        }

        public Cuentas() { }

        //Getter = mostrar los atributos --funcion - return
        public static string GetClave()
        {
            return Clave;
        }

        public static string GetCorreo()
        {
            return Correo;
        }
        public static string GetNombre()
        {
            return Nombre;
        }
        //Setter = asignar valores a los atributos - void

        public static void SetClave(string clave)
        {
            Clave = clave;
        }
        public static void SetCorreo(string correo)
        {
            Correo = correo;
        }
        public static void SetNombre(string nombre)
        {
            Nombre = nombre;
        }

        public static int ValidarAcceso()
        {
            int retorno = 0;
            SqlConnection Conn = new SqlConnection();
            try
            {
                using (Conn = DBConn.ObtenerConexionAcceso())
                {
                    SqlCommand cmd = new SqlCommand("validarUsuario", Conn)
                    {
                        CommandType = CommandType.StoredProcedure
                    };
                    cmd.Parameters.Add(new SqlParameter("@correo", Correo));
                    cmd.Parameters.Add(new SqlParameter("@clave", Clave));

                    retorno = cmd.ExecuteNonQuery();
                    using (SqlDataReader lectura = cmd.ExecuteReader())
                    {
                        if (lectura.Read())
                        {
                            retorno = 1;
                            Id = lectura.GetInt32(0);
                            Nombre = lectura[1].ToString();
                            //Nombre = lectura.GetString(lectura.GetOrdinal("nombre"));
                        }
                        else
                        {
                            retorno = -1;
                        }

                    }
                }
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                retorno = -1;
            }
            finally
            {
                Conn.Close();
                Conn.Dispose();
            }

            return retorno;
        }
    }
}