artist_name =    'BY PHAR THE DOPEST'
lyricUrl_url =   nil
cd_name =        'BY PHAR THE DOPEST'
cd_released_at = '1998-06-18'
song_name =      '無敵の捜査網'
song_lyricist =  'UNCREDITED'
song_composer =  'UNCREDITED'
song_arranger =  'KREVA'
cds_name = []
note = 'INNOSENCEがfeaturing.として参加。CUEZERO不参加？　歌詞カードに誤植が複数ありますが、そのまま入力しています'

artist = Artist.find_by(name: artist_name) || Artist.create(name: artist_name)
cd = Cd.find_by(name: cd_name) || Cd.create(name: cd_name, released_at: cd_released_at)

Singer.create(
  name: 'BY PHAR THE DOPEST & INNOSENCE',
  is_kick: false
)

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

singer = Singer.find_by(name: 'KREVA')
lyrict_type = LyricType.find_by(name: 'VERSE')
Lyric.create(
  song_id: song.id,
  singer_id: singer.id,
  lyric_type_id: lyrict_type.id,
  part_lyric_order: 1,
  lyric: '確かな筋からのタレ込み切符もなしに列車にかけ込みオレ達の名物車内販売のニセモノを売るヤバい犯罪がここ1～2週間で増加中犯人の身元いまだ調査中OK!こうなりゃオトリ捜査オレら各車両ごとに乗車そうとは知らずホシが近付くやたらと低い腰がいらつく逃がさないぞ現行犯逮捕俺に手を差し出したら最後すかさずぶち込む貨物列車ヨォ、耐えられないだろプレッシャーぜいぜい泣いとけ今の内涙もかれた頃にゃ北の国',
  ruby: 'たしかなすじからのたれこみきっぷもなしにれっしゃにかけこみおれたちのめいぶつしゃないはんばいのにせものをうるやばいはんざいがここいちにしゅうかんでぞうかちゅうはんにんのみもといまだちょうさちゅうおーけーこうなりゃおとりそうさおれらかくしゃりょうごとにじょうしゃそうとはしらずほしがちかづくやたらとひくいこしがいらつくにがさないぞげんこうはんたいほおれにてをさしだしたらさいごすかさずぶちこむかもつれっしゃよぉたえられないだろぷれっしゃーぜいぜいないとけいまのうちなみだもかれたころにゃきたのくに',
  lyric_with_ruby: '\{確か,たしか\}な\{筋,すじ\}からの\{タレ,たれ\}\{込み,こみ\}\{ ,\}\{切符,きっぷ\}もなしに\{列車,れっしゃ\}に\{かけ込み,かけこみ\}\{ ,\}\{オレ,おれ\}\{達,たち\}の\{名物,めいぶつ\}\{車内,しゃない\}\{販売,はんばい\}の\{ニセ,にせ\}\{モノ,もの\}を\{売る,うる\}\{ヤバ,やば\}い\{犯罪,はんざい\}\{ ,\}がここ\{1,いち\}\{～,\}\{2,に\}\{週間,しゅうかん\}で\{増加,ぞうか\}\{中,ちゅう\}\{ ,\}\{犯人,はんにん\}の\{身元,みもと\}いまだ\{調査,ちょうさ\}\{中,ちゅう\}\{ ,\}\{OK,おーけー\}\{!,\}\{ ,\}こうなりゃ\{オトリ,おとり\}\{捜査,そうさ\}\{ ,\}\{オレ,おれ\}ら\{各,かく\}\{車両,しゃりょう\}ごとに\{乗車,じょうしゃ\}\{ ,\}そうとは\{知ら,しら\}ず\{ホシ,ほし\}が\{近付く,ちかづく\}\{ ,\}やたらと\{低い,ひくい\}\{腰,こし\}がいらつく\{ ,\}\{逃がさ,にがさ\}ないぞ\{ ,\}\{現行,げんこう\}\{犯,はん\}\{逮捕,たいほ\}\{ ,\}\{俺,おれ\}に\{手,て\}を\{差し出し,さしだし\}たら\{最後,さいご\}\{ ,\}すかさず\{ぶち込む,ぶちこむ\}\{貨物,かもつ\}\{列車,れっしゃ\}\{ ,\}\{ヨォ,よぉ\}\{、,\}\{耐え,たえ\}られないだろ\{プレッシャー,ぷれっしゃー\}\{ ,\}ぜいぜい\{泣い,ない\}とけ\{今,いま\}の\{内,うち\}\{ ,\}\{涙,なみだ\}もかれた\{頃,ころ\}にゃ\{北,きた\}の\{国,くに\}\{ ,\}',
  lyric_order: 1,
)

singer = Singer.find_by(name: 'BY PHAR THE DOPEST & INNOSENCE')
lyrict_type = LyricType.find_by(name: 'HOOK')
Lyric.create(
  song_id: song.id,
  singer_id: singer.id,
  lyric_type_id: lyrict_type.id,
  part_lyric_order: 1,
  lyric: '日本中どこまでも追い詰める無敵の捜査網でしゃばりなボウヤも歯が立たんあきらめな日本中どこまでも追い詰める日本中どこまでも追い詰める無敵の捜査網でしゃばりなボウヤも歯が立たんあきらめな日本中どこまでも追い詰める',
  ruby: 'にほんじゅうどこまでもおいつめるむてきのそうさもうでしゃばりなぼうやもはがたたんあきらめなにほんじゅうどこまでもおいつめるにほんじゅうどこまでもおいつめるむてきのそうさもうでしゃばりなぼうやもはがたたんあきらめなにほんじゅうどこまでもおいつめる',
  lyric_with_ruby: '\{日本,にほん\}\{中,じゅう\}\{ ,\}どこまでも\{追い詰める,おいつめる\}\{ ,\}\{無敵,むてき\}の\{捜査,そうさ\}\{網,もう\}\{ ,\}でしゃばりな\{ボウヤ,ぼうや\}も\{歯,は\}が\{立た,たた\}ん\{ ,\}あきらめな\{ ,\}\{日本,にほん\}\{中,じゅう\}\{ ,\}どこまでも\{追い詰める,おいつめる\}\{ ,\}\{日本,にほん\}\{中,じゅう\}\{ ,\}どこまでも\{追い詰める,おいつめる\}\{ ,\}\{無敵,むてき\}の\{捜査,そうさ\}\{網,もう\}\{ ,\}でしゃばりな\{ボウヤ,ぼうや\}も\{歯,は\}が\{立た,たた\}ん\{ ,\}あきらめな\{ ,\}\{日本,にほん\}\{中,じゅう\}\{ ,\}どこまでも\{追い詰める,おいつめる\}\{ ,\}',
  lyric_order: 2,
)

singer = Singer.find_by(name: 'CHANNEL')
lyrict_type = LyricType.find_by(name: 'VERSE')
Lyric.create(
  song_id: song.id,
  singer_id: singer.id,
  lyric_type_id: lyrict_type.id,
  part_lyric_order: 2,
  lyric: '徐々に役者の出揃った捜査線上逃げようたってそうはさせんぞ刻々近付く発車時刻にイラツク奴の影がちらつく(ジリリリー)ベルがホームに鳴り響く霧がかる謎レールが導く午前零時発銀河一号腰抜かす金田一も目ン玉ひんむく華麗なアリバイ崩しが写し出す(奴の姿)その裏側から伸びてくる影の手HA!悪あがきならばやめとけ御用だ!貴様が真犯人笑わすなイカサマチンパンジー終点は君を待つ蜃気楼終わらない殺人紀行',
  ruby: 'じょじょにやくしゃのでそろったそうさせんじょうにげようたってそうはさせんぞこくこくちかづくはっしゃじこくにいらつくやつのかげがちらつくじりりりーべるがほーむになりひびくきりがかるなぞれーるがみちびくごぜんれいじはつぎんがいちごうこしぬかすきんだいちもめんたまひんむくかれいなありばいくずしがうつしだすやつのすがたそのうらがわからのびてくるかげのてはわるあがきならばやめとけごようだきさまがしんはんにんわらわすないかさまちんぱんじーしゅうてんはきみをまつしんきろうおわらないさつじんきこう',
  lyric_with_ruby: '\{徐々に,じょじょに\}\{役者,やくしゃ\}の\{出揃っ,でそろっ\}た\{捜査,そうさ\}\{線,せん\}\{上,じょう\}\{ ,\}\{逃げよ,にげよ\}うたってそうはさせんぞ\{ ,\}\{刻々,こくこく\}\{ ,\}\{近付く,ちかづく\}\{発車,はっしゃ\}\{時刻,じこく\}に\{ ,\}\{イラツク,いらつく\}\{奴,やつ\}の\{影,かげ\}がちらつく\{ ,\}\{(,\}\{ジリリリー,じりりりー\}\{),\}\{ベル,べる\}が\{ホーム,ほーむ\}に\{鳴り響く,なりひびく\}\{ ,\}\{霧,きり\}がかる\{謎,なぞ\}\{ ,\}\{レール,れーる\}が\{導く,みちびく\}\{ ,\}\{午前,ごぜん\}\{零,れい\}\{時,じ\}\{発,はつ\}\{銀河,ぎんが\}\{一,いち\}\{号,ごう\}\{ ,\}\{腰,こし\}\{抜かす,ぬかす\}\{金田一,きんだいち\}も\{ ,\}\{目,め\}\{ン,ん\}\{玉,たま\}ひんむく\{華麗,かれい\}な\{アリバイ,ありばい\}\{崩し,くずし\}が\{写し出す,うつしだす\}\{(,\}\{奴,やつ\}の\{姿,すがた\}\{),\}\{ ,\}その\{裏側,うらがわ\}から\{伸び,のび\}てくる\{影,かげ\}の\{手,て\}\{ ,\}\{HA,は\}\{!,\}\{ ,\}\{悪あがき,わるあがき\}ならばやめとけ\{ ,\}\{御用,ごよう\}だ\{!,\}\{ ,\}\{貴様,きさま\}が\{真犯人,しんはんにん\}\{ ,\}\{笑わす,わらわす\}な\{イカサマチンパンジー,いかさまちんぱんじー\}\{ ,\}\{終点,しゅうてん\}は\{君,きみ\}を\{待つ,まつ\}\{蜃気楼,しんきろう\}\{ ,\}\{終わら,おわら\}ない\{殺人,さつじん\}\{紀行,きこう\}\{ ,\}',
  lyric_order: 3,
)

singer = Singer.find_by(name: 'BY PHAR THE DOPEST & INNOSENCE')
lyrict_type = LyricType.find_by(name: 'HOOK')
Lyric.create(
  song_id: song.id,
  singer_id: singer.id,
  lyric_type_id: lyrict_type.id,
  part_lyric_order: 2,
  lyric: '日本中どこまでも追い詰める無敵の捜査網でしゃばりなボウヤも歯が立たんあきらめな日本中どこまでも追い詰める日本中どこまでも追い詰める無敵の捜査網でしゃばりなボウヤも歯が立たんあきらめな日本中どこまでも追い詰める',
  ruby: 'にほんじゅうどこまでもおいつめるむてきのそうさもうでしゃばりなぼうやもはがたたんあきらめなにほんじゅうどこまでもおいつめるにほんじゅうどこまでもおいつめるむてきのそうさもうでしゃばりなぼうやもはがたたんあきらめなにほんじゅうどこまでもおいつめる',
  lyric_with_ruby: '\{日本,にほん\}\{中,じゅう\}\{ ,\}どこまでも\{追い詰める,おいつめる\}\{ ,\}\{無敵,むてき\}の\{捜査,そうさ\}\{網,もう\}\{ ,\}でしゃばりな\{ボウヤ,ぼうや\}も\{歯,は\}が\{立た,たた\}ん\{ ,\}あきらめな\{ ,\}\{日本,にほん\}\{中,じゅう\}\{ ,\}どこまでも\{追い詰める,おいつめる\}\{ ,\}\{日本,にほん\}\{中,じゅう\}\{ ,\}どこまでも\{追い詰める,おいつめる\}\{ ,\}\{無敵,むてき\}の\{捜査,そうさ\}\{網,もう\}\{ ,\}でしゃばりな\{ボウヤ,ぼうや\}も\{歯,は\}が\{立た,たた\}ん\{ ,\}あきらめな\{ ,\}\{日本,にほん\}\{中,じゅう\}\{ ,\}どこまでも\{追い詰める,おいつめる\}\{ ,\}',
  lyric_order: 4,
)

singer = Singer.find_by(name: 'SOHJIN')
lyrict_type = LyricType.find_by(name: 'VERSE')
Lyric.create(
  song_id: song.id,
  singer_id: singer.id,
  lyric_type_id: lyrict_type.id,
  part_lyric_order: 3,
  lyric: 'ゆっくりとスピード上げ走り出す深夜特急が闇を切り裂く遅れて乗り込んだ時すでに動き出してたゆがんだミステリー第六感が感じる不快感ホシは恐らく愉快犯なるほど低めのIQ情報状況証拠を採取あらゆるミスすぐさま探し暴き出すその姿形Yes,Yes目星はついた容疑者妄想癖現実逃避家耐えきれず目が泳ぐお前の肩にまさに手が届く泣き付いても勘弁なんない穴だらけの不完全犯罪',
  ruby: 'ゆっくりとすぴーどあげはしりだすしんやとっきゅうがやみをきりさくおくれてのりこんだときすでにうごきだしてたゆがんだみすてりーだいろっかんがかんじるふかいかんほしはおそらくゆかいはんなるほどひくめのあいきゅーじょうほうじょうきょうしょうこをさいしゅあらゆるみすすぐさまさがしあばきだすそのすがたかたちいえすいえすめぼしはついたようぎしゃもうそうへきげんじつとうひかたえきれずめがおよぐおまえのかたにまさにてがとどくなきついてもかんべんなんないあなだらけのふかんぜんはんざい',
  lyric_with_ruby: 'ゆっくりと\{スピード,すぴーど\}\{上げ,あげ\}\{走り出す,はしりだす\}\{ ,\}\{深夜,しんや\}\{特急,とっきゅう\}が\{闇,やみ\}を\{切り裂く,きりさく\}\{ ,\}\{遅れ,おくれ\}て\{乗り込ん,のりこん\}だ\{時,とき\}すでに\{ ,\}\{動き出し,うごきだし\}てたゆがんだ\{ミステリー,みすてりー\}\{ ,\}\{第六感,だいろっかん\}が\{感じる,かんじる\}\{不快,ふかい\}\{感,かん\}\{ ,\}\{ホシ,ほし\}は\{恐らく,おそらく\}\{愉快,ゆかい\}\{犯,はん\}\{ ,\}なるほど\{低め,ひくめ\}の\{IQ,あいきゅー\}\{ ,\}\{情報,じょうほう\}\{ ,\}\{状況,じょうきょう\}\{証拠,しょうこ\}を\{採取,さいしゅ\}\{ ,\}あらゆる\{ミス,みす\}すぐさま\{探し,さがし\}\{ ,\}\{暴き出す,あばきだす\}\{ ,\}その\{姿,すがた\}\{形,かたち\}\{ ,\}\{Yes,いえす\}\{,,\}\{Yes,いえす\}\{ ,\}\{目星,めぼし\}はついた\{容疑,ようぎ\}\{者,しゃ\}\{ ,\}\{妄想,もうそう\}\{癖,へき\}\{現実,げんじつ\}\{逃避,とうひ\}\{家,か\}\{ ,\}\{耐え,たえ\}きれず\{目,め\}が\{泳ぐ,およぐ\}\{ ,\}\{お前,おまえ\}の\{肩,かた\}にまさに\{手,て\}が\{届く,とどく\}\{ ,\}\{泣き付い,なきつい\}ても\{勘弁,かんべん\}なんない\{ ,\}\{穴,あな\}だらけの\{不完全,ふかんぜん\}\{犯罪,はんざい\}\{ ,\}',
  lyric_order: 5,
)

singer = Singer.find_by(name: 'BY PHAR THE DOPEST & INNOSENCE')
lyrict_type = LyricType.find_by(name: 'HOOK')
Lyric.create(
  song_id: song.id,
  singer_id: singer.id,
  lyric_type_id: lyrict_type.id,
  part_lyric_order: 3,
  lyric: '日本中どこまでも追い詰める無敵の捜査網でしゃばりなボウヤも歯が立たんあきらめな日本中どこまでも追い詰める日本中どこまでも追い詰める無敵の捜査網でしゃばりなボウヤも歯が立たんあきらめな日本中どこまでも追い詰める',
  ruby: 'にほんじゅうどこまでもおいつめるむてきのそうさもうでしゃばりなぼうやもはがたたんあきらめなにほんじゅうどこまでもおいつめるにほんじゅうどこまでもおいつめるむてきのそうさもうでしゃばりなぼうやもはがたたんあきらめなにほんじゅうどこまでもおいつめる',
  lyric_with_ruby: '\{日本,にほん\}\{中,じゅう\}\{ ,\}どこまでも\{追い詰める,おいつめる\}\{ ,\}\{無敵,むてき\}の\{捜査,そうさ\}\{網,もう\}\{ ,\}でしゃばりな\{ボウヤ,ぼうや\}も\{歯,は\}が\{立た,たた\}ん\{ ,\}あきらめな\{ ,\}\{日本,にほん\}\{中,じゅう\}\{ ,\}どこまでも\{追い詰める,おいつめる\}\{ ,\}\{日本,にほん\}\{中,じゅう\}\{ ,\}どこまでも\{追い詰める,おいつめる\}\{ ,\}\{無敵,むてき\}の\{捜査,そうさ\}\{網,もう\}\{ ,\}でしゃばりな\{ボウヤ,ぼうや\}も\{歯,は\}が\{立た,たた\}ん\{ ,\}あきらめな\{ ,\}\{日本,にほん\}\{中,じゅう\}\{ ,\}どこまでも\{追い詰める,おいつめる\}\{ ,\}',
  lyric_order: 6,
)

singer = Singer.find_by(name: 'BY PHAR THE DOPEST & INNOSENCE')
lyrict_type = LyricType.find_by(name: 'OTHER')
Lyric.create(
  song_id: song.id,
  singer_id: singer.id,
  lyric_type_id: lyrict_type.id,
  part_lyric_order: 1,
  lyric: '日本中どこまでも追い詰める日本中どこまでも追い詰める日本中どこまでも追い詰める日本中どこまでも追い詰める日本中…',
  ruby: 'にほんじゅうどこまでもおいつめるにほんじゅうどこまでもおいつめるにほんじゅうどこまでもおいつめるにほんじゅうどこまでもおいつめるにほんじゅう',
  lyric_with_ruby: '\{日本,にほん\}\{中,じゅう\}どこまでも\{追い詰める,おいつめる\}\{ ,\}\{日本,にほん\}\{中,じゅう\}どこまでも\{追い詰める,おいつめる\}\{ ,\}\{日本,にほん\}\{中,じゅう\}どこまでも\{追い詰める,おいつめる\}\{ ,\}\{日本,にほん\}\{中,じゅう\}どこまでも\{追い詰める,おいつめる\}\{ ,\}\{日本,にほん\}\{中,じゅう\}\{…,\}\{ ,\}',
  lyric_order: 7,
)
