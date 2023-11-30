﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using INFO_104_Parcial2.clases;

namespace INFO_104_Parcial2
{
    //UH
    //INFO-104. Parcial 2.
    //Wilton Benedict
    //11/25/2023
    public partial class Inicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Clases.clsusuario.Getnombre();
            //lCodigo.Text = Cuentas.Id.ToString();
            lNombre.Text = Cuentas.GetNombre();
            lUsuario.Text = Cuentas.GetCorreo();
            if (!IsPostBack)
            {
                //Procedimiento llama a llenar las tres tablas modificadas en las otras paginas
                LlenarTablaUsuarios();
                LlenarTablaEquipos();
                LlenarTablaTecnicos();
            }

        }
        protected void LlenarTablaUsuarios()
        {
            string constr = ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT *  FROM usuarios"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            datagrid1.DataSource = dt;
                            datagrid1.DataBind();  // actualiza el grid view
                        }
                    }
                }
            }
        }
        protected void LlenarTablaEquipos()
        {
            string constr = ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT *  FROM equipos"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            datagrid2.DataSource = dt;
                            datagrid2.DataBind();  // actualiza el grid view
                        }
                    }
                }
            }
        }
        protected void LlenarTablaTecnicos()
        {
            string constr = ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT *  FROM tecnicos"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            datagrid3.DataSource = dt;
                            datagrid3.DataBind();  // actualiza el grid view
                        }
                    }
                }
            }
        }

        protected void BttAdmin_Click(object sender, EventArgs e)
        {
            Response.Redirect("InicioAdministrar.aspx");
        }
    }
}