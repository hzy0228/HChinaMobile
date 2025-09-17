import { APIConstants, TitleBar, UIConstants, WelcomeBar } from 'common'
import { discountListModel, DiscountVO } from '../viewmodels/DiscountListModel'
import { bundleManager } from '@kit.AbilityKit'


class DiscountDataSource implements IDataSource {
  list: DiscountVO[] = []
  dcListener?: DataChangeListener

  loadData(list: DiscountVO[]) {
    this.list = list
    this.dcListener?.onDataReloaded() //重新加载数据
  }

  totalCount(): number {
    return this.list.length
  }

  getData(index: number): DiscountVO {

    return this.list[index]
  }

  registerDataChangeListener(listener: DataChangeListener): void {
    this.dcListener = listener
  }

  unregisterDataChangeListener(listener: DataChangeListener): void {
    this.dcListener = undefined
  }
}


@Component
export struct DiscountList {
  // @State discountList: DiscountVO[] = []
  discountDS: DiscountDataSource = new DiscountDataSource()
  bundleName: string = ''

  async aboutToAppear() {
    // this.discountList = await discountListModel.discountListModel()
    let list = await discountListModel.discountListModel()
    this.discountDS.loadData(list)
    console.log('--优惠列表动态数据：', JSON.stringify(this.discountDS))

    this.bundleName =
      bundleManager.getBundleInfoForSelfSync(bundleManager.BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION).name
  }

  build() {
    List() {
      ListItem() {

        TitleBar({ title: '优 惠' })
      }

      ListItem() {

        WelcomeBar()
      }

      LazyForEach(this.discountDS, (item: DiscountVO, i: number) => {
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
          .onClick(() => {
            this.getUIContext().getRouter().pushUrl({
              url:'@bundle:cn.hdy.hchinamobile/discount/ets/pages/index'
            })
          })
        }
        .onAppear(() => {
          console.log(i + '号优惠项对应的组件即将挂载到节点树-onAppear')
        })
        .onDisAppear(() => {
          console.log(i + '号优惠项对应的组件即将在节点树卸载-onDisAppear')
        })
      }, (item: DiscountVO) => item.did)

    }
    .width('100%')
    .height('100%')
    .backgroundColor(UIConstants.COLOR_LIGHTER)

  }
}