import { UIConstants } from '../constants/UIConstants';

@Component
export struct TopBar {
  static readonly HEIGHT = 47
  @State city: string = '北京'


  build() {
    Row() {
      Image('images/logo_full.png')
        .width('110')
      Blank() //占用所有空白元素
      Text() {
        Span(this.city)
        Span(' ▼')
      }
      .fontSize(UIConstants.FONT_XS)
      .fontColor(UIConstants.COLOR_BLACK)
      .onClick(() => {
        //TODO
        console.log('跳转到二级页面：城市选择')
      })

      Text('关怀版')
        .fontWeight(FontWeight.Bold)
        .fontSize(UIConstants.FONT_SM)
        .fontColor(UIConstants.COLOR_BLUE)
        .borderWidth(UIConstants.BORDER_WIDTH_SM)
        .borderColor(UIConstants.COLOR_BLUE)
        .borderRadius(UIConstants.BORDER_RADIUS_SM)
        .padding({
          top: UIConstants.SPACE_COL_XS,
          right: UIConstants.SPACE_ROW_SM,
          bottom: UIConstants.SPACE_COL_XS,
          left: UIConstants.SPACE_ROW_SM,
        })
        .margin({
          left: UIConstants.SPACE_ROW_MD
        })
        .onClick(() => {
          //TODO 跳转到一级页面 关怀版首页
        })

      Image('images/ic_public_search.svg')
        .width(19)
        .fillColor(UIConstants.COLOR_BLUE)
        .margin({
          left: UIConstants.SPACE_ROW_MD
        })
        .onClick(() => {
          //TODO 跳转到二级页面 搜索
        })
      Image('images/ic_public_more.svg')
        .width(19)
        .fillColor(UIConstants.COLOR_BLUE)
        .margin({
          left: UIConstants.SPACE_ROW_MD
        })
        .onClick(() => {
          //TODO 跳转到二级页面 更多
        })

    }
    .width('100%')
    .height(TopBar.HEIGHT)
    .backgroundColor(UIConstants.COLOR_LIGHT)
    .padding({
      left: UIConstants.SPACE_ROW_MD,
      right: UIConstants.SPACE_ROW_MD,
    })
  }
}