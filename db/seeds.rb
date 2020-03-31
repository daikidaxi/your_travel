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
  if n%3==0
    User.create!(
      email: "example#{n}@example.com",
      name: "ユーザー#{n}",
      password: "aaaaaa",
      nationality: "日本"
    )
  elsif n%3==1
    User.create!(
      email: "example#{n}@example.com",
      name: "ユーザー#{n}",
      password: "aaaaaa",
      nationality: "アメリカ合衆国"
    )
  else
    User.create!(
      email: "example#{n}@example.com",
      name: "ユーザー#{n}",
      password: "aaaaaa",
      nationality: "フランス"
    )
  end
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
  content: "老後住みたい国ナンバー１！",
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
  content: "もちろん経験しました！",
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
  content: "友達の家族がとても親切で良い経験でした！",
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
  content: "美術館がとても充実してる！",
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
  content: "友達と遊べて本当に楽しかった！",
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
  content: "クラブ行った記憶だけ笑",
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
  content: "最高の国！また行きたい！",
  latitude: 31.791702,
  longitude: -7.09262,
  country_en: "",
  country_code: "MA",
  counts: 1,
  continent: "AF"
)
 ####################33
Post.create!(
  user_id: 1,
  country: "ドイツ",
  visited_date: "2018-12-22",
  content: "ヨーロッパのクリスマス最高！",
  latitude: 51.165691,
  longitude: 10.451526,
  country_en: "",
  country_code: "DE",
  counts: 1,
  continent: "EU"
)
Post.create!(
  user_id: 1,
  country: "オーストリア",
  visited_date: "2018-12-27",
  content: "一瞬だけ行きました！",
  latitude: 47.516231,
  longitude: 14.550072,
  country_en: "",
  country_code: "AT",
  counts: 1,
  continent: "EU"
)

Post.create!(
  user_id: 1,
  country: "ハンガリー",
  visited_date: "2019-01-01",
  content: "元旦にここにいました！",
  latitude: 47.162494,
  longitude: 19.503304,
  country_en: "",
  country_code: "HU",
  counts: 1,
  continent: "EU"
)

Post.create!(
  user_id: 1,
  country: "セルビア",
  visited_date: "2019-01-04",
  content: "南に来たのに雪が積もってた！",
  latitude: 44.016521,
  longitude: 21.005859,
  country_en: "",
  country_code: "RS",
  counts: 1,
  continent: "EU"
)

Post.create!(
  user_id: 1,
  country: "ブルガリア",
  visited_date: "2019-01-07",
  content: "寒すぎだった！",
  latitude: 42.733883,
  longitude: 25.48583,
  country_en: "",
  country_code: "BG",
  counts: 1,
  continent: "EU"
)

Post.create!(
  user_id: 1,
  country: "トルコ",
  visited_date: "2019-01-09",
  content: "ぼったくりの一歩手前までを経験！",
  latitude: 38.963745,
  longitude: 35.243322,
  country_en: "",
  country_code: "TR",
  counts: 1,
  continent: "AS"
)

Post.create!(
  user_id: 1,
  country: "エジプト",
  visited_date: "2019-01-15",
  content: "友達にいっぱいもてなしてもらった！",
  latitude: 26.820553,
  longitude: 30.802498,
  country_en: "",
  country_code: "EG",
  counts: 1,
  continent: "AF"
)

Post.create!(
  user_id: 1,
  country: "インド",
  visited_date: "2019-01-21",
  content: "汚すぎ笑！",
  latitude: 20.593684,
  longitude: 78.96288,
  country_en: "",
  country_code: "IN",
  counts: 1,
  continent: "AS"
)

Post.create!(
  user_id: 1,
  country: "ネパール",
  visited_date: "2019-02-02",
  content: "結構好きな雰囲気です！食べ物うますぎ！",
  latitude: 28.394857,
  longitude: 84.124008,
  country_en: "",
  country_code: "NP",
  counts: 1,
  continent: "AS"
)

Post.create!(
  user_id: 1,
  country: "ラオス",
  visited_date: "2019-02-21",
  content: "結構長く居たなー！ゆったりした時間",
  latitude: 19.85627,
  longitude: 102.495496,
  country_en: "",
  country_code: "LA",
  counts: 1,
  continent: "AS"
)

Post.create!(
  user_id: 1,
  country: "韓国",
  visited_date: "2019-03-16",
  content: "ご飯美味しい！",
  latitude: 35.907757,
  longitude: 127.766922,
  country_en: "",
  country_code: "KR",
  counts: 1,
  continent: "AS"
)

