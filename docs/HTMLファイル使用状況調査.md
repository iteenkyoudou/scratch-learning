# HTMLファイル使用状況調査報告書

## 概要
プロジェクトディレクトリ内の全HTMLファイルを調査し、現在使用されているファイルと未使用・廃棄可能なファイルを特定しました。

## 現在アクティブなファイル

### メインファイル

#### 1. **index.html** (419,132 bytes, 2025-07-12 15:08) - **メイン本番版**
- **用途**: Scratchプログラミング学習サイト（日本語版）
- **ステータス**: ✅ **アクティブ** - 最新かつ最大のファイル、現在の本番バージョン
- **機能**: Motion、Looks、Controlブロックの完全なレッスンを含む教育プラットフォーム
- **特徴**: 高度なスタイリングと機能を持つ完全版

#### 2. **scratch_simple_jp.html** (419,105 bytes, 2025-07-09 19:14) - **直近作業版**
- **用途**: Scratchプログラミング学習サイト（シンプル日本語版）
- **ステータス**: ✅ **アクティブ/最近** - index.htmlとほぼ同サイズで日付も近い
- **関係**: index.htmlの直前バージョンまたはバリエーション

### Flutterシステム関連ファイル

#### 3. **web/index.html** (1,191 bytes, 2025-07-06 12:13) - **Flutter Web ビルド**
- **用途**: Flutter Webアプリケーションのブートストラップ
- **ステータス**: ✅ **アクティブ** - Flutter Web ビルドシステムの一部
- **内容**: アプリ初期化を含む標準的なFlutter Web ローディングページ

#### 4. **build/web/index.html** (1,191 bytes, 2025-07-06 12:13) - **Flutter ビルド出力**
- **用途**: 生成されたFlutterビルド成果物
- **ステータス**: ✅ **アクティブ** - 自動生成ビルドファイル
- **関係**: web/index.htmlと同一（ビルド出力）

## 開発・プロトタイプファイル

### Scratch機能開発の変遷

#### **初期プロトタイプ（7月6日）:**
- **scratch_demo.html** (12,181 bytes) - 基本デモ版
- **scratch_real.html** (14,092 bytes) - "リアルブロック"版
- **scratch_blocks_v2.html** (18,163 bytes) - ブロック機能バージョン2
- **scratch_working.html** (16,988 bytes) - 動作版チェックポイント

#### **日本語ローカライゼーション開発:**
- **scratch_japanese.html** (18,539 bytes) - 初回日本語版
- **scratch_japanese_blocks.html** (15,312 bytes) - 日本語ブロックバリアント
- **scratch_fixed_jp.html** (15,145 bytes) - 修正済み日本語版
- **scratch_overlay_jp.html** (18,392 bytes) - 日本語オーバーレイ版

#### **高度機能版:**
- **scratch_simple_jp_fixed.html** (354,968 bytes, 7月8日) - 大型修正版
- **scratch_clone_fixed.html** (21,436 bytes, 7月9日) - クローン機能修正版

#### **クローン機能開発（7月9日）:**
- **clone_working.html** (13,245 bytes) - 動作するクローン実装
- **clone_safe.html** (9,381 bytes) - 安全なクローン版
- **clone_complete.html** (20,698 bytes) - 完全なクローン機能

## テストファイル

### **基本テスト:**
- **test.html** (299 bytes) - 基本ブラウザテストページ
- **js_test.html** (388 bytes) - JavaScript機能テスト
- **simple_test.html** (2,638 bytes) - シンプルアニメーションテスト
- **minimal_clone_test.html** (6,695 bytes) - 最小クローン機能テスト

## 開発パターン分析

ファイル命名パターンから明確な開発進行が見えます：

1. **初期開発**: `scratch_demo` → `scratch_real` → `scratch_working`
2. **機能反復**: `scratch_blocks_v2` でバージョニングアプローチ
3. **ローカライゼーション**: `scratch_japanese*` シリーズで日本語実装
4. **バグ修正**: `_fixed` サフィックスでデバッグ・修正反復
5. **機能開発**: `clone_*` シリーズでクローン機能開発
6. **現行版**: `scratch_simple_jp` → `index.html` への進化

## クリーンアップ推奨事項

### **アーカイブ・削除可能（廃棄対象開発ファイル）:**
- ❌ `scratch_demo.html`
- ❌ `scratch_real.html`
- ❌ `scratch_blocks_v2.html`
- ❌ `scratch_working.html`
- ❌ `scratch_japanese.html`
- ❌ `scratch_japanese_blocks.html`
- ❌ `scratch_fixed_jp.html`
- ❌ `scratch_overlay_jp.html`
- ❌ `scratch_clone_fixed.html`
- ❌ `clone_working.html`
- ❌ `clone_safe.html`

### **保持検討（テスト・デバッグユーティリティ）:**
- ⚠️ `test.html` （基本ブラウザテスト）
- ⚠️ `js_test.html` （JavaScriptテスト）
- ⚠️ `simple_test.html` （アニメーションテスト）
- ⚠️ `minimal_clone_test.html` （クローンテスト）

### **アクティブ保持（現行システム）:**
- ✅ `index.html` （メインアプリケーション）
- ✅ `scratch_simple_jp.html` （バックアップ・前バージョン）
- ✅ `scratch_simple_jp_fixed.html` （中間バージョン）
- ✅ `clone_complete.html` （完全なクローン実装）
- ✅ `web/index.html` （Flutter Web）
- ✅ `build/web/index.html` （Flutter ビルド）

## サマリー

**総計21個のHTMLファイル**のうち、メインアプリケーション用の**アクティブファイルは2-3個**（`index.html`が主力）、**Flutterフレームワーク関連が2個**、**廃棄可能な開発・プロトタイプファイルが15個以上**存在します。

コードベースをクリーンアップするために、廃棄対象ファイルを安全にアーカイブまたは削除することを推奨します。

## 推奨アクション

1. **即座実行可能**: 明らかに廃棄対象の開発ファイル11個を削除
2. **慎重検討**: テストファイル4個は開発デバッグ用途で保持するか判断
3. **現行維持**: アクティブファイル6個は現状維持
4. **整理後の状態**: 合計6-10個のファイルに整理可能