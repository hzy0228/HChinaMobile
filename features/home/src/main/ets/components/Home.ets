import { CopyrightBar, NoticeBar, TopBar, WelcomeBar } from 'common'

@Component
export struct Home {
  build() {
    Scroll() {
      Column() {
        TopBar()
        WelcomeBar()
        NoticeBar()

        CopyrightBar()
      }
      .width('100%')
    }
    .width('100%')
    .height('100%')

  }
}