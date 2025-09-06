import { UIConstants } from '../constants/UIConstants'

@Component
export struct TopMaskBar {
  static readonly HEIGHT = 58
  @State city: string = '北京'

  build() {
    Row() {
      Image('images/logo_gray.png')
        .width('110')
        .margin({ left: UIConstants.SPACE_ROW_LG })
      Text() {
        Span(this.city)
        Span(' ▼')
      }
      .margin({ left: UIConstants.SPACE_ROW_LG })
      .fontSize(UIConstants.FONT_XS)
      .fontColor(UIConstants.COLOR_WHITE)
      .onClick(() => {
        //TODO
        console.log('跳转到二级页面：城市选择')
      })

      Blank() //占用所有空白元素

      Text('未登录')
        .fontSize(UIConstants.FONT_XS)
        .fontColor(UIConstants.COLOR_WHITE)
        .margin({ right: UIConstants.SPACE_ROW_LG })
        .onClick(() => {

        })

    }
    .width('100%')
    .height(TopMaskBar.HEIGHT)
    .linearGradient({
      angle: 180,
      colors: [
        ['rgba(0,0,0,1)', 0.0], // 顶部半透明黑色
        ['rgba(0,0,0,0)', 1.0]// 底部完全透明
      ]
    })
    .transition(TransitionEffect.OPACITY.animation({ duration: UIConstants.DURATION_SHORT }))
  }
}