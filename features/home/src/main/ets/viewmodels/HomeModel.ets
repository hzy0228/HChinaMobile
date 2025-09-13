import { AxiosResponse } from '@ohos/axios'
import { APIConstants, post } from 'common'

export interface AppVO {
  itemId: string
  goodsId: string
  dataType: string
  pictureUrl: string
  subhead: string
  title: string
  skuId: string
}

export interface GoodsVO {
  goodsId: string
  price: string
  stock: string
  skuId: string
  pictureUrl: string
  goodsName: string
}

class HomeModel {
  //接口1.1、猜你喜欢
  async appRecommend() {
    let url = APIConstants.APP_RECOMMEND
    let body: AxiosResponse = await post(url)
    if (body && body['data']) {
      return body['data'] as AppVO[]
    } else {
      return []
    }
  }

  //接口1.2、商品推荐
  async queryGoodsInfo() {
    let url = APIConstants.QUERY_GOODS_INFO
    let body: AxiosResponse = await post(url)
    if (body && body['data']) {
      return body['data'] as GoodsVO[]
    } else {
      return []
    }
  }
}

export const homeModel = new HomeModel()