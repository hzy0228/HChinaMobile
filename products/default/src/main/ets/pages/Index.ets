import { UIConstants } from 'common'
import { DiscountList } from 'discount'
import { Home } from 'home'
import { bundleManager } from '@kit.AbilityKit'


@Entry
@Component
struct Index {
  @State curTab: number = 0

  @Builder
  tab(i: number, title: string, icon: string, activeIcon: string) {
    Column() {
      Image(this.curTab == i ? activeIcon : icon)
        .width(24.84)
        .margin({ top: UIConstants.SPACE_COL_XS })
      Text(title)
        .fontColor(this.curTab == i ? UIConstants.COLOR_BLUE : UIConstants.COLOR_DARK)
        .fontSize(UIConstants.FONT_XS)
    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.SpaceAround)
    .borderWidth({ top: UIConstants.BORDER_WIDTH_SM })
    .borderColor('#E9E9E9')
  }

  build() {
    Tabs() {
      //页签0：首页
      TabContent() {
        // Text('首页内容')
        Home()
      }
      .tabBar(this.tab(0, '首页', '/images/home.png', '/images/home_active.png'))

      //页签1：商城
      TabContent() {
        Text('商城内容')
      }
      .tabBar(this.tab(1, '商城', '/images/mall.png', '/images/mall_active.png'))


      //页签2：优惠
      TabContent() {
        DiscountList()
      }
      .tabBar(this.tab(2, '优惠', '/images/discount.png', '/images/discount_active.png'))


      //页签3：个人中心
      TabContent() {
        Text('个人中心内容')
      }
      .tabBar(this.tab(3, '个人中心', '/images/personal.png', '/images/personal_active.png'))


      //页签4：关于我们
      TabContent() {
        Text('关于我们内容')
      }
      .tabBar(this.tab(4, '关于我们', '/images/home.png', '/images/home_active.png'))

    }
    .barBackgroundColor(UIConstants.COLOR_WHITE)
    .barPosition(BarPosition.End)
    .onChange((i) => {
      this.curTab = i
    })
    .onContentWillChange((currentIndex, comingIndex) => {
      if (comingIndex == 0 || comingIndex == 2) {
        return true
      } else {
        let router = this.getUIContext().getRouter()
        let bundleName =
          bundleManager.getBundleInfoForSelfSync(bundleManager.BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION).name
        let url = `@bundle:${bundleName}/${comingIndex == 1 ? 'mall' : 'personal'}/ets/pages/Index`
        router.pushUrl({ url })
        return false
      }

    })
  }
}