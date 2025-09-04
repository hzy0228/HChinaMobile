import { UIConstants } from '../constants/UIConstants';

@Extend(Text)
function cmText() {
  .fontSize(UIConstants.FONT_XXS)
  .fontColor(UIConstants.COLOR_WHITE)
}

interface Notice {
  nid: string
  title: string
  url: string
}

@Component
export struct NoticeBar {
  swiperCtrl: SwiperController = new SwiperController()
  @State noticeList: Notice[] = [
    { nid: '100', title: '“扫黄打非”举报公告', url: '' },
    { nid: '101', title: '中国移动掌上营业厅服务协议', url: '' },
    { nid: '102', title: '个人信息保护政策', url: '' },
    { nid: '103', title: '关于4G飞享套餐账单及名称升级的公告', url: '' },
    { nid: '104', title: '关于陕西移动积分兑换提醒公告', url: '' },
    { nid: '105', title: '陕西移动停售资费公示', url: '' },
    { nid: '106', title: '“百万医疗保险”防诈提示', url: '' },
    { nid: '107', title: '关于中国移动取消流量“漫游”费的公告', url: '' },
  ]

  build() {
    Row() {
      Image('images/ic_public_sound.svg')
        .width(24)
        .fillColor(UIConstants.COLOR_WHITE)
      Text('  公告:  ')
        .cmText()

      Swiper(this.swiperCtrl) {
        ForEach(this.noticeList, (item: Notice) => {
          Text(item.title)
            .cmText()
            .onClick(() => {
              //TODO
            })
        }, (item: Notice) => item.nid)
      }
      .layoutWeight(1)
      .loop(true) // 启用循环播放
      .autoPlay(true) // 开启自动滚动
      .interval(2000) // 设置滚动间隔（单位毫秒）
      .indicator(false) // 隐藏导航点
      .duration(2000)
      .curve(Curve.EaseInOut)

      Image('images/ic_public_arrow_left.svg')
        .width(16)
        .fillColor(UIConstants.COLOR_WHITE)
        .margin({ left: UIConstants.SPACE_ROW_XS })
        .onClick(() => {
          this.swiperCtrl.showPrevious()
        })

      Image('images/ic_public_arrow_right.svg')
        .width(16)
        .fillColor(UIConstants.COLOR_WHITE)
        .margin({ left: UIConstants.SPACE_ROW_XS })
        .onClick(() => {
          this.swiperCtrl.showPrevious()
        })
    }
    .width('100%')
    .height(24.84)
    .backgroundColor(UIConstants.COLOR_GRAY)
    .padding({
      left: UIConstants.SPACE_ROW_MD,
      right: UIConstants.SPACE_ROW_MD,
    })
  }
}