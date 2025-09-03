import { UIConstants } from '../constants/UIConstants';

@Component
export struct WelcomeBar {
  msg: string = '欢迎来到中国移动掌上营业厅'

  build() {
    Row() {
      Text(this.msg)
        .fontSize(UIConstants.FONT_XS)
        .fontColor(UIConstants.COLOR_DARK)
      Text('  去登录 >')
        .fontSize(UIConstants.FONT_XXS)
        .fontColor(UIConstants.COLOR_BLUE)
        .onClick(() => {

        })
    }
    .width('100%')
    .height(35.16)
    .padding({
      left: UIConstants.SPACE_ROW_LG,
      right: UIConstants.SPACE_ROW_LG,
    })
  }
}