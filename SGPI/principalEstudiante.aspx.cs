using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Linq;
using System.IO;

namespace SGPI
{
    public partial class principalEstudiante : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
                using (SGPI_BDEntities sGPI_BDEntities = new SGPI_BDEntities())
                {
                    try
                    {
                        var usuarioID = (int)Session["IDUsuario"];
                        UsuarioAdmin usuario = sGPI_BDEntities.UsuarioAdmin.FirstOrDefault(a => a.ID == usuarioID);
                        usuario = (from c in sGPI_BDEntities.UsuarioAdmin where c.ID == usuarioID select c).First();
                        if(usuario != null)
                        {
                            txtNombre.Text = usuario.Nombre;
                            txtDocumento.Text = usuario.Documento;
                            txtApellido.Text = usuario.Apellido;
                            txtCorreo.Text = usuario.Correo;
                            ddlGenero.SelectedValue = usuario.Genero.ToString();
                        }
                    }
                    catch (Exception ex)
                    {

                    }
                }
            }
            
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            using (SGPI_BDEntities sGPI_BDEntities = new SGPI_BDEntities())
            {
                try
                {
                    var usuarioID = (int)Session["IDUsuario"];
                    UsuarioAdmin usuario = sGPI_BDEntities.UsuarioAdmin.FirstOrDefault(a => a.ID == usuarioID);
                    usuario = (from c in sGPI_BDEntities.UsuarioAdmin where c.ID == usuarioID select c).First();
                    if (usuario != null)
                    {
                        usuario.Nombre = txtNombre.Text;
                        usuario.Apellido = txtApellido.Text;
                        usuario.Documento = txtDocumento.Text;
                        usuario.Correo = txtCorreo.Text;
                        usuario.Genero = Int32.Parse(ddlGenero.SelectedValue);
                        Byte[] archivo = null;
                        String NombreArchivo = String.Empty;
                        String Extension = String.Empty;
                        if (fuCertificado.HasFile)
                        {
                            NombreArchivo = Path.GetFileNameWithoutExtension(fuCertificado.FileName);
                            Extension = Path.GetExtension(fuCertificado.FileName);
                            fuCertificado.SaveAs("C:/Users/felip/source/repos/SGPIMaster/SGPI/Certificados/" + NombreArchivo);
                        }
                        sGPI_BDEntities.SaveChanges();
                    }
                }
                catch (Exception ex)
                {

                }
            }
        }
    }
}