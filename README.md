![badge](https://img.shields.io/badge/thank%20you-for%20visiting-brightgreen)
<br>
[![Rails](https://img.shields.io/badge/Rails-v6.0.3.2-%23a72332)](https://rubygems.org/gems/rails/versions/6.0.3.2)
[![codecov](https://codecov.io/gh/ryota1116/zero_calorie/branch/develop/graph/badge.svg)](https://codecov.io/gh/ryota1116/zero_calorie)

<h1 align="center">Zerorie - ゼロリー</h2>

<div align="center">
  <img src="https://user-images.githubusercontent.com/60560627/96447613-1fc94d00-124d-11eb-8c91-4778d6c04468.jpg" /> 
</div>

<p align="center">
  <img src="https://devicons.github.io/devicon/devicon.git/icons/html5/html5-original-wordmark.svg" alt="html5" width="70" height="70"/> 
  <img src="https://devicons.github.io/devicon/devicon.git/icons/css3/css3-original-wordmark.svg" alt="css3" width="70" height="70"/> 
  <img src="https://devicons.github.io/devicon/devicon.git/icons/javascript/javascript-original.svg" alt="javascript" width="70" height="70"/> 
  <img src="https://devicons.github.io/devicon/devicon.git/icons/ruby/ruby-original-wordmark.svg" alt="ruby" width="70" height="70"/> 
  <img src="https://devicons.github.io/devicon/devicon.git/icons/rails/rails-original-wordmark.svg" alt="rails" width="70" height="70"/> 
  <img src="https://devicons.github.io/devicon/devicon.git/icons/mysql/mysql-original-wordmark.svg" alt="mysql" width="70" height="70"/> 
  <img src="https://www.vectorlogo.zone/logos/google_cloud/google_cloud-icon.svg" alt="gcp" width="70" height="70"/> 
  <img src="https://devicons.github.io/devicon/devicon.git/icons/amazonwebservices/amazonwebservices-original-wordmark.svg" alt="aws" width="70" height="70"/>
  <img src="https://img.shields.io/badge/--343434.svg?logo=circleci&style=plastic" width="80" height="60"/>
</p>

## 🎉 プロダクト

### 全ての食べ物を0kcalにするカロリー管理アプリ「Zerorie」

## 🌐 アプリURL

### **https://zerorie.com/**

## 📦 プロダクト概要

**美味しいモノをいっぱい食べたいけど、カロリーが気になるという人のために<br>
「ゼロカロリー理論」を使って、全ての食べ物を0kcalにしてくれる<br>
カロリー管理アプリ**

## ❓ ゼロカロリー理論とは？

「**ゼロカロリー理論**」とは、サンドウィッチマンの伊達さんが考案したネタで、「寿司は握ることでカロリーが潰されるから0kcal」みたいな、**食べ物のカロリーを0kcalにしてくれるトンデモ理論**のことです。

つまりこのアプリを使えば、食事した食べ物をすべて0kcalにしてくれるため、「**カロリーを気にして食事を我慢する」「高カロリーの食べ物を食べたことで罪悪感を覚える**」といったカロリーに関わる悩みを一切気にすること無く、食事を楽しむことができるというわけです。

## 📊 マーケット
- 美味しいモノを食べたいけど、カロリーが気になる人
- 誘惑に負けて食べてしまった時に、罪悪感を覚える人

## 👤 登場人物
- エンドユーザー
  - 美味しいモノをいっぱい食べたいけど、カロリーが気になる人
- 管理者
  - エンドユーザーの情報やゼロカロリー理論のデータを管理する人

## 🌀 ユーザーの課題
美味しいモノを好きなだけ食べたいけど、カロリーが気になるから我慢して、かえってストレスが溜まる。<br>
だからといって誘惑に負けて食べてしまった場合、「また高カロリーの食べ物を食べてしまった…」と罪悪感を覚えてしまう。

## 💡 解決方法
「ゼロカロリー理論」を使って、全ての食べ物を0kcalにすることで、カロリーを気にせず食事を楽しむことができる。<br>
また、ゼロカロリーとなる理由も教えてくれるので、食事した自分を正当化してくれる。

## ✨ 未来
#### 何を食べてもゼロカロリーなので、日々のカロリー管理が楽ちん。
いくら食べても合計摂取カロリーはゼロだから計算が楽チンですね。

#### 好きなものを好きに食べる自分を正当化できる。
カロリーが無くなれば自分を責める理由なんて無くなりますよね？

#### 笑える。ネタにできる。
「あはは！深夜にラーメン食べたけど0kcalだ！」って笑って誤魔化せます。
また、周りに「食べ過ぎだよ」と小言を言われても、Zerorieに責任転嫁すればいいし、「〇〇だから0kcal」って言えば場の空気が和むはずです。

## ✅ 使用技術

### バックエンド
- Ruby 2.7.1
- Rails 6.0.3.2
- RSpec 3.9
- Google Cloud Vision API

### フロントエンド
- HTML
- SCSS
- JavaScript
- Semantic UI（CSSフレームワーク）

### インフラストラクチャー
- Circle CI
- Codecov
- GitGuardian
- Capistrano
- Nginx
- Puma
- AWS
  - VPC
  - EC2
  - RDS
    - MySQL
  - S3
  - ALB
  - Route53
  - ACM

## ER図
![](https://user-images.githubusercontent.com/60560627/90597809-bae17e80-e22c-11ea-846c-0e4849e6a685.png)

## インフラ構成図
<img width="100%" alt="インフラ構成図 2020-10-10 11 23 58" src="https://user-images.githubusercontent.com/60560627/95643652-79ae7200-0aeb-11eb-9920-35565d45b64a.png">

## 画面遷移図
https://xd.adobe.com/view/cc0b2f2f-238d-4ad3-a35f-4c5c76022c18-9958/
