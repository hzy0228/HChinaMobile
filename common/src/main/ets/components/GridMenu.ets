import { UIConstants } from '../constants/UIConstants'

interface menuItem {
  iid: string
  pic: string
  title: string
}

@Component
export struct GridMenu {
  @State menuItemList: menuItem[] = [
    { iid: '300', pic: 'images/gridicon0.png', title: '话费充值' },
    { iid: '301', pic: 'images/gridicon1.png', title: '流量充值' },
    { iid: '302', pic: 'images/gridicon2.png', title: '账单查询' },
    { iid: '303', pic: 'images/gridicon3.png', title: '套餐余量' },
    { iid: '304', pic: 'images/gridicon4.png', title: '已定业务' },
    { iid: '305', pic: 'images/gridicon5.png', title: '国漫专区' },
    { iid: '306', pic: 'images/gridicon6.png', title: '5G专区' },
    { iid: '307', pic: 'images/gridicon7.png', title: '买手机' },
    { iid: '308', pic: 'images/gridicon8.png', title: '办业务' },
    { iid: '309', pic: 'images/gridicon9.png', title: '优选家庭副卡' },
  ]

  build() {

    Grid() {
      ForEach(this.menuItemList, (item: menuItem) => {
        GridItem() {
          Column() {
            Image(item.pic)
              .width(40)
            Text(item.title)
              .fontColor(UIConstants.COLOR_DARK)
              .fontSize(UIConstants.FONT_XXS)
              .margin({
                top: UIConstants.SPACE_COL_SM
              })
          }
          .width('100%')
          .padding({
            top: UIConstants.SPACE_COL_SM,
            bottom: UIConstants.SPACE_COL_SM,
          })
          .onClick(() => {
            //TODO
          })
        }
      }, (item: menuItem) => item.iid)

    }
    .columnsTemplate('1fr 1fr 1fr 1fr 1fr')
    .padding({
      top: UIConstants.SPACE_COL_MD,
      bottom: UIConstants.SPACE_COL_MD,
    })
  }
}