// Playwright設定ファイル
const { defineConfig } = require('@playwright/test');

module.exports = defineConfig({
  // テストファイルの場所
  testDir: './tests',
  
  // 並列実行しない（SPA操作のため）
  fullyParallel: false,
  workers: 1,
  
  // テスト失敗時の動作
  forbidOnly: !!process.env.CI,
  retries: 0, // エラー時は即座に停止
  
  // テスト実行設定
  timeout: 10000, // 10秒でタイムアウト
  expect: {
    timeout: 3000 // 要素待機は3秒まで
  },
  
  // レポート形式
  reporter: [
    ['html'],
    ['list']
  ],
  
  // ブラウザ設定
  use: {
    // ベースURL（ローカルファイル用なので設定なし）
    
    // スクリーンショット設定
    screenshot: 'only-on-failure',
    video: 'retain-on-failure',
    
    // ブラウザ設定
    headless: false, // ブラウザを表示してテストを確認
    viewport: { width: 1280, height: 720 },
    
    // 日本語設定
    locale: 'ja-JP',
    timezoneId: 'Asia/Tokyo'
  },
  
  // ブラウザプロジェクト設定
  projects: [
    {
      name: 'chromium',
      use: { 
        ...require('@playwright/test').devices['Desktop Chrome'],
      },
    }
  ]
});