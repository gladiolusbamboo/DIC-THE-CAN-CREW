artist_name =    'Radical Freaks'
lyricUrl_url =   nil
cd_name =        '地球人?'
cd_released_at = '1997-04-01'
song_name =      '被害妄想'
song_lyricist =  'MCU & VOICE'
song_composer =  'DJ TATSUTA'
song_arranger =  'Radical Freaks'
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
  lyric: '人差し指なめ風向きを調べ怒りに満ちた風のしらせ向こうの方じゃまたドングリの背比べ相も変わらぬこの場所の流れ喜怒哀楽からはみ出ちまった怒音にならぬドレミファソラシド窓を開ければまたそこにある窓繰り返されて見る走馬燈あれは確か午前0時過ぎにとある場所にて行われた儀式ついカッとなっちまっておのれの意識コントロールできずに変わった景色',
  ruby: 'ひとさしゆびなめかざむきをしらべいかりにみちたかぜのしらせむこうのほうじゃまたどんぐりのせいくらべあいもかわらぬこのばしょのながれきどあいらくからはみでちまったどおとにならぬどれみふぁそらしどまどをあければまたそこにあるまどくりかえされてみるそうまとうあれはたしかごぜんれいじすぎにとあるばしょにておこなわれたぎしきついかっとなっちまっておのれのいしきこんとろーるできずにかわったけしき',
  lyric_with_ruby: '\{人差し指,ひとさしゆび\}なめ\{風向き,かざむき\}を\{調べ,しらべ\}\{ ,\}\{怒り,いかり\}に\{満ち,みち\}た\{風,かぜ\}のしらせ\{ ,\}\{向こう,むこう\}の\{方,ほう\}じゃまた\{ドングリ,どんぐり\}の\{背,せい\}\{比べ,くらべ\}\{ ,\}\{相,あい\}も\{変わら,かわら\}ぬこの\{場所,ばしょ\}の\{流れ,ながれ\}\{ ,\}\{喜怒哀楽,きどあいらく\}から\{はみ出,はみで\}ちまった\{怒,ど\}\{ ,\}\{音,おと\}にならぬ\{ドレミファソラシド,どれみふぁそらしど\}\{ ,\}\{窓,まど\}を\{開けれ,あけれ\}ばまたそこにある\{窓,まど\}\{ ,\}\{繰り返さ,くりかえさ\}れて\{見る,みる\}\{走馬燈,そうまとう\}\{ ,\}あれは\{確か,たしか\}\{午前,ごぜん\}\{0,れい\}\{時,じ\}\{過ぎ,すぎ\}に\{ ,\}とある\{場所,ばしょ\}にて\{行わ,おこなわ\}れた\{儀式,ぎしき\}\{ ,\}つい\{カッ,かっ\}となっちまっておのれの\{意識,いしき\}\{ ,\}\{コントロール,こんとろーる\}できずに\{変わっ,かわっ\}た\{景色,けしき\}\{ ,\}',
  lyric_order: 1,
)

singer = Singer.find_by(name: 'VOICE')
lyrict_type = LyricType.find_by(name: 'VERSE')
Lyric.create(
  song_id: song.id,
  singer_id: singer.id,
  lyric_type_id: lyrict_type.id,
  part_lyric_order: 2,
  lyric: '目を刺す程に強いあの光近づく者は受けるイナビカリ隣で妖精へと早変わり育ち盛りにもらう手がかり目指すは言葉建てる建築家そんなに君は危険人物か眉間にしわよせ両手を合わせ祈り届かずに消える幸せあんたに向けられたのは不発弾あんなにあるのに足らぬお仏壇今宵も悪役面のスタイル分け与えようかオレのスマイル妄想だけ膨れあがる頭もうよそうよ強がるだけ不様お子さまランチの旗持ちながら砂のお城に住む王様',
  ruby: 'めをさすほどにつよいあのひかりちかづくものはうけるいなびかりとなりでようせいへとはやがわりそだちざかりにもらうてがかりめざすはことばたてるけんちくかそんなにきみはきけんじんぶつかみけんにしわよせりょうてをあわせいのりとどかずにきえるしあわせあんたにむけられたのはふはつだんあんなにあるのにたらぬおぶつだんこよいもあくやくづらのすたいるわけあたえようかおれのすまいるもうそうだけふくれあがるあたまもうよそうよつよがるだけぶざまおこさまらんちのはたもちながらすなのおしろにすむおうさま',
  lyric_with_ruby: '\{目,め\}を\{刺す,さす\}\{程,ほど\}に\{強い,つよい\}あの\{光,ひかり\}\{ ,\}\{近づく,ちかづく\}\{者,もの\}は\{受ける,うける\}\{イナビカリ,いなびかり\}\{ ,\}\{隣,となり\}で\{妖精,ようせい\}へと\{早変わり,はやがわり\}\{ ,\}\{育ち,そだち\}\{盛り,ざかり\}にもらう\{手がかり,てがかり\}\{ ,\}\{目指す,めざす\}は\{言葉,ことば\}\{建てる,たてる\}\{建築,けんちく\}\{家,か\}\{ ,\}そんなに\{君,きみ\}は\{危険,きけん\}\{人物,じんぶつ\}か\{ ,\}\{眉間,みけん\}にしわよせ\{両手,りょうて\}を\{合わせ,あわせ\}\{ ,\}\{祈り,いのり\}\{届か,とどか\}ずに\{消える,きえる\}\{幸せ,しあわせ\}\{ ,\}あんたに\{向け,むけ\}られたのは\{不発,ふはつ\}\{弾,だん\}\{ ,\}あんなにあるのに\{足ら,たら\}ぬお\{仏壇,ぶつだん\}\{ ,\}\{今宵,こよい\}も\{悪役,あくやく\}\{面,づら\}の\{スタイル,すたいる\}\{ ,\}\{分け与えよ,わけあたえよ\}うか\{オレ,おれ\}の\{スマイル,すまいる\}\{ ,\}\{妄想,もうそう\}だけ\{膨れ,ふくれ\}あがる\{頭,あたま\}\{ ,\}もうよそうよ\{強がる,つよがる\}だけ\{不様,ぶざま\}\{ ,\}\{お子さま,おこさま\}\{ランチ,らんち\}の\{旗持ち,はたもち\}ながら\{ ,\}\{砂,すな\}のお\{城,しろ\}に\{住む,すむ\}\{王様,おうさま\}\{ ,\}',
  lyric_order: 2,
)

singer = Singer.find_by(name: 'Radical Freaks')
lyrict_type = LyricType.find_by(name: 'HOOK')
Lyric.create(
  song_id: song.id,
  singer_id: singer.id,
  lyric_type_id: lyrict_type.id,
  part_lyric_order: 1,
  lyric: 'あても無くさまよってる世界霧の中でゆがんでる未来足がつかる無意識のままで沈み込む沈み込む',
  ruby: 'あてもなくさまよってるせかいきりのなかでゆがんでるみらいあしがつかるむいしきのままでしずみこむしずみこむ',
  lyric_with_ruby: 'あても\{無く,なく\}さまよってる\{世界,せかい\}\{ ,\}\{霧,きり\}の\{中,なか\}でゆがんでる\{未来,みらい\}\{ ,\}\{足,あし\}がつかる\{無意識,むいしき\}のままで\{沈み,しずみ\}\{込む,こむ\}\{ ,\}\{沈み,しずみ\}\{込む,こむ\}\{ ,\}',
  lyric_order: 3,
)

singer = Singer.find_by(name: 'Radical Freaks')
lyrict_type = LyricType.find_by(name: 'VERSE')
Lyric.create(
  song_id: song.id,
  singer_id: singer.id,
  lyric_type_id: lyrict_type.id,
  part_lyric_order: 3,
  lyric: '血まなこのままで開いた目ン玉次第にでかくなっていく頭ボーンボーンと泡になって消えていくシャボン突き進む道に無い行き止まり振り出し戻り座る右隣り手あたり次第にしかける地雷踏むか踏まぬかあと君次第どこに向けてぶつけるその怒り明るい場所もほらね黒光り被害者はけむいタバコの煙におおわれてしばしのあいだ眠り月の顔色変える朝焼け日あたる所つくられる日陰むかで歩きは疲れたろう考え直して行く丘の向こう',
  ruby: 'ちまなこのままでひらいためんたましだいにでかくなっていくあたまぼーんぼーんとあわになってきえていくしゃぼんつきすすむみちにないいきどまりふりだしもどりすわるみぎどなりてあたりしだいにしかけるじらいふむかふまぬかあときみしだいどこにむけてぶつけるそのいかりあかるいばしょもほらねくろびかりひがいしゃはけむいたばこのけむりにおおわれてしばしのあいだねむりつきのかおいろかえるあさやけひあたるところつくられるひかげむかであるきはつかれたろうかんがえなおしていくおかのむこう',
  lyric_with_ruby: '\{血まなこ,ちまなこ\}のままで\{開い,ひらい\}た\{目,め\}\{ン,ん\}\{玉,たま\}\{ ,\}\{次第に,しだいに\}でかくなっていく\{頭,あたま\}\{ ,\}\{ボーンボーン,ぼーんぼーん\}と\{泡,あわ\}になって\{消え,きえ\}ていく\{シャボン,しゃぼん\}\{ ,\}\{突き進む,つきすすむ\}\{道,みち\}に\{無い,ない\}\{行き止まり,いきどまり\}\{ ,\}\{振り出し,ふりだし\}\{戻り,もどり\}\{座る,すわる\}\{右,みぎ\}\{隣り,どなり\}\{ ,\}\{手,て\}あたり\{次第に,しだいに\}しかける\{地雷,じらい\}\{ ,\}\{踏む,ふむ\}か\{踏ま,ふま\}ぬかあと\{君,きみ\}\{次第,しだい\}\{ ,\}どこに\{向け,むけ\}てぶつけるその\{怒り,いかり\}\{ ,\}\{明るい,あかるい\}\{場所,ばしょ\}もほらね\{黒光り,くろびかり\}\{ ,\}\{被害,ひがい\}\{者,しゃ\}はけむい\{タバコ,たばこ\}の\{煙,けむり\}におおわれてしばしのあいだ\{眠り,ねむり\}\{ ,\}\{月,つき\}の\{顔色,かおいろ\}\{変える,かえる\}\{朝焼け,あさやけ\}\{ ,\}\{日,ひ\}あたる\{所,ところ\}つくられる\{日陰,ひかげ\}\{ ,\}むかで\{歩き,あるき\}は\{疲れ,つかれ\}たろう\{ ,\}\{考え直し,かんがえなおし\}て\{行く,いく\}\{丘,おか\}の\{向こう,むこう\}\{ ,\}',
  lyric_order: 4,
)

singer = Singer.find_by(name: 'Radical Freaks')
lyrict_type = LyricType.find_by(name: 'HOOK')
Lyric.create(
  song_id: song.id,
  singer_id: singer.id,
  lyric_type_id: lyrict_type.id,
  part_lyric_order: 2,
  lyric: 'あても無くさまよってる世界霧の中でゆがんでる未来足がつかる無意識のままで沈み込む沈み込む',
  ruby: 'あてもなくさまよってるせかいきりのなかでゆがんでるみらいあしがつかるむいしきのままでしずみこむしずみこむ',
  lyric_with_ruby: 'あても\{無く,なく\}さまよってる\{世界,せかい\}\{ ,\}\{霧,きり\}の\{中,なか\}でゆがんでる\{未来,みらい\}\{ ,\}\{足,あし\}がつかる\{無意識,むいしき\}のままで\{沈み,しずみ\}\{込む,こむ\}\{ ,\}\{沈み,しずみ\}\{込む,こむ\}\{ ,\}',
  lyric_order: 5,
)

singer = Singer.find_by(name: 'Radical Freaks')
lyrict_type = LyricType.find_by(name: 'VERSE')
Lyric.create(
  song_id: song.id,
  singer_id: singer.id,
  lyric_type_id: lyrict_type.id,
  part_lyric_order: 4,
  lyric: '目に付く程のその好かん好意(まー肩の力抜き飲む缶コーヒー)本当に夜通し夜更け集う同士(見てるこっちが)フケつもる頭皮妄想が膨らんでちょー重そうだ右も左もわからぬ操作リモコンで幕を閉じるものたちの足跡は消えてぬかるみの中へ',
  ruby: 'めにつくほどのそのすかんこういまーかたのちからぬきのむかんこーひーほんとうによどおしよふけつどうどうしみてるこっちがふけつもるとうひもうそうがふくらんでちょーおもそうだみぎもひだりもわからぬそうさりもこんでまくをとじるものたちのあしあとはきえてぬかるみのなかへ',
  lyric_with_ruby: '\{目,め\}に\{付く,つく\}\{程,ほど\}のその\{好か,すか\}ん\{好意,こうい\}\{ ,\}\{(,\}まー\{肩,かた\}の\{力,ちから\}\{抜き,ぬき\}\{飲む,のむ\}\{缶,かん\}\{コーヒー,こーひー\}\{),\}\{ ,\}\{本当に,ほんとうに\}\{夜通し,よどおし\}\{夜更け,よふけ\}\{集う,つどう\}\{同士,どうし\}\{ ,\}\{(,\}\{見,み\}てるこっちが\{),\}\{ ,\}\{フケ,ふけ\}つもる\{頭皮,とうひ\}\{ ,\}\{妄想,もうそう\}が\{膨らん,ふくらん\}でちょー\{重,おも\}そうだ\{ ,\}\{右,みぎ\}も\{左,ひだり\}もわからぬ\{操作,そうさ\}\{ ,\}\{リモコン,りもこん\}で\{幕,まく\}を\{閉じる,とじる\}ものたちの\{足跡,あしあと\}は\{消え,きえ\}てぬかるみの\{中,なか\}へ\{ ,\}',
  lyric_order: 6,
)

singer = Singer.find_by(name: 'Radical Freaks')
lyrict_type = LyricType.find_by(name: 'HOOK')
Lyric.create(
  song_id: song.id,
  singer_id: singer.id,
  lyric_type_id: lyrict_type.id,
  part_lyric_order: 3,
  lyric: 'あても無くさまよってる世界霧の中でゆがんでる未来足がつかる無意識のままで沈み込む沈み込む',
  ruby: 'あてもなくさまよってるせかいきりのなかでゆがんでるみらいあしがつかるむいしきのままでしずみこむしずみこむ',
  lyric_with_ruby: 'あても\{無く,なく\}さまよってる\{世界,せかい\}\{ ,\}\{霧,きり\}の\{中,なか\}でゆがんでる\{未来,みらい\}\{ ,\}\{足,あし\}がつかる\{無意識,むいしき\}のままで\{沈み,しずみ\}\{込む,こむ\}\{ ,\}\{沈み,しずみ\}\{込む,こむ\}\{ ,\}',
  lyric_order: 7,
)

