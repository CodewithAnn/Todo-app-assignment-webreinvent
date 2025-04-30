# ✅ To-Do List App (Flutter Interview Assignment)

This is a simple **To-Do List** app built with Flutter as part of an interview assignment. It demonstrates proper folder structure, and state management using `Provider`.

---
## 📦 Download APK

[Click here to download the latest APK](./release/app-release.apk)

## 📱 Features

- Add a new task with a title
- Mark a task as completed using a checkbox
- Display a list of tasks with real-time UI updates
- Beautiful, responsive Material 3 UI

---

## 🔧 Tech Stack

- **Flutter**: 3.29.3 _(via FVM)_
- **State Management**: Provider
- **UI Framework**: Material 3

## 🧩 Folder Structure

lib/
├── main.dart
├── models/
│   └── task.dart
├── providers/
│   └── task_provider.dart
├── screens/
│   └── todo_screen.dart
├── widgets/
│   └── task_tile.dart


---

## 🛠️ Getting Started

### Step 1: Install FVM (if not already)

```bash
dart pub global activate fvm
```
### Make sure FVM is in Your path:
```bash
export PATH="$PATH":"$HOME/.pub-cache/bin"
```
### Clone the repository
```bash 
git clone https://github.com/CodewithAnn/Todo-app-assignment-webreinvent.git 
```
### Step 3: Install Flutter SDK using FVM
```bash
fvm install 3.29.3
```
### Step 4: Use the installed Flutter version
```bash
fvm use 3.29.3
```

### ✅ How to Run
```bash
fvm flutter pub get
fvm flutter run
```
