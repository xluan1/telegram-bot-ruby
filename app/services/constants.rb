# frozen_string_literal: true

class Constants
  LANGUAGES = ["vn", "en"]
  VIET_NAM  = [
    {
      "key":       "1",
      "question":  "Quỹ DIRECT là gì ?",
      "answer":    "Là nơi tìm kiếm và rèn luyện trader... Quỹ bao gồm 4 vòng.
mỗi vòng có những thử thách khác nhau cùng với phần thưởng hấp dẫn... ",
      "sub_group": "4,5,6",
    },
    {
      "key":       "2",
      "question":  "Trader có phải bỏ tiền để tham gia quỹ không ?",
      "answer":    "Để tham gia quỹ, trader không phải chịu bất cứ khoản phí nào....",
      "sub_group": "7,8",
    },
    {
      "key":       "3",
      "question":  "Làm sao để nhận cấp vốn ?",
      "answer":    "Bạn phải tham gia vòng thử thách bằng tài khoản DEMO DIRECT và đạt các chỉ tiêu...",
      "sub_group": "9,10,11"
    },
    {
      "key":      "4",
      "question": "Demo direct là gì?",
      "answer":   "Demo direct là gì?",
      "parent":   "1"
    },
    {
      "key":      "5",
      "question": "Hạng vàng bạc bạch kim là gì",
      "answer":   "Hạng vàng bạc bạch kim là gì",
      "parent":   "1"
    },
    {
      "key":      "6",
      "question": "Nếu là trader giỏi thì mất bao lâu để đạt hạng cao nhất",
      "answer":   "Nếu là trader giỏi thì mất bao lâu để đạt hạng cao nhất",
      "parent":   "1"
    },
    {
      "key":      "7",
      "question": "Tại sao người chơi lại không mất gì khi tham gia quỹ",
      "answer":   "Tại sao người chơi lại không mất gì khi tham gia quỹ",
      "parent":   "2"
    },
    {
      "key":      "8",
      "question": "Tại sao quỹ lại chịu mọi thiệt khi khi trader thua lỗ",
      "answer":   "Tại sao quỹ lại chịu mọi thiệt khi khi trader thua lỗ",
      "parent":   "2"
    },
    {
      "key":       "9",
      "question":  "Làm sao để tạo tài khoản demo direct ?",
      "answer":    "Bạn 3 bước
\n1.kyc tài khoản
\n2.Vào link để tạo
\n3.Cài đặt TG sau đó hệ thống cấp cho bạn tài khoản và bắt đầu hành trình ",
      "parent":    "3",
      "sub_group": "12,13"
    },
    {
      "key":      "10",
      "question": "Thử thách trong bao lâu ?",
      "answer":   "Thử thách trong bao lâu",
      "parent":   "3"
    },
    {
      "key":      "11",
      "question": "Điều kiện để qua vòng thử thách ?",
      "answer":   "Điều kiện để qua vòng thử thách",
      "parent":   "3"
    },
    {
      "key":      "12",
      "question": "TG là gì",
      "answer":   "TG là sản phẩm của FXCE ....",
      "parent":   "9"
    },
    {
      "key":      "13",
      "question": "KYC ở đâu",
      "answer":   "ở đây",
      "parent":   "9"
    }
  ]
  ENGLISH   = [
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
end

class Constants::Key
  VN = "vn"
  EN = "en"
end