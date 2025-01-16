# TMDB Movie App

一個使用 Flutter 開發的電影 App，透過 TMDB API 獲取台灣當前上映中的電影資訊。

[![Demo Video](https://img.youtube.com/vi/VIDEO_ID/0.jpg)](https://drive.google.com/file/d/1vMNAxDjip2vJ_mE_ukLRRzp3VAn_9jTu/view?usp=sharing)

[觀看演示影片](https://drive.google.com/file/d/1vMNAxDjip2vJ_mE_ukLRRzp3VAn_9jTu/view?usp=sharing)

## 功能特色

- 顯示當前台灣上映中的電影列表
- 滾動加載更多電影
- 電影海報動態切換效果
- 支援Flavor環境配置

## 使用技術

### 狀態管理
- `flutter_riverpod`: 使用 Riverpod 進行狀態

### 網路請求
- `dio`: HTTP 客戶端，用於與 TMDB API 進行通訊
- `retrofit`: 用於生成 API 客戶端程式碼

### UI 元件
- `cached_network_image`: 圖片快取
- `flutter_screenutil`: 螢幕適配

### 開發工具
- `freezed`: 用於生成不可變類別
- `json_serializable`: JSON 序列化

### 錯誤追蹤
- `firebase_crashlytics`: Firebase 崩潰報告