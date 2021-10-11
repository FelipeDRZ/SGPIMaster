using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Linq;

namespace SGPI
{
    public partial class Inicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            /*using (SGPI_BDEntities objCrud = new SGPI_BDEntities())
            {
                UsuarioAdmin usr = new UsuarioAdmin();
                try
                {
                    UsuarioAdmin usuario = objCrud.UsuarioAdmin.Find(usr.ID == int.Parse(txtUsuario.Text), usr.Contraseña==txtContraseña.Text);
                    if (!string.IsNullOrEmpty(usuario.Usuario.ToString()))
                    {
                        if (usuario.Rol==1)
                        {
                            Response.Redirect("~/PrincipalAdministrador.aspx");
                        }
                        if (usuario.Rol == 2)
                        {
                            Response.Redirect("~/principalEstudiante.aspx");
                        }
                        if (usuario.Rol == 3)
                        {
                            Response.Redirect("~/Coordinador.aspx");
                        }
                    }
                }
                catch(Exception ex)
                {

                }
            }*/
            using (SGPI_BDEntities dBEntities = new SGPI_BDEntities())
            {
                UsuarioAdmin usr = new UsuarioAdmin();
                try
                {
                    UsuarioAdmin usuario = dBEntities.UsuarioAdmin.FirstOrDefault(a => a.Usuario == txtUsuario.Text && a.Contraseña == txtContraseña.Text);
                    if (usuario != null)
                    {
                        switch (usuario.Rol)
                        {
                            case 1:
                                Response.Redirect("~/PrincipalAdministrador.aspx");
                                break;
                            case 2:
                                Response.Redirect("~/principalEstudiante.aspx");
                                break;
                            case 3:
                                Response.Redirect("~/Coordinador.aspx");
                                break;
                            default:
                                break;
                        }
                    }
                    else
                    {
                        Response.Write("<script>alert('Usuario o contraseña invalida')</script>");
                    }
                }
                catch (Exception ex)
                {

                }
            }
                
        }
    }
}