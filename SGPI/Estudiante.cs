//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SGPI
{
    using System;
    using System.Collections.Generic;
    
    public partial class Estudiante
    {
        public int ID { get; set; }
        public string Archivo { get; set; }
        public int IdPago { get; set; }
    
        public virtual Pagos Pagos { get; set; }
        public virtual UsuarioAdmin UsuarioAdmin { get; set; }
    }
}
