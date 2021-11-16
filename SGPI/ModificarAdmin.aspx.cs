using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Linq;

namespace SGPI
{
    public partial class ModificarAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnBuscarUsuario_Click(object sender, EventArgs e)
        {
            using (SGPI_BDEntities sGPI_BDEntities = new SGPI_BDEntities())
            {
                try
                {
                    UsuarioAdmin user = new UsuarioAdmin();
                    user = (from c in sGPI_BDEntities.UsuarioAdmin where c.Documento == txtBuscar.Text select c).First();
                    DDLGeneroE.SelectedValue = user.Genero.ToString();
                    txtNombreE.Text = user.Nombre;
                    txtApellidoE.Text = user.Apellido;
                    txtDocumentoE.Text = user.Documento;
                    DDLTipoDeDocumentoE.SelectedValue = user.TipoDocumento.ToString();
                    txtUserE.Text = user.Usuario;
                    txtCorreoE.Text = user.Correo;
                }
                catch (Exception except)
                {

                }
            }
        }

        protected void btnEditar_Click(object sender, EventArgs e)
        {
            using (SGPI_BDEntities sGPI_BDEntities = new SGPI_BDEntities())
            {
                try
                {
                    UsuarioAdmin user = new UsuarioAdmin();
                    user = (from c in sGPI_BDEntities.UsuarioAdmin where c.Documento == txtBuscar.Text select c).First();
                    user.Genero = Int32.Parse(DDLGeneroE.SelectedValue);
                    user.Nombre = txtNombreE.Text;
                    user.Apellido = txtApellidoE.Text;
                    user.Documento = txtDocumentoE.Text;
                    user.TipoDocumento = Int32.Parse(DDLTipoDeDocumentoE.SelectedValue);
                    user.Usuario = txtUserE.Text;
                    user.Correo = txtCorreoE.Text;

                    sGPI_BDEntities.SaveChanges();
                }
                catch (Exception except)
                {

                }
            }
        }
    }
}