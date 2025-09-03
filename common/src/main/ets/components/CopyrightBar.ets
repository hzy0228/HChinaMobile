import { UIConstants } from '../constants/UIConstants';

@Extend(Text)
function cmText() {
  .fontSize(UIConstants.FONT_XS)
  .fontColor(UIConstants.COLOR_DARKER)
  .padding({
    bottom: UIConstants.SPACE_COL_MD
  })
}

@Component
export struct CopyrightBar {
  build() {
    Column() {
      Text() {
        Span('京ICP备05002571号')
        Span('证照信息')
          .onClick(() => {
            console.log('--跳转到证照信息')
          })
      }
      .cmText()

      Text('Copyright©1999-2025  中国移动  版权所有')
      .cmText()

      Text('中华人民共和国增值电信业务经营许可证')
      .cmText()

      Text('经营许可证编号：A2.B1.B2-20100001')
      .cmText()

      Text('本网站支持IPv6访问')
      .cmText()
    }
    .width('100%')
    .backgroundColor(UIConstants.COLOR_LIGHTER)
    .padding({
      top: UIConstants.SPACE_COL_XL,
      bottom: UIConstants.SPACE_COL_XL * 2,
    })
  }
}