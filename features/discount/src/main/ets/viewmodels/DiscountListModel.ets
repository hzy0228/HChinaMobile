import { AxiosResponse } from '@ohos/axios'
import { APIConstants, post } from 'common'

export interface DiscountVO {
  did: string
  pictureUrl: string
  title: string
  target: string
}


class DiscountListModel {
  async discountListModel() {
    let url = APIConstants.DISCOUNT_LIST
    let body: AxiosResponse = await post(url)
    if (body && body['data']) {
      return body['data'] as DiscountVO[]
    } else {
      return []
    }
  }
}

export const discountListModel = new DiscountListModel()