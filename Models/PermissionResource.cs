//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace PayrollWarrant.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class PermissionResource
    {
        public string ApplicationId { get; set; }
        public string PermissionId { get; set; }
        public string ResourceId { get; set; }
    
        public virtual Permission Permission { get; set; }
        public virtual Resource Resource { get; set; }
    }
}
