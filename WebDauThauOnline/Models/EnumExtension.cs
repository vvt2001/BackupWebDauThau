using System;
using System.ComponentModel;

namespace WebDauThauOnline.Models
{
    public static class EnumExtension
    {
        public static string ToDescriptionString(this Enum val)
        {
            DescriptionAttribute[] attributes = (DescriptionAttribute[])val
               .GetType()
               .GetField(val.ToString())
               .GetCustomAttributes(typeof(DescriptionAttribute), false);
            return attributes.Length > 0 ? attributes[0].Description : string.Empty;
        }

        public static T GetValueFromDescription<T>(string description) where T : Enum
        {
            foreach (var field in typeof(T).GetFields())
            {
                if (Attribute.GetCustomAttribute(field,
                typeof(DescriptionAttribute)) is DescriptionAttribute attribute)
                {
                    if (attribute.Description == description)
                        return (T)field.GetValue(null);
                }
                else
                {
                    if (field.Name == description)
                        return (T)field.GetValue(null);
                }
            }

            return default(T);
        }
    }
    public enum Kiểu_thông_tin
    {
        [Description("Thông báo mời thầu")]
        Thông_báo_mời_thầu,
        [Description("Kết quả lựa chọn nhà thầu")]
        Kết_quả_lựa_chọn_nhà_thầu
    }
    public enum Kiểu_thông_báo
    {
        [Description("Thông báo mời thầu")]
        Thông_báo_mời_thầu,
    }
    public enum Phạm_vi
    {
        [Description("Trong phạm vi của luật đấu thầu")]
        Trong_phạm_vi_của_luật_đấu_thầu,
        [Description("Ngoài phạm vi của luật đấu thầu")]
        Ngoài_phạm_vi_của_luật_đấu_thầu
    }
    public enum Loại_ngày
    {
        [Description("Ngày đăng tải")]
        Ngày_đăng_tải,
        [Description("Ngày đóng thầu")]
        Ngày_đóng_thầu,
        [Description("Ngày phát hành HSMT")]
        Ngày_phát_hành_HSMT
    }
    public enum Khoảng_thời_gian
    {
        [Description("Chọn khoảng thời gian")]
        mặc_định,
        [Description("1 tuần gần nhất")]
        một_tuần_gần_nhất,
        [Description("6 tuần gần nhất")]
        sáu_tuần_gần_nhất,
        [Description("1 tháng gần nhất")]
        một_tháng_gần_nhất,
        [Description("1 năm gần nhất")]
        một_năm_gần_nhất,
    }
    public enum Hình_thức_dự_thầu
    {
        [Description("Qua mạng")]
        Qua_mạng,
        [Description("Không qua mạng")]
        Không_qua_mạng
    }
    public enum Lĩnh_vực
    {
        [Description("Hàng hóa")]
        Hàng_hóa,
        [Description("Xây lắp")]
        Xây_lắp,
        [Description("Tư vấn")]
        Tư_vấn,
        [Description("Hỗn hợp")]
        Hỗn_hợp,
        [Description("Phi tư vấn")]
        Phi_tư_vấn
    }
    public enum Loại_thông_báo
    {
        [Description("Thông báo thực")]
        Thông_báo_thực
    }
    public enum Phân_loại
    {
        [Description("Dự án đầu tư phát triển")]
        Dự_án_đầu_tư_phát_triển,
        [Description("Hoạt động chi thường xuyên")]
        Hoạt_động_chi_thường_xuyên
    }
    public enum Loại_hợp_đồng
    {
        [Description("Trọn gói")]
        Trọn_gói,
    }
    public enum Hình_thức_lựa_chọn_nhà_thầu
    {
        [Description("Chào hàng cạnh tranh trong nước")]
        Chào_hàng_cạnh_tranh_trong_nước,
        [Description("Đấu thầu rộng rãi trong nước")]
        Đấu_thầu_rộng_rãi_trong_nước
    }
    public enum Phương_thức_LCNT
    {
        [Description("Một giai đoạn một túi hồ sơ")]
        Một_giai_đoạn_một_túi_hồ_sơ,
        [Description("Một giai đoạn hai túi hồ sơ")]
        Một_giai_đoạn_hai_túi_hồ_sơ,    
        [Description("Hai giai đoạn một túi hồ sơ")]
        Hai_giai_đoạn_một_túi_hồ_sơ,        
        [Description("Hai giai đoạn hai túi hồ sơ")]
        Hai_giai_đoạn_hai_túi_hồ_sơ
    }
    public enum Hình_thức_bảo_đảm_dự_thầu
    {
        [Description("Thư bảo lãnh")]
        Thư_bảo_lãnh,
    }
    public enum Hình_thức_lựa_chọn_NT
    {
        [Description("Chỉ định thầu")]
        Chỉ_định_thầu,
        [Description("Chỉ định thầu rút gọn")]
        Chỉ_định_thầu_rút_gọn

    }
    public enum Hình_thức_hợp_đồng
    {
        [Description("Trọn gói")]
        Trọn_gói
    }
}