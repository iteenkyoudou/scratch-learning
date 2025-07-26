# Scratch学習サイト SPA構造 仕様書

## 概要
このScratch学習サイトは、子供向けのプログラミング学習を目的としたSingle Page Application (SPA)です。JavaScriptによるセクション切り替えで、複数のレッスンをシームレスに提供します。

## メインセクション構造

### 1. コアナビゲーションセクション
| セクションID | 説明 | ステップ数 |
|-------------|------|-----------|
| `home-view` | メインダッシュボード（レッスン選択画面） | - |
| `program-flow` | プログラムの流れ・順次実行レッスン | 6ステップ |
| `loop` | ループ・繰り返し概念レッスン | 6ステップ |
| `coordinates` | 座標システム・ステージ位置レッスン | 4ステップ |
| `conditional-menu` | 条件分岐メニューハブ | - |
| `variables-menu` | 変数と計算メニューハブ | - |
| `costumes-section` | スプライトの見た目変更 | 4ステップ |
| `clones-menu` | クローン機能メニューハブ | - |

### 2. 条件分岐サブセクション
| セクションID | 説明 |
|-------------|------|
| `if-then-section` | 基本的なif-then論理 |
| `if-else-section` | if-else条件文 |

### 3. 変数・データサブセクション
| セクションID | 説明 | ステップ数 |
|-------------|------|-----------|
| `health-system` | 体力・HP変数システム | 4ステップ |
| `score-system` | スコア計算システム | 3ステップ |
| `string-variables` | 文字列変数操作 | 3ステップ |

### 4. クローン機能サブセクション
| セクションID | 説明 | ステップ数 |
|-------------|------|-----------|
| `basic-clone-section` | 基本的なクローン作成 | 4ステップ |
| `clone-movement-section` | クローンの動きパターン | 4ステップ |
| `clone-deletion-section` | クローンの削除方法 | 4ステップ |
| `clone-applications-section` | 高度なクローン応用 | 4ステップ |

### 5. 追加機能メニューハブ
| セクションID | 説明 | 実装状況 |
|-------------|------|---------|
| `sounds-menu` | 音声・音楽機能メニューハブ | ✅実装済み |
| `messages-menu` | スプライト間通信システムメニューハブ | ✅実装済み |
| `backgrounds-menu` | ステージ背景管理メニューハブ | ✅実装済み |
| `lists-menu` | リスト・配列データ構造メニューハブ | ✅実装済み |
| `pen-menu` | 描画・アート作成ツールメニューハブ | ✅実装済み |

### 6. 音声・音楽サブセクション
| セクションID | 説明 | ステップ数 |
|-------------|------|-----------|
| `basic-sounds` | 基本的な音声再生 | - |
| `music-instruments` | 楽器音・音色 | - |
| `sound-effects` | 効果音・サウンドエフェクト | - |
| `music-control` | 音楽制御・テンポ調整 | - |

### 7. メッセージ・通信サブセクション
| セクションID | 説明 | ステップ数 |
|-------------|------|-----------|
| `messages-send-section` | 基本的なメッセージ送信（学習） | - |
| `messages-send-practice1` | 練習問題1：キャラクターに挨拶させよう | - |
| `messages-send-practice2` | 練習問題2：ゲーム開始の合図 | - |
| `messages-send-and-wait-section` | メッセージ送信と待機（学習） | - |
| `messages-wait-practice1` | 練習問題3：順番に動かそう | - |
| `messages-wait-practice2` | 練習問題4：会話のキャッチボール | - |

### 8. 背景・ステージサブセクション
| セクションID | 説明 | ステップ数 |
|-------------|------|-----------|
| `background-basics` | 背景の基本操作 | 4ステップ |
| `background-switching` | 背景切り替え機能 | 4ステップ |

### 9. リスト・データ構造サブセクション
| セクションID | 説明 | ステップ数 |
|-------------|------|-----------|
| `list-basics-and-operations` | リストの基本操作 | 4ステップ |
| `list-usage-and-applications` | リストの活用・応用 | 4ステップ |

### 10. ペン・描画サブセクション
| セクションID | 説明 | ステップ数 |
|-------------|------|-----------|
| `pen-basics` | ペン機能の基本 | - |
| `pen-colors` | 色・太さの変更 | - |
| `shape-drawing` | 図形描画 | - |
| `art-creation` | アート作成・応用 | - |

## ナビゲーション構造

### メインナビゲーション関数
- `showHome()` - メインダッシュボードへ戻る
- `hideAllViews()` - 全セクション非表示（ユーティリティ関数）
- 各メジャートピック用のメニューナビゲーション関数

### ステップナビゲーションシステム
各レッスンはマルチステップ進行システムを使用：
- **プログレスバー** - 視覚的完了インジケーター
- **ステップカウンター** - "ステップ 1 / 6" 形式
- **ナビゲーションボタン** - "前へ"・"次へ"
- **ステップ管理関数** - `changeStep()`、`updateStep()`等

## 学習モジュール・レッスン

### コアプログラミング概念（メインダッシュボード）
1. **プログラムの流れ** (📖) - 順次実行基礎
2. **条件分岐** (🤔) - if-then、if-else文
3. **ループ** (🔄) - 繰り返し・反復
4. **座標** (🎯) - X-Y座標システム
5. **変数** (📊) - データ保存・計算
6. **コスチューム** (👗) - スプライトの見た目変更
7. **クローン** (👥) - オブジェクト複製・管理

### 拡張機能（実装済み）
8. **音** (🎵) - 音声統合・楽器・効果音
9. **メッセージ** (📢) - スプライト間通信・会話システム
10. **背景** (🎭) - ステージデザイン・背景切り替え
11. **リスト** (📋) - データ構造管理・配列操作
12. **ペンツール** (✏️) - 描画・グラフィックス・アート作成

### 専門サブモジュール
- **体力システム** - ゲーム風HP仕組み
- **スコアシステム** - ポイント計算
- **文字列変数** - テキスト操作
- **クローンバリエーション** - 基本、動き、削除、応用

## 重要なJavaScript関数

### コアナビゲーション
- `showHome()` - メインダッシュボード表示
- `hideAllViews()` - 全セクション可視性リセット
- `showLesson(type)` - 汎用レッスンローダー

### 拡張機能ナビゲーション
- `showSoundsMenu()` - 音声機能メニュー表示
- `showMessagesMenu()` - メッセージ機能メニュー表示
- `showBackgroundsMenu()` - 背景機能メニュー表示
- `showListsMenu()` - リスト機能メニュー表示
- `showPenMenu()` - ペン機能メニュー表示

### 音声機能関数
- `showBasicSounds()` - 基本音声再生セクション
- `showMusicInstruments()` - 楽器音セクション
- `showSoundEffects()` - 効果音セクション
- `showMusicControl()` - 音楽制御セクション

### メッセージ機能関数
- `showMessagesSend()` - メッセージ送信セクション（学習）
- `showMessagesSendPractice1()` - 練習問題1：キャラクターに挨拶
- `showMessagesSendPractice2()` - 練習問題2：ゲーム開始の合図
- `showMessagesSendAndWait()` - メッセージ送信と待機セクション（学習）
- `showMessagesWaitPractice1()` - 練習問題3：順番に動かそう
- `showMessagesWaitPractice2()` - 練習問題4：会話のキャッチボール
- `showBasicMessages()` - 基本メッセージ機能
- `showSpritesCommunication()` - スプライト通信機能

### メッセージ練習問題答え表示関数
- `showMessagesSendPractice1Answer()` - 練習問題1の答え表示
- `showMessagesSendPractice2Answer()` - 練習問題2の答え表示
- `showMessagesWaitPractice1Answer()` - 練習問題3の答え表示
- `showMessagesWaitPractice2Answer()` - 練習問題4の答え表示

### 背景機能関数
- `showBackgroundBasics()` - 背景基本操作
- `showBackgroundBasicsStep(step)` - 背景基本ステップナビゲーション
- `showBackgroundSwitching()` - 背景切り替え機能
- `showBackgroundSwitchingStep(step)` - 背景切り替えステップナビゲーション

### リスト機能関数
- `showListBasicsAndOperations()` - リスト基本操作
- `showListBasicsAndOperationsStep(step)` - リスト基本ステップナビゲーション
- `showListUsageAndApplications()` - リスト活用・応用
- `showListUsageAndApplicationsStep(step)` - リスト応用ステップナビゲーション

### ペン機能関数
- `showPenBasics()` - ペン基本機能
- `showPenColors()` - ペン色・太さ変更
- `showShapeDrawing()` - 図形描画機能
- `showArtCreation()` - アート作成機能

### ステップ管理
- `changeStep(direction)` - レッスンステップ間ナビゲーション
- `updateStep()` - ステップ表示・制御更新
- `changeLoopStep()`、`changeCoordinatesStep()`等 - トピック専用ナビゲーション

### アニメーション制御
- `playAnimation()` - スプライトアニメーション開始
- `resetAnimation()` - アニメーション状態リセット
- トピック専用アニメーション関数

### 答え表示システム
- `showAnswer1()`、`showAnswer2()`等 - 解答ヒント表示
- 各トピック用答え関数

## 特殊機能

### 進捗追跡
- **視覚的プログレスバー** - 各レッスンの完了率表示
- **ステップカウンター** - レッスンシーケンス内現在位置
- **進捗要素** - `progress`、`progress-loop`等のID

### インタラクティブ要素
- **アニメーションスプライト** - 位置追跡付き
- **吹き出し** - キャラクター対話
- **ステータス表示** - アニメーション状態表示
- **キャンバス要素** - 描画練習用

### 答えシステム
- **折りたたみ式答えコンテナ** - 初期状態で非表示
- **答えボタン** - 電球絵文字 (💡 答えを表示)
- **練習問題解答** - レッスンフローに統合

### アニメーション機能
- **スプライト移動** - 座標追跡付き
- **視覚効果** - 色変化・回転
- **インタラクティブデモ** - Scratchブロック実行表示
- **リアルタイムステータス更新** - アニメーション中

## 技術アーキテクチャ
このSPAは**セクションベースナビゲーションシステム**を使用：
- 一度に一つのメインセクションのみ表示
- `style="display: none"`操作によるセクション切り替え
- 各レッスンは一貫した**ステップベース進行**パターン
- **モジュラーアニメーション関数**でスプライト動作制御
- **onclick イベントハンドラーによる中央集権ナビゲーション**

この構造により、視覚的デモンストレーション、インタラクティブ練習、段階的スキル構築を備えた包括的で子供に優しいScratchプログラミング概念学習環境を提供します。