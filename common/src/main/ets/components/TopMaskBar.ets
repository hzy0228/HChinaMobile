import { UIConstants } from '../constants/UIConstants'

@Extend(Text) function cmText(){
  .fontSize(UIConstants.FONT_XS)
  .fontColor(UIConstants.COLOR_WHITE)
}
@Component
export struct TopMaskBar {
  static readonly HEIGHT = 58
  @StorageLink('userLocation') city: string = '北京'

  build() {
    Row() {
      Image('images/logo_gray.png')
        .width('110')
        .margin({ left: UIConstants.SPACE_ROW_LG })
      Text() {
        Span(this.city)
        Span(' ▼')
      }
      .cmText()
      .margin({ left: UIConstants.SPACE_ROW_LG })
      .onClick(() => {
        //TODO
        console.log('跳转到二级页面：城市选择')
      })

      Blank() //占用所有空白元素

      Text('未登录')
        .cmText()
        .margin({ right: UIConstants.SPACE_ROW_LG })
        .onClick(() => {

        })

    }
    .width('100%')
    .height(TopMaskBar.HEIGHT)
    .linearGradient({
      angle: 180,
      colors: [
        ['rgba(0,0,0,1)', 0.35], // 顶部半透明黑色
        ['rgba(0,0,0,0)', 1.0]// 底部完全透明
      ]
    })
    .transition(TransitionEffect.OPACITY.animation({ duration: UIConstants.DURATION_SHORT }))
  }
}