/**
 * 封装服务器端数据接口
 */
export class APIConstants {
  //服务器基础地址
  static readonly BASE = 'https://www.codeboy.com/chinamobileapi/'
  static readonly BASE_BACKUP = 'https://web.codeboy.com/chinamobileapi/'

  //首页模块相关API
  static readonly APP_RECOMMEND = 'index/appRecommend.do'
  static readonly QUERY_GOODS_INFO = 'index/query_goods_info.do'
  static readonly DISCOUNT_LIST = 'index/discountList'

  //用户模块相关API
  static readonly REGISTER = 'user/register'
  static readonly CAPATCHA = 'user/captcha.svg'
  static readonly LOGIN_TXTMSG = 'user/login/txtmsg'
  static readonly LOGIN_SERVICEPWD = 'user/login/servicepwd'
  static readonly LOGIN_EMAIL = 'user/login/email'
  static readonly USER_PROFILE = 'user/profile'
  static readonly USER_LIST = 'user/list'
  static readonly UPDATE_AVATAR = 'user/update/avatar'
  static readonly UPDATE_PWD = 'user/update/pwd'
  static readonly CHECK_EMAIL = 'user/check/email'
  static readonly CHECK_PHONE = 'user/check/phone'
  static readonly CHECK_UNAME = 'user/check/uname'
  static readonly LOGOUT = 'user/logout'

  //服务器端消息推送模块相关API
  static readonly PUSH_CLIENTS = 'push/clients'
  static readonly PUSH_CLIENTS_CLEAR = 'push/clients/clear'
  static readonly PUSH_REGISTER = 'push/register'
  static readonly PUSH_SEND = 'push/send'

}