artist_name =    'KREVA'
lyricUrl_url =   nil
cd_name =        'AFTERMIXTAPE'
cd_released_at = '2019-09-18'
song_name =      'One feat.JQ from Nulbarich'
song_lyricist =  'KREVA & Jeremy Quartus'
song_composer =  'KREVA & Jeremy Quartus'
song_arranger =  'KREVA & Jeremy Quartus'
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

Singer.create(
  name: 'JQ(Nulbarich)',
  is_kick: false
)

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

singer = Singer.find_by(name: 'JQ(Nulbarich)')
lyrict_type = LyricType.find_by(name: 'HOOK')
Lyric.create(
  song_id: song.id,
  singer_id: singer.id,
  lyric_type_id: lyrict_type.id,
  part_lyric_order: 1,
  lyric: 'I\'llstaythewayIam辿り着くまでPleasestaythewayyouarealright?終わらないように壊されないようにLet\'sstaythewaywearealright?Doitonebyone好きな場所へMakeitonebyoneOneplusonemakesoneまたSeeyouagain笑みで',
  ruby: 'あいるすていざうぇーあいあむたどりつくまでぷりーずすていざうぇーゆーあーおーるらいとおわらないようにこわされないようにれっつすていざうぇーうぃーあーおーるらいとどぅーいっとわんばいわんすきなばしょへめいくいっとわんばいわんわんぷらすわんめいくすわんまたしーゆーあげいんえみで',
  lyric_with_ruby: '\{I\'ll,あいる\}\{ ,\}\{stay,すてい\}\{ ,\}\{the,ざ\}\{ ,\}\{way,うぇー\}\{ ,\}\{I,あい\}\{ ,\}\{am,あむ\}\{ ,\}\{辿り,たどり\}\{着く,つく\}まで\{ ,\}\{Please,ぷりーず\}\{ ,\}\{stay,すてい\}\{ ,\}\{the,ざ\}\{ ,\}\{way,うぇー\}\{ ,\}\{you,ゆー\}\{ ,\}\{are,あー\}\{ ,\}\{alright,おーるらいと\}\{?,\}\{ ,\}\{終わら,おわら\}ないように\{ ,\}\{壊さ,こわさ\}れないように\{ ,\}\{Let\'s,れっつ\}\{ ,\}\{stay,すてい\}\{ ,\}\{the,ざ\}\{ ,\}\{way,うぇー\}\{ ,\}\{we,うぃー\}\{ ,\}\{are,あー\}\{ ,\}\{alright,おーるらいと\}\{?,\}\{ ,\}\{Do,どぅー\}\{ ,\}\{it,いっと\}\{ ,\}\{one,わん\}\{ ,\}\{by,ばい\}\{ ,\}\{one,わん\}\{ ,\}\{好き,すき\}な\{場所,ばしょ\}へ\{ ,\}\{Make,めいく\}\{ ,\}\{it,いっと\}\{ ,\}\{one,わん\}\{ ,\}\{by,ばい\}\{ ,\}\{one,わん\}\{ ,\}\{One,わん\}\{ ,\}\{plus,ぷらす\}\{ ,\}\{one,わん\}\{ ,\}\{makes,めいくす\}\{ ,\}\{one,わん\}\{ ,\}また\{ ,\}\{See,しー\}\{ ,\}\{you,ゆー\}\{ ,\}\{again,あげいん\}\{ ,\}\{笑み,えみ\}で\{ ,\}',
  lyric_order: 1,
)

singer = Singer.find_by(name: 'KREVA')
lyrict_type = LyricType.find_by(name: 'VERSE')
Lyric.create(
  song_id: song.id,
  singer_id: singer.id,
  lyric_type_id: lyrict_type.id,
  part_lyric_order: 1,
  lyric: 'Ah絞り出す果汁100%ひねり潰してる重圧はいつも高く掲げた夢追いかけ最終的には背負い投げ次から次荷物担ぎ終わらない祭りの後の祭りAfterParty飛ばしメイクマネーして抜け出そうどんぐりの背比べ別にやらなくたって怒られはしないけど外せないここだけはあの瞬間瞬間目をそらせばとっくのとうに俺は終わってた終わらせないむしろ拍車がかかるこれからやるとか言う前にやる優柔不断なヤツからは産まれないグルーヴ感で',
  ruby: 'あーしぼりだすかじゅうひゃくぱーひねりつぶしてるじゅうあつはいつもたかくかかげたゆめおいかけさいしゅうてきにはせおいなげつぎからつぎにもつかつぎおわらないまつりのあとのまつりあふたーぱーてぃーとばしめいくまねーしてぬけだそうどんぐりのせいくらべべつにやらなくたっておこられはしないけどはずせないここだけはあのしゅんかんしゅんかんめをそらせばとっくのとうにおれはおわってたおわらせないむしろはくしゃがかかるこれからやるとかいうまえにやるゆうじゅうふだんなやつからはうまれないぐるーゔかんで',
  lyric_with_ruby: '\{Ah,あー\}\{ ,\}\{絞り出す,しぼりだす\}\{果汁,かじゅう\}\{100,ひゃく\}\{%,ぱー\}\{ ,\}ひねり\{潰し,つぶし\}てる\{重圧,じゅうあつ\}は\{ ,\}いつも\{高く,たかく\}\{掲げ,かかげ\}た\{夢,ゆめ\}\{ ,\}\{追いかけ,おいかけ\}\{ ,\}\{最終,さいしゅう\}\{的,てき\}には\{背負い投げ,せおいなげ\}\{ ,\}\{次,つぎ\}から\{次,つぎ\}\{ ,\}\{荷物,にもつ\}\{担ぎ,かつぎ\}\{ ,\}\{終わら,おわら\}ない\{ ,\}\{祭り,まつり\}の\{後の祭り,あとのまつり\}\{ ,\}\{AfterParty,あふたーぱーてぃー\}\{ ,\}\{飛ばし,とばし\}\{メイク,めいく\}\{マネー,まねー\}して\{ ,\}\{抜け出そ,ぬけだそ\}う\{ ,\}どんぐりの\{背,せい\}\{比べ,くらべ\}\{ ,\}\{別,べつ\}にやらなくたって\{怒ら,おこら\}れはしないけど\{ ,\}\{外せ,はずせ\}ない\{ ,\}ここだけは\{ ,\}あの\{瞬間,しゅんかん\}\{瞬間,しゅんかん\}\{ ,\}\{目,め\}をそらせば\{ ,\}とっくのとうに\{俺,おれ\}は\{終わっ,おわっ\}てた\{ ,\}\{終わら,おわら\}せない\{ ,\}むしろ\{拍車,はくしゃ\}がかかる\{ ,\}これからやるとか\{言う,いう\}\{前,まえ\}にやる\{ ,\}\{優柔不断,ゆうじゅうふだん\}な\{ヤツ,やつ\}からは\{産まれ,うまれ\}ない\{グルーヴ,ぐるーゔ\}\{感,かん\}で\{ ,\}',
  lyric_order: 2,
)

singer = Singer.find_by(name: 'JQ(Nulbarich)')
lyrict_type = LyricType.find_by(name: 'HOOK')
Lyric.create(
  song_id: song.id,
  singer_id: singer.id,
  lyric_type_id: lyrict_type.id,
  part_lyric_order: 2,
  lyric: 'I\'llstaythewayIam(Yeah)辿り着くまでPleasestaythewayyouarealright?(alright?)終わらないように壊されないようにLet\'sstaythewaywearealright?またいつでもCallmynameDoitonebyone(Yeah,weDoitonebyone)好きな場所へ止まらないようにMakeitonebyone(Ah,wemakeitonebyone)OneplusonemakesoneまたSeeyouagain笑みで',
  ruby: 'あいるすていざうぇーあいあむいぇーたどりつくまでぷりーずすていざうぇーゆーあーおーるらいとおーるらいとおわらないようにこわされないようにれっつすていざうぇーうぃーあーおーるらいとまたいつでもこーるまいねーむどぅーいっとわんばいわんいぇーうぃーどぅーいっとわんばいわんすきなばしょへとまらないようにめいくいっとわんばいわんあーうぃーめいくいっとわんばいわんわんぷらすわんめいくすわんまたしーゆーあげいんえみで',
  lyric_with_ruby: '\{I\'ll,あいる\}\{ ,\}\{stay,すてい\}\{ ,\}\{the,ざ\}\{ ,\}\{way,うぇー\}\{ ,\}\{I,あい\}\{ ,\}\{am,あむ\}\{ ,\}\{(,\}\{Yeah,いぇー\}\{),\}\{ ,\}\{辿り,たどり\}\{着く,つく\}まで\{ ,\}\{Please,ぷりーず\}\{ ,\}\{stay,すてい\}\{ ,\}\{the,ざ\}\{ ,\}\{way,うぇー\}\{ ,\}\{you,ゆー\}\{ ,\}\{are,あー\}\{ ,\}\{alright,おーるらいと\}\{?,\}\{ ,\}\{(,\}\{alright,おーるらいと\}\{?),\}\{ ,\}\{終わら,おわら\}ないように\{ ,\}\{壊さ,こわさ\}れないように\{ ,\}\{Let\'s,れっつ\}\{ ,\}\{stay,すてい\}\{ ,\}\{the,ざ\}\{ ,\}\{way,うぇー\}\{ ,\}\{we,うぃー\}\{ ,\}\{are,あー\}\{ ,\}\{alright,おーるらいと\}\{?,\}\{ ,\}またいつでも\{ ,\}\{Call,こーる\}\{ ,\}\{my,まい\}\{ ,\}\{name,ねーむ\}\{ ,\}\{Do,どぅー\}\{ ,\}\{it,いっと\}\{ ,\}\{one,わん\}\{ ,\}\{by,ばい\}\{ ,\}\{one,わん\}\{ ,\}\{(,\}\{Yeah,いぇー\}\{,,\}\{ ,\}\{we,うぃー\}\{ ,\}\{Do,どぅー\}\{ ,\}\{it,いっと\}\{ ,\}\{one,わん\}\{ ,\}\{by,ばい\}\{ ,\}\{one,わん\}\{),\}\{ ,\}\{好き,すき\}な\{場所,ばしょ\}へ\{ ,\}\{止まら,とまら\}ないように\{ ,\}\{Make,めいく\}\{ ,\}\{it,いっと\}\{ ,\}\{one,わん\}\{ ,\}\{by,ばい\}\{ ,\}\{one,わん\}\{ ,\}\{(,\}\{Ah,あー\}\{,,\}\{ ,\}\{we,うぃー\}\{ ,\}\{make,めいく\}\{ ,\}\{it,いっと\}\{ ,\}\{one,わん\}\{ ,\}\{by,ばい\}\{ ,\}\{one,わん\}\{),\}\{ ,\}\{One,わん\}\{ ,\}\{plus,ぷらす\}\{ ,\}\{one,わん\}\{ ,\}\{makes,めいくす\}\{ ,\}\{one,わん\}\{ ,\}また\{ ,\}\{See,しー\}\{ ,\}\{you,ゆー\}\{ ,\}\{again,あげいん\}\{ ,\}\{笑み,えみ\}で\{ ,\}',
  lyric_order: 3,
)

singer = Singer.find_by(name: 'KREVA')
lyrict_type = LyricType.find_by(name: 'VERSE')
Lyric.create(
  song_id: song.id,
  singer_id: singer.id,
  lyric_type_id: lyrict_type.id,
  part_lyric_order: 2,
  lyric: 'いったい何があった?あの場所もヒドい有様に成り下がった相手しないで成り上がりたい考える自分に何が足りない?本音は楽したいでも状況はどんどんラフにタフに平々凡々の軽いパンチじゃ効かない打ち込むアツい作品焦燥感を消す超能力なんてなくてはまりそうドロ沼それでもいてくれるぜ協力者だから俺はここで今日も歌うまるでセラピー選び抜いた心の叫びそこにプラスするひらめきでとぎれないフローを産み続けるストーリーメーカー',
  ruby: 'いったいなにがあったあのばしょもひどいありさまになりさがったあいてしないでなりあがりたいかんがえるじぶんになにがたりないほんねはらくしたいでもじょうきょうはどんどんらふにたふにへいへいぼんぼんのかるいぱんちじゃきかないうちこむあついさくひんしょうそうかんをけすちょうのうりょくなんてなくてはまりそうどろぬまそれでもいてくれるぜきょうりょくしゃだからおれはここできょうもうたうまるでせらぴーえらびぬいたこころのさけびそこにぷらすするひらめきでとぎれないふろーをうみつづけるすとーりーめーかー',
  lyric_with_ruby: 'いったい\{何,なに\}があった\{?,\}\{ ,\}あの\{場所,ばしょ\}も\{ヒド,ひど\}い\{有様,ありさま\}に\{成り下がっ,なりさがっ\}た\{ ,\}\{相手,あいて\}しないで\{成り上がり,なりあがり\}たい\{ ,\}\{考える,かんがえる\}\{自分,じぶん\}に\{何,なに\}が\{足り,たり\}ない\{?,\}\{ ,\}\{本音,ほんね\}は\{楽,らく\}したい\{ ,\}でも\{状況,じょうきょう\}はどんどん\{ラフ,らふ\}に\{タフ,たふ\}に\{ ,\}\{平々凡々,へいへいぼんぼん\}の\{軽い,かるい\}\{パンチ,ぱんち\}じゃ\{効か,きか\}ない\{ ,\}\{打ち込む,うちこむ\}\{アツ,あつ\}い\{作品,さくひん\}\{ ,\}\{焦燥,しょうそう\}\{感,かん\}を\{消す,けす\}\{超,ちょう\}\{能力,のうりょく\}なんてなくて\{ ,\}はまりそう\{ ,\}\{ドロ,どろ\}\{沼,ぬま\}\{ ,\}それでもいてくれるぜ\{ ,\}\{協力,きょうりょく\}\{者,しゃ\}\{ ,\}だから\{俺,おれ\}はここで\{今日,きょう\}も\{歌う,うたう\}\{ ,\}まるで\{セラピー,せらぴー\}\{ ,\}\{選び,えらび\}\{抜い,ぬい\}た\{心,こころ\}の\{叫び,さけび\}\{ ,\}そこに\{プラス,ぷらす\}するひらめきで\{ ,\}とぎれない\{フロー,ふろー\}を\{産み,うみ\}\{続ける,つづける\}\{ストーリー,すとーりー\}\{メーカー,めーかー\}\{ ,\}',
  lyric_order: 4,
)

singer = Singer.find_by(name: 'JQ(Nulbarich)')
lyrict_type = LyricType.find_by(name: 'HOOK')
Lyric.create(
  song_id: song.id,
  singer_id: singer.id,
  lyric_type_id: lyrict_type.id,
  part_lyric_order: 3,
  lyric: 'I\'llstaythewayIam(Yeah)辿り着くまでPleasestaythewayyouarealright?(alright?)終わらないように壊されないようにLet\'sstaythewaywearealright?またいつでもCallmynameDoitonebyone(Yeah,weDoitonebyone)好きな場所へ止まらないようにMakeitonebyone(Ah,wemakeitonebyone)OneplusonemakesoneまたSeeyouagain笑みで',
  ruby: 'あいるすていざうぇーあいあむいぇーたどりつくまでぷりーずすていざうぇーゆーあーおーるらいとおーるらいとおわらないようにこわされないようにれっつすていざうぇーうぃーあーおーるらいとまたいつでもこーるまいねーむどぅーいっとわんばいわんいぇーうぃーどぅーいっとわんばいわんすきなばしょへとまらないようにめいくいっとわんばいわんあーうぃーめいくいっとわんばいわんわんぷらすわんめいくすわんまたしーゆーあげいんえみで',
  lyric_with_ruby: '\{I\'ll,あいる\}\{ ,\}\{stay,すてい\}\{ ,\}\{the,ざ\}\{ ,\}\{way,うぇー\}\{ ,\}\{I,あい\}\{ ,\}\{am,あむ\}\{ ,\}\{(,\}\{Yeah,いぇー\}\{),\}\{ ,\}\{辿り,たどり\}\{着く,つく\}まで\{ ,\}\{Please,ぷりーず\}\{ ,\}\{stay,すてい\}\{ ,\}\{the,ざ\}\{ ,\}\{way,うぇー\}\{ ,\}\{you,ゆー\}\{ ,\}\{are,あー\}\{ ,\}\{alright,おーるらいと\}\{?,\}\{ ,\}\{(,\}\{alright,おーるらいと\}\{?),\}\{ ,\}\{終わら,おわら\}ないように\{ ,\}\{壊さ,こわさ\}れないように\{ ,\}\{Let\'s,れっつ\}\{ ,\}\{stay,すてい\}\{ ,\}\{the,ざ\}\{ ,\}\{way,うぇー\}\{ ,\}\{we,うぃー\}\{ ,\}\{are,あー\}\{ ,\}\{alright,おーるらいと\}\{?,\}\{ ,\}またいつでも\{ ,\}\{Call,こーる\}\{ ,\}\{my,まい\}\{ ,\}\{name,ねーむ\}\{ ,\}\{Do,どぅー\}\{ ,\}\{it,いっと\}\{ ,\}\{one,わん\}\{ ,\}\{by,ばい\}\{ ,\}\{one,わん\}\{ ,\}\{(,\}\{Yeah,いぇー\}\{,,\}\{ ,\}\{we,うぃー\}\{ ,\}\{Do,どぅー\}\{ ,\}\{it,いっと\}\{ ,\}\{one,わん\}\{ ,\}\{by,ばい\}\{ ,\}\{one,わん\}\{),\}\{ ,\}\{好き,すき\}な\{場所,ばしょ\}へ\{ ,\}\{止まら,とまら\}ないように\{ ,\}\{Make,めいく\}\{ ,\}\{it,いっと\}\{ ,\}\{one,わん\}\{ ,\}\{by,ばい\}\{ ,\}\{one,わん\}\{ ,\}\{(,\}\{Ah,あー\}\{,,\}\{ ,\}\{we,うぃー\}\{ ,\}\{make,めいく\}\{ ,\}\{it,いっと\}\{ ,\}\{one,わん\}\{ ,\}\{by,ばい\}\{ ,\}\{one,わん\}\{),\}\{ ,\}\{One,わん\}\{ ,\}\{plus,ぷらす\}\{ ,\}\{one,わん\}\{ ,\}\{makes,めいくす\}\{ ,\}\{one,わん\}\{ ,\}また\{ ,\}\{See,しー\}\{ ,\}\{you,ゆー\}\{ ,\}\{again,あげいん\}\{ ,\}\{笑み,えみ\}で\{ ,\}',
  lyric_order: 5,
)

singer = Singer.find_by(name: 'KREVA')
lyrict_type = LyricType.find_by(name: 'VERSE')
Lyric.create(
  song_id: song.id,
  singer_id: singer.id,
  lyric_type_id: lyrict_type.id,
  part_lyric_order: 3,
  lyric: 'WeDoitonebyoneAndmakeitonebyoneできないはずなんてないなぁ',
  ruby: 'うぃーどぅーいっとわんばいわんあんどめいくいっとわんばいわんできないはずなんてないなぁ',
  lyric_with_ruby: '\{We,うぃー\}\{ ,\}\{Do,どぅー\}\{ ,\}\{it,いっと\}\{ ,\}\{one,わん\}\{ ,\}\{by,ばい\}\{ ,\}\{one,わん\}\{ ,\}\{And,あんど\}\{ ,\}\{make,めいく\}\{ ,\}\{it,いっと\}\{ ,\}\{one,わん\}\{ ,\}\{by,ばい\}\{ ,\}\{one,わん\}\{ ,\}できないはずなんてない\{ ,\}なぁ\{ ,\}',
  lyric_order: 6,
)

singer = Singer.find_by(name: 'JQ(Nulbarich)')
lyrict_type = LyricType.find_by(name: 'HOOK')
Lyric.create(
  song_id: song.id,
  singer_id: singer.id,
  lyric_type_id: lyrict_type.id,
  part_lyric_order: 4,
  lyric: 'I\'llstaythewayIam辿り着くまでPleasestaythewayyouarealright?終わらないように壊されないようにLet\'sstaythewaywearealright?またいつでもCallmyname(How)Doitonebyone(Yeah,weDoitonebyone)好きな場所へ止まらないようにMakeitonebyone(So,wemakeitonebyone)OneplusonemakesoneまたSeeyouagain笑みで',
  ruby: 'あいるすていざうぇーあいあむたどりつくまでぷりーずすていざうぇーゆーあーおーるらいとおわらないようにこわされないようにれっつすていざうぇーうぃーあーおーるらいとまたいつでもこーるまいねーむはうどぅーいっとわんばいわんいぇーうぃーどぅーいっとわんばいわんすきなばしょへとまらないようにめいくいっとわんばいわんそーうぃーめいくいっとわんばいわんわんぷらすわんめいくすわんまたしーゆーあげいんえみで',
  lyric_with_ruby: '\{I\'ll,あいる\}\{ ,\}\{stay,すてい\}\{ ,\}\{the,ざ\}\{ ,\}\{way,うぇー\}\{ ,\}\{I,あい\}\{ ,\}\{am,あむ\}\{ ,\}\{辿り,たどり\}\{着く,つく\}まで\{ ,\}\{Please,ぷりーず\}\{ ,\}\{stay,すてい\}\{ ,\}\{the,ざ\}\{ ,\}\{way,うぇー\}\{ ,\}\{you,ゆー\}\{ ,\}\{are,あー\}\{ ,\}\{alright,おーるらいと\}\{?,\}\{ ,\}\{終わら,おわら\}ないように\{ ,\}\{壊さ,こわさ\}れないように\{ ,\}\{Let\'s,れっつ\}\{ ,\}\{stay,すてい\}\{ ,\}\{the,ざ\}\{ ,\}\{way,うぇー\}\{ ,\}\{we,うぃー\}\{ ,\}\{are,あー\}\{ ,\}\{alright,おーるらいと\}\{?,\}\{ ,\}またいつでも\{ ,\}\{Call,こーる\}\{ ,\}\{my,まい\}\{ ,\}\{name,ねーむ\}\{ ,\}\{(,\}\{How,はう\}\{),\}\{ ,\}\{Do,どぅー\}\{ ,\}\{it,いっと\}\{ ,\}\{one,わん\}\{ ,\}\{by,ばい\}\{ ,\}\{one,わん\}\{ ,\}\{(,\}\{Yeah,いぇー\}\{,,\}\{ ,\}\{we,うぃー\}\{ ,\}\{Do,どぅー\}\{ ,\}\{it,いっと\}\{ ,\}\{one,わん\}\{ ,\}\{by,ばい\}\{ ,\}\{one,わん\}\{),\}\{ ,\}\{好き,すき\}な\{場所,ばしょ\}へ\{ ,\}\{止まら,とまら\}ないように\{ ,\}\{Make,めいく\}\{ ,\}\{it,いっと\}\{ ,\}\{one,わん\}\{ ,\}\{by,ばい\}\{ ,\}\{one,わん\}\{ ,\}\{(,\}\{So,そー\}\{,,\}\{ ,\}\{we,うぃー\}\{ ,\}\{make,めいく\}\{ ,\}\{it,いっと\}\{ ,\}\{one,わん\}\{ ,\}\{by,ばい\}\{ ,\}\{one,わん\}\{),\}\{ ,\}\{One,わん\}\{ ,\}\{plus,ぷらす\}\{ ,\}\{one,わん\}\{ ,\}\{makes,めいくす\}\{ ,\}\{one,わん\}\{ ,\}また\{ ,\}\{See,しー\}\{ ,\}\{you,ゆー\}\{ ,\}\{again,あげいん\}\{ ,\}\{笑み,えみ\}で\{ ,\}',
  lyric_order: 7,
)

