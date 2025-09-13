import { UIConstants } from '../constants/UIConstants'

@Component
export struct TitleBar {
  static readonly HEIGHT = 47
  @State title: string = '中国移动'
  @BuilderParam left: () => void = this.leftContent
  @BuilderParam center: () => void = this.centerContent
  @BuilderParam right: () => void = this.rightContent

  @Builder
  leftContent() {
    Image('images/ic_public_arrow_left.svg')
      .width(14)
      .fillColor(UIConstants.COLOR_DARKER)
  }

  @Builder
  centerContent() {
    Text(this.title)
      .fontSize(UIConstants.FONT_XXL + 1)
      .fontColor(UIConstants.COLOR_DARKER)
  }

  @Builder
  rightContent() {
    Text() {
      Span('北京')
      Span(' ▼')
    }
    .fontSize(UIConstants.FONT_XS)
    .fontColor(UIConstants.COLOR_DARKER)
  }

  build() {
    RelativeContainer() {
      Row() {
        this.left()
      }
      .alignRules({
        center: { anchor: '__container__', align: VerticalAlign.Center }
      })

      Row() {
        this.center()
      }
      .alignRules({
        middle: { anchor: '__container__', align: HorizontalAlign.Center },
        center: { anchor: '__container__', align: VerticalAlign.Center }
      })

      Row() {
        this.right()
      }
      .alignRules({
        right: { anchor: '__container__', align: HorizontalAlign.End },
        center: { anchor: '__container__', align: VerticalAlign.Center }
      })
    }
    .backgroundColor(UIConstants.COLOR_LIGHTER)
    .width('100%')
    .height(TitleBar.HEIGHT)
    .padding({
      left: UIConstants.SPACE_ROW_MD,
      right: UIConstants.SPACE_ROW_MD,
    })
  }
}