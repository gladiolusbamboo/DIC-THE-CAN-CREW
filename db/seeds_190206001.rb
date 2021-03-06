artist_name =    'UL'
lyricUrl_url =   'https://www.utamap.com/showkasi.php?surl=k-140305-149'
cd_name =        'ULTRAP'
cd_released_at = ''
song_name =      '祭り feat.TSUBOI(アルファ)'
song_lyricist =  'MCU, LITTLE & TSUBOI'
song_composer =  'MCU, LITTLE, TSUBOI & KREVA'
song_arranger =  'KREVA'
cds_name = []

artist = Artist.find_by(name: artist_name) || Artist.create(name: artist_name)
cd = Cd.find_by(name: cd_name) || Cd.create(name: cd_name, released_at: cd_released_at)
lyricUrl = LyricUrl.create(
  url: lyricUrl_url,
  lyric_website_id: LyricWebsite.find_by(name: 'うたまっぷ').id
)
song = Song.create(
  lyric_url_id: lyricUrl.id,
  name: song_name,
  lyricist: song_lyricist,
  composer: song_composer,
  arranger: song_arranger,
  cd_id: cd.id,
  artist_id: artist.id
)
LyricUrlSong.create(
  lyric_url_id: lyricUrl.id,
  song_id: song.id
)
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
  lyric: 'さー右に左に両手上げてリハビリ感覚でバツも三角でさらにマルに(チェンジ)演技無しでハグしてー(ラブしてー)隠してる妬み僻みなんてダストボックスにポイ(ナイスシュー)はじめよっかはじけよっか踊ろうぜまじゲロッパライカジェイブラそれか(あーお)ライカマイジャクシャイな風も吹き飛ばしばか笑いさアイラブミーユーエブリバディピープル',
  ruby: 'さーみぎにひだりにりょうてあげてりはびりかんかくでばつもさんかくでさらにまるにちぇんじえんぎなしではぐしてーらぶしてーかくしてるねたみひがみなんてだすとぼっくすにぽいないすしゅーはじめよっかはじけよっかおどろうぜまじげろっぱらいかじぇいぶらそれかあーおらいかまいじゃくしゃいなふうもふきとばしばかわらいさあいらぶみーゆーえぶりばでぃぴーぷる',
  lyric_with_ruby: 'さー\{ ,\}\{右,みぎ\}に\{左,ひだり\}に\{両手,りょうて\}\{上げ,あげ\}て\{リハビリ,りはびり\}\{ ,\}\{感覚,かんかく\}で\{バツ,ばつ\}も\{三角,さんかく\}で\{ ,\}さらに\{マル,まる\}に\{ ,\}\{(,\}\{チェンジ,ちぇんじ\}\{),\}\{ ,\}\{演技,えんぎ\}\{無し,なし\}で\{ハグ,はぐ\}してー\{ ,\}\{(,\}\{ラブ,らぶ\}してー\{),\}\{ ,\}\{隠し,かくし\}てる\{ ,\}\{妬み,ねたみ\}\{ ,\}\{僻み,ひがみ\}なんて\{ダスト,だすと\}\{ボックス,ぼっくす\}に\{ ,\}\{ポイ,ぽい\}\{ ,\}\{(,\}\{ナイス,ないす\}\{シュー,しゅー\}\{),\}\{ ,\}はじめよっか\{ ,\}はじけよっか\{ ,\}\{踊ろ,おどろ\}うぜ\{ ,\}まじ\{ゲロッパ,げろっぱ\}\{ ,\}\{ライカジェイブラ,らいかじぇいぶら\}\{ ,\}それか\{ ,\}\{(,\}あーお\{),\}\{ ,\}\{ライカマイジャク,らいかまいじゃく\}\{ ,\}\{シャイ,しゃい\}な\{風,ふう\}も\{吹き飛ばし,ふきとばし\}\{ ,\}ばか\{笑い,わらい\}さ\{アイラブ,あいらぶ\}\{ ,\}\{ミー,みー\}\{ ,\}\{ユー,ゆー\}\{ ,\}\{エブリバディ,えぶりばでぃ\}\{ ,\}\{ピープル,ぴーぷる\}\{ ,\}',
  lyric_order: 1,
)

singer = Singer.find_by(name: 'LITTLE')
lyrict_type = LyricType.find_by(name: 'VERSE')
Lyric.create(
  song_id: song.id,
  singer_id: singer.id,
  lyric_type_id: lyrict_type.id,
  part_lyric_order: 2,
  lyric: 'もっと楽に楽にこのトラックにラップにたっぷりがっぷり4もうあかん無理おかんむりハングリーでアングリー怪しげなサプリうさん臭いアプリ羽振りいいバブリーなやつにファブリーズ祭り祭り言っても血祭り探り探りな口が悪くなるハンプティ・ダンプティみたいに丸くなる',
  ruby: 'もっとらくにらくにこのとらっくにらっぷにたっぷりがっぷりふぉーもうあかんむりおかんむりはんぐりーであんぐりーあやしげなさぷりうさんくさいあぷりはぶりいいばぶりーなやつにふぁぶりーずまつりまつりいってもちまつりさぐりさぐりなくちがわるくなるはんぷてぃだんぷてぃみたいにまるくなる',
  lyric_with_ruby: 'もっと\{楽,らく\}に\{楽,らく\}に\{ ,\}この\{トラック,とらっく\}に\{ ,\}\{ラップ,らっぷ\}にたっぷりがっぷり\{4,ふぉー\}\{ ,\}もうあかん\{ ,\}\{無理,むり\}\{ ,\}おかんむり\{ ,\}\{ハングリー,はんぐりー\}で\{アングリー,あんぐりー\}\{ ,\}\{怪しげ,あやしげ\}な\{サプリ,さぷり\}\{ ,\}うさん\{臭い,くさい\}\{アプリ,あぷり\}\{ ,\}\{羽振り,はぶり\}いい\{バブリー,ばぶりー\}なやつに\{ ,\}\{ファブリーズ,ふぁぶりーず\}\{ ,\}\{祭り,まつり\}\{ ,\}\{祭り,まつり\}\{ ,\}\{言っ,いっ\}ても\{血祭り,ちまつり\}\{ ,\}\{探り,さぐり\}\{探り,さぐり\}な\{ ,\}\{口,くち\}が\{悪く,わるく\}なる\{ ,\}\{ハンプティ・ダンプティ,はんぷてぃだんぷてぃ\}みたいに\{丸く,まるく\}なる\{ ,\}',
  lyric_order: 2,
)

singer = Singer.find_by(name: 'TSUBOI(アルファ)')
lyrict_type = LyricType.find_by(name: 'HOOK')
Lyric.create(
  song_id: song.id,
  singer_id: singer.id,
  lyric_type_id: lyrict_type.id,
  part_lyric_order: 1,
  lyric: '明るくやって軽くなって丸くなってこー丸くなって明るくやって軽くなってこー軽くなって丸くなって明るくやってこーひとときだけほんのひと時だけ賑やかな事明るくやって軽くなって丸くなってこー丸くなって明るくやって軽くなってこー軽くなって丸くなって明るくやってこーこんな時にじゃなくむしろこんな時だからこそ',
  ruby: 'あかるくやってかるくなってまるくなってこーまるくなってあかるくやってかるくなってこーかるくなってまるくなってあかるくやってこーひとときだけほんのひとときだけにぎやかなことあかるくやってかるくなってまるくなってこーまるくなってあかるくやってかるくなってこーかるくなってまるくなってあかるくやってこーこんなときにじゃなくむしろこんなときだからこそ',
  lyric_with_ruby: '\{明るく,あかるく\}やって\{ ,\}\{軽く,かるく\}なって\{ ,\}\{丸く,まるく\}なってこー\{ ,\}\{丸く,まるく\}なって\{ ,\}\{明るく,あかるく\}やって\{ ,\}\{軽く,かるく\}なってこー\{ ,\}\{軽く,かるく\}なって\{ ,\}\{丸く,まるく\}なって\{ ,\}\{明るく,あかるく\}やってこー\{ ,\}ひとときだけ\{ ,\}ほんのひと\{時,とき\}だけ\{賑やか,にぎやか\}な\{事,こと\}\{ ,\}\{明るく,あかるく\}やって\{ ,\}\{軽く,かるく\}なって\{ ,\}\{丸く,まるく\}なってこー\{ ,\}\{丸く,まるく\}なって\{ ,\}\{明るく,あかるく\}やって\{ ,\}\{軽く,かるく\}なってこー\{ ,\}\{軽く,かるく\}なって\{ ,\}\{丸く,まるく\}なって\{ ,\}\{明るく,あかるく\}やってこー\{ ,\}こんな\{時,とき\}にじゃなく\{ ,\}むしろこんな\{時,とき\}だからこそ\{ ,\}',
  lyric_order: 3,
)

singer = Singer.find_by(name: 'LITTLE')
lyrict_type = LyricType.find_by(name: 'VERSE')
Lyric.create(
  song_id: song.id,
  singer_id: singer.id,
  lyric_type_id: lyrict_type.id,
  part_lyric_order: 3,
  lyric: '想いならあるがおよしましょう重いならまずは降ろしましょか思い悩まずcheck123手放しで話してハンズフリー固かった頭柔らかくしてバカバカしい歌詞やたら書く感動が無くても何とかなるさピリオドで丸くおさまるさ。',
  ruby: 'おもいならあるがおよしましょうおもいならまずはおろしましょかおもいなやまずちぇっくわんつーすりーてばなしではなしてはんずふりーかたかったあたまやわらかくしてばかばかしいかしやたらかくかんどうがなくてもなんとかなるさぴりおどでまるくおさまるさ',
  lyric_with_ruby: '\{想い,おもい\}ならあるがおよしましょう\{ ,\}\{重い,おもい\}ならまずは\{降ろし,おろし\}ましょか\{ ,\}\{思い悩ま,おもいなやま\}ず\{ ,\}\{check,ちぇっく\}\{ ,\}\{123,わんつーすりー\}\{ ,\}\{手放し,てばなし\}で\{話し,はなし\}て\{ハンズフリー,はんずふりー\}\{ ,\}\{固かっ,かたかっ\}た\{頭,あたま\}\{柔らかく,やわらかく\}して\{ ,\}\{バカバカしい,ばかばかしい\}\{歌詞,かし\}やたら\{書く,かく\}\{ ,\}\{感動,かんどう\}が\{無く,なく\}ても\{何とか,なんとか\}なるさ\{ ,\}\{ピリオド,ぴりおど\}で\{丸く,まるく\}おさまるさ\{。,\}\{ ,\}',
  lyric_order: 4,
)

singer = Singer.find_by(name: 'MCU')
lyrict_type = LyricType.find_by(name: 'VERSE')
Lyric.create(
  song_id: song.id,
  singer_id: singer.id,
  lyric_type_id: lyrict_type.id,
  part_lyric_order: 4,
  lyric: '幸せって言うだけで幸せってこたないが幸せって連呼すりゃなんとなく幸せ幸せ幸せ幸せ幸せ8回も使ってちょいと節合わせ(おー)とにかく楽しんだもん勝ち腕組んでメンチきって口先トンガリなんてキテレツはやめて口元に笑み(幸せなり?)ほら節戻しチェキ',
  ruby: 'しあわせっていうだけでしあわせってこたないがしあわせってれんこすりゃなんとなくしあわせしあわせしあわせしあわせしあわせはっかいもつかってちょいとふしあわせおーとにかくたのしんだもんがちうでくんでめんちきってくちさきとんがりなんてきてれつはやめてくちもとにえみしあわせなりほらふしもどしちぇき',
  lyric_with_ruby: '\{幸せ,しあわせ\}って\{言う,いう\}だけで\{幸せ,しあわせ\}ってこたないが\{ ,\}\{幸せ,しあわせ\}って\{連呼,れんこ\}すりゃなんとなく\{幸せ,しあわせ\}\{ ,\}\{幸せ,しあわせ\}\{ ,\}\{幸せ,しあわせ\}\{ ,\}\{幸せ,しあわせ\}\{ ,\}\{幸せ,しあわせ\}\{ ,\}\{8,はっ\}\{回,かい\}も\{使っ,つかっ\}てちょいと\{節,ふし\}\{合わせ,あわせ\}\{ ,\}\{(,\}おー\{),\}\{ ,\}とにかく\{楽しん,たのしん\}だもん\{勝ち,がち\}\{ ,\}\{腕,うで\}\{組ん,くん\}で\{メンチ,めんち\}きって\{ ,\}\{口,くち\}\{先,さき\}\{トンガリ,とんがり\}\{ ,\}なんて\{キテレツ,きてれつ\}はやめて\{ ,\}\{口元,くちもと\}に\{笑み,えみ\}\{ ,\}\{(,\}\{幸せ,しあわせ\}なり\{?),\}ほら\{ ,\}\{節,ふし\}\{戻し,もどし\}\{チェキ,ちぇき\}\{ ,\}',
  lyric_order: 5,
)

singer = Singer.find_by(name: 'LITTLE')
lyrict_type = LyricType.find_by(name: 'VERSE')
Lyric.create(
  song_id: song.id,
  singer_id: singer.id,
  lyric_type_id: lyrict_type.id,
  part_lyric_order: 5,
  lyric: 'ええじゃないかええじゃないかええじゃないか風ええじゃないかええじゃないかええじゃないか法踊るアホに見るアホ踊れない法律を作るアホfxxkyouあっそーあっそー口がすぎただがイキすぎた無知は罪だムチムチのムチ百たたきの刑聴いとけOKEverybodyシリヲシリナ',
  ruby: 'ええじゃないかええじゃないかええじゃないかふうええじゃないかええじゃないかええじゃないかほうおどるあほにみるあほおどれないほうりつをつくるあほふぁっくゆーあっそーあっそーくちがすぎただがいきすぎたむちはつみだむちむちのむちひゃくたたきのけいきいとけおーけーえぶりばでぃしりをしりな',
  lyric_with_ruby: 'ええじゃないか\{ ,\}ええじゃないか\{ ,\}ええじゃないか\{ ,\}\{風,ふう\}\{ ,\}ええじゃないか\{ ,\}ええじゃないか\{ ,\}ええじゃないか\{ ,\}\{法,ほう\}\{ ,\}\{踊る,おどる\}\{アホ,あほ\}に\{見る,みる\}\{アホ,あほ\}\{ ,\}\{踊れ,おどれ\}ない\{法律,ほうりつ\}を\{作る,つくる\}\{アホ,あほ\}\{ ,\}\{fxxk,ふぁっく\}\{ ,\}\{you,ゆー\}\{ ,\}あっそー\{ ,\}あっそー\{ ,\}\{口,くち\}がすぎた\{ ,\}だが\{ ,\}\{イキ,いき\}すぎた\{無知,むち\}は\{罪,つみ\}だ\{ ,\}\{ムチ,むち\}\{ムチ,むち\}の\{ムチ,むち\}\{百,ひゃく\}たたきの\{刑,けい\}\{ ,\}\{聴い,きい\}とけ\{ ,\}\{OK,おーけー\}\{ ,\}\{Everybody,えぶりばでぃ\}\{ ,\}\{シリヲシリナ,しりをしりな\}\{ ,\}',
  lyric_order: 6,
)

singer = Singer.find_by(name: 'MCU')
lyrict_type = LyricType.find_by(name: 'VERSE')
Lyric.create(
  song_id: song.id,
  singer_id: singer.id,
  lyric_type_id: lyrict_type.id,
  part_lyric_order: 6,
  lyric: '世に言いたい事ならたくさんあるけれどあえては言わないで書く3バース(Kトラックに)乗っかってフローしてラップ自由度は高いが苦労してますでもなんせ好きなもんでラップ&祭りパックマンシリーズならパックランドが好き(俺がUとLのMとCとUでBEATK特に何も言ってないがほらちゃんと聴いとけ',
  ruby: 'よにいいたいことならたくさんあるけれどあえてはいわないでかくさんばーすけーとらっくにのっかってふろーしてらっぷじゆうどはたかいがくろうしてますでもなんせすきなもんでらっぷあんどまつりぱっくまんしりーずならぱっくらんどがすきおれがゆーとえるのえむとしーとゆーでびーとけーとくになにもいってないがほらちゃんときいとけ',
  lyric_with_ruby: '\{世に,よに\}\{言い,いい\}たい\{事,こと\}ならたくさんある\{ ,\}けれどあえては\{言わ,いわ\}ないで\{書く,かく\}\{ ,\}\{3,さん\}\{ ,\}\{バース,ばーす\}\{ ,\}\{(,\}\{K,けー\}\{ ,\}\{トラック,とらっく\}に\{),\}\{乗っかっ,のっかっ\}て\{ ,\}\{フロー,ふろー\}して\{ラップ,らっぷ\}\{ ,\}\{自由,じゆう\}\{度,ど\}は\{高い,たかい\}が\{苦労,くろう\}してます\{ ,\}でもなんせ\{好き,すき\}なもんで\{ ,\}\{ラップ,らっぷ\}\{ ,\}\{&,あんど\}\{ ,\}\{祭り,まつり\}\{ ,\}\{パック,ぱっく\}\{マン,まん\}\{シリーズ,しりーず\}なら\{パック,ぱっく\}\{ランド,らんど\}が\{好き,すき\}\{ ,\}\{(,\}\{俺,おれ\}が\{U,ゆー\}\{ ,\}と\{ ,\}\{L,える\}\{ ,\}の\{ ,\}\{M,えむ\}\{ ,\}と\{ ,\}\{C,しー\}\{ ,\}と\{ ,\}\{U,ゆー\}\{ ,\}で\{ ,\}\{BEAT,びーと\}\{ ,\}\{K,けー\}\{ ,\}\{特に,とくに\}\{何,なに\}も\{言っ,いっ\}てないがほらちゃんと\{聴い,きい\}とけ\{ ,\}',
  lyric_order: 7,
)

singer = Singer.find_by(name: 'TSUBOI(アルファ)')
lyrict_type = LyricType.find_by(name: 'HOOK')
Lyric.create(
  song_id: song.id,
  singer_id: singer.id,
  lyric_type_id: lyrict_type.id,
  part_lyric_order: 2,
  lyric: '明るくやって軽くなって丸くなってこー丸くなって明るくやって軽くなってこー軽くなって丸くなって明るくやってこーひとときだけほんのひと時だけ賑やかな事明るくやって軽くなって丸くなってこー丸くなって明るくやって軽くなってこー軽くなって丸くなって明るくやってこーこんな時にじゃなくむしろこんな時だからこそ',
  ruby: 'あかるくやってかるくなってまるくなってこーまるくなってあかるくやってかるくなってこーかるくなってまるくなってあかるくやってこーひとときだけほんのひとときだけにぎやかなことあかるくやってかるくなってまるくなってこーまるくなってあかるくやってかるくなってこーかるくなってまるくなってあかるくやってこーこんなときにじゃなくむしろこんなときだからこそ',
  lyric_with_ruby: '\{明るく,あかるく\}やって\{ ,\}\{軽く,かるく\}なって\{ ,\}\{丸く,まるく\}なってこー\{ ,\}\{丸く,まるく\}なって\{ ,\}\{明るく,あかるく\}やって\{ ,\}\{軽く,かるく\}なってこー\{ ,\}\{軽く,かるく\}なって\{ ,\}\{丸く,まるく\}なって\{ ,\}\{明るく,あかるく\}やってこー\{ ,\}ひとときだけ\{ ,\}ほんのひと\{時,とき\}だけ\{ ,\}\{賑やか,にぎやか\}な\{事,こと\}\{ ,\}\{明るく,あかるく\}やって\{ ,\}\{軽く,かるく\}なって\{ ,\}\{丸く,まるく\}なってこー\{ ,\}\{丸く,まるく\}なって\{ ,\}\{明るく,あかるく\}やって\{ ,\}\{軽く,かるく\}なってこー\{ ,\}\{軽く,かるく\}なって\{ ,\}\{丸く,まるく\}なって\{ ,\}\{明るく,あかるく\}やってこー\{ ,\}こんな\{時,とき\}にじゃなく\{ ,\}むしろこんな\{時,とき\}だからこそ\{ ,\}',
  lyric_order: 8,
)

singer = Singer.find_by(name: 'TSUBOI(アルファ)')
lyrict_type = LyricType.find_by(name: 'OTHER')
Lyric.create(
  song_id: song.id,
  singer_id: singer.id,
  lyric_type_id: lyrict_type.id,
  part_lyric_order: 1,
  lyric: '暑い夏に時として気だるくなっても僻み妬み過ぎ連れと気まずくなっても満場一致なんて嘘くさくても1人きりでいれる程に決して強く無くても誰かさんに言わせたらば丸でなくても人にひけらかせる物がたとえまるでなくても明日の糧に明日の為に意味ならばこそこんな時にじゃなくやっぱこんな時だからこそ',
  ruby: 'あついなつにときとしてけだるくなってもひがみねたみすぎつれときまずくなってもまんじょういっちなんてうそくさくてもひとりきりでいれるほどにけっしてつよくなくてもだれかさんにいわせたらばまるでなくてもひとにひけらかせるものがたとえまるでなくてもあすのかてにあすのためにいみならばこそこんなときにじゃなくやっぱこんなときだからこそ',
  lyric_with_ruby: '\{暑い,あつい\}\{夏,なつ\}に\{ ,\}\{時として,ときとして\}\{ ,\}\{気だるく,けだるく\}なっても\{ ,\}\{僻み,ひがみ\}\{ ,\}\{妬み,ねたみ\}\{過ぎ,すぎ\}\{ ,\}\{連れ,つれ\}と\{気まずく,きまずく\}なっても\{ ,\}\{満場一致,まんじょういっち\}なんて\{嘘,うそ\}くさくても\{ ,\}\{1人,ひとり\}きりでいれる\{程,ほど\}に\{ ,\}\{決して,けっして\}\{強く,つよく\}\{無く,なく\}ても\{ ,\}\{誰か,だれか\}さんに\{言わ,いわ\}せたらば\{ ,\}\{丸,まる\}でなくても\{ ,\}\{人,ひと\}にひけらかせる\{物,もの\}が\{ ,\}たとえまるでなくても\{ ,\}\{明日,あす\}の\{糧,かて\}に\{ ,\}\{明日,あす\}の\{為,ため\}に\{ ,\}\{意味,いみ\}ならばこそ\{ ,\}こんな\{時,とき\}にじゃなく\{ ,\}やっぱこんな\{時,とき\}だからこそ\{ ,\}',
  lyric_order: 9,
)

singer = Singer.find_by(name: 'TSUBOI(アルファ)')
lyrict_type = LyricType.find_by(name: 'OTHER')
Lyric.create(
  song_id: song.id,
  singer_id: singer.id,
  lyric_type_id: lyrict_type.id,
  part_lyric_order: 2,
  lyric: '明るくやって軽くなって丸くなってこー丸くなって明るくやって軽くなってこー軽くなって丸くなって明るくやってこーこんな時にじゃなくむしろこんな時だからこそ',
  ruby: 'あかるくやってかるくなってまるくなってこーまるくなってあかるくやってかるくなってこーかるくなってまるくなってあかるくやってこーこんなときにじゃなくむしろこんなときだからこそ',
  lyric_with_ruby: '\{明るく,あかるく\}やって\{ ,\}\{軽く,かるく\}なって\{ ,\}\{丸く,まるく\}なってこー\{ ,\}\{丸く,まるく\}なって\{ ,\}\{明るく,あかるく\}やって\{ ,\}\{軽く,かるく\}なってこー\{ ,\}\{軽く,かるく\}なって\{ ,\}\{丸く,まるく\}なって\{ ,\}\{明るく,あかるく\}やってこー\{ ,\}こんな\{時,とき\}にじゃなく\{ ,\}むしろこんな\{時,とき\}だからこそ\{ ,\}',
  lyric_order: 10,
)

