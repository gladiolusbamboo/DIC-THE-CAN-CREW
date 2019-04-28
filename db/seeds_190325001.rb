artist_name =    'UL'
lyricUrl_url =   'https://www.utamap.com/showkasi.php?surl=k-150430-122'
cd_name =        'Boys&Gentlemen'
cd_released_at = '2015-04-29'
song_name =      '真ッ赤ニナル迄 SHOGO Remix'
song_lyricist =  'MCU & LITTLE'
song_composer =  'MCU, LITTLE & SHOGO'
song_arranger =  'UNCREDITED'
cds_name = []
note =           'タイトルの元ネタはMUROの「真ッ黒ニナル迄」'

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
  artist_id: artist.id,
  note: note
)
LyricUrlSong.create(
  lyric_url_id: lyricUrl.id,
  song_id: song.id
)
CdSong.create(
  cd_id: cd.id,
  song_id: song.id
)

singer = Singer.find_by(name: 'LITTLE')
lyrict_type = LyricType.find_by(name: 'VERSE')
Lyric.create(
  song_id: song.id,
  singer_id: singer.id,
  lyric_type_id: lyrict_type.id,
  part_lyric_order: 1,
  lyric: 'Boys&Gentlemenbeambitiousなりたくてもなれないシドビシャス長年かかってやがて眺め変わってから叶える夢もたまらねーもんさモンスターだらけのショービジネスぶっ飛ばされながら今日も生きてる皆様のおかげですおおきにです次のアルバムで本気見せるっす願わくばSALES+PROPSアール無しで言っちまえばPOPSトップスピードでレースを制すのさケツを跳ねさせる(ベースボールバット)ahレアなアレなら高嶺の花だがオレがスゲえの分かってんのかな低価格だろうが高価格だろうが手ぇ叩くおれはこう叩く',
  ruby: 'ぼーいずあんどじぇんとるめんびーあんびしゃすなりたくてもなれないしどびしゃすながねんかかってやがてながめかわってからかなえるゆめもたまらねーもんさもんすたーだらけのしょーびじねすぶっとばされながらきょうもいきてるみなさまのおかげですおおきにですつぎのあるばむでほんきみせるっすねがわくばせーるすぷらすぷろっぷすあーるなしでいっちまえばぽっぷすとっぷすぴーどでれーすをせいすのさけつをはねさせるべーすぼーるばっとあーれあなあれならたかねのはなだがおれがすげえのわかってんのかなていかかくだろうがこうかかくだろうがてぇたたくおれはこうたたく',
  lyric_with_ruby: '\{Boys,ぼーいず\}\{&,あんど\}\{Gentlemen,じぇんとるめん\}\{ ,\}\{be,びー\}\{ ,\}\{ambitious,あんびしゃす\}\{ ,\}なりたくてもなれない\{シドビシャス,しどびしゃす\}\{ ,\}\{長年,ながねん\}かかってやがて\{眺め,ながめ\}\{ ,\}\{変わっ,かわっ\}てから\{叶える,かなえる\}\{夢,ゆめ\}もたまらねーもんさ\{ ,\}\{モンスター,もんすたー\}だらけの\{ショー,しょー\}\{ビジネス,びじねす\}\{ ,\}\{ぶっ飛ばさ,ぶっとばさ\}れながら\{今日,きょう\}も\{生き,いき\}てる\{ ,\}\{皆様,みなさま\}のおかげです\{ ,\}おおきにです\{ ,\}\{次,つぎ\}の\{アルバム,あるばむ\}で\{本気,ほんき\}\{見せる,みせる\}っす\{ ,\}\{願,ねが\}わくば\{ ,\}\{SALES,せーるす\}\{+,ぷらす\}\{PROPS,ぷろっぷす\}\{ ,\}\{アール,あーる\}\{無し,なし\}で\{言っ,いっ\}ちまえば\{ ,\}\{POPS,ぽっぷす\}\{ ,\}\{トップ,とっぷ\}\{スピード,すぴーど\}で\{レース,れーす\}を\{制す,せいす\}のさ\{ ,\}\{ケツ,けつ\}を\{跳ね,はね\}させる\{ ,\}\{(,\}\{ベースボール,べーすぼーる\}\{バット,ばっと\}\{),\}\{ ,\}\{ah,あー\}\{ ,\}\{レア,れあ\}な\{アレ,あれ\}なら\{高嶺,たかね\}の\{花,はな\}\{ ,\}だが\{オレ,おれ\}が\{スゲ,すげ\}えの\{分かっ,わかっ\}てんのかな\{ ,\}\{低,てい\}\{価格,かかく\}だろうが\{高,こう\}\{価格,かかく\}だろうが\{ ,\}\{手,て\}ぇ\{叩く,たたく\}おれはこう\{叩く,たたく\}\{ ,\}',
  lyric_order: 1,
)

singer = Singer.find_by(name: 'UL')
lyrict_type = LyricType.find_by(name: 'HOOK')
Lyric.create(
  song_id: song.id,
  singer_id: singer.id,
  lyric_type_id: lyrict_type.id,
  part_lyric_order: 1,
  lyric: '手が真っ赤っかっかっかになるまで叩けカーニバルもっと真っ赤っかっかっかになるまで鳴らせTURNITUPClapClapClapClapClapYourHandsこれでもくらっとけわかんなくなったら前にならえ昨日のお前に習え',
  ruby: 'てがまっかっかっかっかになるまでたたけかーにばるもっとまっかっかっかっかになるまでならせたーんいっとあっぷくらっぷくらっぷくらっぷくらっぷくらっぷゆあはんずこれでもくらっとけわかんなくなったらまえにならえきのうのおまえにならえ',
  lyric_with_ruby: '\{手,て\}が\{真っ赤,まっか\}っかっかっかになるまで\{ ,\}\{叩け,たたけ\}\{カーニバル,かーにばる\}\{ ,\}もっと\{真っ赤,まっか\}っかっかっかになるまで\{ ,\}\{鳴ら,なら\}せ\{ ,\}\{TURN,たーん\}\{ ,\}\{IT,いっと\}\{ ,\}\{UP,あっぷ\}\{ ,\}\{Clap,くらっぷ\}\{ClapClapClapClapYourHands,くらっぷくらっぷくらっぷくらっぷゆあはんず\}\{ ,\}これでもくらっとけ\{ ,\}わかんなくなったら\{前,まえ\}にならえ\{ ,\}\{昨日,きのう\}の\{お前,おまえ\}に\{習え,ならえ\}\{ ,\}',
  lyric_order: 2,
)

singer = Singer.find_by(name: 'MCU')
lyrict_type = LyricType.find_by(name: 'VERSE')
Lyric.create(
  song_id: song.id,
  singer_id: singer.id,
  lyric_type_id: lyrict_type.id,
  part_lyric_order: 2,
  lyric: '右も左も分からぬティーンエイジャー舞い降りてきたFUNKYなインベーダー降り出したビートはマジ躊躇無い傘もささないでくらった15才そんな衝撃に無くした選択肢パンと鳴ったClapがゲン担ぎすでに初見でくらっくらっくらっ熱いスタイルが俺の胸ぐら掴むyoそれこそ明日など眼中ねえ無我夢中な今こそがブランニューデーなんて言ってたあの日と変わらないなんて言える今がマジでたまらない何も分からず買ったレコード盤今も流れる歪なコードが俺の手を叩きずっと休まねえun手が真っ赤っかになるまで',
  ruby: 'みぎもひだりもわからぬてぃーんえいじゃーまいおりてきたふぁんきーないんべーだーふりだしたびーとはまじちゅうちょないかさもささないでくらったじゅうごさいそんなしょうげきになくしたせんたくしぱんとなったくらっぷがげんかつぎすでにしょけんでくらっくらっくらっあついすたいるがおれのむなぐらつかむよーそれこそあすなどがんちゅうねえむがむちゅうないまこそがぶらんにゅーでーなんていってたあのひとかわらないなんていえるいまがまじでたまらないなにもわからずかったれこーどばんいまもながれるいびつなこーどがおれのてをたたきずっとやすまねえうんてがまっかっかになるまで',
  lyric_with_ruby: '\{右,みぎ\}も\{左,ひだり\}も\{分から,わから\}ぬ\{ティーンエイジャー,てぃーんえいじゃー\}\{ ,\}\{舞い降り,まいおり\}てきた\{ ,\}\{FUNKY,ふぁんきー\}\{ ,\}な\{インベーダー,いんべーだー\}\{ ,\}\{降り出し,ふりだし\}た\{ビート,びーと\}は\{マジ,まじ\}\{躊躇,ちゅうちょ\}\{無い,ない\}\{ ,\}\{傘,かさ\}もささないでくらった\{ ,\}\{15,じゅうご\}\{才,さい\}\{ ,\}そんな\{衝撃,しょうげき\}に\{無くし,なくし\}た\{選択肢,せんたくし\}\{ ,\}\{パン,ぱん\}と\{鳴っ,なっ\}た\{ ,\}\{Clap,くらっぷ\}\{ ,\}が\{ゲン,げん\}\{担ぎ,かつぎ\}\{ ,\}すでに\{初,しょ\}\{見,けん\}でくらっくらっくらっ\{ ,\}\{熱い,あつい\}\{スタイル,すたいる\}が\{俺,おれ\}の\{胸ぐら,むなぐら\}\{掴む,つかむ\}\{ ,\}\{yo,よー\}\{ ,\}それこそ\{明日,あす\}など\{眼中,がんちゅう\}ねえ\{ ,\}\{無我夢中,むがむちゅう\}な\{今,いま\}こそが\{ブランニューデー,ぶらんにゅーでー\}\{ ,\}なんて\{言っ,いっ\}てたあの\{日,ひ\}と\{変わら,かわら\}ない\{ ,\}なんて\{言える,いえる\}\{今,いま\}が\{マジ,まじ\}でたまらない\{ ,\}\{何,なに\}も\{分から,わから\}ず\{買っ,かっ\}た\{レコード,れこーど\}\{盤,ばん\}\{ ,\}\{今,いま\}も\{流れる,ながれる\}\{歪,いびつ\}な\{コード,こーど\}が\{ ,\}\{俺,おれ\}の\{手,て\}を\{叩き,たたき\}ずっと\{休ま,やすま\}ねえ\{ ,\}\{un,うん\}\{ ,\}\{手,て\}が\{真っ赤,まっか\}っかになるまで\{ ,\}',
  lyric_order: 3,
)

singer = Singer.find_by(name: 'UL')
lyrict_type = LyricType.find_by(name: 'HOOK')
Lyric.create(
  song_id: song.id,
  singer_id: singer.id,
  lyric_type_id: lyrict_type.id,
  part_lyric_order: 2,
  lyric: '手が真っ赤っかっかっかになるまで叩けカーニバルもっと真っ赤っかっかっかになるまで鳴らせTURNITUPClapClapClapClapClapYourHandsこれでもくらっとけわかんなくなったら前にならえ昨日のお前に習え',
  ruby: 'てがまっかっかっかっかになるまでたたけかーにばるもっとまっかっかっかっかになるまでならせたーんいっとあっぷくらっぷくらっぷくらっぷくらっぷくらっぷゆあはんずこれでもくらっとけわかんなくなったらまえにならえきのうのおまえにならえ',
  lyric_with_ruby: '\{手,て\}が\{真っ赤,まっか\}っかっかっかになるまで\{ ,\}\{叩け,たたけ\}\{カーニバル,かーにばる\}\{ ,\}もっと\{真っ赤,まっか\}っかっかっかになるまで\{ ,\}\{鳴ら,なら\}せ\{ ,\}\{TURN,たーん\}\{ ,\}\{IT,いっと\}\{ ,\}\{UP,あっぷ\}\{ ,\}\{Clap,くらっぷ\}\{ClapClapClapClapYourHands,くらっぷくらっぷくらっぷくらっぷゆあはんず\}\{ ,\}これでもくらっとけ\{ ,\}わかんなくなったら\{前,まえ\}にならえ\{ ,\}\{昨日,きのう\}の\{お前,おまえ\}に\{習え,ならえ\}\{ ,\}',
  lyric_order: 4,
)

singer = Singer.find_by(name: 'LITTLE')
lyrict_type = LyricType.find_by(name: 'VERSE')
Lyric.create(
  song_id: song.id,
  singer_id: singer.id,
  lyric_type_id: lyrict_type.id,
  part_lyric_order: 3,
  lyric: 'OKallrightOKallright八王子から中央京王LINE向かったのは渋谷宇田川界隈POPのマストバイ疑わないレコードCDテープにデータエブリデイエブリデイエブリデイラップYouTubeニコ動FC2どこまでも行こうぜMCU',
  ruby: 'おーけーおーるらいとおーけーおーるらいとはちおうじからちゅうおうけいおうらいんむかったのはしぶやうだがわかいわいぽっぷのますとばいうたがわないれこーどしーでぃーてーぷにでーたえぶりでいえぶりでいえぶりでいらっぷゆーちゅーぶにこどうえふしーつーどこまでもいこうぜえむしーゆー',
  lyric_with_ruby: '\{OK,おーけー\}\{ ,\}\{all,おーる\}\{ ,\}\{right,らいと\}\{ ,\}\{OK,おーけー\}\{ ,\}\{all,おーる\}\{ ,\}\{right,らいと\}\{ ,\}\{八王子,はちおうじ\}から\{中央,ちゅうおう\}\{京王,けいおう\}\{ ,\}\{LINE,らいん\}\{ ,\}\{向かっ,むかっ\}たのは\{渋谷,しぶや\}\{宇田川,うだがわ\}\{界隈,かいわい\}\{ ,\}\{POP,ぽっぷ\}\{ ,\}の\{マスト,ますと\}\{バイ,ばい\}\{疑わ,うたがわ\}ない\{ ,\}\{レコード,れこーど\}\{ ,\}\{CD,しーでぃー\}\{ ,\}\{テープ,てーぷ\}に\{データ,でーた\}\{ ,\}\{エブリデイエブリデイエブリデイラップ,えぶりでいえぶりでいえぶりでいらっぷ\}\{ ,\}\{YouTube,ゆーちゅーぶ\}\{ ,\}\{ニコ,にこ\}\{動,どう\}\{ ,\}\{FC,えふしー\}\{2,つー\}\{ ,\}どこまでも\{行こ,いこ\}うぜ\{ ,\}\{MCU,えむしーゆー\}\{ ,\}',
  lyric_order: 5,
)

singer = Singer.find_by(name: 'MCU')
lyrict_type = LyricType.find_by(name: 'VERSE')
Lyric.create(
  song_id: song.id,
  singer_id: singer.id,
  lyric_type_id: lyrict_type.id,
  part_lyric_order: 4,
  lyric: '未だ変わらない初期衝動未だに変わらない本気モード未だにビートと絡まり合う未だ遊んでる宝島毎度毎度がいまだいまだ狙う目つきまだキララキララそして永遠に鳴り響くハット代わりにこの手のひらにKISS',
  ruby: 'いまだかわらないしょきしょうどういまだにかわらないほんきもーどいまだにびーととからまりあういまだあそんでるたからじままいどまいどがいまだいまだねらうめつきまだきららきららそしてえいえんになりひびくはっとかわりにこのてのひらにきす',
  lyric_with_ruby: '\{未だ,いまだ\}\{変わら,かわら\}ない\{初期,しょき\}\{衝動,しょうどう\}\{ ,\}\{未だに,いまだに\}\{変わら,かわら\}ない\{本気,ほんき\}\{モード,もーど\}\{ ,\}\{未だに,いまだに\}\{ビート,びーと\}と\{絡まり,からまり\}\{合う,あう\}\{ ,\}\{未だ,いまだ\}\{遊ん,あそん\}でる\{宝島,たからじま\}\{ ,\}\{毎度,まいど\}\{毎度,まいど\}がいまだいまだ\{ ,\}\{狙う,ねらう\}\{目,め\}つきまだ\{キララキララ,きららきらら\}\{ ,\}そして\{永遠,えいえん\}に\{鳴り響く,なりひびく\}\{ ,\}\{ハット,はっと\}\{代わり,かわり\}にこの\{手のひら,てのひら\}に\{ ,\}\{KISS,きす\}\{ ,\}',
  lyric_order: 6,
)

singer = Singer.find_by(name: 'UL')
lyrict_type = LyricType.find_by(name: 'HOOK')
Lyric.create(
  song_id: song.id,
  singer_id: singer.id,
  lyric_type_id: lyrict_type.id,
  part_lyric_order: 3,
  lyric: '手が真っ赤っかっかっかになるまで叩けカーニバルもっと真っ赤っかっかっかになるまで鳴らせTURNITUPClapClapClapClapClapYourHandsこれでもくらっとけわかんなくなったら前にならえ昨日のお前に習え',
  ruby: 'てがまっかっかっかっかになるまでたたけかーにばるもっとまっかっかっかっかになるまでならせたーんいっとあっぷくらっぷくらっぷくらっぷくらっぷくらっぷゆあはんずこれでもくらっとけわかんなくなったらまえにならえきのうのおまえにならえ',
  lyric_with_ruby: '\{手,て\}が\{真っ赤,まっか\}っかっかっかになるまで\{ ,\}\{叩け,たたけ\}\{カーニバル,かーにばる\}\{ ,\}もっと\{真っ赤,まっか\}っかっかっかになるまで\{ ,\}\{鳴ら,なら\}せ\{ ,\}\{TURN,たーん\}\{ ,\}\{IT,いっと\}\{ ,\}\{UP,あっぷ\}\{ ,\}\{Clap,くらっぷ\}\{ClapClapClapClapYourHands,くらっぷくらっぷくらっぷくらっぷゆあはんず\}\{ ,\}これでもくらっとけ\{ ,\}わかんなくなったら\{前,まえ\}にならえ\{ ,\}\{昨日,きのう\}の\{お前,おまえ\}に\{習え,ならえ\}\{ ,\}',
  lyric_order: 7,
)
