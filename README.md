# my-matching

## サイト概要
マッチングアプリ

## サイトテーマ
人柄がよくわかるマッチングアプリ。既存のマッチングアプリに簡略版のブログ機能を追加実装しその人の人柄をより知ることができようなもの。

## テーマを選んだ理由
既存のマッチングアプリでは人柄をプロフィールでしか判断できず情報量が少ないと感じたから。

## ターゲットユーザ
既存のマッチングアプリに会員の情報量で不満を持つ恋愛をしたい男女。

## 主な利用シーン
恋愛をしたい時

## 設計書
### WBS
https://docs.google.com/spreadsheets/d/14cLo2095D1T4sj0Wzz-s8v5lSxsm4b8sxxv1uVFkhfo/edit#gid=977420151
### 画面遷移図
https://app.diagrams.net/#G1Kfw5IcmRYWMwx15eVxwxE0BBBQMpnw3L
### ワイヤーフレーム
https://app.diagrams.net/#G1Vmgi1kfdrobPVoi7p1J-UCmvNyqmz7xq
### ER図
https://app.diagrams.net/#G1PwMBMaZAXfe8pTUl8HTAwm32b9547i4l
### テーブル定義書
https://docs.google.com/spreadsheets/d/1j59IlRbcGAIgjx-c-M7q3g4HVZWAqQGc/edit#gid=1243549839

## 機能一覧
### https://docs.google.com/spreadsheets/d/1Tti0FeH0R7T156df881sY20t1Lqaj-UDgOV0kcEvvNc/edit#gid=0
・ログイン機能・管理者画面・画像投稿機能・マッチング機能・ダイレクトメッセージ機能・ハンバーガーメニュー・画像スライド・フォロー機能・不適切画像判別機能(Google Cloud Vision API)・バリデーション機能・ページング機能・レスポンシブ対応
## 開発環境
* OS：Linux(CentOS)
* 言語：HTML,CSS,JavaScript,Ruby,SQL
* フレームワーク：Ruby on Rails
* JSライブラリ：jQuery
* 仮想環境：Vagrant,VirtualBox
