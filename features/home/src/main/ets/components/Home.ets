import { AdBar, CopyrightBar, GridMenu, NoticeBar, TopBar, TopMaskBar, UIConstants, WelcomeBar } from 'common'

@Extend(Text)
function cmText(fs: number = UIConstants.FONT_LG, fc: string = UIConstants.COLOR_DARKER, mt: number = 0) {
  .fontSize(fs)
  .fontColor(fc)
  .margin({ top: mt })
}

@Component
export struct Home {
  static readonly FLOOR_HEADER_HEIGHT = 46
  floorNames: string[] = ['全家享', '终端推荐', '业务推荐', '号卡推荐', '特色专区', '猜你夏欢']
  floorColors: string[] = ['#85CF22', '#FF5089', '#9832FF', '#23B3E9', '117DEA', 'E40077']
  @State showTopMask: boolean = false
  scroller: Scroller = new Scroller()

  @Builder
  floorHeader(idx: number) {
    Row() {
      Text(this.floorNames[idx])
        .fontSize(UIConstants.FONT_XXL)
        .fontColor(this.floorColors[idx])
        .padding({ left: 22 })
        .backgroundImage('images/icons.png')
        .backgroundImageSize({ width: 18 })
        .backgroundImagePosition({ y: 2 - 26 * idx })

    }
    .height(Home.FLOOR_HEADER_HEIGHT)
    .backgroundColor(UIConstants.COLOR_LIGHT)
    .justifyContent(FlexAlign.Center)
    .width('100%')
  }

  build() {

    Stack({ alignContent: Alignment.Top }) {
      Scroll(this.scroller) {
        Column() {
          //F1
          TopBar()
          //F2
          WelcomeBar()
          //F3
          NoticeBar()
          //F4
          AdBar()
          //F5
          GridMenu()
          //F6
          this.floorHeader(0)
          Grid() {
            GridItem() {
              RelativeContainer() {
                Text('宽带新装')
                  .cmText()
                  .id('kdxz')
                Text('家居必备')
                  .cmText(UIConstants.FONT_XS, UIConstants.COLOR_GRAY, UIConstants.SPACE_COL_XS)
                  .alignRules({
                    top: { anchor: 'kdxz', align: VerticalAlign.Bottom }
                  })
                Image('images/kuandai.png')
                  .width(62.4)
                  .alignRules({
                    right: { anchor: '__container__', align: HorizontalAlign.End },
                    bottom: { anchor: '__container__', align: VerticalAlign.Bottom }
                  })
              }
              .padding({
                top: UIConstants.SPACE_COL_XL,
                right: UIConstants.SPACE_ROW_XL,
                bottom: UIConstants.SPACE_COL_XL,
                left: UIConstants.SPACE_ROW_XL
              })
              .height(124)
              .borderWidth(UIConstants.BORDER_WIDTH_SM)
              .borderColor(UIConstants.COLOR_LIGHT)
            }

            GridItem() {
              RelativeContainer() {
                Text('全国亲情网')
                  .cmText()
                  .id('qgqq')
                Text('成员多至19人')
                  .cmText(UIConstants.FONT_XS, UIConstants.COLOR_GRAY, UIConstants.SPACE_COL_XS)
                  .alignRules({
                    top: { anchor: 'qgqq', align: VerticalAlign.Bottom }
                  })
                Image('images/qinqing.png')
                  .width(62.4)
                  .alignRules({
                    right: { anchor: '__container__', align: HorizontalAlign.End },
                    bottom: { anchor: '__container__', align: VerticalAlign.Bottom }
                  })
              }
              .padding({
                top: UIConstants.SPACE_COL_XL,
                right: UIConstants.SPACE_ROW_XL,
                bottom: UIConstants.SPACE_COL_XL,
                left: UIConstants.SPACE_ROW_XL
              })
              .height(124)
              .borderWidth(UIConstants.BORDER_WIDTH_SM)
              .borderColor(UIConstants.COLOR_LIGHT)
            }

            GridItem() {
              Image('images/ad001.jpg')
                .width('100%')
            }
            .columnStart(0)
            .columnEnd(1)
          }
          .width('100%')
          .columnsTemplate('1fr 1fr')

          //F7
          this.floorHeader(1)
          Grid() {
            GridItem() {
              Column() {
                Image('images/phone01.jpg')
                  .width('70%')
                Text('手机1')
                  .cmText(UIConstants.FONT_LG, UIConstants.COLOR_DARKER, UIConstants.SPACE_COL_XL)
                Text('￥7,499')
                  .cmText(UIConstants.FONT_LG, UIConstants.COLOR_GRAY, UIConstants.SPACE_COL_XS)

              }
              .width('100%')
              .padding({
                top: UIConstants.SPACE_COL_XL,
                bottom: UIConstants.SPACE_COL_XL
              })
              .borderWidth(UIConstants.BORDER_WIDTH_SM)
              .borderColor(UIConstants.COLOR_LIGHT)
            }

            GridItem() {
              Column() {
                Image('images/phone01.jpg')
                  .width('70%')
                Text('手机1')
                  .cmText(UIConstants.FONT_LG, UIConstants.COLOR_DARKER, UIConstants.SPACE_COL_XL)
                Text('￥7,499')
                  .cmText(UIConstants.FONT_LG, UIConstants.COLOR_GRAY, UIConstants.SPACE_COL_XS)

              }
              .width('100%')
              .padding({
                top: UIConstants.SPACE_COL_XL,
                bottom: UIConstants.SPACE_COL_XL
              })
              .borderWidth(UIConstants.BORDER_WIDTH_SM)
              .borderColor(UIConstants.COLOR_LIGHT)
            }

            GridItem() {
              Column() {
                Image('images/phone01.jpg')
                  .width('70%')
                Text('手机1')
                  .cmText(UIConstants.FONT_LG, UIConstants.COLOR_DARKER, UIConstants.SPACE_COL_XL)
                Text('￥7,499')
                  .cmText(UIConstants.FONT_LG, UIConstants.COLOR_GRAY, UIConstants.SPACE_COL_XS)

              }
              .width('100%')
              .padding({
                top: UIConstants.SPACE_COL_XL,
                bottom: UIConstants.SPACE_COL_XL
              })
              .borderWidth(UIConstants.BORDER_WIDTH_SM)
              .borderColor(UIConstants.COLOR_LIGHT)
            }

            GridItem() {
              Column() {
                Image('images/phone01.jpg')
                  .width('70%')
                Text('手机1')
                  .cmText(UIConstants.FONT_LG, UIConstants.COLOR_DARKER, UIConstants.SPACE_COL_XL)
                Text('￥7,499')
                  .cmText(UIConstants.FONT_LG, UIConstants.COLOR_GRAY, UIConstants.SPACE_COL_XS)

              }
              .width('100%')
              .padding({
                top: UIConstants.SPACE_COL_XL,
                bottom: UIConstants.SPACE_COL_XL
              })
              .borderWidth(UIConstants.BORDER_WIDTH_SM)
              .borderColor(UIConstants.COLOR_LIGHT)
            }
          }
          .columnsTemplate('1fr 1fr')

          //F8
          this.floorHeader(2)
          Grid() {
            GridItem() {
              RelativeContainer() {
                Text('号卡专区')
                  .cmText()
                  .alignRules({
                    bottom: { anchor: '__container__', align: VerticalAlign.Center }
                  })
                Text('先领先得 包邮到家')
                  .cmText(UIConstants.FONT_XS, UIConstants.COLOR_GRAY, UIConstants.SPACE_COL_XS)
                  .alignRules({
                    top: { anchor: '__container__', align: VerticalAlign.Center }
                  })
                Image('images/business0.png')
                  .width(46.8)
                  .alignRules({
                    right: { anchor: '__container__', align: HorizontalAlign.End },
                    center: { anchor: '__container__', align: VerticalAlign.Center }
                  })
              }
              .padding({
                top: UIConstants.SPACE_COL_XL,
                right: UIConstants.SPACE_ROW_XL,
                bottom: UIConstants.SPACE_COL_XL,
                left: UIConstants.SPACE_ROW_XL
              })
              .height(88.6)
              .borderWidth(UIConstants.BORDER_WIDTH_SM)
              .borderColor(UIConstants.COLOR_LIGHT)
            }

            GridItem() {
              RelativeContainer() {
                Text('号卡专区')
                  .cmText()
                  .alignRules({
                    bottom: { anchor: '__container__', align: VerticalAlign.Center }
                  })
                Text('先领先得 包邮到家')
                  .cmText(UIConstants.FONT_XS, UIConstants.COLOR_GRAY, UIConstants.SPACE_COL_XS)
                  .alignRules({
                    top: { anchor: '__container__', align: VerticalAlign.Center }
                  })
                Image('images/business1.png')
                  .width(46.8)
                  .alignRules({
                    right: { anchor: '__container__', align: HorizontalAlign.End },
                    center: { anchor: '__container__', align: VerticalAlign.Center }
                  })
              }
              .padding({
                top: UIConstants.SPACE_COL_XL,
                right: UIConstants.SPACE_ROW_XL,
                bottom: UIConstants.SPACE_COL_XL,
                left: UIConstants.SPACE_ROW_XL
              })
              .height(88.6)
              .borderWidth(UIConstants.BORDER_WIDTH_SM)
              .borderColor(UIConstants.COLOR_LIGHT)
            }

            GridItem() {
              RelativeContainer() {
                Text('号卡专区')
                  .cmText()
                  .alignRules({
                    bottom: { anchor: '__container__', align: VerticalAlign.Center }
                  })
                Text('先领先得 包邮到家')
                  .cmText(UIConstants.FONT_XS, UIConstants.COLOR_GRAY, UIConstants.SPACE_COL_XS)
                  .alignRules({
                    top: { anchor: '__container__', align: VerticalAlign.Center }
                  })
                Image('images/business2.jpg')
                  .width(46.8)
                  .alignRules({
                    right: { anchor: '__container__', align: HorizontalAlign.End },
                    center: { anchor: '__container__', align: VerticalAlign.Center }
                  })
              }
              .padding({
                top: UIConstants.SPACE_COL_XL,
                right: UIConstants.SPACE_ROW_XL,
                bottom: UIConstants.SPACE_COL_XL,
                left: UIConstants.SPACE_ROW_XL
              })
              .height(88.6)
              .borderWidth(UIConstants.BORDER_WIDTH_SM)
              .borderColor(UIConstants.COLOR_LIGHT)
            }

            GridItem() {
              RelativeContainer() {
                Text('号卡专区')
                  .cmText()
                  .alignRules({
                    bottom: { anchor: '__container__', align: VerticalAlign.Center }
                  })
                Text('先领先得 包邮到家')
                  .cmText(UIConstants.FONT_XS, UIConstants.COLOR_GRAY, UIConstants.SPACE_COL_XS)
                  .alignRules({
                    top: { anchor: '__container__', align: VerticalAlign.Center }
                  })
                Image('images/business3.png')
                  .width(46.8)
                  .alignRules({
                    right: { anchor: '__container__', align: HorizontalAlign.End },
                    center: { anchor: '__container__', align: VerticalAlign.Center }
                  })
              }
              .padding({
                top: UIConstants.SPACE_COL_XL,
                right: UIConstants.SPACE_ROW_XL,
                bottom: UIConstants.SPACE_COL_XL,
                left: UIConstants.SPACE_ROW_XL
              })
              .height(88.6)
              .borderWidth(UIConstants.BORDER_WIDTH_SM)
              .borderColor(UIConstants.COLOR_LIGHT)
            }
          }
          .columnsTemplate('1fr 1fr')

          Row() {
            Text('更多业务 >')
              .cmText(UIConstants.FONT_XXL)
          }
          .width('100%')
          .height(46.8)
          .justifyContent(FlexAlign.Center)
          .backgroundColor(UIConstants.COLOR_WHITE)

          //F9
          this.floorHeader(3)
          Grid() {
            GridItem() {
              Column() {
                Image('images/phone01.jpg')
                  .width('70%')
                Text('手机1')
                  .cmText(UIConstants.FONT_LG, UIConstants.COLOR_DARKER, UIConstants.SPACE_COL_MD)
                Text('￥7,499')
                  .cmText(UIConstants.FONT_LG, UIConstants.COLOR_GRAY, UIConstants.SPACE_COL_XS)

              }
              .width('100%')
              .padding({
                top: UIConstants.SPACE_COL_MD,
                bottom: UIConstants.SPACE_COL_MD
              })
              .borderWidth(UIConstants.BORDER_WIDTH_SM)
              .borderColor(UIConstants.COLOR_LIGHT)
            }
            .rowStart(0)
            .rowEnd(1)

            GridItem() {
              RelativeContainer() {
                Text('号卡专区')
                  .cmText()
                  .alignRules({
                    bottom: { anchor: '__container__', align: VerticalAlign.Center }
                  })
                Text('先领先得 包邮到家')
                  .cmText(UIConstants.FONT_XS, UIConstants.COLOR_GRAY, UIConstants.SPACE_COL_XS)
                  .alignRules({
                    top: { anchor: '__container__', align: VerticalAlign.Center }
                  })
                Image('images/business0.png')
                  .width(46.8)
                  .alignRules({
                    right: { anchor: '__container__', align: HorizontalAlign.End },
                    center: { anchor: '__container__', align: VerticalAlign.Center }
                  })
              }
              .padding({
                top: UIConstants.SPACE_COL_XL,
                right: UIConstants.SPACE_ROW_XL,
                bottom: UIConstants.SPACE_COL_XL,
                left: UIConstants.SPACE_ROW_XL
              })
              .height(88.6)
              .borderWidth(UIConstants.BORDER_WIDTH_SM)
              .borderColor(UIConstants.COLOR_LIGHT)
            }

            GridItem() {
              RelativeContainer() {
                Text('号卡专区')
                  .cmText()
                  .alignRules({
                    bottom: { anchor: '__container__', align: VerticalAlign.Center }
                  })
                Text('先领先得 包邮到家')
                  .cmText(UIConstants.FONT_XS, UIConstants.COLOR_GRAY, UIConstants.SPACE_COL_XS)
                  .alignRules({
                    top: { anchor: '__container__', align: VerticalAlign.Center }
                  })
                Image('images/business0.png')
                  .width(46.8)
                  .alignRules({
                    right: { anchor: '__container__', align: HorizontalAlign.End },
                    center: { anchor: '__container__', align: VerticalAlign.Center }
                  })
              }
              .padding({
                top: UIConstants.SPACE_COL_XL,
                right: UIConstants.SPACE_ROW_XL,
                bottom: UIConstants.SPACE_COL_XL,
                left: UIConstants.SPACE_ROW_XL
              })
              .height(88.6)
              .borderWidth(UIConstants.BORDER_WIDTH_SM)
              .borderColor(UIConstants.COLOR_LIGHT)
            }
          }
          .columnsTemplate('1fr 1fr')

          //F10
          this.floorHeader(4)
          Grid() {
            GridItem() {
              RelativeContainer() {
                Text('号卡专区')
                  .cmText()
                  .alignRules({
                    bottom: { anchor: '__container__', align: VerticalAlign.Center }
                  })
                Text('先领先得 包邮到家')
                  .cmText(UIConstants.FONT_XS, UIConstants.COLOR_GRAY, UIConstants.SPACE_COL_XS)
                  .alignRules({
                    top: { anchor: '__container__', align: VerticalAlign.Center }
                  })
                Image('images/business0.png')
                  .width(46.8)
                  .alignRules({
                    right: { anchor: '__container__', align: HorizontalAlign.End },
                    center: { anchor: '__container__', align: VerticalAlign.Center }
                  })
              }
              .padding({
                top: UIConstants.SPACE_COL_XL,
                right: UIConstants.SPACE_ROW_XL,
                bottom: UIConstants.SPACE_COL_XL,
                left: UIConstants.SPACE_ROW_XL
              })
              .height(88.6)
              .borderWidth(UIConstants.BORDER_WIDTH_SM)
              .borderColor(UIConstants.COLOR_LIGHT)
            }

            GridItem() {
              RelativeContainer() {
                Text('号卡专区')
                  .cmText()
                  .alignRules({
                    bottom: { anchor: '__container__', align: VerticalAlign.Center }
                  })
                Text('先领先得 包邮到家')
                  .cmText(UIConstants.FONT_XS, UIConstants.COLOR_GRAY, UIConstants.SPACE_COL_XS)
                  .alignRules({
                    top: { anchor: '__container__', align: VerticalAlign.Center }
                  })
                Image('images/business1.png')
                  .width(46.8)
                  .alignRules({
                    right: { anchor: '__container__', align: HorizontalAlign.End },
                    center: { anchor: '__container__', align: VerticalAlign.Center }
                  })
              }
              .padding({
                top: UIConstants.SPACE_COL_XL,
                right: UIConstants.SPACE_ROW_XL,
                bottom: UIConstants.SPACE_COL_XL,
                left: UIConstants.SPACE_ROW_XL
              })
              .height(88.6)
              .borderWidth(UIConstants.BORDER_WIDTH_SM)
              .borderColor(UIConstants.COLOR_LIGHT)
            }

            GridItem() {
              RelativeContainer() {
                Text('号卡专区')
                  .cmText()
                  .alignRules({
                    bottom: { anchor: '__container__', align: VerticalAlign.Center }
                  })
                Text('先领先得 包邮到家')
                  .cmText(UIConstants.FONT_XS, UIConstants.COLOR_GRAY, UIConstants.SPACE_COL_XS)
                  .alignRules({
                    top: { anchor: '__container__', align: VerticalAlign.Center }
                  })
                Image('images/business2.jpg')
                  .width(46.8)
                  .alignRules({
                    right: { anchor: '__container__', align: HorizontalAlign.End },
                    center: { anchor: '__container__', align: VerticalAlign.Center }
                  })
              }
              .padding({
                top: UIConstants.SPACE_COL_XL,
                right: UIConstants.SPACE_ROW_XL,
                bottom: UIConstants.SPACE_COL_XL,
                left: UIConstants.SPACE_ROW_XL
              })
              .height(88.6)
              .borderWidth(UIConstants.BORDER_WIDTH_SM)
              .borderColor(UIConstants.COLOR_LIGHT)
            }

            GridItem() {
              RelativeContainer() {
                Text('号卡专区')
                  .cmText()
                  .alignRules({
                    bottom: { anchor: '__container__', align: VerticalAlign.Center }
                  })
                Text('先领先得 包邮到家')
                  .cmText(UIConstants.FONT_XS, UIConstants.COLOR_GRAY, UIConstants.SPACE_COL_XS)
                  .alignRules({
                    top: { anchor: '__container__', align: VerticalAlign.Center }
                  })
                Image('images/business3.png')
                  .width(46.8)
                  .alignRules({
                    right: { anchor: '__container__', align: HorizontalAlign.End },
                    center: { anchor: '__container__', align: VerticalAlign.Center }
                  })
              }
              .padding({
                top: UIConstants.SPACE_COL_XL,
                right: UIConstants.SPACE_ROW_XL,
                bottom: UIConstants.SPACE_COL_XL,
                left: UIConstants.SPACE_ROW_XL
              })
              .height(88.6)
              .borderWidth(UIConstants.BORDER_WIDTH_SM)
              .borderColor(UIConstants.COLOR_LIGHT)
            }

            GridItem() {
              RelativeContainer() {
                Text('号卡专区')
                  .cmText()
                  .alignRules({
                    bottom: { anchor: '__container__', align: VerticalAlign.Center }
                  })
                Text('先领先得 包邮到家')
                  .cmText(UIConstants.FONT_XS, UIConstants.COLOR_GRAY, UIConstants.SPACE_COL_XS)
                  .alignRules({
                    top: { anchor: '__container__', align: VerticalAlign.Center }
                  })
                Image('images/business0.png')
                  .width(46.8)
                  .alignRules({
                    right: { anchor: '__container__', align: HorizontalAlign.End },
                    center: { anchor: '__container__', align: VerticalAlign.Center }
                  })
              }
              .padding({
                top: UIConstants.SPACE_COL_XL,
                right: UIConstants.SPACE_ROW_XL,
                bottom: UIConstants.SPACE_COL_XL,
                left: UIConstants.SPACE_ROW_XL
              })
              .height(88.6)
              .borderWidth(UIConstants.BORDER_WIDTH_SM)
              .borderColor(UIConstants.COLOR_LIGHT)
            }

            GridItem() {
              RelativeContainer() {
                Text('号卡专区')
                  .cmText()
                  .alignRules({
                    bottom: { anchor: '__container__', align: VerticalAlign.Center }
                  })
                Text('先领先得 包邮到家')
                  .cmText(UIConstants.FONT_XS, UIConstants.COLOR_GRAY, UIConstants.SPACE_COL_XS)
                  .alignRules({
                    top: { anchor: '__container__', align: VerticalAlign.Center }
                  })
                Image('images/business1.png')
                  .width(46.8)
                  .alignRules({
                    right: { anchor: '__container__', align: HorizontalAlign.End },
                    center: { anchor: '__container__', align: VerticalAlign.Center }
                  })
              }
              .padding({
                top: UIConstants.SPACE_COL_XL,
                right: UIConstants.SPACE_ROW_XL,
                bottom: UIConstants.SPACE_COL_XL,
                left: UIConstants.SPACE_ROW_XL
              })
              .height(88.6)
              .borderWidth(UIConstants.BORDER_WIDTH_SM)
              .borderColor(UIConstants.COLOR_LIGHT)
            }

            GridItem() {
              RelativeContainer() {
                Text('号卡专区')
                  .cmText()
                  .alignRules({
                    bottom: { anchor: '__container__', align: VerticalAlign.Center }
                  })
                Text('先领先得 包邮到家')
                  .cmText(UIConstants.FONT_XS, UIConstants.COLOR_GRAY, UIConstants.SPACE_COL_XS)
                  .alignRules({
                    top: { anchor: '__container__', align: VerticalAlign.Center }
                  })
                Image('images/business2.jpg')
                  .width(46.8)
                  .alignRules({
                    right: { anchor: '__container__', align: HorizontalAlign.End },
                    center: { anchor: '__container__', align: VerticalAlign.Center }
                  })
              }
              .padding({
                top: UIConstants.SPACE_COL_XL,
                right: UIConstants.SPACE_ROW_XL,
                bottom: UIConstants.SPACE_COL_XL,
                left: UIConstants.SPACE_ROW_XL
              })
              .height(88.6)
              .borderWidth(UIConstants.BORDER_WIDTH_SM)
              .borderColor(UIConstants.COLOR_LIGHT)
            }

            GridItem() {
              RelativeContainer() {
                Text('号卡专区')
                  .cmText()
                  .alignRules({
                    bottom: { anchor: '__container__', align: VerticalAlign.Center }
                  })
                Text('先领先得 包邮到家')
                  .cmText(UIConstants.FONT_XS, UIConstants.COLOR_GRAY, UIConstants.SPACE_COL_XS)
                  .alignRules({
                    top: { anchor: '__container__', align: VerticalAlign.Center }
                  })
                Image('images/business3.png')
                  .width(46.8)
                  .alignRules({
                    right: { anchor: '__container__', align: HorizontalAlign.End },
                    center: { anchor: '__container__', align: VerticalAlign.Center }
                  })
              }
              .padding({
                top: UIConstants.SPACE_COL_XL,
                right: UIConstants.SPACE_ROW_XL,
                bottom: UIConstants.SPACE_COL_XL,
                left: UIConstants.SPACE_ROW_XL
              })
              .height(88.6)
              .borderWidth(UIConstants.BORDER_WIDTH_SM)
              .borderColor(UIConstants.COLOR_LIGHT)
            }
          }
          .columnsTemplate('1fr 1fr')

          //F11
          this.floorHeader(5)
          Grid() {
            GridItem() {
              Column() {
                Image('images/likes0.png')
                  .width('80%')
                Text('猜你喜欢描述文字0')
                  .cmText(UIConstants.FONT_MD, UIConstants.COLOR_DARKER, UIConstants.SPACE_COL_SM)
                  .maxLines(1)
                  .textOverflow({ overflow: TextOverflow.Ellipsis })
              }
              .width('100%')
              .padding({
                top: UIConstants.SPACE_COL_MD,
                right: UIConstants.SPACE_ROW_SM,
                bottom: UIConstants.SPACE_COL_MD,
                left: UIConstants.SPACE_ROW_SM
              })
              .borderWidth(UIConstants.BORDER_WIDTH_SM)
              .borderColor(UIConstants.COLOR_LIGHT)
            }

            GridItem() {
              Column() {
                Image('images/likes1.jpg')
                  .width('80%')
                Text('猜你喜欢描述文字1')
                  .cmText(UIConstants.FONT_MD, UIConstants.COLOR_DARKER, UIConstants.SPACE_COL_SM)
                  .maxLines(1)
                  .textOverflow({ overflow: TextOverflow.Ellipsis })
              }
              .width('100%')
              .padding({
                top: UIConstants.SPACE_COL_MD,
                right: UIConstants.SPACE_ROW_SM,
                bottom: UIConstants.SPACE_COL_MD,
                left: UIConstants.SPACE_ROW_SM
              })
              .borderWidth(UIConstants.BORDER_WIDTH_SM)
              .borderColor(UIConstants.COLOR_LIGHT)
            }

            GridItem() {
              Column() {
                Image('images/likes2.png')
                  .width('80%')
                Text('猜你喜欢描述文字2')
                  .cmText(UIConstants.FONT_MD, UIConstants.COLOR_DARKER, UIConstants.SPACE_COL_SM)
                  .maxLines(1)
                  .textOverflow({ overflow: TextOverflow.Ellipsis })
              }
              .width('100%')
              .padding({
                top: UIConstants.SPACE_COL_MD,
                right: UIConstants.SPACE_ROW_SM,
                bottom: UIConstants.SPACE_COL_MD,
                left: UIConstants.SPACE_ROW_SM
              })
              .borderWidth(UIConstants.BORDER_WIDTH_SM)
              .borderColor(UIConstants.COLOR_LIGHT)
            }

            GridItem() {
              Column() {
                Image('images/likes3.jpg')
                  .width('80%')
                Text('猜你喜欢描述文字3')
                  .cmText(UIConstants.FONT_MD, UIConstants.COLOR_DARKER, UIConstants.SPACE_COL_SM)
                  .maxLines(1)
                  .textOverflow({ overflow: TextOverflow.Ellipsis })
              }
              .width('100%')
              .padding({
                top: UIConstants.SPACE_COL_MD,
                right: UIConstants.SPACE_ROW_SM,
                bottom: UIConstants.SPACE_COL_MD,
                left: UIConstants.SPACE_ROW_SM
              })
              .borderWidth(UIConstants.BORDER_WIDTH_SM)
              .borderColor(UIConstants.COLOR_LIGHT)
            }

            GridItem() {
              Column() {
                Image('images/likes4.jpg')
                  .width('80%')
                Text('猜你喜欢描述文字4')
                  .cmText(UIConstants.FONT_MD, UIConstants.COLOR_DARKER, UIConstants.SPACE_COL_SM)
                  .maxLines(1)
                  .textOverflow({ overflow: TextOverflow.Ellipsis })
              }
              .width('100%')
              .padding({
                top: UIConstants.SPACE_COL_MD,
                right: UIConstants.SPACE_ROW_SM,
                bottom: UIConstants.SPACE_COL_MD,
                left: UIConstants.SPACE_ROW_SM
              })
              .borderWidth(UIConstants.BORDER_WIDTH_SM)
              .borderColor(UIConstants.COLOR_LIGHT)
            }
          }
          .width('100%')
          .columnsTemplate('1fr 1fr 1fr')

          //F12
          CopyrightBar()
        }
        .width('100%')
      }
      .width('100%')
      .height('100%')
      .onDidScroll((e) => {
        if (this.scroller.currentOffset().yOffset > TopBar.HEIGHT) {
          this.showTopMask = true
        } else {
          this.showTopMask = false
        }
      })

      if (this.showTopMask) {
        TopMaskBar()
      }

    }
  }
}