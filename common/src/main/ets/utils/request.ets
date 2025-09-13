import axios, { AxiosError, AxiosResponse, InternalAxiosRequestConfig } from '@ohos/axios';
import { APIConstants } from '../constants/APIConstants';
import { promptAction } from '@kit.ArkUI';

const instance = axios.create({
  baseURL: APIConstants.BASE,
  timeout: 10000,
  headers: { 'Content-Type': 'application/json' }
});


instance.interceptors.request.use((config: InternalAxiosRequestConfig) => {
  config.headers['Content-Type'] = 'application/json'
  config.headers['token'] = AppStorage.get('userToken'); // 从应用存储获取Token
  return config;
});


instance.interceptors.response.use(
  (res: AxiosResponse) => res.data,
  (e: AxiosError) => {
    console.error('请求过程发生错误：', JSON.stringify(e))
    promptAction.openToast({
      message: '网络异常，请重试',
      duration: 3000
    });
  }
)

export const get = (url: string, params?: object) =>
instance.get(url, { params })

export const post = (url: string, data?: object) =>
instance.post(url, data)

// export const put = (url: string, data?: object) =>
// instance.put(url, data)
//
// export const delete = (url: string, data?: object) =>
// instance.delete(url, data)

// interface RequestConfig {
//   url: string;
//   method?: 'GET' | 'POST' | 'PUT' | 'DELETE';
//   data?: object;
//   params?: object;
// }
//
// export function httpRequest<T>(config: RequestConfig): Promise<T> {
//   return instance({
//     url: config.url,
//     method: config.method || 'GET',
//     data: config.data,
//     params: config.params
//   });
// }