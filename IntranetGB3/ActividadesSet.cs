//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace IntranetGB3
{
    using System;
    using System.Collections.Generic;
    
    public partial class ActividadesSet
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public ActividadesSet()
        {
            this.EvaluacionesSet = new HashSet<EvaluacionesSet>();
            this.Archivos = new HashSet<Archivos>();
        }
    
        public int ID { get; set; }
        public int ProgramasID { get; set; }
        public System.DateTime Fecha { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<EvaluacionesSet> EvaluacionesSet { get; set; }
        public virtual ProgramasSet ProgramasSet { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Archivos> Archivos { get; set; }
    }
}
