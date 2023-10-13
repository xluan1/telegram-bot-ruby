# frozen_string_literal: true

class Constants
  LANGUAGES = ["vn", "en"]
  VIET_NAM  = [
    {
      "key":       "b_vn",
      "question":  "b Việt Nam",
      "answer":    "Bạn đã nhấn vào nút b",
      "sub_group": "b1_vn, b2_vn,b3_vn"
    },
    {
      "key":       "b1_vn",
      "question":  "b1 Việt Nam",
      "answer":    "Bạn đã nhấn vào nút b1",
      "sub_group": "b1_1_vn,b1_2_vn",
      "parent":    "b_vn"
    },
    {
      "key":      "b2_vn",
      "question": "b2 Việt Nam",
      "answer":   "Bạn đã nhấn vào nút b2",
      "parent":   "b_vn"
    },
    {
      "key":      "b3_vn",
      "question": "b3 Việt Nam",
      "answer":   "Bạn đã nhấn vào nút b3",
      "parent":   "b_vn"
    },
    {
      "key":       "b1_1_vn",
      "question":  "b1_1 Việt Nam",
      "answer":    "Bạn đã nhấn vào nút b1_1",
      "sub_group": "b1_1_1_vn",
      "parent":    "b1_vn"
    },
    {
      "key":      "b1_2_vn",
      "question": "b1_2_vn Việt Nam",
      "answer":   "Bạn đã nhấn vào nút b1_2",
      "parent":   "b1_vn"
    },
    {
      "key":      "b1_1_1_vn",
      "question": "b1_1_1 Việt Nam",
      "answer":   "Bạn đã nhấn vào nút b1_1_1",
      "parent":   "b1_1_vn"
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