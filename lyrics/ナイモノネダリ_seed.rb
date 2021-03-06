artist_name =    ''
lyricUrl_url =   ''
cd_name =        ''
cd_released_at = ''
song_name =      ''
song_lyricist =  ''
song_composer =  ''
song_arranger =  ''
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
  lyric: '超近所にオープンかに道楽一年中正月マライアよりも上手いヴォーカル絶対バレない盗作生きてるだけで金が儲かる大好物もろほうばるノッポ氏よりもできる工作また近所にかに道楽二、三秒でドラクエ攻略DS版ボンジャック現実版ほんやくコンニャク的効果のあるトンカツアルコールフレイバーの胃腸薬バカにも効く良薬結果要らないものばかりをフォーカスめんどうな事は省略',
  ruby: 'ちょうきんじょにおーぷんかにどうらくいちねんじゅうしょうがつまらいあよりもうまいゔぉーかるぜったいばれないとうさくいきてるだけでかねがもうかるだいこうぶつもろほうばるのっぽしよりもできるこうさくまたきんじょにかにどうらくにさんびょうでどらくえこうりゃくでぃーえすばんぼんじゃっくげんじつばんほんやくこんにゃくてきこうかのあるとんかつあるこーるふれいばーのいちょうやくばかにもきくりょうやくけっかいらないものばかりをふぉーかすめんどうなことはしょうりゃく',
  lyric_with_ruby: '\{超,ちょう\}\{近所,きんじょ\}に\{オープン,おーぷん\}かに\{道楽,どうらく\}\{ ,\}\{一年中,いちねんじゅう\}\{正月,しょうがつ\}\{ ,\}\{マライア,まらいあ\}よりも\{上手い,うまい\}\{ヴォーカル,ゔぉーかる\}\{ ,\}\{絶対,ぜったい\}\{バレ,ばれ\}ない\{盗作,とうさく\}\{ ,\}\{生き,いき\}てるだけで\{金,かね\}が\{儲かる,もうかる\}\{ ,\}\{大,だい\}\{好物,こうぶつ\}もろほうばる\{ ,\}\{ノッポ,のっぽ\}\{氏,し\}よりもできる\{工作,こうさく\}\{ ,\}また\{近所,きんじょ\}にかに\{道楽,どうらく\}\{ ,\}\{二,に\}\{、,\}\{三,さん\}\{秒,びょう\}で\{ドラクエ,どらくえ\}\{攻略,こうりゃく\}\{ ,\}\{DS,でぃーえす\}\{ ,\}\{版,ばん\}\{ボン,ぼん\}\{ジャック,じゃっく\}\{ ,\}\{現実,げんじつ\}\{版,ばん\}ほんやく\{コンニャク,こんにゃく\}\{的,てき\}\{ ,\}\{効果,こうか\}のある\{トンカツ,とんかつ\}\{ ,\}\{アルコールフレイバー,あるこーるふれいばー\}の\{胃腸,いちょう\}\{薬,やく\}\{ ,\}\{バカ,ばか\}にも\{効く,きく\}\{良薬,りょうやく\}\{ ,\}\{結果,けっか\}\{要ら,いら\}ないものばかりを\{フォーカス,ふぉーかす\}\{ ,\}めんどうな\{事,こと\}は\{省略,しょうりゃく\}\{ ,\}',
  lyric_order: 1,
)

singer = Singer.find_by(name: 'UL')
lyrict_type = LyricType.find_by(name: 'HOOK')
Lyric.create(
  song_id: song.id,
  singer_id: singer.id,
  lyric_type_id: lyrict_type.id,
  part_lyric_order: 1,
  lyric: 'ナイモノネダリナイモノネダリザッツクライングフォーザムーンナイモノネダリナイモノネダリザッツクライングフォーザムーンナイモノネダリナイモノネダリザッツクライングフォーザムーンナイモノネダリナイモノネダリザッツクライングフォーザムーン',
  ruby: 'ないものねだりないものねだりざっつくらいんぐふぉーざむーんないものねだりないものねだりざっつくらいんぐふぉーざむーんないものねだりないものねだりざっつくらいんぐふぉーざむーんないものねだりないものねだりざっつくらいんぐふぉーざむーん',
  lyric_with_ruby: '\{ナイモノネダリ,ないものねだり\}\{ ,\}\{ナイモノネダリ,ないものねだり\}\{ ,\}\{ザッツ,ざっつ\}\{ ,\}\{クライング,くらいんぐ\}\{ ,\}\{フォー,ふぉー\}\{ ,\}\{ザ,ざ\}\{ ,\}\{ムーン,むーん\}\{ ,\}\{ナイモノネダリ,ないものねだり\}\{ ,\}\{ナイモノネダリ,ないものねだり\}\{ ,\}\{ザッツ,ざっつ\}\{ ,\}\{クライング,くらいんぐ\}\{ ,\}\{フォー,ふぉー\}\{ ,\}\{ザ,ざ\}\{ ,\}\{ムーン,むーん\}\{ ,\}\{ナイモノネダリ,ないものねだり\}\{ ,\}\{ナイモノネダリ,ないものねだり\}\{ ,\}\{ザッツ,ざっつ\}\{ ,\}\{クライング,くらいんぐ\}\{ ,\}\{フォー,ふぉー\}\{ ,\}\{ザ,ざ\}\{ ,\}\{ムーン,むーん\}\{ ,\}\{ナイモノネダリ,ないものねだり\}\{ ,\}\{ナイモノネダリ,ないものねだり\}\{ ,\}\{ザッツ,ざっつ\}\{ ,\}\{クライング,くらいんぐ\}\{ ,\}\{フォー,ふぉー\}\{ ,\}\{ザ,ざ\}\{ ,\}\{ムーン,むーん\}\{ ,\}',
  lyric_order: 2,
)

singer = Singer.find_by(name: 'MCU')
lyrict_type = LyricType.find_by(name: 'VERSE')
Lyric.create(
  song_id: song.id,
  singer_id: singer.id,
  lyric_type_id: lyrict_type.id,
  part_lyric_order: 2,
  lyric: '今夜も空には星がある手を伸ばして欲しがる雲を掴むようなファンタジー乗り込むのさタイムマシーン',
  ruby: 'こんやもそらにはほしがあるてをのばしてほしがるくもをつかむようなふぁんたじーのりこむのさたいむましーん',
  lyric_with_ruby: '\{今夜,こんや\}も\{空,そら\}には\{星,ほし\}がある\{ ,\}\{手,て\}を\{伸ばし,のばし\}て\{欲し,ほし\}がる\{ ,\}\{雲,くも\}を\{掴む,つかむ\}ような\{ファンタジー,ふぁんたじー\}\{ ,\}\{乗り込む,のりこむ\}のさ\{タイムマシーン,たいむましーん\}\{ ,\}',
  lyric_order: 3,
)

singer = Singer.find_by(name: 'LITTLE')
lyrict_type = LyricType.find_by(name: 'VERSE')
Lyric.create(
  song_id: song.id,
  singer_id: singer.id,
  lyric_type_id: lyrict_type.id,
  part_lyric_order: 3,
  lyric: 'ありあまる富と名声強大な力この世の全てちょうだいハジからハジまで行き渡る権力人間超えた人間力君を虜にする歌唱力皆を驚かす発想力新たな夢みる想像力それを形にする行動力人を惹きつける引力キレッキレにキレテル筋力夜通しイケる持続力円周率言える記憶力100m9秒切る脚力リンゴをつぶせる握力車飛び越える跳躍力史上空前の超ド迫力今無いものいらないものでもくれるんならいただいとこう君が描き足した蛇の足が当たり前を蹴り飛ばした',
  ruby: 'ありあまるとみとめいせいきょうだいなちからこのよのすべてちょうだいはじからはじまでいきわたるけんりょくにんげんこえたにんげんりょくきみをとりこにするかしょうりょくみなをおどろかすはっそうりょくあらたなゆめみるそうぞうりょくそれをかたちにするこうどうりょくひとをひきつけるいんりょくきれっきれにきれてるきんりょくよどおしいけるじぞくりょくえんしゅうりついえるきおくりょくひゃくめーたーきゅうびょうきるきゃくりょくりんごをつぶせるあくりょくくるまとびこえるちょうやくりょくしじょうくうぜんのちょうどはくりょくいまないものいらないものでもくれるんならいただいとこうきみがかきたしたへびのあしがあたりまえをけりとばした',
  lyric_with_ruby: 'ありあまる\{富,とみ\}と\{名声,めいせい\}\{ ,\}\{強大,きょうだい\}な\{力,ちから\}\{ ,\}\{この世,このよ\}の\{全て,すべて\}ちょうだい\{ ,\}\{ハジ,はじ\}から\{ハジ,はじ\}まで\{ ,\}\{行き渡る,いきわたる\}\{権力,けんりょく\}\{ ,\}\{人間,にんげん\}\{超え,こえ\}た\{人間,にんげん\}\{力,りょく\}\{ ,\}\{君,きみ\}を\{虜,とりこ\}にする\{歌唱,かしょう\}\{力,りょく\}\{ ,\}\{皆,みな\}を\{驚かす,おどろかす\}\{発想,はっそう\}\{力,りょく\}\{ ,\}\{新た,あらた\}な\{夢みる,ゆめみる\}\{想像,そうぞう\}\{力,りょく\}\{ ,\}それを\{形,かたち\}にする\{行動,こうどう\}\{力,りょく\}\{ ,\}\{人,ひと\}を\{惹き,ひき\}つける\{引力,いんりょく\}\{ ,\}\{キレッキレ,きれっきれ\}に\{キレテル,きれてる\}\{筋力,きんりょく\}\{ ,\}\{夜通し,よどおし\}\{イケ,いけ\}る\{持続,じぞく\}\{力,りょく\}\{ ,\}\{円周,えんしゅう\}\{率,りつ\}\{言える,いえる\}\{記憶,きおく\}\{力,りょく\}\{ ,\}\{100,ひゃく\}\{m,めーたー\}\{9,きゅう\}\{ ,\}\{秒,びょう\}\{切る,きる\}\{脚力,きゃくりょく\}\{ ,\}\{リンゴ,りんご\}をつぶせる\{握力,あくりょく\}\{ ,\}\{車,くるま\}\{飛び越える,とびこえる\}\{跳躍,ちょうやく\}\{力,りょく\}\{ ,\}\{史上,しじょう\}\{空前,くうぜん\}の\{超,ちょう\}\{ド,ど\}\{迫力,はくりょく\}\{ ,\}\{今,いま\}\{無い,ない\}もの\{ ,\}いらないもの\{ ,\}でもくれるんならいただいとこう\{ ,\}\{君,きみ\}が\{描き,かき\}\{足し,たし\}た\{蛇,へび\}の\{足,あし\}が\{ ,\}\{当たり前,あたりまえ\}を\{蹴り,けり\}\{飛ばし,とばし\}た\{ ,\}',
  lyric_order: 4,
)

singer = Singer.find_by(name: 'UL')
lyrict_type = LyricType.find_by(name: 'HOOK')
Lyric.create(
  song_id: song.id,
  singer_id: singer.id,
  lyric_type_id: lyrict_type.id,
  part_lyric_order: 2,
  lyric: 'ナイモノネダリナイモノネダリザッツクライングフォーザムーンナイモノネダリナイモノネダリザッツクライングフォーザムーンナイモノネダリナイモノネダリザッツクライングフォーザムーンナイモノネダリナイモノネダリザッツクライングフォーザムーン',
  ruby: 'ないものねだりないものねだりざっつくらいんぐふぉーざむーんないものねだりないものねだりざっつくらいんぐふぉーざむーんないものねだりないものねだりざっつくらいんぐふぉーざむーんないものねだりないものねだりざっつくらいんぐふぉーざむーん',
  lyric_with_ruby: '\{ナイモノネダリ,ないものねだり\}\{ ,\}\{ナイモノネダリ,ないものねだり\}\{ ,\}\{ザッツ,ざっつ\}\{ ,\}\{クライング,くらいんぐ\}\{ ,\}\{フォー,ふぉー\}\{ ,\}\{ザ,ざ\}\{ ,\}\{ムーン,むーん\}\{ ,\}\{ナイモノネダリ,ないものねだり\}\{ ,\}\{ナイモノネダリ,ないものねだり\}\{ ,\}\{ザッツ,ざっつ\}\{ ,\}\{クライング,くらいんぐ\}\{ ,\}\{フォー,ふぉー\}\{ ,\}\{ザ,ざ\}\{ ,\}\{ムーン,むーん\}\{ ,\}\{ナイモノネダリ,ないものねだり\}\{ ,\}\{ナイモノネダリ,ないものねだり\}\{ ,\}\{ザッツ,ざっつ\}\{ ,\}\{クライング,くらいんぐ\}\{ ,\}\{フォー,ふぉー\}\{ ,\}\{ザ,ざ\}\{ ,\}\{ムーン,むーん\}\{ ,\}\{ナイモノネダリ,ないものねだり\}\{ ,\}\{ナイモノネダリ,ないものねだり\}\{ ,\}\{ザッツ,ざっつ\}\{ ,\}\{クライング,くらいんぐ\}\{ ,\}\{フォー,ふぉー\}\{ ,\}\{ザ,ざ\}\{ ,\}\{ムーン,むーん\}\{ ,\}',
  lyric_order: 5,
)

