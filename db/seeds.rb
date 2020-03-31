# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create!(
  email: "daiki@example.com",
  name: "Daiki",
  password: "daikidaiki",
  nationality: "日本"
)

User.create!(
  email: "example@example.com",
  name: "ゲスト",
  password: "aaaaaa",
  nationality: "日本"
)

5.times do |n|
  User.create!(
    email: "example#{2*n + 1}@example.com",
    name: "ユーザー#{2*n + 1}",
    password: "aaaaaa",
    nationality: "日本"
  )
end

5.times do |n|
  User.create!(
    email: "example#{2*n}@example.com",
    name: "ユーザー#{2*n}",
    password: "aaaaaa",
    nationality: "アメリカ"
  )
end


Post.create!(
  user_id: 1,
  country: "タイ",
  visited_date: "2016-08-23",
  content: "初めて海外に来ました！",
  latitude: 15.870032,
  longitude: 100.992541,
  country_en: "",
  country_code: "TH",
  counts: 1,
  continent: "AS"
)

Post.create!(
  user_id: 1,
  country: "マレーシア",
  visited_date: "2016-08-29",
  content: "マレーシアの友達に会いに来ました！マレーシアって思ったより都会！",
  latitude: 4.210484,
  longitude: 101.975766,
  country_en: "",
  country_code: "MY",
  counts: 1,
  continent: "AS"
)

Post.create!(
  user_id: 1,
  country: "ベトナム",
  visited_date: "2016-09-07",
  content: "トランジットで半日だけ！",
  latitude: 14.058324,
  longitude: 108.277199,
  country_en: "",
  country_code: "VN",
  counts: 1,
  continent: "AS"
)


Post.create!(
  user_id: 1,
  country: "台湾",
  visited_date: "2017-02-24",
  content: "台湾は海外感薄いです！",
  latitude: 23.9739374,
  longitude: 120.9820179,
  country_en: "",
  country_code: "TW",
  counts: 1,
  continent: "AS"
)

Post.create!(
  user_id: 1,
  country: "香港",
  visited_date: "2018-03-03",
  content: "香港の雑多な感じ楽しい！人多い！物価高い！",
  latitude: 22.319304,
  longitude: 114.169361,
  country_en: "",
  country_code: "HK",
  counts: 1,
  continent: "AS"
)

Post.create!(
  user_id: 1,
  country: "中国",
  visited_date: "2018-03-08",
  content: "香港と中国は雰囲気が違う！",
  latitude: 35.86166,
  longitude: 104.195397,
  country_en: "",
  country_code: "CN",
  counts: 1,
  continent: "AS"
)
Post.create!(
  user_id: 1,
  country: "スウェーデン",
  visited_date: "2018-11-02",
  content: "世界を旅してます！",
  latitude: 60.128161,
  longitude: 18.643501,
  country_en: "",
  country_code: "SE",
  counts: 1,
  continent: "EU"
)
Post.create!(
  user_id: 1,
  country: "オランダ",
  visited_date: "2018-11-11",
  content: "世界を旅してます！",
  latitude: 52.132633,
  longitude: 5.291266,
  country_en: "",
  country_code: "NL",
  counts: 1,
  continent: "EU"
)
Post.create!(
  user_id: 1,
  country: "ベルギー",
  visited_date: "2018-11-17",
  content: "！",
  latitude: 50.503887,
  longitude: 4.469936,
  country_en: "",
  country_code: "BE",
  counts: 1,
  continent: "EU"
)
Post.create!(
  user_id: 1,
  country: "イギリス",
  visited_date: "2018-11-23",
  content: "世界を旅してます！",
  latitude: 55.378051,
  longitude: -3.435973,
  country_en: "",
  country_code: "GB",
  counts: 1,
  continent: "EU"
)
Post.create!(
  user_id: 1,
  country: "フランス",
  visited_date: "2018-11-27",
  content: "世界を旅してます！",
  latitude: 46.227638,
  longitude: 2.213749,
  country_en: "",
  country_code: "FR",
  counts: 1,
  continent: "EU"
)
Post.create!(
  user_id: 1,
  country: "スペイン",
  visited_date: "2018-12-09",
  content: "世界を旅してます！",
  latitude: 40.463667,
  longitude: -3.74922,
  country_en: "",
  country_code: "ES",
  counts: 1,
  continent: "EU"
)
Post.create!(
  user_id: 1,
  country: "モロッコ",
  visited_date: "2018-12-11",
  content: "世界を旅してます！",
  latitude: 31.791702,
  longitude: -7.09262,
  country_en: "",
  country_code: "MA",
  counts: 1,
  continent: "AF"
)
 ####################33
# Post.create!(
#   user_id: 1,
#   country: "ドイツ",
#   visited_date: "2018-11-",
#   content: "ヨーロッパのクリスマス最高！",
#   latitude: ,
#   longitude: ,
#   country_en: "",
#   country_code: "",
#   counts: 1,
#   continent: ""
# )
# Post.create!(
#   user_id: 1,
#   country: "オーストリア",
#   visited_date: "2018-11-",
#   content: "一瞬だけ行きました！",
#   latitude: ,
#   longitude: ,
#   country_en: "",
#   country_code: "",
#   counts: 1,
#   continent: ""
# )

# Post.create!(
#   user_id: 1,
#   country: "ハンガリー",
#   visited_date: "2018-11-",
#   content: "世界を旅してます！",
#   latitude: ,
#   longitude: ,
#   country_en: "",
#   country_code: "",
#   counts: 1,
#   continent: ""
# )

# Post.create!(
#   user_id: 1,
#   country: "セルビア",
#   visited_date: "2018-11-",
#   content: "世界を旅してます！",
#   latitude: ,
#   longitude: ,
#   country_en: "",
#   country_code: "",
#   counts: 1,
#   continent: ""
# )

# Post.create!(
#   user_id: 1,
#   country: "ブルガリア",
#   visited_date: "2018-11-",
#   content: "世界を旅してます！",
#   latitude: ,
#   longitude: ,
#   country_en: "",
#   country_code: "",
#   counts: 1,
#   continent: ""
# )

# Post.create!(
#   user_id: 1,
#   country: "トルコ",
#   visited_date: "2018-11-",
#   content: "世界を旅してます！",
#   latitude: ,
#   longitude: ,
#   country_en: "",
#   country_code: "",
#   counts: 1,
#   continent: ""
# )

# Post.create!(
#   user_id: 1,
#   country: "エジプト",
#   visited_date: "2018-11-",
#   content: "世界を旅してます！",
#   latitude: ,
#   longitude: ,
#   country_en: "",
#   country_code: "",
#   counts: 1,
#   continent: ""
# )

# Post.create!(
#   user_id: 1,
#   country: "インド",
#   visited_date: "2018-11-",
#   content: "世界を旅してます！",
#   latitude: ,
#   longitude: ,
#   country_en: "",
#   country_code: "",
#   counts: 1,
#   continent: ""
# )

# Post.create!(
#   user_id: 1,
#   country: "ネパール",
#   visited_date: "2018-11-",
#   content: "世界を旅してます！",
#   latitude: ,
#   longitude: ,
#   country_en: "",
#   country_code: "",
#   counts: 1,
#   continent: ""
# )

# Post.create!(
#   user_id: 1,
#   country: "ラオス",
#   visited_date: "2018-11-",
#   content: "世界を旅してます！",
#   latitude: ,
#   longitude: ,
#   country_en: "",
#   country_code: "",
#   counts: 1,
#   continent: ""
# )

# Post.create!(
#   user_id: 1,
#   country: "韓国",
#   visited_date: "2018-11-",
#   content: "世界を旅してます！",
#   latitude: ,
#   longitude: ,
#   country_en: "",
#   country_code: "",
#   counts: 1,
#   continent: ""
# )

