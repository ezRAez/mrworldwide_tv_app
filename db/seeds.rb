Video.delete_all
User.delete_all

User.create(
  email:                 "lucinda.smiles@msn.com",
  handle:                "Miami Mami",
  profile_image_url:     "http://images.agoramedia.com/ugcphotoservice/100/59177947/40c8f3ac-4437-4520-a7a7-83080d923927.jpg",
  statement:             "I love my life, my parents, my baby girl and salsa dancing! Te quiero Pitbull! Go Heat!",
  password:              "Gabriela<3",
  password_confirmation: "Gabriela<3"
)

User.create(
  email:                 "brandon.macmillan@gmail.com",
  handle:                "sk8te4life",
  profile_image_url:     "https://pbs.twimg.com/profile_images/466668720098525184/iBd9k93d_400x400.jpeg",
  statement:             "Whatever.",
  password:              "hediedforme",
  password_confirmation: "hediedforme"
)

User.create(
  email:                 "kanye.west@gmail.com",
  handle:                "Anonymous",
  profile_image_url:     "",
  statement:             "",
  password:              "IAMYEEZUS",
  password_confirmation: "IAMYEEZUS"
)

Video.create(
  youtube_id:       "EPo5wWmKEaI",
  title:            "Give Me Everything",
  album:            "Planet Pit",
  featured_artists: "Ne-Yo, Afrojack, Nayer",
  released_on:      Date.parse("21-3-2011"),
  tags:             "#dale"
)

Video.create(
  youtube_id:       "bTXJQ5ql5Fw",
  title:            "Time of Our Lives",
  album:            "Globalization",
  featured_artists: "Ne-Yo",
  released_on:      Date.parse("17-11-2014"),
  tags:             "#dale"
)

Video.create(
  youtube_id:       "SmM0653YvXU",
  title:            "Rain Over Me",
  album:            "Planet Pit",
  featured_artists: "Marc Anthony",
  released_on:      Date.parse("20-6-2011"),
  tags:             "#dale #marcanthony"
)

Video.create(
  youtube_id:       "hHUbLv4ThOo",
  title:            "Timber",
  album:            "Meltdown",
  featured_artists: "Ke$ha",
  released_on:      Date.parse("7-10-2013"),
  tags:             "#house #countrygold"
)

Video.create(
  youtube_id:       "q5SG7U76tls",
  title:            "Get It Started",
  album:            "Global Warming",
  featured_artists: "Shakira",
  released_on:      Date.parse("25-6-2012"),
  tags:             "#house"
)

Video.create(
  youtube_id:       "bWc0uCj5bG4",
  title:            "Maldito Alcohol",
  album:            "ARMANDO",
  featured_artists: "Afrojack",
  released_on:      Date.parse("17-12-2010"),
  tags:             "#dale"
)
