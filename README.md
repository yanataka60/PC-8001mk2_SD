# PC-8001mk2にSD-CARDからCMT形式ファイルのロード、セーブ機能

![PC-8001mk2_SD](https://github.com/yanataka60/PC-8001mk2_SD/blob/main/JPEG/TITLE.jpg)

　PC-8001mk2でSD-CARDからCMT形式ファイルのロード、セーブ機能を実現するものです。

　(2023.4.24追記)PC-8001mk2SRでは、Nモード、N80モードで動作しますが、N80SRモードでは動作しないとの報告がありました。

　CMTからの読み込み実行に数分掛かっていたゲームも数十秒で実行できます。

　PC-8001mk2_SD基板は、PC-8001mk2拡張スロットに挿入し、SDアクセスプログラムを書き込んだROMを本体内拡張ROMソケットに挿入して使います。

　なお、Arduino、ROMへ書き込むための機器が別途必要となります。

## 回路図
　KiCadフォルダ内のPC-8001mk2_SD.pdfを参照してください。

[回路図](https://github.com/yanataka60/PC-8001mk2_SD/blob/main/Kicad/PC-8001mk2_SD.pdf)

![PC-8001mk2_SD](https://github.com/yanataka60/PC-8001mk2_SD/blob/main/Kicad/PC-8001mk2_SD.jpg)

## 部品
|番号|品名|数量|備考|
| ------------ | ------------ | ------------ | ------------ |
||J2、J3のいずれか|||
|J2|Micro_SD_Card_Kit|1|秋月電子通商 AE-microSD-LLCNV (注1)|
|J3|MicroSD Card Adapter|1|Arduino等に使われる5V電源に対応したもの|
|U1|74LS04|1||
|U2|74LS30|1||
|U3|8255|1||
|U4|Arduino_Pro_Mini_5V|1|(注2)|
|C1|電解コンデンサ 16v100uF|1||
|C2-C4|積層セラミックコンデンサ 0.1uF|3||
||2764/28C64相当品|1|本体内拡張ROMソケットに挿入|

　　　注1)秋月電子通商　AE-microSD-LLCNVのJ1ジャンパはショートしてください。

　　　注2)Arduino Pro MiniはA4、A5ピンも使っています。

### MicroSD Card Adapterを使う(Rev1.1)
J3に取り付けます。

MicroSD Card Adapterについているピンヘッダを除去してハンダ付けするのが一番確実ですが、J3の穴にMicroSD Card Adapterをぴったりと押しつけ、裏から多めにハンダを流し込むことでハンダ付けをする方法もあります。なお、この方法の時にはしっかりハンダ付けが出来たかテスターで導通を確認しておいた方が安心です。

ハンダ付けに自信のない方はJ2の秋月電子通商　AE-microSD-LLCNVをお使いください。AE-microSD-LLCNVならパワーLED、アクセスLEDが付いています。

![MicroSD Card Adapter1](https://github.com/yanataka60/PC-8001mk2_SD/blob/main/JPEG/MicroSD%20Card%20Adapter(1).JPG)

![MicroSD Card Adapter2](https://github.com/yanataka60/PC-8001mk2_SD/blob/main/JPEG/MicroSD%20Card%20Adapter(2).JPG)

![MicroSD Card Adapter3](https://github.com/yanataka60/PC-8001mk2_SD/blob/main/JPEG/MicroSD%20Card%20Adapter(3).JPG)

![MicroSD Card Adapter4](https://github.com/yanataka60/PC-8001mk2_SD/blob/main/JPEG/MicroSD%20Card%20Adapter(4).JPG)


### MicroSD Card Adapterを使う(Rev1.0)
以下のピン番号を参考に変換基板等繋ぎ方は適宜対応してください。

|AE-microSD-LLCNVピン番号|MicroSD Card Adapterピン番号|信号名|
| ---------------------- | -------------------------- | ---- |
|1|2|5V|
|4|1|GND|
|5|5|SCK|
|6|3|MISO|
|7|4|MOSI|
|8|6|CS|

![MicroSD Card Adapter](https://github.com/yanataka60/PC-8001mk2_SD/blob/main/JPEG/MicroSD%20Card%20Adapter.JPG)

## ROMへの書込み
　Z80フォルダ内のEXT_ROM_SHIFT_OFF.bin、EXT_ROM_SHIFT_ON.bin、EXT_ROM_SHIFT_OFF.bin又はEXT_ROM_SHIFT_ON.binをROMライター(TL866II Plus等)を使って2764又は28C64に書き込み、本体内拡張ROMソケットに装着します。

　拡張ROMを本体内拡張ROMソケットに装着しますのでPC-8001mk2_SDを使いたくない時に拡張ROMを外すのは非常に面倒です。

　そこでSHIFTキー(又はAキー)を押しながら電源ON又はリセットすることでソフトウェア的に動作を切り替えられるようにしています。

　四つの違いは、以下のとおりです。

#### 2023.6.3追記
　従来SHIFTキーによりON、OFFを切り替えていましたが、CTRLキーを押しながら電源ON又はリセットで行うNモードとN80モードの切り替えとの併用に問題があるとの指摘がありました。

　FDD等を使うことがなくON、OFFを切り替えることがほぼない方は従来のSHIFTキー方式で不都合は無いと思いますが、ON、OFFを切り替えることがある方はAキー方式をお使いください。

　●EXT_ROM_SHIFT_OFF.bin(通常PC-8001mk2_SDを使いたい人向け)

　　・普通に電源ON又はリセットする                -> PC-8001mk2_SDを使う。

　　・SHIFTキーを押しながら電源ON又はリセットする -> PC-8001mk2_SDを切り離す。

　●EXT_ROM_PRESS_A_OFF.bin(通常PC-8001mk2_SDを使いたい人向け)

　　・普通に電源ON又はリセットする                -> PC-8001mk2_SDを使う。

　　・Aキーを押しながら電源ON又はリセットする -> PC-8001mk2_SDを切り離す。

　●EXT_ROM_SHIFT_ON.bin(通常PC-8001mk2_SDを使わない人向け)

　　・普通に電源ON又はリセットする                -> PC-8001mk2_SDを切り離す。

　　・SHIFTキーを押しながら電源ON又はリセットする -> PC-8001mk2_SDを使う。

　●EXT_ROM_PRESS_A_ON.bin(通常PC-8001mk2_SDを使わない人向け)

　　・普通に電源ON又はリセットする                -> PC-8001mk2_SDを切り離す。

　　・Aキーを押しながら電源ON又はリセットする -> PC-8001mk2_SDを使う。

　ソースはPC-8001_SDリポジトリ、Z80フォルダ内のEXT_ROM.sに統合されています。

　アッセンブルするときは、53行をコメントアウトし、56行のセミコロン (;)を削除してください。

　また、四つを切り替えるためには126行から125行までを必要な行についてセミコロン (;)を削除し不必要な行にセミコロン (;)をつけてコメントアウトします。

## Arduinoプログラム
　PC-8001_SDと全く同じものを使用しています。

　PC-8001_SDでソケットを使用して差込式にしているのであればそのままPC-8001mk2_SDに差して使えます。

　Arduino IDEを使ってPC-8001_SDリポジトリ、Arduinoフォルダ、PC-8001_SDフォルダ内PC-8001_SD.inoを書き込みます。

　SdFatライブラリを使用しているのでArduino IDEメニューのライブラリの管理からライブラリマネージャを立ち上げて「SdFat」をインストールしてください。

　「SdFat」で検索すれば見つかります。「SdFat」と「SdFat - Adafruit Fork」が見つかりますが「SdFat」のほうを使っています。

注)Arduinoを基板に直付けしている場合、Arduinoプログラムを書き込むときは、拡張スロットから取り出し、74LS04を外したうえで書き込んでください。

## 拡張スロットへの挿入
### そのまま挿入する場合
　横幅が短くスロットのガイドレールに届きませんので厚さ5mm程度のゴム足などをつけて挿入します。

　試作基板ではカードエッジ部分の幅が足りず、挿入の仕方によっては電源がショートしてしまうことが危険がありましたが、公開に当たって幅を修正しています。

![Slot1](https://github.com/yanataka60/PC-8001mk2_SD/blob/main/JPEG/PC-8001mk2_SD(3).JPG)

### 補助板をつけスロットのガイドレールを利用する場合
　基板の左右に補助板を取り付ければスロットのガイドレールに沿って挿入することができるようになります。

#### 本体後ろから見て右側に取り付ける補助版のサイズ(画像右側)
　84mm(奥行)×65mm(幅)×1.6mm(厚さ)

#### 本体後ろから見て左側に取り付ける補助版のサイズ(画像左側)
　84mm(奥行)×55mm(幅)×1.6mm(厚さ)

画像では不用となった基板をカットしてセロテープで仮止めしています。

![Slot2](https://github.com/yanataka60/PC-8001mk2_SD/blob/main/JPEG/PC-8001mk2_SD(4).JPG)
![Slot3](https://github.com/yanataka60/PC-8001mk2_SD/blob/main/JPEG/PC-8001mk2_SD(5).JPG)

## SD-CARD
　仕様はPC-8001_SDと同じです。

　FAT16又はFAT32が認識できます。

　ルートに置かれた拡張子が「.CMT」のCMT形式ファイルのみ認識できます。(CMT形式以外のファイル、フォルダも表示されますがLOAD実行の対象になりません)

　CMT形式であれば複数のCMTファイルを一つのファイルとしてまとめてあっても認識します。

　例)

　　BASIC+機械語　　　　　　　　　　　　　->　LOAD "DOSファイル名"[CR]、MON[CR]、L[CR]

　　機械語+機械語　　　　　　　　　　　　->　MON[CR]、 L DOSファイル名[CR]、L[CR]

　　オートラン機能ファイル+BASIC　　　　　->　MON[CR]、L DOSファイル名[CR]（以下オートラン）

　　オートラン機能ファイル+BASIC+機械語　->　MON[CR]、L DOSファイル名[CR]（以下オートラン）

　　オートラン機能ファイル+機械語+機械語　->　MON[CR]、L DOSファイル名[CR]（以下オートラン）

　　など

　ファイル名は「.CMT」を除いて32文字まで、ただし半角カタカナ、及び一部の記号はArduinoが認識しないので使えません。パソコンでファイル名を付けるときはアルファベット、数字および空白でファイル名をつけてください。

## 使い方
　仕様はPC-8001_SDと同じです。

　PC-8001mk2_SD使用の有無はSHIFTキーを押しながら電源ON又はRESET又はAキーを押しながら電源ON又はRESETすることで切り替えてください。

### BASICコマンド
#### FILES[CR]又はFILES "文字列"[CR]
FILES[CR]とするとSD-CARDルートディレクトリにあるファイルの一覧を表示します。

FILES "文字列"[CR]とするとSD-CARDルートディレクトリにあるその文字列から始まるファイルの一覧を表示します。

20件表示したところで指示待ちになるので打ち切るならESC又は↑を入力すると打ち切られ、Bキーで前の16件に戻ります。それ以外のキーで次の16件を表示します。

　行頭に「LOAD "」を付加して表示してあるので実行したいファイルにカーソルキーを合わせて[CR]キーを押すだけでLOAD可能です。

　表示される順番は、登録順となりファイル名アルファベッド順などのソートした順で表示することはできません。

##### 参考
　FILES "文字列"[CR]とする場合、基本的にはダブルコーテーションが無くても機能しますが、数字で始まるファイル名の場合ダブルコーテーションが無いと検索できません。

　× FILES 3

　○ FILES "3"

#### LOAD "DOSファイル名"[CR]
指定したDOSフィル名のBASICプログラムをSD-CARDからLOADします。

ファイル名の前に"(ダブルコーテーション)は必須ですが、ファイル名の後ろに"(ダブルコーテーション)は有っても無くても構いません。

ファイル名の最後の「.CMT」も有っても無くても構いません。

　例)

　　LOAD "TEST" -> DOSファイル名「TEST.CMT」を読み込みます。

　　LOAD "TEST.BAS" -> DOSファイル名「TEST.BAS.CMT」を読み込みます。

　　LOAD "TEST.BAS.CMT" -> DOSファイル名「TEST.BAS.CMT」を読み込みます。

##### 参考
　基本的にはDOSファイル名をダブルコーテーションで括らなくても機能しますが、数字で始まるファイル名の場合ダブルコーテーションが無いとLOADできません。

　NOT FIND FILEと表示されます。

　× LOAD 3D MAZE

　○ LOAD "3D MAZE"

#### LOAD ""[CR]（※多段ロードファイルの２段目以降のみ有効）
直前に読み込まれたDOSファイルが多段ロード用に複数のCMTファイルが連結されており、２段目以降がBASICプログラムであった時のみ有効に動作し、BASICプログラムをSD-CARDからLOADします。

#### SAVE "DOSファイル名"[CR]
BASICプログラムを指定したDOSフィル名でSD-CARDに上書きSAVEします。

ファイル名の省略は出来ません。

ファイル名の前に"(ダブルコーテーション)は必須ですが、ファイル名の後ろに"(ダブルコーテーション)は有っても無くても構いません。

ファイル名の最後の「.CMT」も有っても無くても構いません。

指定したDOSファイル名の最初の６文字がCMT形式の中に保存されるファイル名として使われます。

BASICプログラムであることを識別するために「.BAS」を付けることを推奨します。

　例)

　　SAVE "TEST" -> 「TEST.CMT」で保存される。

　　SAVE "TEST.BAS" -> 「TEST.BAS.CMT」で保存される。

##### 参考
　基本的にはDOSファイル名をダブルコーテーションで括らなくても機能しますが、数字で始まるファイル名の場合ダブルコーテーションが無いとSAVEできません。

　SD-CARD INITIALIZE ERRORと表示されます。

#### KILL DOSファイル名[CR]
指定したDOSフィル名がSD-CARDに存在すればSD-CARDから削除します。

ファイル名の最後に「.CMT」も指定してもしなくても構いません。

##### 参考
　基本的にはDOSファイル名をダブルコーテーションで括らなくても機能しますが、数字で始まるファイル名の場合ダブルコーテーションが無いとKILLできません。

　NOT FIND FILEと表示されます。

　× KILL 3D MAZE

　○ KILL "3D MAZE"

### MONITORコマンド
#### F[CR]又はF 文字列[CR]
文字列を入力せずにF[CR]のみ入力するとSD-CARDルートディレクトリにあるファイルの一覧を表示します。

文字列を付けて入力すればSD-CARDルートディレクトリにあるその文字列から始まるファイルの一覧を表示します。

20件表示したところで指示待ちになるので打ち切るならESC又は↑を入力すると打ち切られ、Bキーで前の16件に戻ります。それ以外のキーで次の16件を表示します。

　行頭に「*L 」を付加して表示してあるので実行したいファイルにカーソルキーを合わせて[CR]キーを押すだけでLOAD可能です。

　表示される順番は、登録順となりファイル名アルファベッド順などのソートした順で表示することはできません。

##### 例)
　　F[CR]

　　F S[CR]

　　F SP[CR]

#### L DOSファイル名[CR]
指定したDOSフィル名の機械語プログラムをSD-CARDからLOADします。

ファイル名の最後の「.CMT」は有っても無くても構いません。

　例)

　　L TEST -> DOSファイル名「TEST.CMT」を読み込みます。

　　L TEST.BIN -> DOSファイル名「TEST.BIN.CMT」を読み込みます。

　　L TEST.BIN.CMT -> DOSファイル名「TEST.BIN.CMT」を読み込みます。

#### L[CR]（※多段ロードファイルの２段目以降のみ有効）
直前に読み込まれたDOSファイルが多段ロード用に複数のCMTファイルが連結されており、２段目以降が機械語プログラムであった時のみ有効に動作し、機械語プログラムをSD-CARDからLOADします。

#### W 16進数4桁 16進数4桁 DOSファイル名[CR]
1番目の16進数4桁が表すアドレスから2番目の16進数4桁が表すアドレスまでを指定したDOSファイル名でSD-CARDに機械語として上書き保存します。

ファイル名の最後に「.CMT」を指定してもしなくても構いません。

またWの後ろや各パラメータ間に空白が有っても無くても構いません。

機械語プログラムであることを識別するために「.BIN」等を付けることを推奨します。

　例)

　　W 0000 001F TEST -> 　　0000番地から001F番地までをDOSファイル名「TEST.CMT」で保存する。

　　W 0000 001F TEST.BIN -> 0000番地から001F番地までをDOSファイル名「TEST.BIN.CMT」で保存する。

#### G 16進数4桁[CR]
16進数4桁が表すアドレスにジャンプします。

Gの後ろに空白があっても無くても構いません。

#### B[CR]
BASICに復帰します。MONITORでのコマンド入力をスクリーンエディタにしたため、CTRL+Bが機能しないので代替コマンドです。

CTRL+Cと動作は同じです。

#### CTRL+C
BASICに復帰します。MONITORでのコマンド入力をスクリーンエディタにしたため、CTRL+Bが機能しないので代替コマンドです。

B[CR]と動作は同じです。

#### S 16進数4桁 {16進数2桁}の繰り返し[CR]
PC-8001のメモリに16進数4桁が表すアドレスから16進数2桁が表すデータを書き込みます。

[CR]で改行すると有効な16進数2桁データを書き込んだ後、次に書き込みとなるアドレスを表示しますので続きの16進数2桁のデータを入力して[CR]で改行します。

アドレス表示の次に16進数2桁のデータを入力せずに[CR]を押すと終了します。

Sの後ろ、アドレス、データの区切りに空白が有っても無くても構いません。

例)

以下の例はすべて同じ結果となります。

　SA0001122334455

　SA000 11 22 33 44 55

　S A000 1122334455

　S A0001122334455

　S A000 1122 3344 55

#### D 16進数4桁[CR]
16進数4桁が表すアドレスからPC-8001のメモリの内容を128Byteを一画面として表示します。

一画面表示したところで「NEXT:ANY BACK:B BREAK:ESC」と表示して指示待ちとなるのでBで前の128Byteを表示、ESCで中止、それ以外のキーで次の128Byteの表示となります。

一画面表示している途中でもESCでいつでも中止できます。

### ファンクションキーを利用したオートラン機能
ファンクションキーを利用したオートラン機能に対応していますが、一部オリジナルと異なる点があります。

そこでオートラン機能ファイルをロードする時にPC-8001mk2_SDの仕様に自動変換する機能を付けました。(2022.8.21実装)

以下の修正点についてオートラン機能ファイルをロードする時に自動的に修正ロードされますのでオートラン機能ファイルを修正する必要はありません。当然、修正してあっても機能します。

自動で修正される点

　1　CTRL+BではMONITORからBASICへ復帰できません。CTRL+Cに修正されます。

　2　SD-CARDからのBASICプログラムをLOADするコマンドは「LOAD」で、1本のCMTファイルとなっていればファイル名を指定する必要もありませんので「CLOAD"ファイル名"」は「LOAD""」に修正されます。

## 操作上の注意
　「SD-CARD INITIALIZE ERROR」と表示されたときは、SD-CARDが挿入されているか確認し、PC-8001本体をリセットしてください。Arduinoのみのリセットでは復旧しません。

　SD-CARDにアクセスしていない時に電源が入ったままで SD-CARDを抜いた後、再挿入しSD-CARDにアクセスすると「SD-CARD INITIALIZE ERROR」となる場合があります。再挿入した場合にはSD-CARDにアクセスする前にArduinoを必ずリセットしてください。

　SD-CARDの抜き差しは電源を切った状態で行うほうがより確実です。

## New CITY HEROをSDから読み込み実行するための修正
　PC-8001mk2_SDを使うことで内藤 時浩さんが頒布されているNew CITY HEROをPC-8001mk2実機で手軽に遊べるようになりますが、New CITY HEROは機械語の多段ロード方式で２段目のプログラム内にCMTからの読み込みルーチンをコールしている箇所がありますので、そこをSDから読み込むためのコール先に修正する必要があります。

　修正箇所、修正内容はPC-8001_SD用の修正と全く同じですのでPC-8001_SD用にNew CITY HEROを修正してあればそのまま実行することができます。

### 修正手順
　New CITY HEROのCMT形式ファイルに次の手順で修正を行いPC-8001mk2_SD用のCMT形式ファイルを作り、SD-CARDに保存してください。

　　1　頒布していただいたNew CITY HEROのCMTファイルをbugfire2009さんの「DumpListEditor」にDrag&Dropする

　　2　表示される3つのBINファイルをうち、2番目のBINファイルを「マシン語入力に送る」を押す

　　3 「CD F3 0B」を検索して「00 00 00」に修正(1箇所)

　　4 「9E 5F」を検索して「06 60」に修正(14箇所)

　　5　v1.1.1の場合、「9E 5F」の検索では13箇所しか見つからないので「CD 9E」で検索し、「9E」を「06」に次行最初の「5F」を「60」に修正(1箇所)

　　6　修正が終わったら「ファイル整理画面にPaste」を押す

　　7　ファイル整理画面に戻ったことを確認し、「cmt書出し」を押してPC-8001mk2_SD対応済cmtファイルとして保存する

## DumpListEditor動画作成機で作られたCMTファイルへの対応

　DumpListEditor動画作成機で作られたCMTファイルのうち、「Chain(cmt出力時のみ)」をチェックして作られたプログラムはCMTルーチンをコールしますので修正が必要となります。

セミグラ作成機＆動画作成機

https://bugfire2009.ojaru.jp/semigra/

で紹介されているきらびぃさん作成の

「メガCD版シルフィードのデモをPC8001で再生してみたフル版(修正版)」

「PC8001でBad Apple全編をcmt化」

の二つがこの機能を使っていますのでPC-8001mk2_SDで再生するにはパッチ当てが必要になりますが、N80モードでは「メガCD版シルフィードのデモをPC8001で再生してみたフル版(修正版)」は途中で止まってしまいます。Nモードでは最後まで再生出来たので「Chain(cmt出力時のみ)」をチェックして作られたファイルのPC-8001mk2_SDでの再生は現時点でNモードでのみ可能と考えてください。(CMTであればN80モードでも再生出来てます。)

　この二つのファイルの具体的な修正方法は、PC-8001_SDのREADME.mdを参照してください。

## 謝辞
　基板の作成に当たり以下のデータを使わせていただきました。ありがとうございました。

　Arduino Pro Mini

　　https://github.com/g200kg/kicad-lib-arduino

　AE-microSD-LLCNV

　　https://github.com/kuninet/PC-8001-SD-8kRAM

　New CITY HEROの修正点を公開することを快く承諾してくださった内藤 時浩様、ありがとうございました。

　NBASICのコマンド追加に当たっては、ちくらっぺ様のSD-DOSがとても参考になりました。ありがとうございました。

　　https://github.com/chiqlappe/SD-DOS

　PC-8001mk2SRでの動作確認をなつさんに行っていただきました。ありがとうございました。

　スタック領域を破壊し正常にロードが出来ない機械語プログラムの事例について情報を提供してくださった久保ちゃん様、ありがとうございました。

　SHIFTキーによるON、OFFの切り替えは、CTRLキーを押しながら電源ON又はリセットで行うNモードとN80モードの切り替えとの併用に問題があると指摘していただいた内藤 時浩@NAITOTokihiro様、ありがとうございました。

## 追記
2022.8.18

　DumpListEditorの動画作成機機能で作成されたcmtファイルについて追記しました。

2022.8.21

　MONITOR Lコマンドで読み込み時にオートラン機能ファイルであればCTRL+B、CLOADをSD用に書き換えるようにした

2022.9.25

　MicroSD Card Adapter用の端子を付加し、基板をRev1.1に更新。

2022.11.7

　部品リストに2764が落ちていたので追加。

2023.4.24

　PC-8001mk2SRでの動作状況を追記しました。

2023.5.30

　E800h以降までロードする機械語プログラムをロードするとスタック領域を破壊してしまうことに対処。

2023.6.3

　SD機能のON、OFFにAキー方式を追加。
