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
    using System.ComponentModel;
    using System.ComponentModel.DataAnnotations;

    public partial class KetQuaLuaChonNhaThau_ThongTinChiTiet
    {
        public int ID { get; set; }
        [DisplayName("Loại thông báo")]
        public string Loại_thông_báo { get; set; }
        [DisplayName("Số TBMT")]
        public string Số_TBMT { get; set; }
        [DisplayName("Số hiệu KHLCNT")]
        public string Số_hiệu_KHLCNT { get; set; }
        [Required(ErrorMessage = "Bắt buộc.")]
        [DisplayName("Tên gói thầu")]
        public string Tên_gói_thầu { get; set; }
        [DisplayName("Tên dự án/ Dự toán mua sắm")]
        public string Tên_dự_án_Dự_toán_mua_sắm { get; set; }
        [DisplayName("Bên mời thầu")]
        public string Bên_mời_thầu { get; set; }
        [DisplayName("Hình thức lựa chọn NT")]
        public string Hình_thức_lựa_chọn_NT { get; set; }
        [DisplayName("Giá dự đoán (VND)")]
        public Nullable<long> Giá_dự_toán { get; set; }
        [DisplayName("Giá gói thầu (VND)")]
        public Nullable<long> Giá_gói_thầu { get; set; }
        [DisplayName("Đính kèm thông báo kết quả LCNT")]
        public string Đính_kèm_thông_báo_kết_quả_LCNT { get; set; }
        [DisplayName("Nhà thầu trúng thầu")]
        public string Nhà_thầu_trúng_thầu { get; set; }
        [DisplayName("Giá trúng thầu (VND)")]
        public Nullable<long> Giá_trúng_thầu { get; set; }
        [DisplayName("Hình thức hợp đồng")]
        public string Hình_thức_hợp_đồng { get; set; }
        [DisplayName("Thời gian thực hiện HĐ (ngày)")]
        public Nullable<int> Thời_gian_thực_hiện_HĐ { get; set; }
        [DisplayName("Văn bản phê duyệt")]
        public string Văn_bản_phê_duyệt { get; set; }
        [DisplayName("Ngày phê duyệt")]
        [DataType(DataType.DateTime)]
        public Nullable<System.DateTime> Ngày_phê_duyệt { get; set; }
        [DisplayName("Ngày đăng tải")]
        [DataType(DataType.DateTime)]
        public Nullable<System.DateTime> Ngày_đăng_tải { get; set; }
        [DisplayName("Lĩnh vực")]
        public string Lĩnh_vực { get; set; }

        public Loại_thông_báo Loại_thông_báo_EnumValue { get; set; }
        public Hình_thức_lựa_chọn_NT Hình_thức_lựa_chọn_NT_EnumValue { get; set; }
        public Hình_thức_hợp_đồng Hình_thức_hợp_đồng_EnumValue { get; set; }
        public Lĩnh_vực Lĩnh_vực_EnumValue { get; set; }
        public Nullable<long> AccountID { get; set; }

    }
}
