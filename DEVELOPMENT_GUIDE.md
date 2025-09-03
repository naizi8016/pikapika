# Pikapika 开发指南

## 项目概述

Pikapika 是一个跨平台的漫画阅读客户端，支持 Windows、macOS、Linux、Android 和 iOS 平台。项目采用 Flutter + Golang 的双语言架构，提供丰富的漫画阅读和管理功能。

## 技术栈

### 前端技术
- **Flutter**: 跨平台 UI 框架 (v2.10.3 - v3.13.9)
- **Dart**: 主要编程语言
- **状态管理**: 内置状态管理 + Event 包
- **国际化**: easy_localization 包
- **UI组件**: Material Design + Cupertino

### 后端技术
- **Golang**: 核心业务逻辑 (v1.17 - v1.23)
- **Go Mobile**: 移动端桥接
- **Go Flutter**: 桌面端桥接

### 构建工具
- **Gradle**: Android 构建
- **CocoaPods**: iOS 依赖管理
- **CMake**: 桌面端构建
- **GitHub Actions**: CI/CD 流水线

## 项目结构

```
pikapika/
├── .github/workflows/          # CI/CD 配置
├── android/                    # Android 平台代码
├── ios/                        # iOS 平台代码  
├── lib/                        # Dart 主要代码
│   ├── assets/                 # 静态资源
│   ├── basic/                  # 基础组件和工具
│   │   ├── config/             # 配置管理
│   │   ├── Entities.dart       # 数据实体
│   │   ├── Method.dart         # 平台通信
│   │   └── Common.dart         # 通用工具
│   ├── screens/                # 界面屏幕
│   │   ├── SettingsScreen.dart # 设置界面
│   │   ├── MigrateScreen.dart  # 数据迁移
│   │   └── ...其他界面
│   ├── main.dart               # 应用入口
│   └── i18.dart                # 国际化
├── ci/                         # CI 工具
│   ├── cmd/                    # Go 命令行工具
│   └── commons/                # CI 公共库
├── scripts/                    # 构建脚本
├── windows/                    # Windows 平台代码
├── linux/                      # Linux 平台代码
├── macos/                      # macOS 平台代码
└── pubspec.yaml               # Dart 依赖配置
```

## 核心功能模块

### 1. 用户系统
- 登录/注册/个人信息管理
- 自动签到功能
- 密码修改和头像设置

### 2. 漫画管理
- 分类浏览和搜索
- 随机漫画推荐
- 排行榜功能
- 收藏和喜欢系统

### 3. 阅读功能
- 章节阅读和图片查看
- 图片保存到相册
- 多种阅读模式支持
- 评论和回复系统

### 4. 下载管理
- 导入/导出功能
- 无线共享传输
- 加密存档支持
- 多设备同步

### 5. 游戏模块
- 游戏列表和详情
- 无广告下载
- 游戏管理功能

### 6. 设置系统
- 丰富的配置选项
- 主题和界面定制
- 网络和代理设置
- 阅读器个性化

## 开发环境配置

### 前置要求
- Flutter SDK (2.10.3 或 3.13.9)
- Golang (1.17 或 1.23)
- Android Studio (Android 开发)
- Xcode (iOS 开发)

### 环境搭建
1. 克隆项目仓库
2. 安装 Flutter 和 Dart SDK
3. 安装 Golang
4. 配置平台特定的开发环境
5. 运行 `flutter pub get` 安装依赖

## 构建和部署

### 本地构建
```bash
# Android
flutter build apk --release

# iOS  
flutter build ios --release

# Desktop
flutter build windows --release
flutter build macos --release
flutter build linux --release
```

### CI/CD 流程
项目使用 GitHub Actions 进行自动化构建：
- **Package.yml**: 主要构建工作流
- **Release.yml**: 发布流程
- 多平台并行构建
- 自动版本管理和发布

## 代码规范

### Dart 代码规范
- 使用 Dart 官方代码风格
- 遵循 Effective Dart 指南
- 使用 flutter_lints 进行静态分析

### Golang 代码规范  
- 遵循 Go 官方代码规范
- 使用 gofmt 格式化代码
- 合理的错误处理机制

### 命名约定
- 文件命名: 使用大驼峰命名法
- 变量命名: 使用小驼峰命名法
- 常量命名: 使用全大写加下划线

## 国际化支持

项目支持多语言国际化：
- 使用 easy_localization 包
- 翻译文件位于 `lib/assets/translations/`
- 支持动态语言切换

## 平台特定功能

### Android 特性
- 高刷新率屏幕适配
- 系统暗色模式支持
- 文件关联和自定义链接

### iOS 特性  
- 完整的 iOS 平台适配
- App Store 发布准备

### 桌面端特性
- Windows/macOS/Linux 原生支持
- 系统集成和菜单支持

## 调试和测试

### 调试工具
- Flutter DevTools
- Dart Observatory
- 平台原生调试工具

### 测试策略
- 单元测试: 测试核心业务逻辑
- 组件测试: 测试 UI 组件
- 集成测试: 测试完整功能流程

## 贡献指南

### 代码提交
1. Fork 项目仓库
2. 创建特性分支
3. 编写清晰的提交信息
4. 发起 Pull Request

### 发布规则
- 遵循项目的使用规则和许可证
- 不得用于商业用途
- 保留原始仓库链接

## 常见问题

### 环境问题
- 确保 Flutter 和 Go 版本匹配
- 检查平台特定的依赖项
- 验证环境变量配置

### 构建问题
- 清理构建缓存: `flutter clean`
- 更新依赖: `flutter pub upgrade`
- 检查平台工具链

## 资源链接

- [项目仓库](https://github.com/ComicSparks/pikapika)
- [Flutter 文档](https://flutter.dev/docs)
- [Golang 文档](https://golang.org/doc)
- [Dart 文档](https://dart.dev/guides)

---

*本文档最后更新于: 2024年* 
*维护者: Pikapika 开发团队*