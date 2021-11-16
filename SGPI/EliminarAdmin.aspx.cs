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
    public partial class EliminarAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*if (!IsPostBack)
            {
                DataTable dt = new DataTable();
                dt.Columns.AddRange(new DataColumn[6] {new DataColumn("Documento"), new DataColumn("Nombre"), new DataColumn("Apellido"),
                new DataColumn("Rol"), new DataColumn("Programa"), new DataColumn("Seleccionar") });
                dt.Rows.Add("123", "mauricio", "amariles", "Coordinador", "Sistemas", "Eliminar");

                gvrEliminar.DataSource = dt;
                gvrEliminar.DataBind();
                gvrEliminar.HeaderRow.TableSection = TableRowSection.TableHeader;

            }*/
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SGPI_BDEntities sGPI_BDEntities = new SGPI_BDEntities())
            {
                try
                {
                    UsuarioAdmin user = new UsuarioAdmin();
                    user = (from c in sGPI_BDEntities.UsuarioAdmin where c.Documento == txtBuscarEliminar.Text select c).First();
                }
                catch
                {

                }
            }
        }
    }
}