using System.Collections.Generic;

namespace WebDauThauOnline.Models
{
    public class SearchViewModel
    {
        public SearchModel searchModel { get; set; }
        public IEnumerable<ThongBaoMoiThau_ThongTinChiTiet> thongBaoMoiThauModel { get; set; }
        public IEnumerable<KetQuaLuaChonNhaThau_ThongTinChiTiet> ketQuaLuaChonNhaThauModel { get; set; }
    }
}