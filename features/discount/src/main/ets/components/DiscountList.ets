import { APIConstants, TitleBar, UIConstants, WelcomeBar } from 'common'
import { discountListModel, DiscountVO } from '../viewmodels/DiscountListModel'

@Component
export struct DiscountList {
  @State discountList: DiscountVO[] = []

  async aboutToAppear() {
    this.discountList = await discountListModel.discountListModel()
    console.log('--优惠列表动态数据：', JSON.stringify(this.discountList))
  }

  build() {
    List() {
      ListItem() {

        TitleBar({ title: '优 惠' })
      }

      ListItem() {

        WelcomeBar()
      }

      ForEach(this.discountList, (item: DiscountVO) => {
        ListItem() {
          Column() {
            Image(APIConstants.BASE + item.pictureUrl)
              .width('100%')
            Text(item.title)
              .fontSize(UIConstants.FONT_LG)
              .fontColor(UIConstants.COLOR_DARKER)
              .backgroundColor(UIConstants.COLOR_WHITE)
              .width('100%')
              .padding({
                top: UIConstants.SPACE_COL_SM,
                right: UIConstants.SPACE_ROW_SM,
                bottom: UIConstants.SPACE_COL_LG,
                left: UIConstants.SPACE_ROW_SM,
              })
          }
          .margin(UIConstants.SPACE_ROW_MD)
        }
      }, (item: DiscountVO) => item.did)

    }
    .width('100%')
    .height('100%')
    .backgroundColor(UIConstants.COLOR_LIGHTER)

  }
}