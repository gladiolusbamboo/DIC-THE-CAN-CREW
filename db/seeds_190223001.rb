lyr = Lyric.where("lyric LIKE '%35回アゲイン%'").first

if(lyr)
  p '処理開始'
  lyr.ruby = 'どないやねんとりあえずまあさんきゅーおかいあげさいていさんじゅうごかいあげいんかまげんあきがきたってとらいあげんとらいあげんすこやかなるときやめるときそのときどきのきみをみときたいはだみはなさずはなからはかばまでおれがあざやかなはなさかせるどこにいくにもおれをつれてけつうきんつうがくばっぐにつめてけつめてぇぜつれねぇぜべいべーおいてくなよへいめんわりとすぐきずつくがいけんやないめんさらにいたみをますたいへんなたいけんのりこえまたらいねんさらいねんずっとおれらはまいめんさ'
  lyr.lyric_with_ruby = 'どないやねん\{!,\}とりあえず\{ ,\}まあ\{ ,\}\{サンキュー,さんきゅー\}お\{買い上げ,かいあげ\}\{ ,\}\{最低,さいてい\}\{35,さんじゅうご\}\{回,かい\}\{アゲイン,あげいん\}\{ ,\}\{カマ,かま\}\{ゲン,げん\}\{飽き,あき\}がきたって\{トライアゲン,とらいあげん\}\{ ,\}\{トライアゲン,とらいあげん\}\{ ,\}\{健やか,すこやか\}なる\{時,とき\}\{ ,\}\{病める,やめる\}\{時,とき\}\{ ,\}その\{時々,ときどき\}の\{君,きみ\}をみときたい\{ ,\}\{肌身,はだみ\}\{離さ,はなさ\}ず\{ハナ,はな\}から\{墓場,はかば\}まで\{ ,\}おれが\{鮮やか,あざやか\}な\{花,はな\}\{咲かせる,さかせる\}\{ ,\}どこに\{行く,いく\}にもおれを\{連れ,つれ\}てけ\{ ,\}\{通勤,つうきん\}\{通学,つうがく\}\{バッグ,ばっぐ\}につめてけ\{ ,\}つめてぇぜつれねぇぜ\{ベイベー,べいべー\}\{ ,\}\{置い,おい\}てくなよ\{ヘイメン,へいめん\}\{ ,\}わりとすぐ\{傷つく,きずつく\}\{外見,がいけん\}や\{内面,ないめん\}\{ ,\}さらに\{痛み,いたみ\}を\{増す,ます\}\{大変,たいへん\}な\{体験,たいけん\}\{ ,\}\{乗り越え,のりこえ\}また\{来年,らいねん\}\{再来年,さらいねん\}\{ ,\}ずっとおれらは\{マイメン,まいめん\}さ\{ ,\}'
  lyr.save
end
