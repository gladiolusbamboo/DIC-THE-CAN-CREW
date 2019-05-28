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

singer = Singer.find_by(name: 'CUEZERO')
lyrict_type = LyricType.find_by(name: 'VERSE')
Lyric.create(
  song_id: song.id,
  singer_id: singer.id,
  lyric_type_id: lyrict_type.id,
  part_lyric_order: 1,
  lyric: '一段超えてまた一段足伸ばす冷たく固い地盤に相当費やした長い時間ほつれだす裾の長いジーパンのぼろうがくだろうが手すりに掴まろうがイツナロウバ結局エンドレスこの螺旋から逃れられんのです続く階段これきっとオレ成功へと導くガイダンス信じて具体化靴の紐結び直しイツライクダ過去の財産再三すがればそやまぁ合わない採算踏み外せば大半が怪我してのまれる魔のトライアングルひいきなしだ「本当明日は我が身」と自分に言い聞かした今まで何枚CD出した?ってそれもしかしたら見切り発車それもテメーのさじ加減あの青かった自分に幸あれシリアスやっぱり続けることに意義があると信じます',
  ruby: 'いちだんこえてまたいちだんあしのばすつめたくかたいじばんにそうとうついやしたながいじかんほつれだすすそのながいじーぱんのぼろうがくだろうがてすりにつかまろうがいつなろうばけっきょくえんどれすこのらせんからのがれられんのですつづくかいだんこれきっとおれせいこうへとみちびくがいだんすしんじてぐたいかくつのひもむすびなおしいつらいくだかこのざいさんさいさんすがればそやまぁあわないさいさんふみはずせばたいはんがけがしてのまれるまのとらいあんぐるひいきなしだほんとうあすはわがみとじぶんにいいきかしたいままでなんまいしーでぃーだしたってそれもしかしたらみきりはっしゃそれもてめーのさじかげんあのあおかったじぶんにさちあれしりあすやっぱりつづけることにいぎがあるとしんじます',
  lyric_with_ruby: '\{一段,いちだん\}\{超え,こえ\}て\{ ,\}また\{一段,いちだん\}\{ ,\}\{足,あし\}\{伸ばす,のばす\}\{ ,\}\{冷たく,つめたく\}\{固い,かたい\}\{地盤,じばん\}に\{ ,\}\{相当,そうとう\}\{費やし,ついやし\}た\{ ,\}\{長い,ながい\}\{時間,じかん\}\{ ,\}ほつれだす\{ ,\}\{裾,すそ\}の\{長い,ながい\}\{ジーパン,じーぱん\}\{ ,\}のぼろうがくだろうが\{ ,\}\{手すり,てすり\}に\{掴まろ,つかまろ\}うが\{イツナロウバ,いつなろうば\}\{ ,\}\{結局,けっきょく\}\{エン,えん\}\{ドレス,どれす\}\{ ,\}この\{螺旋,らせん\}から\{逃れ,のがれ\}られんのです\{ ,\}\{続く,つづく\}\{階段,かいだん\}\{ ,\}これきっと\{オレ,おれ\}\{成功,せいこう\}へと\{導く,みちびく\}\{ガイダンス,がいだんす\}\{ ,\}\{信じ,しんじ\}て\{具体,ぐたい\}\{化,か\}\{ ,\}\{靴,くつ\}の\{紐,ひも\}\{結び,むすび\}\{直し,なおし\}\{ ,\}\{イツライクダ,いつらいくだ\}\{ ,\}\{過去,かこ\}の\{財産,ざいさん\}\{ ,\}\{再三,さいさん\}すがれば\{ ,\}そやまぁ\{合わ,あわ\}ない\{採算,さいさん\}\{ ,\}\{踏み外せ,ふみはずせ\}ば\{大半,たいはん\}が\{怪我,けが\}してのまれる\{魔,ま\}の\{トライアングル,とらいあんぐる\}\{ ,\}ひいきなしだ\{ ,\}\{「,\}\{本当,ほんとう\}\{明日,あす\}は\{我が身,わがみ\}\{」,\}と\{自分,じぶん\}に\{言い聞かし,いいきかし\}た\{ ,\}\{今,いま\}まで\{何,なん\}\{枚,まい\}\{CD,しーでぃー\}\{出し,だし\}た\{?,\}ってそれもしかしたら\{見切り,みきり\}\{発車,はっしゃ\}\{ ,\}それも\{テメー,てめー\}のさじ\{加減,かげん\}\{ ,\}あの\{青かっ,あおかっ\}た\{自分,じぶん\}に\{幸,さち\}あれ\{ ,\}\{シリアス,しりあす\}\{ ,\}やっぱり\{続ける,つづける\}ことに\{意義,いぎ\}があると\{信じ,しんじ\}ます\{ ,\}',
  lyric_order: 1,
)

singer = Singer.find_by(name: 'KREVA')
lyrict_type = LyricType.find_by(name: 'VERSE')
Lyric.create(
  song_id: song.id,
  singer_id: singer.id,
  lyric_type_id: lyrict_type.id,
  part_lyric_order: 2,
  lyric: 'あがろうがさがろうが俺の勝手テンションバラバラとめどなく出るこれもラップゲームあれもラップゲーム一体全体誰の作戦仕組まれてる入り組んだ迷路意気込んで挑んだ分ダメージも大きいよう飛ぶ憶測間違った情報も続々こっちはへのかっぱ下がってる風?そりゃ目の錯覚だよまるでエスカレーターのパントマイムタネもしかけもちゃんとあるエンドレスなループのっかって語ればかるくKICKその辺の哲学あがってるつもりでもその行く先は下の方にまがってるかもよ?そっちが調子にのってたその時間こっちはじっくり踊り場で鍛錬何千万遍思い出はホロ苦上がるため時間を費やしたそんな俺が一歩踏み出したちゃんとしゃがんでひざのクッション使って今飛ぶようにスタート',
  ruby: 'あがろうがさがろうがおれのかっててんしょんばらばらとめどなくでるこれもらっぷげーむあれもらっぷげーむいったいぜんたいだれのさくせんしくまれてるいりくんだめいろいきごんでいどんだぶんだめーじもおおきいようとぶおくそくまちがったじょうほうもぞくぞくこっちはへのかっぱさがってるふうそりゃめのさっかくだよまるでえすかれーたーのぱんとまいむたねもしかけもちゃんとあるえんどれすなるーぷのっかってかたればかるくきっくそのへんのてつがくあがってるつもりでもそのいくさきはしたのほうにまがってるかもよそっちがちょうしにのってたそのじかんこっちはじっくりおどりばでたんれんなんぜんまんべんおもいではほろにがあがるためじかんをついやしたそんなおれがいっぽふみだしたちゃんとしゃがんでひざのくっしょんつかっていまとぶようにすたーと',
  lyric_with_ruby: 'あがろうがさがろうが\{俺,おれ\}の\{勝手,かって\}\{ ,\}\{テンション,てんしょん\}\{バラバラ,ばらばら\}\{ ,\}とめどなく\{出る,でる\}\{ ,\}これも\{ラップ,らっぷ\}\{ゲーム,げーむ\}\{ ,\}あれも\{ラップ,らっぷ\}\{ゲーム,げーむ\}\{ ,\}\{一体全体,いったいぜんたい\}\{ ,\}\{誰,だれ\}の\{作戦,さくせん\}\{ ,\}\{仕組ま,しくま\}れてる\{ ,\}\{入り組ん,いりくん\}だ\{迷路,めいろ\}\{ ,\}\{意気込ん,いきごん\}で\{挑ん,いどん\}だ\{分,ぶん\}\{ ,\}\{ダメージ,だめーじ\}も\{ ,\}\{大きい,おおきい\}よう\{ ,\}\{飛ぶ,とぶ\}\{憶測,おくそく\}\{ ,\}\{間違っ,まちがっ\}た\{情報,じょうほう\}も\{ ,\}\{続々,ぞくぞく\}\{ ,\}こっちはへのかっぱ\{ ,\}\{下がっ,さがっ\}てる\{風,ふう\}\{?,\}\{ ,\}そりゃ\{目,め\}の\{錯覚,さっかく\}だよ\{ ,\}まるで\{エスカレーター,えすかれーたー\}の\{パントマイム,ぱんとまいむ\}\{ ,\}\{タネ,たね\}もしかけもちゃんとある\{ ,\}\{エン,えん\}\{ドレス,どれす\}な\{ループ,るーぷ\}のっかって\{語れ,かたれ\}ば\{ ,\}かるく\{KICK,きっく\}\{ ,\}その\{辺,へん\}の\{哲学,てつがく\}\{ ,\}あがってるつもりでも\{ ,\}その\{行く先,いくさき\}は\{ ,\}\{下,した\}の\{方,ほう\}にまがってるかもよ\{?,\}\{ ,\}そっちが\{調子,ちょうし\}にのってたその\{時間,じかん\}\{ ,\}こっちはじっくり\{踊り場,おどりば\}で\{ ,\}\{鍛錬,たんれん\}\{ ,\}\{何,なん\}\{千,ぜん\}\{万,まん\}\{遍,べん\}\{ ,\}\{思い出,おもいで\}は\{ホロ,ほろ\}\{苦,にが\}\{ ,\}\{上がる,あがる\}ため\{時間,じかん\}を\{費やし,ついやし\}た\{ ,\}そんな\{俺,おれ\}が\{一歩,いっぽ\}\{踏み出し,ふみだし\}た\{ ,\}ちゃんとしゃがんでひざの\{クッション,くっしょん\}\{ ,\}\{使っ,つかっ\}て\{ ,\}\{今,いま\}\{ ,\}\{飛ぶ,とぶ\}ように\{スタート,すたーと\}\{ ,\}',
  lyric_order: 2,
)

singer = Singer.find_by(name: 'BY PHAR THE DOPEST')
lyrict_type = LyricType.find_by(name: 'HOOK')
Lyric.create(
  song_id: song.id,
  singer_id: singer.id,
  lyric_type_id: lyrict_type.id,
  part_lyric_order: 1,
  lyric: '1・3・5・7・9・0・8・6・4から2結局エンドレスにCHECKYOURSELF出来なきゃ何処も行けっこねぇでまた',
  ruby: 'いちさんごななきゅうぜろはちろくよんからにけっきょくえんどれすにちぇっくゆあせるふできなきゃどこもいけっこねぇでまた',
  lyric_with_ruby: '\{1,いち\}\{・,\}\{3,さん\}\{・,\}\{5,ご\}\{・,\}\{7,なな\}\{・,\}\{9,きゅう\}\{・,\}\{0,ぜろ\}\{・,\}\{8,はち\}\{・,\}\{6,ろく\}\{・,\}\{4,よん\}から\{2,に\}\{ ,\}\{結局,けっきょく\}\{ ,\}\{エン,えん\}\{ドレス,どれす\}に\{CHECK,ちぇっく\}\{ ,\}\{YOURSELF,ゆあせるふ\}\{ ,\}\{出来,でき\}なきゃ\{何処,どこ\}も\{行け,いけ\}っこねぇ\{ ,\}でまた\{ ,\}',
  lyric_order: 3,
)

singer = Singer.find_by(name: 'BY PHAR THE DOPEST')
lyrict_type = LyricType.find_by(name: 'HOOK')
Lyric.create(
  song_id: song.id,
  singer_id: singer.id,
  lyric_type_id: lyrict_type.id,
  part_lyric_order: 2,
  lyric: '1・3・5・7・9・0・8・6・4から2結局エンドレスにCHECKYOURSELF出来なきゃ何処も行けっこねぇよ',
  ruby: 'いちさんごななきゅうぜろはちろくよんからにけっきょくえんどれすにちぇっくゆあせるふできなきゃどこもいけっこねぇよ',
  lyric_with_ruby: '\{1,いち\}\{・,\}\{3,さん\}\{・,\}\{5,ご\}\{・,\}\{7,なな\}\{・,\}\{9,きゅう\}\{・,\}\{0,ぜろ\}\{・,\}\{8,はち\}\{・,\}\{6,ろく\}\{・,\}\{4,よん\}から\{2,に\}\{ ,\}\{結局,けっきょく\}\{ ,\}\{エン,えん\}\{ドレス,どれす\}に\{CHECK,ちぇっく\}\{ ,\}\{YOURSELF,ゆあせるふ\}\{ ,\}\{出来,でき\}なきゃ\{何処,どこ\}も\{行け,いけ\}っこねぇよ\{ ,\}',
  lyric_order: 4,
)

