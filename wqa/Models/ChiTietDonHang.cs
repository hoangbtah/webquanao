namespace wqa.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("ChiTietDonHang")]
    public partial class ChiTietDonHang
    {
        [Key]
        [StringLength(10)]
        public string MaCTDH { get; set; }

        [Required]
        [StringLength(10)]
        public string MaDH { get; set; }

        [Required]
        [StringLength(10)]
        public string MaSP { get; set; }

        public int? SoLuong { get; set; }

        public double? GiaTien { get; set; }

        public virtual DonHang DonHang { get; set; }

        public virtual SanPham SanPham { get; set; }
    }
}
