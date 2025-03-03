# 🎬 MoviewReviewApp

내가 본 영화를 기록하고 한줄평을 남길 수 있는 UIKit 기반 iOS 앱입니다.
영화를 추가하고, 저장하여, 리스트로 확인할 수 있습니다!

---

## 프로젝트 구조
```
📦 MoviewReviewApp
┣ 📂 MoviewReviewApp
┃ ┣ 📄 AppDelegate.swift                  # 앱 실행 및 초기 설정
┃ ┣ 📄 SceneDelegate.swift                # 앱의 Scene 관리
┃ ┣ 📄 Info.plist                          # 앱의 설정 및 권한 정보
┃ ┣ 📂 ViewControllers
┃ ┃ ┗ 📄 ViewController.swift              # 🎬 메인 화면 - 영화 리스트 표시
┃ ┣ 📂 ViewModels
┃ ┃ ┗ 📄 MovieViewModel.swift              # 🗄️ 영화 데이터 관리 (MVVM 구조)
┃ ┣ 📂 Models
┃ ┃ ┗ 📄 Movie.swift                       # 🎥 영화 데이터 모델 (Codable 지원)
┃ ┣ 📂 Views
┃ ┃ ┗ 📄 MovieCollectionViewCell.swift     # 🎭 영화 리스트의 CollectionView 셀
┃ ┣ 📂 MoviewReviewAppTests
┃ ┃ ┗ 📄 MoviewReviewAppTests.swift        # 🧪 단위 테스트 코드
┃ ┣ 📂 MoviewReviewAppUITests
┃ ┃ ┣ 📄 MoviewReviewAppUITests.swift      # 📱 UI 테스트 코드
┃ ┃ ┗ 📄 MoviewReviewAppUITestsLaunchTests.swift # 🚀 앱 실행 테스트
```

---

## 🎯 기능

✅ **영화 기록**: 내가 본 영화를 리스트에 추가  
✅ **한줄평 작성**: 영화별 한줄평 기록 가능  
✅ **데이터 저장**: JSON 기반의 영화 데이터 관리  
✅ **UIKit 기반 UI**: CollectionView를 활용한 리스트 뷰  

---

## 🛠 기술 스택

- **Swift 5**
- **UIKit**
- **MVVM 아키텍처**
- **UserDefaults / JSON 데이터 저장**
- **Auto Layout & Dynamic CollectionViewCell**

---

## 🚀 실행 방법

1. **Xcode 최신 버전(16.2 이상)에서 프로젝트 열기**
2. `Command + R`을 눌러 실행  
3. `ViewController`에서 `+` 버튼을 눌러 영화 추가  

---

## 📄 라이선스

이 프로젝트는 MIT 라이선스를 따릅니다. 자유롭게 사용 및 수정할 수 있습니다.  
궁금한 점이나 개선 사항이 있으면 Pull Request를 보내주세요! 🎉  
