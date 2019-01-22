artist_name =    'UL'
lyricUrl_url =   'https://www.utamap.com/showkasi.php?surl=k-140305-147'
cd_name =        'ULTRAP'
cd_released_at = ''
song_name =      'La vie én Rose'
song_lyricist =  'MCU & LITTLE'
song_composer =  'MCU, LITTLE & 熊井吾郎'
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

singer = Singer.find_by(name: 'UL')
lyrict_type = LyricType.find_by(name: 'HOOK')
Lyric.create(
  song_id: song.id,
  singer_id: singer.id,
  lyric_type_id: lyrict_type.id,
  part_lyric_order: 1,
  lyric: 'いつか俺たちも死んじゃうなら死んじゃうまで楽しんじゃうどうせならLavieenRoseLavieenRoseLavieenRose(人生バラ色)いつか俺たちも死んじゃうなら死んじゃうまで楽しんじゃうどうせならLavieenRoseLavieenRoseLavieenRose(人生バラ色)',
  ruby: 'いつかおれたちもしんじゃうならしんじゃうまでたのしんじゃうどうせなららゔぃあんろーずらゔぃあんろーずらゔぃあんろーずじんせいばらいろいつかおれたちもしんじゃうならしんじゃうまでたのしんじゃうどうせなららゔぃあんろーずらゔぃあんろーずらゔぃあんろーずじんせいばらいろ',
  lyric_with_ruby: 'いつか\{俺,おれ\}たちも\{死ん,しん\}じゃうなら\{ ,\}\{死ん,しん\}じゃうまで\{楽しん,たのしん\}じゃう\{ ,\}どうせなら\{ ,\}\{La,ら\}\{ ,\}\{vie,ゔぃ\}\{ ,\}\{en,あん\}\{ ,\}\{Rose,ろーず\}\{ ,\}\{La,ら\}\{ ,\}\{vie,ゔぃ\}\{ ,\}\{en,あん\}\{ ,\}\{Rose,ろーず\}\{ ,\}\{La,ら\}\{ ,\}\{vie,ゔぃ\}\{ ,\}\{en,あん\}\{ ,\}\{Rose,ろーず\}\{ ,\}\{(,\}\{ ,\}\{人生,じんせい\}\{バラ,ばら\}\{色,いろ\}\{ ,\}\{),\}\{ ,\}いつか\{俺,おれ\}たちも\{死ん,しん\}じゃうなら\{ ,\}\{死ん,しん\}じゃうまで\{楽しん,たのしん\}じゃう\{ ,\}どうせなら\{ ,\}\{La,ら\}\{ ,\}\{vie,ゔぃ\}\{ ,\}\{en,あん\}\{ ,\}\{Rose,ろーず\}\{ ,\}\{La,ら\}\{ ,\}\{vie,ゔぃ\}\{ ,\}\{en,あん\}\{ ,\}\{Rose,ろーず\}\{ ,\}\{La,ら\}\{ ,\}\{vie,ゔぃ\}\{ ,\}\{en,あん\}\{ ,\}\{Rose,ろーず\}\{ ,\}\{(,\}\{ ,\}\{人生,じんせい\}\{バラ,ばら\}\{色,いろ\}\{ ,\}\{),\}\{ ,\}',
  lyric_order: 1,
)

singer = Singer.find_by(name: 'LITTLE')
lyrict_type = LyricType.find_by(name: 'VERSE')
Lyric.create(
  song_id: song.id,
  singer_id: singer.id,
  lyric_type_id: lyrict_type.id,
  part_lyric_order: 1,
  lyric: 'アホがいきってるまた言い切ってる根拠もなくたくましく生きてる知らないことを知ってるソクラテス逆はるやつに賛辞が送られる敷かれたレールにゃ乗り忘れるいかれたレース名乗り上げる見かねた連中が差し伸べる手を喜べるならサシで飲めるとげとげしいまま青いバラそういられるなら奇跡なのにバランスバランスで頭バカんなるまだ頑張るバラバラんなる丸くなり大人はつらいよ言葉は使いよう品種改良どう染まるかは知んねえが最後笑ってられりゃ人生バラ色',
  ruby: 'あほがいきってるまたいいきってるこんきょもなくたくましくいきてるしらないことをしってるそくらてすぎゃくはるやつにさんじがおくられるしかれたれーるにゃのりわすれるいかれたれーすなのりあげるみかねたれんちゅうがさしのべるてをよろこべるならさしでのめるとげとげしいままあおいばらそういられるならきせきなのにばらんすばらんすであたまばかんなるまだがんばるばらばらんなるまるくなりおとなはつらいよことばはつかいようひんしゅかいりょうどうそまるかはしんねえがさいごわらってられりゃじんせいばらいろ',
  lyric_with_ruby: '\{アホ,あほ\}がいきってる\{ ,\}また\{言い切っ,いいきっ\}てる\{ ,\}\{根拠,こんきょ\}もなくたくましく\{生き,いき\}てる\{ ,\}\{知ら,しら\}ないことを\{知っ,しっ\}てる\{ ,\}\{ソクラテス,そくらてす\}\{ ,\}\{逆,ぎゃく\}はるやつに\{賛辞,さんじ\}が\{送ら,おくら\}れる\{ ,\}\{敷か,しか\}れた\{レール,れーる\}にゃ\{乗り,のり\}\{忘れる,わすれる\}\{ ,\}いかれた\{レース,れーす\}\{名乗り,なのり\}\{上げる,あげる\}\{ ,\}\{見かね,みかね\}た\{連中,れんちゅう\}が\{差し伸べる,さしのべる\}\{手,て\}を\{ ,\}\{喜べる,よろこべる\}なら\{サシ,さし\}で\{飲める,のめる\}\{ ,\}とげとげしいまま\{青い,あおい\}\{バラ,ばら\}\{ ,\}そういられるなら\{奇跡,きせき\}なのに\{ ,\}\{バランス,ばらんす\}\{バランス,ばらんす\}で\{頭,あたま\}\{バカ,ばか\}んなる\{ ,\}まだ\{頑張る,がんばる\}\{バラバラ,ばらばら\}んなる\{ ,\}\{丸く,まるく\}なり\{大人,おとな\}はつらいよ\{ ,\}\{言葉,ことば\}は\{使い,つかい\}よう\{ ,\}\{品種,ひんしゅ\}\{改良,かいりょう\}\{ ,\}どう\{染まる,そまる\}かは\{知ん,しん\}ねえが\{最後,さいご\}\{ ,\}\{笑っ,わらっ\}てられりゃ\{ ,\}\{人生,じんせい\}\{バラ,ばら\}\{色,いろ\}\{ ,\}',
  lyric_order: 2,
)

singer = Singer.find_by(name: 'UL')
lyrict_type = LyricType.find_by(name: 'HOOK')
Lyric.create(
  song_id: song.id,
  singer_id: singer.id,
  lyric_type_id: lyrict_type.id,
  part_lyric_order: 2,
  lyric: 'いつか俺たちも死んじゃうなら死んじゃうまで楽しんじゃうどうせならLavieenRoseLavieenRoseLavieenRose(人生バラ色)いつか俺たちも死んじゃうなら死んじゃうまで楽しんじゃうどうせならLavieenRoseLavieenRoseLavieenRose(人生バラ色)',
  ruby: 'いつかおれたちもしんじゃうならしんじゃうまでたのしんじゃうどうせなららゔぃあんろーずらゔぃあんろーずらゔぃあんろーずじんせいばらいろいつかおれたちもしんじゃうならしんじゃうまでたのしんじゃうどうせなららゔぃあんろーずらゔぃあんろーずらゔぃあんろーずじんせいばらいろ',
  lyric_with_ruby: 'いつか\{俺,おれ\}たちも\{死ん,しん\}じゃうなら\{ ,\}\{死ん,しん\}じゃうまで\{楽しん,たのしん\}じゃう\{ ,\}どうせなら\{ ,\}\{La,ら\}\{ ,\}\{vie,ゔぃ\}\{ ,\}\{en,あん\}\{ ,\}\{Rose,ろーず\}\{ ,\}\{La,ら\}\{ ,\}\{vie,ゔぃ\}\{ ,\}\{en,あん\}\{ ,\}\{Rose,ろーず\}\{ ,\}\{La,ら\}\{ ,\}\{vie,ゔぃ\}\{ ,\}\{en,あん\}\{ ,\}\{Rose,ろーず\}\{ ,\}\{(,\}\{ ,\}\{人生,じんせい\}\{バラ,ばら\}\{色,いろ\}\{ ,\}\{),\}\{ ,\}いつか\{俺,おれ\}たちも\{死ん,しん\}じゃうなら\{ ,\}\{死ん,しん\}じゃうまで\{楽しん,たのしん\}じゃう\{ ,\}どうせなら\{ ,\}\{La,ら\}\{ ,\}\{vie,ゔぃ\}\{ ,\}\{en,あん\}\{ ,\}\{Rose,ろーず\}\{ ,\}\{La,ら\}\{ ,\}\{vie,ゔぃ\}\{ ,\}\{en,あん\}\{ ,\}\{Rose,ろーず\}\{ ,\}\{La,ら\}\{ ,\}\{vie,ゔぃ\}\{ ,\}\{en,あん\}\{ ,\}\{Rose,ろーず\}\{ ,\}\{(,\}\{ ,\}\{人生,じんせい\}\{バラ,ばら\}\{色,いろ\}\{ ,\}\{),\}\{ ,\}',
  lyric_order: 3,
)

singer = Singer.find_by(name: 'MCU')
lyrict_type = LyricType.find_by(name: 'VERSE')
Lyric.create(
  song_id: song.id,
  singer_id: singer.id,
  lyric_type_id: lyrict_type.id,
  part_lyric_order: 2,
  lyric: '失敗して失敗して失敗してまたも心配して心配して心配事いっぱい(でも)実際はちっちゃいちっちゃい事(なら)失敗ごと連れていっぱい転ぶやんちゃワイルドたくましいなんて考えすぎれば恥ずかしい(さらに)背中のしかかるちゃんとしなきゃ(でも)自分のスタイルは抱っこしなきゃ(ギュッとすりゃ)時に痛々しいトゲも刺さるがそれも身だしなみ綺麗な花ほどしなだれるあいにく俺にはそんな暇はねえ(よ)Lifeis一度ならNoビビリパッと咲いてパッと正直に遊び半分いや遊び全部(かっさらい)生きるそれは俺のために',
  ruby: 'しっぱいしてしっぱいしてしっぱいしてまたもしんぱいしてしんぱいしてしんぱいごといっぱいでもじっさいはちっちゃいちっちゃいことならしっぱいごとつれていっぱいころぶやんちゃわいるどたくましいなんてかんがえすぎればはずかしいさらにせなかのしかかるちゃんとしなきゃでもじぶんのすたいるはだっこしなきゃぎゅっとすりゃときにいたいたしいとげもささるがそれもみだしなみきれいなはなほどしなだれるあいにくおれにはそんなひまはねえよらいふいずいちどならのーびびりぱっとさいてぱっとしょうじきにあそびはんぶんいやあそびぜんぶかっさらいいきるそれはおれのために',
  lyric_with_ruby: '\{失敗,しっぱい\}して\{失敗,しっぱい\}して\{失敗,しっぱい\}して\{ ,\}またも\{心配,しんぱい\}して\{心配,しんぱい\}して\{心配,しんぱい\}\{事,ごと\}いっぱい\{ ,\}\{(,\}\{ ,\}でも\{ ,\}\{),\}\{ ,\}\{実際,じっさい\}はちっちゃいちっちゃい\{事,こと\}\{ ,\}\{(,\}\{ ,\}なら\{ ,\}\{),\}\{ ,\}\{失敗,しっぱい\}ごと\{連れ,つれ\}ていっぱい\{転ぶ,ころぶ\}\{ ,\}やんちゃ\{ワイルド,わいるど\}たくましいなんて\{ ,\}\{考え,かんがえ\}すぎれば\{恥ずかしい,はずかしい\}\{ ,\}\{(,\}\{ ,\}さらに\{ ,\}\{),\}\{ ,\}\{背中,せなか\}のしかかるちゃんとしなきゃ\{ ,\}\{(,\}\{ ,\}でも\{ ,\}\{),\}\{ ,\}\{自分,じぶん\}の\{スタイル,すたいる\}は\{抱っこ,だっこ\}しなきゃ\{ ,\}\{(,\}\{ギュッ,ぎゅっ\}とすりゃ\{ ,\}\{),\}\{ ,\}\{時に,ときに\}\{痛々しい,いたいたしい\}\{ ,\}\{トゲ,とげ\}も\{刺さる,ささる\}がそれも\{身だしなみ,みだしなみ\}\{ ,\}\{綺麗,きれい\}な\{花,はな\}ほどしなだれる\{ ,\}あいにく\{俺,おれ\}にはそんな\{暇,ひま\}はねえ\{ ,\}\{(,\}\{ ,\}よ\{ ,\}\{),\}\{ ,\}\{Life,らいふ\}\{ ,\}\{is,いず\}\{ ,\}\{一,いち\}\{度,ど\}なら\{ ,\}\{No,のー\}\{ ,\}\{ビビリ,びびり\}\{ ,\}\{パッ,ぱっ\}と\{咲い,さい\}て\{パッ,ぱっ\}と\{正直,しょうじき\}に\{ ,\}\{遊び,あそび\}\{半分,はんぶん\}いや\{遊び,あそび\}\{全部,ぜんぶ\}\{ ,\}\{(,\}\{ ,\}かっさらい\{ ,\}\{),\}\{ ,\}\{生きる,いきる\}それは\{俺,おれ\}のために\{ ,\}',
  lyric_order: 4,
)

singer = Singer.find_by(name: 'UL')
lyrict_type = LyricType.find_by(name: 'HOOK')
Lyric.create(
  song_id: song.id,
  singer_id: singer.id,
  lyric_type_id: lyrict_type.id,
  part_lyric_order: 3,
  lyric: 'いつか俺たちも死んじゃうなら死んじゃうまで楽しんじゃうどうせならLavieenRoseLavieenRoseLavieenRose(人生バラ色)いつか俺たちも死んじゃうなら死んじゃうまで楽しんじゃうどうせならLavieenRoseLavieenRoseLavieenRose(人生バラ色)',
  ruby: 'いつかおれたちもしんじゃうならしんじゃうまでたのしんじゃうどうせなららゔぃあんろーずらゔぃあんろーずらゔぃあんろーずじんせいばらいろいつかおれたちもしんじゃうならしんじゃうまでたのしんじゃうどうせなららゔぃあんろーずらゔぃあんろーずらゔぃあんろーずじんせいばらいろ',
  lyric_with_ruby: 'いつか\{俺,おれ\}たちも\{死ん,しん\}じゃうなら\{ ,\}\{死ん,しん\}じゃうまで\{楽しん,たのしん\}じゃう\{ ,\}どうせなら\{ ,\}\{La,ら\}\{ ,\}\{vie,ゔぃ\}\{ ,\}\{en,あん\}\{ ,\}\{Rose,ろーず\}\{ ,\}\{La,ら\}\{ ,\}\{vie,ゔぃ\}\{ ,\}\{en,あん\}\{ ,\}\{Rose,ろーず\}\{ ,\}\{La,ら\}\{ ,\}\{vie,ゔぃ\}\{ ,\}\{en,あん\}\{ ,\}\{Rose,ろーず\}\{ ,\}\{(,\}\{ ,\}\{人生,じんせい\}\{バラ,ばら\}\{色,いろ\}\{ ,\}\{),\}\{ ,\}いつか\{俺,おれ\}たちも\{死ん,しん\}じゃうなら\{ ,\}\{死ん,しん\}じゃうまで\{楽しん,たのしん\}じゃう\{ ,\}どうせなら\{ ,\}\{La,ら\}\{ ,\}\{vie,ゔぃ\}\{ ,\}\{en,あん\}\{ ,\}\{Rose,ろーず\}\{ ,\}\{La,ら\}\{ ,\}\{vie,ゔぃ\}\{ ,\}\{en,あん\}\{ ,\}\{Rose,ろーず\}\{ ,\}\{La,ら\}\{ ,\}\{vie,ゔぃ\}\{ ,\}\{en,あん\}\{ ,\}\{Rose,ろーず\}\{ ,\}\{(,\}\{ ,\}\{人生,じんせい\}\{バラ,ばら\}\{色,いろ\}\{ ,\}\{),\}\{ ,\}',
  lyric_order: 5,
)

singer = Singer.find_by(name: 'UL')
lyrict_type = LyricType.find_by(name: 'HOOK')
Lyric.create(
  song_id: song.id,
  singer_id: singer.id,
  lyric_type_id: lyrict_type.id,
  part_lyric_order: 4,
  lyric: 'いつか俺たちも死んじゃうなら死んじゃうまで楽しんじゃうどうせならLavieenRoseLavieenRoseLavieenRose(人生バラ色)いつか俺たちも死んじゃうなら死んじゃうまで楽しんじゃうどうせならLavieenRoseLavieenRoseLavieenRose(人生バラ色)',
  ruby: 'いつかおれたちもしんじゃうならしんじゃうまでたのしんじゃうどうせなららゔぃあんろーずらゔぃあんろーずらゔぃあんろーずじんせいばらいろいつかおれたちもしんじゃうならしんじゃうまでたのしんじゃうどうせなららゔぃあんろーずらゔぃあんろーずらゔぃあんろーずじんせいばらいろ',
  lyric_with_ruby: 'いつか\{俺,おれ\}たちも\{死ん,しん\}じゃうなら\{ ,\}\{死ん,しん\}じゃうまで\{楽しん,たのしん\}じゃう\{ ,\}どうせなら\{ ,\}\{La,ら\}\{ ,\}\{vie,ゔぃ\}\{ ,\}\{en,あん\}\{ ,\}\{Rose,ろーず\}\{ ,\}\{La,ら\}\{ ,\}\{vie,ゔぃ\}\{ ,\}\{en,あん\}\{ ,\}\{Rose,ろーず\}\{ ,\}\{La,ら\}\{ ,\}\{vie,ゔぃ\}\{ ,\}\{en,あん\}\{ ,\}\{Rose,ろーず\}\{ ,\}\{(,\}\{ ,\}\{人生,じんせい\}\{バラ,ばら\}\{色,いろ\}\{ ,\}\{),\}\{ ,\}いつか\{俺,おれ\}たちも\{死ん,しん\}じゃうなら\{ ,\}\{死ん,しん\}じゃうまで\{楽しん,たのしん\}じゃう\{ ,\}どうせなら\{ ,\}\{La,ら\}\{ ,\}\{vie,ゔぃ\}\{ ,\}\{en,あん\}\{ ,\}\{Rose,ろーず\}\{ ,\}\{La,ら\}\{ ,\}\{vie,ゔぃ\}\{ ,\}\{en,あん\}\{ ,\}\{Rose,ろーず\}\{ ,\}\{La,ら\}\{ ,\}\{vie,ゔぃ\}\{ ,\}\{en,あん\}\{ ,\}\{Rose,ろーず\}\{ ,\}\{(,\}\{ ,\}\{人生,じんせい\}\{バラ,ばら\}\{色,いろ\}\{ ,\}\{),\}\{ ,\}',
  lyric_order: 6,
)

singer = Singer.find_by(name: 'LITTLE')
lyrict_type = LyricType.find_by(name: 'OTHER')
Lyric.create(
  song_id: song.id,
  singer_id: singer.id,
  lyric_type_id: lyrict_type.id,
  part_lyric_order: 1,
  lyric: '(笑ってられりゃ人生バラ色)',
  ruby: 'わらってられりゃじんせいばらいろ',
  lyric_with_ruby: '\{(,\}\{笑っ,わらっ\}てられりゃ\{人生,じんせい\}\{バラ,ばら\}\{色,いろ\}\{),\}\{ ,\}',
  lyric_order: 7,
)

