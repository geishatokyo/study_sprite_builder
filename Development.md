# ハンズオン勉強会の課題

## 概要

課題用のサンプルプロジェクトはSpriteBuilderの
デフォルトのプロジェクトです

ここから段階的にアクションゲームを作っていきます

## 動かし方

2つの手順が必要です、リソースの配置とビルドです

リソースの配置はSpriteBuilderにて[File]-[Open]を押下し、
Study.spritebuilderという名前のファイルを選択し開きます
開いた後、[File]-[Publish]を押下します
これでリソースの配置が完了します

次に実際にビルドしてみましょう
Xcode(ver 6.1)でstudy.xcodeproを開き、
[Product]-[Run]を実行してください

## 課題

### lesson1 タイトル画面を作って画面遷移してみよう

#### SpriteBuilderにて
[File]-[New]-[File]を選択
TitleScene.ccbという名前でSceneを追加
(具体的な画面の配置については勉強会で説明するため省略)
Custom Classの項目にTitleSceneを入力
Publishする

#### Xcodeにて
Source-Platforms-iOS-AppDelegate.m内の
MainSceneという文字列をTitleSceneに置き換える

[File]-[New]-[File]を選択
TitleScene.h,TitleScene.mを追加
中身をMainScene.h,MainScene.mのMainをTitleにしたものにする

TitleScene.mの中身をいじって
タッチ操作を受け付けるようにする
タッチ時に画面遷移するようにする
(具体的な画面の配置については勉強会で説明するため省略)

MainScene.mの中身をいじって
同様にタッチでTitleSceneに遷移するようにしておく

### lesson2 タイトル画面に動きをつけてみよう

#### SpriteBuilderにて
適当なラベル部品を選択して[s]やら[p]やら押下する
Scaleや座標を変えてアニメーションを作る
touch to startがブリンクするように
アニメーションを組んでみる
(具体的な画面の配置については勉強会で説明するため省略)

### lesson3 物理演算使ってみよう

#### Xcodeにて
MainStage.ccbを配置をアクションゲームっぽくする
touch時にアクションをつけてみる

#### SpriteBuilderにて
どっかいっちゃうので壁を作ってみる

### lesson4 サブファイル化してみよう

#### SpriteBuilderにて
動くノートのAllows rotationのチェックを外す
[File]-[New]-[File]で適当な名前のNodeを
別ファイルにて追加

上記の別ファイルに対して
jumpするっぽいアニメーションを作るために
jumpというTimelineを作成する

### lesson5 当たり判定をつけてみよう

ここまで用意できなかった(collisionDelegate使えばできる…と思う)

あとは自由に
