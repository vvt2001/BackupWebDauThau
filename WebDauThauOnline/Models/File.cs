//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebDauThauOnline.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class File
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public string Path { get; set; }
        public int FileSize { get; set; }
        public byte[] Hashed_Content { get; set; }
        public byte[] Content { get; set; }
        public Nullable<long> Thông_báo_ID { get; set; }
        public Nullable<long> Kết_quả_ID { get; set; }
    }
}