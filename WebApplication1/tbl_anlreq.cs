//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebApplication1
{
    using System;
    using System.Collections.Generic;
    
    public partial class tbl_anlreq
    {
        public int analreqid { get; set; }
        public Nullable<int> prjid { get; set; }
        public Nullable<int> analystid { get; set; }
        public string reason { get; set; }
        public string enddate { get; set; }
        public Nullable<int> duration { get; set; }
        public Nullable<System.DateTime> createdon { get; set; }
        public Nullable<int> status { get; set; }
        public Nullable<bool> isdeleted { get; set; }
    }
}