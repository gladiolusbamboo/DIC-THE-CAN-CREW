song = Song.find_by(name: 'ある意味規則的な生活の中の贅沢')
lyric = Lyric.find_by(song: song, lyric_order: 6);
if song
  lyric.lyric = 'ディディディダッタ意地になった日々にばっか道があった何も欲しくなかった「～達」を付けられたくはなかったただ本音を言えれば良かった転んでも死ねはしなかった一人で偉そうとのぼった声と白い目が僕を襲った沈んでく夕陽に似合った影が今生きてく勇気になった今に見てろと明日に誓った皆に聞けよと歌詞にうたったなにが大事なのか判ったそれは今愛した奴らだったもう認めよう意地になった日々それが俺の駆け抜けた十代'
  lyric.lyric_with_ruby = '\{ディディディダッタ,でぃでぃでぃだった\}\{ ,\}\{意地,いじ\}になった\{ ,\}\{日々,ひび\}にばっか\{ ,\}\{道,みち\}があった\{ ,\}\{何,なに\}も\{欲しく,ほしく\}なかった\{ ,\}\{「,\}\{～,\}\{達,たち\}\{」,\}を\{付け,つけ\}られたくはなかった\{ ,\}ただ\{本音,ほんね\}を\{言えれ,いえれ\}ば\{良かっ,よかっ\}た\{ ,\}\{転ん,ころん\}でも\{死ね,しね\}はしなかった\{ ,\}\{一人,ひとり\}で\{偉,えら\}そうとのぼった\{ ,\}\{声,こえ\}と\{白い,しろい\}\{目,め\}が\{僕,ぼく\}を\{襲っ,おそっ\}た\{ ,\}\{沈ん,しずん\}でく\{夕陽,ゆうひ\}に\{似合っ,にあっ\}た\{影,かげ\}が\{ ,\}\{今,いま\}\{生き,いき\}てく\{勇気,ゆうき\}になった\{ ,\}\{今,いま\}に\{見,み\}てろと\{明日,あす\}に\{誓っ,ちかっ\}た\{ ,\}\{皆,みな\}に\{聞けよ,きけよ\}と\{歌詞,かし\}にうたった\{ ,\}なにが\{大事,だいじ\}なのか\{判っ,わかっ\}た\{ ,\}それは\{今,いま\}\{愛し,あいし\}た\{奴ら,やつら\}だった\{ ,\}もう\{認めよ,みとめよ\}う\{ ,\}\{意地,いじ\}になった\{日々,ひび\}\{ ,\}それが\{俺,おれ\}の\{駆け抜け,かけぬけ\}た\{十,じゅう\}\{代,だい\}\{ ,\}'
  lyric.save
else
  p '見つからない -> ' + lyric
end

