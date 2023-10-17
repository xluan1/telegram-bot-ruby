# frozen_string_literal: true

class Constants
  VIET_NAM = [
    {
      "key":       "1",
      "question":  "DIRECT",
      "answer":    "DIRECT",
      "sub_group": "3,7,17",
    },
    {
      "key":       "2",
      "question":  "GIGA",
      "answer":    "GIGA - 
 Tự động hóa giao dịch cho người không biết code",
      "sub_group": "21,22",
    },
    {
      "key":       "3",
      "question":  "Bắt đầu thế nào",
      "answer":    "Bắt đầu thế nào",
      "parent":    "1",
      "sub_group": "4,5,6"
    },
    {
      "key":      "4",
      "question": "Trader's Guard (TG)",
      "answer":   "- Trader's Guard là sản phẩm độc quyền của FXCE .
- Là cam kết của nhà giao dịch tự thiết lập để rèn luyện bản thân cũng như bảo vệ tài khoản của mình trong quá trình giao dịch .
- Khi vi phạm các điều kiện đã đặt trong TG thì nhà giao dịch sẽ bị đóng toàn bộ lệnh và khóa tài khoản trong thời gian nhất định ( tùy thuộc vào điều khoản xử phạt đã tạo ) .
- Bạn có thể tham khảo thêm các thông tin về Trader's Gaurd ở đây : https://faq.fxce.com/search/category/traders-guard_633eabd957f0b40001db6192
-Nếu có thêm thắc mắc về thông tin nào , vui lòng vào www.support.fxce.com để gửi yêu cầu nhờ giải đáp .",
      "parent":   "3"
    },
    {
      "key":       "5",
      "question":  "Tạo tài khoản FXCE",
      "answer":    "- Để thuận tiện trong việc tìm hiểu về việc tạo tài khoản FXCE , bạn vui lòng tham khảo liên kết hướng dẫn ở đây :
https://faq.fxce.com/post/huong-dan-dang-ky-tai-khoan-fxce_6347c28457f0b40001db61db
-Lưu ý nhập đúng địa chỉ email đăng ký để thuận lợi vào việc xác nhận email mở tài khoản .
- Khi đã tạo thành công tài khoản FXCE, tiến hành đăng nhập vào web fxce.com để thao tác bước KYC tài khoản
- Nếu có thêm thắc mắc về thông tin nào , vui lòng vào www.support.fxce.com để gửi yêu cầu nhờ giải đáp .",
      "parent":    "3",
      "sub_group": "6"
    },
    {
      "key":       "6",
      "question":  "KYC tài khoản",
      "answer":    "- Để thuận tiện trong việc tìm hiểu về  quy trình KYC tài khoản ở FXCE , bạn vui lòng tham khảo liên kết hướng dẫn ở đây :
https://faq.fxce.com/post/huong-dan-thuc-hien-xac-minh-danh-tinh-kyc_6343d94b57f0b40001db61c4
- Khi đã gửi KYC lên xét duyệt sẽ nhận được phản hồi , nếu bị từ chối thì vui lòng vào emal kiểm tra lý do và điều chỉnh thông tin gửi lên để xét duyệt lại .
- Sau khi tài khoản đã được KYC thành công thì sẽ mở được tài khoản Demo Direct để tham gia giao dịch cấp vốn. 
- Nếu có thêm thắc mắc về thông tin nào , vui lòng vào www.support.fxce.com để gửi yêu cầu nhờ giải đáp .",
      "parent":    "3",
      "sub_group": "8"
    },
    {
      "key":       "7",
      "question":  "Nhận vốn",
      "answer":    "Nhận vốn",
      "parent":    "1",
      "sub_group": "8,13"
    },
    {
      "key":       "8",
      "question":  "Tài khoản Demo Direct",
      "answer":    "Tài khoản Demo Direct",
      "parent":    "7",
      "sub_group": "9,10,11,12"
    },
    {
      "key":       "9",
      "question":  "Điều kiện đạt tài khoản cấp vốn",
      "answer":    "- Để nhận được tài khoản cấp vốn ( Direct ) thì tài khoản Demo Direct cần phải đạt các yêu cầu sau :
  + Giao dịch từ 3 tháng trở lên ( trong đó có tối thiểu 20 ngày vào lệnh khác nhau )
  + Điểm FXCE từ 25 
 ( tham khảo các thông tin về điểm FXCE ở đây : https://faq.fxce.com/search/category/fxce-score_64fac6188a0de300017c1ad1)
  + Tài khoản giao dịch có lợi nhuận tối thiểu 1%/ tổng 3 tháng 
  + Sụt giảm tài sản cao nhất trong quá trình giao dịch ( edd) < 15% 
( giải thích thêm về Edd : https://faq.fxce.com/post/chi-so-sut-giam-tai-san_644631a18a0de300017c1a4d )
- Khi đã đạt đủ các yêu cầu đề ra , nhà giao dịch gửi yêu cầu xét duyệt để nhận tài khoản cấp vốn ( hay còn gọi là tài khoản Direct )
- Nếu có thêm thắc mắc về thông tin nào , vui lòng vào www.support.fxce.com để gửi yêu cầu nhờ giải đáp .",
      "parent":    "8",
      "sub_group": "13"
    },
    {
      "key":      "10",
      "question": "Thuộc tính của Demo Direct",
      "answer":   "-Tài khoản Demo Direct sẽ có vốn mặc định là 10.000$ và đòn bẩy cố định 1:30
- Các sản phẩm được giao dịch ở Demo Direct : Vàng , các cặp tiền Fx.
- Nếu giao dịch  tay thủ công thì mỗi nhà giao dịch chỉ mở được 1 tài khoản Demo Direct .
- Nếu giao dịch bằng EA thì được mở tối đa 15 tài khoản Demo Direct với điều kiện mỗi tài khoản giao dịch 1 phương pháp khác nhau .
- Nhà giao dịch có thể mở bán tín hiệu bằng tài khoản Demo Direct , tham khảo hướng dẫn mở bán tín hiệu : https://faq.fxce.com/post/cach-dang-ki-ban-tin-hieu-1_634fbecc823cfc0001b1961e
- Nếu có thêm thắc mắc về thông tin nào , vui lòng vào www.support.fxce.com để gửi yêu cầu nhờ giải đáp .",
      "parent":   "8"
    },
    {
      "key":      "11",
      "question": "Các lỗi hay gặp ở Demo Direct",
      "answer":   "-Nếu không đăng nhập được tài khoản Demo Direct vào MT5 , bạn vui lòng kiểm tra Broker, Sever , ID và mật khẩu . Hoặc có thể đổi mật khẩu tài khoản Demo Direct sau đó đăng nhập lại bằng mật khẩu mới .
-Tài khoản Demo Direct bị vô hiệu hóa vào lệnh hoặc bị rút hết vốn về 0$ , thì tài khoản của bạn đã vi phạm cam kết Trader's Gaurd , đây là hướng dẫn kiểm tra vi phạm : https://faq.fxce.com/post/kiem-tra-vi-pham-cam-ket-traders-guard_6347c65257f0b40001db61ec
- Nếu có thêm thắc mắc về thông tin nào , vui lòng vào www.support.fxce.com để gửi yêu cầu nhờ giải đáp .",
      "parent":   "8"
    },
    {
      "key":      "12",
      "question": "Giới thiệu thông tin và tùy chỉnh",
      "answer":   "Là loại tài khoản trải nghiệm dùng để xét cấp vốn từ FXCE .
- Tạo điều kiện cho các nhà giao dịch muốn tham gia thử thách cấp vốn với chi phí ban đầu bỏ ra là 0 đồng .
- Đây là hướng dẫn tạo tài khoản Demo Direct : https://faq.fxce.com/post/huong-dan-tao-tk-demo-direct_64d1ecc58a0de300017c1a9c
- Nhà  giao dịch có thể xóa , tạo lại tài khoản Demo Direct mới để rèn luyện  , đây là hướng dẫn xóa tài khoản : https://faq.fxce.com/post/huong-dan-xoa-tai-khoan-mt5-fxce_6347c3e357f0b40001db61e3 
- Bạn có thể thao tác đổi mật khẩu tài khoản Demo Direct trực tiếp trên web fxce.com . Vui lòng tham khảo liên kết hướng dẫn ở đây :
https://faq.fxce.com/post/huong-dan-thay-doi-mat-khau-tai-khoan-mt5-fxce_6346212a57f0b40001db61d3
-Nếu có thêm thắc mắc về thông tin nào , vui lòng vào www.support.fxce.com để gửi yêu cầu nhờ giải đáp .",
      "parent":   "8"
    },
    {
      "key":       "13",
      "question":  "Tài khoản Direct",
      "answer":    "Tài khoản Direct",
      "parent":    "7",
      "sub_group": "14,15,16"
    },
    {
      "key":       "14",
      "question":  "Điều kiện tăng vốn và nhận đầu tư",
      "answer":    "Hiện tại cấp vốn vòng 1 sẽ là 5.000$ cho nhà giao dịch bằng tay , và 10.000$ cho nhà giao dịch bằng EA .
- Khi đã nhận cấp vốn vòng 1 là 5.000$ thì nhà giao dịch bằng tay cần :
    + Thử thách thêm 2 kỳ ( mỗi kỳ là 3 tháng )
    + Cần đạt yêu cầu tổng lãi tối thiểu mỗi kỳ từ 1% trở lên và có sụt giảm thả nổi
  ( fdd ) < 6%   thì sẽ được nâng vốn lên 10.000$ + 100.000$ đầu tư từ FXCE .
- Với tài khoản giao dịch bằng EA vượt qua thử thách như tài khoản giao dịch bằng tay thì được đầu tư  100,000$ từ FXCE .
-Nếu có thêm thắc mắc về thông tin nào , vui lòng vào www.support.fxce.com để gửi yêu cầu nhờ giải đáp .",
      "parent":    "13",
      "sub_group": "17"
    },
    {
      "key":      "15",
      "question": "Giới thiệu và thuộc tính",
      "answer":   "- Là loại tài khoản được cấp vốn thật 100% từ FXCE .
- Dành cho các nhà giao dịch đã trải qua thành công quá trình giao dịch trên tài khoản Demo Direct đạt các điều kiện đề ra của FXCE .
- Khi đã có tài khoản cấp vốn nếu đăng nhập vào MT5 không được thì vào fxce.com đổi mật khẩu rồi đăng nhập lại với mật khẩu mới  , hướng dẫn đổi mật khẩu ở đây : https://faq.fxce.com/post/huong-dan-thay-doi-mat-khau-tai-khoan-mt5-fxce_6346212a57f0b40001db61d3
-  Tài khoản cấp vốn ( Direct ) sẽ bị thu hồi khi vi phạm Trader's Guard tức tài khoản chạm sụt giảm (Edd) 15%.
- Nếu có thêm thắc mắc về thông tin nào , vui lòng vào www.support.fxce.com để gửi yêu cầu nhờ giải đáp .",
      "parent":   "13"
    },
    {
      "key":      "16",
      "question": "Lợi ích và quyền lợi",
      "answer":   "- Nhà giao dịch sẽ được chia lợi nhuận ( nếu có ) là 20% theo định kỳ 3 tháng / 1 lần .
- Có thể mở bán tín hiệu bằng tài khoản cấp vốn để kiếm thêm thu nhập .
- Giao dịch tốt sẽ được tăng vốn giao dịch cũng như nhận nguồn đầu tư lớn từ FXCE .
-Nếu có thêm thắc mắc về thông tin nào , vui lòng vào www.support.fxce.com để gửi yêu cầu nhờ giải đáp .",
      "parent":   "13"
    },
    {
      "key":       "17",
      "question":  "Tăng vốn và đầu tư",
      "answer":    "Tăng vốn và đầu tư",
      "parent":    "1",
      "sub_group": "18,19,20"
    },
    {
      "key":      "18",
      "question": "Tổng quan về đầu tư",
      "answer":   "- Để nhận được đầu tư thì nhà giao dịch cần trải qua thời gian  tối thiểu là 9 tháng giao dịch kể từ khi bắt đầu bằng tài khoản Demo Direct .
-  Mức đầu tư tối thiểu là 100.000$ sau đó lũy tiến tăng 100.000$ sau mỗi kỳ ( 3 tháng giao dịch ) đạt KPI lợi nhuận và fdd (sụt giảm thả nổi) <6%
- Đầu tư tối đa không giới hạn chỉ cần nhà giao dịch xuất sắc và ổn định .
-Nếu có thêm thắc mắc về thông tin nào , vui lòng vào www.support.fxce.com để gửi yêu cầu nhờ giải đáp .",
      "parent":   "17"
    },
    {
      "key":      "19",
      "question": "Lợi ích và quyền lợi",
      "answer":   "- Nhà giao dịch sẽ được chia lợi nhuận 20% ( nếu có ) dựa trên tổng lợi nhuận mang về cho nhà đầu tư .
- FXCE sẽ quảng bá thương hiệu của nhà giao dịch đang được nhận các khoản đầu tư lớn đến với cộng đồng giao dịch Forex.
-Nếu có thêm thắc mắc về thông tin nào , vui lòng vào www.support.fxce.com để gửi yêu cầu nhờ giải đáp .",
      "parent":   "17"
    },
    {
      "key":      "20",
      "question": "Điều kiện thu hồi",
      "answer":   "- Khi đã nhận được khoản đầu tư thì sẽ bị thu hồi khoản đầu tư khi sụt giảm thả nổi ( fdd ) >= 8% .
- Hoặc vi phạm các điều khoản Trader's Guard của FXCE đã thương lượng thiết lập riêng cho mỗi nhà giao dịch .
-Nếu có thêm thắc mắc về thông tin nào , vui lòng vào www.support.fxce.com để gửi yêu cầu nhờ giải đáp .",
      "parent":   "17"
    },
    {
      "key":      "21",
      "question": "Tổng quan",
      "answer":   "- FXCE Giga là công cụ được team Dev EA của FXCE nghiên cứu và phát triển nhằm giúp mọi trader đều có thể cấu hình EA mà không cần code hay mất thời gian học lập trình; mở ra hành trình giao dịch mới mẻ, sáng tạo và hiệu quả.
- Bạn có thẻ xem thông tin chi tiết tại: https://ea.fxce.com/post/kham-pha-FXCE-giga-giai-phap-cau-hinh-ea-danh-cho-nguoi-khong-biet-code_633d65a2ee7ee500014b7a90
-Nếu có thêm thắc mắc về thông tin nào , vui lòng vào www.support.fxce.com để gửi yêu cầu nhờ giải đáp .
- Nếu bạn muốn tham gia tìm hiểu và học tập về Giga , FXCE có  cung cấp các buổi học 1:1 qua link đăng ký  :  https://docs.google.com/forms/d/e/1FAIpQLSe1nmn-J3ABrlj2FTL3OBWtruNEkNKemkY_JHo4dMtpUIIs5Q/viewform
- Nếu có thêm thắc mắc về thông tin nào , vui lòng vào www.support.fxce.com để gửi yêu cầu nhờ giải đáp .
- Hiện tại, FXCE Giga chỉ có thể dùng ở FXCE và các sàn đối tác được phép . 
- Giga chỉ chạy trên nền tảng MT5 và được nâng cấp liên tục các bản cập nhật mới nhất giúp khách hàng cải thiện được hệ thống của mình .",
      "parent":   "2"
    },
    {
      "key":      "22",
      "question": "Vận hành",
      "answer":   "- Nhà giao dịch có thể tham khảo cách cài đặt Giga ở đây :  https://ea.fxce.com/post/bai-1-1-download-cai-dat-khoi-chay-ea-gigafactory_632c0709f0fed10001abd8a5
-Nếu có thêm thắc mắc về thông tin nào , vui lòng vào www.support.fxce.com để gửi yêu cầu nhờ giải đáp .
*Cách backtest Giga : 
- Nhà giao dịch  vui lòng xem bài hướng dẫn ở đây  https://ea.fxce.com/post/bai-3-1-backtest-ea-from-gigafactory_635b616c56a5ec0001ade828
-Nếu có thêm thắc mắc về thông tin nào , vui lòng vào www.support.fxce.com để gửi yêu cầu nhờ giải đáp .
*Cách forward test Giga : 
- Đây là bài hướng dẫn , vui lòng tham khảo :  https://ea.fxce.com/post/bai-1-2-mo-file-config-ea-co-san-va-thuc-thi-ea_636129af56a5ec0001ade86e
-Nếu có thêm thắc mắc về thông tin nào , vui lòng vào www.support.fxce.com để gửi yêu cầu nhờ giải đáp .
Để tải tick để backtest  , nhà giao dịch vui lòng tham khảo hướng dẫn ở đây : https://ea.fxce.com/post/lam-the-nao-de-tai-fxce-tick-data-su-dung-cho-backtest_633bb7ceee7ee500014b7a37",
      "parent":   "2"
    },
  ]
  ENGLISH  = [
    {
      "key":      "b1_en",
      "question": "b1 English",
      "answer":   "You have pressed button b1",
    },
    {
      "key":      "b2_en",
      "question": "b2 English",
      "answer":   "You have pressed button b2",
    },
  ]

  EXPIRATION_TIME = 5.minute
  LANGUAGES       = ["vn", "en"]
end