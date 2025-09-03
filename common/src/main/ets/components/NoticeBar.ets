import { UIConstants } from '../constants/UIConstants';

@Extend(Text)
function cmText() {
  .fontSize(UIConstants.FONT_XXS)
  .fontColor(UIConstants.COLOR_WHITE)
}

interface Notice {
  nid: string
  title: string
  url: string
}

@Component
export struct NoticeBar {
  build() {
    Row() {
      Image('images/ic_public_sound.svg')
        .width(24)
        .fillColor(UIConstants.COLOR_WHITE)
      Text('  公告:  ')
        .cmText()

      Swiper() {
        Text('通知01')
          .cmText()

        Text('通知02')
          .cmText()

        Text('通知03')
          .cmText()

        Text('通知04')
          .cmText()

      }
      .layoutWeight(1)
      .loop(true) // 启用循环播放
      .autoPlay(true) // 开启自动滚动
      .interval(5000) // 设置滚动间隔（单位毫秒）
      .indicator(false) // 隐藏导航点

      Image('images/ic_public_arrow_left.svg')
        .width(16)
        .fillColor(UIConstants.COLOR_WHITE)
        .margin({ left: UIConstants.SPACE_ROW_XS })
        .onClick(() => {

        })

      Image('images/ic_public_arrow_right.svg')
        .width(16)
        .fillColor(UIConstants.COLOR_WHITE)
        .margin({ left: UIConstants.SPACE_ROW_XS })
        .onClick(() => {

        })
    }
    .width('100%')
    .height(24.84)
    .backgroundColor(UIConstants.COLOR_GRAY)
    .padding({
      left: UIConstants.SPACE_ROW_MD,
      right: UIConstants.SPACE_ROW_MD,
    })
  }
}