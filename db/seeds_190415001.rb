artist_name =    'BY PHAR THE DOPEST'
lyricUrl_url =   nil
cd_name =        'BY PHAR THE DOPEST'
cd_released_at = '1998-06-18'
song_name =      'ああバイファー・ザ・ドーペスト'
song_lyricist =  'UNCREDITED'
song_composer =  'UNCREDITED'
song_arranger =  'Rock Tee'
cds_name = []

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
  artist_id: artist.id
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

singer = Singer.find_by(name: 'BY PHAR THE DOPEST')
lyrict_type = LyricType.find_by(name: 'HOOK')
Lyric.create(
  song_id: song.id,
  singer_id: singer.id,
  lyric_type_id: lyrict_type.id,
  part_lyric_order: 1,
  lyric: 'あぁ、バイファー・ザ・ドーペストだあぁ、おれたちが今日ゲストだあぁ、バイファー・ザ・ドーペストだあぁ、おれたちが今日ゲストだ',
  ruby: 'あぁばいふぁーざどーぺすとだあぁおれたちがきょうげすとだあぁばいふぁーざどーぺすとだあぁおれたちがきょうげすとだ',
  lyric_with_ruby: 'あぁ\{、,\}\{バイファー・ザ・ドーペスト,ばいふぁーざどーぺすと\}だ\{ ,\}あぁ\{、,\}おれたちが\{今日,きょう\}\{ゲスト,げすと\}だ\{ ,\}あぁ\{、,\}\{バイファー・ザ・ドーペスト,ばいふぁーざどーぺすと\}だ\{ ,\}あぁ\{、,\}おれたちが\{今日,きょう\}\{ゲスト,げすと\}だ\{ ,\}',
  lyric_order: 1,
)

singer = Singer.find_by(name: 'KREVA')
lyrict_type = LyricType.find_by(name: 'VERSE')
Lyric.create(
  song_id: song.id,
  singer_id: singer.id,
  lyric_type_id: lyrict_type.id,
  part_lyric_order: 1,
  lyric: 'そうオレらバイファー・ザ・ドーペストだマイク持つ大胆なオーケストラYO!このステージそんなに甘くないDOORDIEだできない天下りかたくなに砂漠並みに乾いたサウンド目を綴じカウント(1、2)意識上昇じきに表情も真剣に動き出す韻戦士超人的なパワー発散スピードはまるでタワーハッカー一晩中観衆を言葉の緩急導くアバンチュール(HEY)まだまだ動けるか?HEADSの声こそがプロテクター(HEY)声上げろでかくそのままここから夜明けをめざす',
  ruby: 'そうおれらばいふぁーざどーぺすとだまいくもつだいたんなおーけすとらよーこのすてーじそんなにあまくないどぅーおあだできないあまくだりかたくなにさばくなみにかわいたさうんどめをとじかうんとわんつーいしきじょうしょうじきにひょうじょうもしんけんにうごきだすいんせんしちょうじんてきなぱわーはっさんすぴーどはまるでたわーはっかーひとばんじゅうかんしゅうをことばのかんきゅうみちびくあばんちゅーるへいまだまだうごけるかへっずのこえこそがぷろてくたーへいこえあげろでかくそのままここからよあけをめざす',
  lyric_with_ruby: 'そう\{ ,\}\{オレ,おれ\}ら\{バイファー・ザ・ドーペスト,ばいふぁーざどーぺすと\}だ\{ ,\}\{マイク,まいく\}\{持つ,もつ\}\{大胆,だいたん\}な\{オーケストラ,おーけすとら\}\{ ,\}\{YO,よー\}\{!,\}\{ ,\}この\{ステージ,すてーじ\}そんなに\{甘く,あまく\}ない\{ ,\}\{DO,どぅー\}\{ ,\}\{OR,おあ\}\{ ,\}\{DIE,\}だ\{ ,\}できない\{天下り,あまくだり\}\{ ,\}かたくなに\{ ,\}\{砂漠,さばく\}\{並み,なみ\}に\{乾い,かわい\}た\{サウンド,さうんど\}\{ ,\}\{目,め\}を\{綴じ,とじ\}\{カウント,かうんと\}\{ ,\}\{(,\}\{1,わん\}\{、,\}\{2,つー\}\{),\}\{意識,いしき\}\{上昇,じょうしょう\}\{ ,\}じきに\{表情,ひょうじょう\}も\{真剣,しんけん\}に\{ ,\}\{動き出す,うごきだす\}\{韻,いん\}\{戦士,せんし\}\{ ,\}\{超,ちょう\}\{人的,じんてき\}な\{パワー,ぱわー\}\{発散,はっさん\}\{ ,\}\{スピード,すぴーど\}はまるで\{タワー,たわー\}\{ハッカー,はっかー\}\{ ,\}\{一,ひと\}\{晩,ばん\}\{中,じゅう\}\{ ,\}\{観衆,かんしゅう\}を\{言葉,ことば\}の\{緩急,かんきゅう\}\{ ,\}\{導く,みちびく\}\{アバンチュール,あばんちゅーる\}\{ ,\}\{(,\}\{HEY,へい\}\{),\}まだまだ\{動ける,うごける\}か\{?,\}\{ ,\}\{HEADS,へっず\}の\{声,こえ\}こそが\{プロテクター,ぷろてくたー\}\{ ,\}\{(,\}\{HEY,へい\}\{),\}\{声,こえ\}\{上げろ,あげろ\}\{ ,\}でかく\{ ,\}そのままここから\{夜明け,よあけ\}をめざす\{ ,\}',
  lyric_order: 2,
)

singer = Singer.find_by(name: 'BY PHAR THE DOPEST')
lyrict_type = LyricType.find_by(name: 'HOOK')
Lyric.create(
  song_id: song.id,
  singer_id: singer.id,
  lyric_type_id: lyrict_type.id,
  part_lyric_order: 2,
  lyric: 'あぁ、バイファー・ザ・ドーペストだあぁ、おれたちが今日ゲストだあぁ、バイファー・ザ・ドーペストだあぁ、おれたちが今日ゲストだ',
  ruby: 'あぁばいふぁーざどーぺすとだあぁおれたちがきょうげすとだあぁばいふぁーざどーぺすとだあぁおれたちがきょうげすとだ',
  lyric_with_ruby: 'あぁ\{、,\}\{バイファー・ザ・ドーペスト,ばいふぁーざどーぺすと\}だ\{ ,\}あぁ\{、,\}おれたちが\{今日,きょう\}\{ゲスト,げすと\}だ\{ ,\}あぁ\{、,\}\{バイファー・ザ・ドーペスト,ばいふぁーざどーぺすと\}だ\{ ,\}あぁ\{、,\}おれたちが\{今日,きょう\}\{ゲスト,げすと\}だ\{ ,\}',
  lyric_order: 3,
)

singer = Singer.find_by(name: 'BY PHAR THE DOPEST')
lyrict_type = LyricType.find_by(name: 'HOOK')
Lyric.create(
  song_id: song.id,
  singer_id: singer.id,
  lyric_type_id: lyrict_type.id,
  part_lyric_order: 3,
  lyric: 'あぁ、バイファー・ザ・ドーペストだあぁ、おれたちが今日ゲストだあぁ、バイファー・ザ・ドーペストだあぁ、おれたちが今日ゲストだ',
  ruby: 'あぁばいふぁーざどーぺすとだあぁおれたちがきょうげすとだあぁばいふぁーざどーぺすとだあぁおれたちがきょうげすとだ',
  lyric_with_ruby: 'あぁ\{、,\}\{バイファー・ザ・ドーペスト,ばいふぁーざどーぺすと\}だ\{ ,\}あぁ\{、,\}おれたちが\{今日,きょう\}\{ゲスト,げすと\}だ\{ ,\}あぁ\{、,\}\{バイファー・ザ・ドーペスト,ばいふぁーざどーぺすと\}だ\{ ,\}あぁ\{、,\}おれたちが\{今日,きょう\}\{ゲスト,げすと\}だ\{ ,\}',
  lyric_order: 4,
)

singer = Singer.find_by(name: 'CUEZERO')
lyrict_type = LyricType.find_by(name: 'VERSE')
Lyric.create(
  song_id: song.id,
  singer_id: singer.id,
  lyric_type_id: lyrict_type.id,
  part_lyric_order: 2,
  lyric: 'まー落ち着こうそろそろ気付こう畜生は今さら必要ねーな頭ごなしに怒鳴り付け才能の「さ」の字すらも無いくせにでしゃばるなてめー目立つな夜泣きする赤子よりも手かかるなまーいいや悲しいがおとなしくしてりゃまだましだ新しい波を送り込む切り札俺らがついてるビビるなK.T.C.C.リズラーカセビFGD.B.と力あわせ見せるシーン生きる意味と信じ疑わず唄うこの生き方に無駄は無くくだらなくなく輝く今ここに俺らの桜が咲く',
  ruby: 'まーおちつこうそろそろきづこうちくしょうはいまさらひつようねーなあたまごなしにどなりつけさいのうのさのじすらもないくせにでしゃばるなてめーめだつなよなきするあかごよりもてかかるなまーいいやかなしいがおとなしくしてりゃまだましだあたらしいなみをおくりこむきりふだおれらがついてるびびるなけーてぃーしーしーりずらーかせびえふじーでぃーびーとちからあわせみせるしーんいきるいみとしんじうたがわずうたうこのいきかたにむだはなくくだらなくなくかがやくいまここにおれらのさくらがさく',
  lyric_with_ruby: 'まー\{落ち着こ,おちつこ\}う\{ ,\}そろそろ\{気付こ,きづこ\}う\{ ,\}\{畜生,ちくしょう\}は\{今さら,いまさら\}\{必要,ひつよう\}ねーな\{ ,\}\{頭ごなし,あたまごなし\}に\{怒鳴り,どなり\}\{付け,つけ\}\{ ,\}\{才能,さいのう\}の\{「,\}さ\{」,\}の\{字,じ\}すらも\{無い,ない\}くせに\{ ,\}でしゃばるな\{ ,\}てめー\{目,め\}\{立つ,だつ\}な\{ ,\}\{夜泣き,よなき\}する\{赤子,あかご\}よりも\{手,て\}かかるな\{ ,\}まーいいや\{ ,\}\{悲しい,かなしい\}が\{ ,\}おとなしくしてりゃ\{ ,\}まだましだ\{ ,\}\{新しい,あたらしい\}\{波,なみ\}を\{送り込む,おくりこむ\}\{切り札,きりふだ\}\{ ,\}\{俺,おれ\}らがついてる\{ビビる,びびる\}な\{ ,\}\{K,けー\}\{.,\}\{T,てぃー\}\{.,\}\{C,しー\}\{.,\}\{C,しー\}\{.,\}\{ ,\}\{リズラー,りずらー\}\{ ,\}\{カセビ,かせび\}\{ ,\}\{FG,えふじー\}\{ ,\}\{D,でぃー\}\{.,\}\{B,びー\}\{.,\}と\{力,ちから\}あわせ\{見せる,みせる\}\{シーン,しーん\}\{ ,\}\{生きる,いきる\}\{意味,いみ\}と\{信じ,しんじ\}\{疑わ,うたがわ\}ず\{唄う,うたう\}この\{生き方,いきかた\}に\{無駄,むだ\}は\{無く,なく\}\{ ,\}くだらなくなく\{輝く,かがやく\}\{ ,\}\{今,いま\}ここに\{俺,おれ\}らの\{桜,さくら\}が\{咲く,さく\}\{ ,\}',
  lyric_order: 5,
)

singer = Singer.find_by(name: 'BY PHAR THE DOPEST')
lyrict_type = LyricType.find_by(name: 'HOOK')
Lyric.create(
  song_id: song.id,
  singer_id: singer.id,
  lyric_type_id: lyrict_type.id,
  part_lyric_order: 4,
  lyric: 'あぁ、バイファー・ザ・ドーペストだあぁ、おれたちが今日ゲストだあぁ、バイファー・ザ・ドーペストだあぁ、おれたちが今日ゲストだ',
  ruby: 'あぁばいふぁーざどーぺすとだあぁおれたちがきょうげすとだあぁばいふぁーざどーぺすとだあぁおれたちがきょうげすとだ',
  lyric_with_ruby: 'あぁ\{、,\}\{バイファー・ザ・ドーペスト,ばいふぁーざどーぺすと\}だ\{ ,\}あぁ\{、,\}おれたちが\{今日,きょう\}\{ゲスト,げすと\}だ\{ ,\}あぁ\{、,\}\{バイファー・ザ・ドーペスト,ばいふぁーざどーぺすと\}だ\{ ,\}あぁ\{、,\}おれたちが\{今日,きょう\}\{ゲスト,げすと\}だ\{ ,\}',
  lyric_order: 6,
)

singer = Singer.find_by(name: 'BY PHAR THE DOPEST')
lyrict_type = LyricType.find_by(name: 'HOOK')
Lyric.create(
  song_id: song.id,
  singer_id: singer.id,
  lyric_type_id: lyrict_type.id,
  part_lyric_order: 5,
  lyric: 'あぁ、バイファー・ザ・ドーペストだあぁ、おれたちが今日ゲストだあぁ、バイファー・ザ・ドーペストだあぁ、おれたちが今日ゲストだあぁ、バイファー・ザ・ドーペストだぁ',
  ruby: 'あぁばいふぁーざどーぺすとだあぁおれたちがきょうげすとだあぁばいふぁーざどーぺすとだあぁおれたちがきょうげすとだあぁばいふぁーざどーぺすとだぁ',
  lyric_with_ruby: 'あぁ\{、,\}\{バイファー・ザ・ドーペスト,ばいふぁーざどーぺすと\}だ\{ ,\}あぁ\{、,\}おれたちが\{今日,きょう\}\{ゲスト,げすと\}だ\{ ,\}あぁ\{、,\}\{バイファー・ザ・ドーペスト,ばいふぁーざどーぺすと\}だ\{ ,\}あぁ\{、,\}おれたちが\{今日,きょう\}\{ゲスト,げすと\}だ\{ ,\}あぁ\{、,\}\{バイファー・ザ・ドーペスト,ばいふぁーざどーぺすと\}だぁ\{ ,\}',
  lyric_order: 7,
)
