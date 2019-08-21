artist_name =    ''
lyricUrl_url =   ''
cd_name =        ''
cd_released_at = ''
song_name =      ''
song_lyricist =  ''
song_composer =  ''
song_arranger =  ''
cds_name = []
note          = nil

artist = Artist.find_by(name: artist_name) || Artist.create(name: artist_name)
cd = Cd.find_by(name: cd_name) || Cd.create(name: cd_name, released_at: cd_released_at)

if lyricUrl_url
  lyricUrl = LyricUrl.create(
    url: lyricUrl_url,
    lyric_website_id: LyricWebsite.find_by(name: 'うたまっぷ').id
  )
end

song = Song.create(
  lyric_url_id: lyricUrl ? lyricUrl.id : nil,
  name: song_name,
  lyricist: song_lyricist,
  composer: song_composer,
  arranger: song_arranger,
  cd_id: cd.id,
  artist_id: artist.id,
  note: note
)
if lyricUrl
  LyricUrlSong.create(
    lyric_url_id: lyricUrl.id,
    song_id: song.id
  )
end
CdSong.create(
  cd_id: cd.id,
  song_id: song.id
)

singer = Singer.find_by(name: 'MCU')
lyrict_type = LyricType.find_by(name: 'VERSE')
Lyric.create(
  song_id: song.id,
  singer_id: singer.id,
  lyric_type_id: lyrict_type.id,
  part_lyric_order: 1,
  lyric: 'シッポ切断されても笑うトカゲ見たこともない光と影宇宙と地球の愛の子とかけMCUととくこのヒッカケペタンペターン(叩くアスファルト)近づくオカルト界のエリート乗り込んできた地球行きボート謎めく連中残すエピソードどこから来てどこへ行くのかって未知なる所だつまりあさって待ってとか言ってる暇無いって近代化に向けて押しの一手帽子の中に隠された触覚今見せる時が来たぜよーやく目玉おっぴろげて練る策略(到着)地上に今以下省略',
  ruby: 'しっぽせつだんされてもわらうとかげみたこともないひかりとかげうちゅうとちきゅうのあいのことかけえむしーゆーととくこのひっかけぺたんぺたーんたたくあすふぁるとちかづくおかるとかいのえりーとのりこんできたちきゅうゆきぼーとなぞめくれんちゅうのこすえぴそーどどこからきてどこへいくのかってみちなるところだつまりあさってまってとかいってるひまないってきんだいかにむけておしのいってぼうしのなかにかくされたしょっかくいまみせるときがきたぜよーやくめだまおっぴろげてねるさくりゃくとうちゃくちじょうにいまいかしょうりゃく',
  lyric_with_ruby: '\{シッポ,しっぽ\}\{切断,せつだん\}されても\{笑う,わらう\}\{トカゲ,とかげ\}\{ ,\}\{見,み\}たこともない\{光,ひかり\}と\{影,かげ\}\{ ,\}\{宇宙,うちゅう\}と\{地球,ちきゅう\}の\{愛,あい\}の\{子,こ\}とかけ\{ ,\}\{MCU,えむしーゆー\}ととくこの\{ヒッカケ,ひっかけ\}\{ ,\}\{ペタンペターン,ぺたんぺたーん\}\{(,\}\{叩く,たたく\}\{アスファルト,あすふぁると\}\{),\}\{ ,\}\{近づく,ちかづく\}\{オカルト,おかると\}\{界,かい\}の\{エリート,えりーと\}\{ ,\}\{乗り込ん,のりこん\}できた\{地球,ちきゅう\}\{行き,ゆき\}\{ボート,ぼーと\}\{ ,\}\{謎,なぞ\}めく\{連中,れんちゅう\}\{残す,のこす\}\{エピソード,えぴそーど\}\{ ,\}どこから\{来,き\}てどこへ\{行く,いく\}のかって\{ ,\}\{未知,みち\}なる\{所,ところ\}だつまりあさって\{ ,\}\{待っ,まっ\}てとか\{言っ,いっ\}てる\{暇,ひま\}\{無い,ない\}って\{ ,\}\{近代,きんだい\}\{化,か\}に\{向け,むけ\}て\{押し,おし\}の\{一,いっ\}\{手,て\}\{ ,\}\{帽子,ぼうし\}の\{中,なか\}に\{隠さ,かくさ\}れた\{触覚,しょっかく\}\{ ,\}\{今,いま\}\{見せる,みせる\}\{時,とき\}が\{来,き\}たぜよーやく\{ ,\}\{目玉,めだま\}おっぴろげて\{練る,ねる\}\{策略,さくりゃく\}\{ ,\}\{(,\}\{到着,とうちゃく\}\{),\}\{地上,ちじょう\}に\{今,いま\}\{以下,いか\}\{省略,しょうりゃく\}\{ ,\}',
  lyric_order: 1,
)

singer = Singer.find_by(name: 'RADICALFREAKS')
lyrict_type = LyricType.find_by(name: 'HOOK')
Lyric.create(
  song_id: song.id,
  singer_id: singer.id,
  lyric_type_id: lyrict_type.id,
  part_lyric_order: 1,
  lyric: 'NEXTまだ見えぬ世界を開拓音もたてず近づいてハイジャック',
  ruby: 'ねくすとまだみえぬせかいをかいたくおともたてずちかづいてはいじゃっく',
  lyric_with_ruby: '\{NEXT,ねくすと\}\{ ,\}まだ\{見え,みえ\}ぬ\{世界,せかい\}を\{開拓,かいたく\}\{ ,\}\{音,おと\}もたてず\{近づい,ちかづい\}て\{ハイジャック,はいじゃっく\}\{ ,\}',
  lyric_order: 2,
)

singer = Singer.find_by(name: 'VOICE')
lyrict_type = LyricType.find_by(name: 'VERSE')
Lyric.create(
  song_id: song.id,
  singer_id: singer.id,
  lyric_type_id: lyrict_type.id,
  part_lyric_order: 2,
  lyric: '人影ひとつ見あたらぬ荒れ地流れ行く雲時は午前0時問題児たち草ともに夜更かし冷えた霧の中言葉アレンジ名も無き子猫はすぐケンカする各自胸のともし火点火する月明かりぼやけ映る文字見上げれば南空に光る星空と大地という間から生まれては消えて見つけるお宝申し子たちが持ち寄るハーモニー捧ぐ主に大人びた子供にリズムと共にくすんだ心に(見たこと無いものをいたるとこに)鍵盤の上の色は自由に左右円盤より今地球に',
  ruby: 'ひとかげひとつみあたらぬあれちながれゆくくもときはごぜんれいじもんだいじたちくさともによふかしひえたきりのなかことばあれんじなもなきこねこはすぐけんかするかくじむねのともしびてんかするつきあかりぼやけうつるもじみあげればみなみそらにひかるほしそらとだいちというあいだからうまれてはきえてみつけるおたからもうしごたちがもちよるはーもにーささぐおもにおとなびたこどもにりずむとともにくすんだこころにみたことないものをいたるとこにけんばんのうえのいろはじゆうにさゆうえんばんよりいまちきゅうに',
  lyric_with_ruby: '\{人影,ひとかげ\}ひとつ\{見あたら,みあたら\}ぬ\{荒れ地,あれち\}\{ ,\}\{流れ,ながれ\}\{行く,ゆく\}\{雲,くも\}\{ ,\}\{時,とき\}は\{午前,ごぜん\}\{0,れい\}\{時,じ\}\{ ,\}\{問題児,もんだいじ\}たち\{草,くさ\}ともに\{夜,よ\}\{更かし,ふかし\}\{ ,\}\{冷え,ひえ\}た\{霧,きり\}の\{中,なか\}\{言葉,ことば\}\{アレンジ,あれんじ\}\{ ,\}\{名,な\}も\{無き,なき\}\{子猫,こねこ\}はすぐ\{ケンカ,けんか\}する\{ ,\}\{各自,かくじ\}\{胸,むね\}のともし\{火,び\}\{点火,てんか\}する\{ ,\}\{月明かり,つきあかり\}ぼやけ\{映る,うつる\}\{文字,もじ\}\{ ,\}\{見上げれ,みあげれ\}ば\{南,みなみ\}\{空,そら\}に\{光る,ひかる\}\{星,ほし\}\{ ,\}\{空,そら\}と\{大地,だいち\}という\{間,あいだ\}から\{ ,\}\{生まれ,うまれ\}ては\{消え,きえ\}て\{見つける,みつける\}\{お宝,おたから\}\{ ,\}\{申し子,もうしご\}たちが\{持ち寄る,もちよる\}\{ハーモニー,はーもにー\}\{ ,\}\{捧ぐ,ささぐ\}\{主,おも\}に\{大人び,おとなび\}た\{子供,こども\}に\{ ,\}\{リズム,りずむ\}\{と共に,とともに\}くすんだ\{心,こころ\}に\{ ,\}\{(,\}\{見,み\}たこと\{無い,ない\}ものをいたるとこに\{),\}\{ ,\}\{鍵盤,けんばん\}の\{上,うえ\}の\{色,いろ\}は\{自由,じゆう\}に\{ ,\}\{左右,さゆう\}\{円盤,えんばん\}より\{今,いま\}\{地球,ちきゅう\}に\{ ,\}',
  lyric_order: 3,
)

singer = Singer.find_by(name: 'RADICALFREAKS')
lyrict_type = LyricType.find_by(name: 'HOOK')
Lyric.create(
  song_id: song.id,
  singer_id: singer.id,
  lyric_type_id: lyrict_type.id,
  part_lyric_order: 2,
  lyric: 'NEXTまだ見えぬ世界を開拓音もたてず近づいてハイジャック',
  ruby: 'ねくすとまだみえぬせかいをかいたくおともたてずちかづいてはいじゃっく',
  lyric_with_ruby: '\{NEXT,ねくすと\}\{ ,\}まだ\{見え,みえ\}ぬ\{世界,せかい\}を\{開拓,かいたく\}\{ ,\}\{音,おと\}もたてず\{近づい,ちかづい\}て\{ハイジャック,はいじゃっく\}\{ ,\}',
  lyric_order: 4,
)

