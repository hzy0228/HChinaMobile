import { UIConstants } from '../constants/UIConstants'

interface Ad {
  aid: string
  pic: string
  url: string
}


@Component
export struct AdBar {
  static readonly DOT_SIZE = 10
  @State adList: Ad[] = [
    { aid: '200', pic: 'images/ad0.jpg', url: '' },
    { aid: '201', pic: 'images/ad1.jpg', url: '' },
    { aid: '202', pic: 'images/ad2.jpg', url: '' },
    { aid: '203', pic: 'images/ad3.jpg', url: '' },
  ]

  build() {

    Swiper() {
      ForEach(this.adList, (item: Ad) => {
        Image(item.pic)
          .width('100%')
          .onClick(() => {
            //TODO
          })
      }, (item: Ad) => item.aid)
    }
    .width('100%')
    .loop(true) // 启用循环播放
    .autoPlay(true) // 开启自动滚动
    // .interval(1000) // 设置滚动间隔（单位毫秒）
    // .duration(2000)
    // .curve(Curve.EaseInOut)
    .indicator(
      new DotIndicator()
        .itemWidth(AdBar.DOT_SIZE)
        .itemHeight(AdBar.DOT_SIZE)
        .selectedItemWidth(AdBar.DOT_SIZE)
        .selectedItemHeight(AdBar.DOT_SIZE)
        .color('rgba(255, 255, 255, 0.5)')
        .selectedColor(UIConstants.COLOR_WHITE)
    )

  }
}