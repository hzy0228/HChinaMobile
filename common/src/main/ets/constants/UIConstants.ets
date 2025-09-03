//导出一个类，供其它模块使用
export class UIConstants {
  //与颜色相关的常量
  static readonly COLOR_WHITE = '#FFFFFF'
  static readonly COLOR_LIGHTER = '#F7F7F7'
  static readonly COLOR_LIGHT = '#F2F2F2'
  static readonly COLOR_GRAY = '#999999'
  static readonly COLOR_DARK = '#666666'
  static readonly COLOR_DARKER = '#333333'
  static readonly COLOR_BLACK = '#000000'

  static readonly COLOR_BLUE = '#0187CD'      //主题色：蓝色
  static readonly COLOR_GREEN = '#8DC21F'     //主题色：绿色
  static readonly COLOR_ROSE = '#E30077'      //主题色：玫红色

  //与字体相关的常量
  static readonly FONT_XXS = 10.7812      //Extra Extra Small   √
  static readonly FONT_XS = 12            //Extra Small         √
  static readonly FONT_SM = 13.8281       //Small      √
  static readonly FONT_MD = 14            //Medium    √
  static readonly FONT_LG = 15            //Large   √
  static readonly FONT_XL = 16.875        //Extra Large √
  static readonly FONT_XXL = 17.75        //Extra Extra Large

  //与间距&留白相关的常量
  static readonly SPACE_ROW_XS = 5
  static readonly SPACE_ROW_SM = 8
  static readonly SPACE_ROW_MD = 10
  static readonly SPACE_ROW_LG = 13
  static readonly SPACE_ROW_XL = 16

  static readonly SPACE_COL_XS = 4
  static readonly SPACE_COL_SM = 7
  static readonly SPACE_COL_MD = 9
  static readonly SPACE_COL_LG = 12
  static readonly SPACE_COL_XL = 15

  //与边框相关的常量
  static readonly BORDER_WIDTH_SM = 1
  static readonly BORDER_WIDTH_MD = 2
  static readonly BORDER_WIDTH_LG = 3

  static readonly BORDER_RADIUS_SM = 3
  static readonly BORDER_RADIUS_MD = 6
  static readonly BORDER_RADIUS_LG = 9

  //动画持续时长相关的常量
  static readonly DURATION_SHORT = 300
  static readonly DURATION_MEDIUM = 500
  static readonly DURATION_LONG = 1000

  //其它常量
  static readonly STATUS_BAR_HEIGHT = 38.77         //系统自带的通知栏/状态栏高度
  static readonly NAVIGATION_BAR_HEIGHT = 28        //系统自带的底部导航栏高度
}