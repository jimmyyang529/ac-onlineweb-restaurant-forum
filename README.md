# README

### 先執行 Gem 安裝： bundle install

### 執行腳本 rake dev:rebuild(自動執行db:setup)

### 登入後台位置 /admin/restaurants ，管理者帳號 root@example.com 密碼 password


User Stories:

* Phase 1 : 後台建置
* 系統管理者(Admin)可以登入網站後台
* 系統管理者(Admin)可以在後台新增編輯更新刪除及看見餐廳的基本資料(CRUD)

* Phase 2 :
* 訪客可以在前台首頁看到餐廳基本資料 (index)
* 訪客可以在前台點選餐廳的詳細資料超連結，看到那一個餐廳的詳細資料 (show)
* 訪客可以在前台點選分頁功能(Kamanari)
* 訪客可以在前台依餐廳分類來查看餐廳資料 (category)

* Phase 3 :
* 訪客可以在餐廳下留言評論(必須先登入) user can create comment
* 訪客可以編輯及刪除自已的留言 user can edit and delete

* Phase 4 :
* 訪客可以登入後有自己的Profile頁面，可以上傳大頭照/ 編輯基本資料功能 (user profile)
* 訪客可以在自己的Profile頁面，看到自己曾經留言過的餐廳與留言內容 (comment index)

* Phase 5 :
* 訪客登入後可以收藏餐廳 (favourites)
* 訪客在前台首頁可以看到人氣餐廳排行榜  (依收藏餐廳的count)

* Phase 6 :
* 訪客可以追蹤美食達人 (follow)
