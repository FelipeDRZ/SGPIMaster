using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Linq;

namespace SGPI
{
    public partial class PrincipalAdministrador : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            Criptografia criptografia = new Criptografia();
            using (SGPI_BDEntities sGPI_BDEntities = new SGPI_BDEntities())
            {
                UsuarioAdmin usuario = new UsuarioAdmin();
                usuario.Documento = txtDocumento.Text;
                usuario.TipoDocumento = Convert.ToInt32(ddlTipoDocumento.SelectedValue);
                usuario.Nombre = txtNombre.Text;
                usuario.Apellido = txtApellido.Text;
                usuario.Usuario = txtNombreUsuario.Text;
                usuario.Correo = txtCorreo.Text;
                usuario.Contraseña = criptografia.CodigoHash(criptografia.GenerarPass());
                usuario.Genero = Convert.ToInt32(ddlGenero.SelectedValue);
                usuario.Rol = Convert.ToInt32(rblRol.SelectedValue);
                usuario.Programa = Convert.ToInt32(DDLCurso.SelectedValue);

                /*sGPI_BDEntities.UsuarioAdmin.Add(usuario);
                sGPI_BDEntities.SaveChanges();*/

                try
                {
                    sGPI_BDEntities.UsuarioAdmin.Add(usuario);
                    sGPI_BDEntities.SaveChanges();
                    if (usuario.ID != 0)
                    {
                        Response.Write("<script>alert('usuario: " + usuario.Nombre + "ha sido creado')</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('usuario no ha sido creado')</script>");
                    }
                }
                catch (Exception except)
                {

                }
            }
            /*sGPI_BDEntities.UsuarioAdmin.Add();*/
        }
    }
}