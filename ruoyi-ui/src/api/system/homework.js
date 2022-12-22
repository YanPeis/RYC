import request from '@/utils/request'

// 查询作业提交记录列表
export function listHomework(query) {
  return request({
    url: '/system/homework/list',
    method: 'get',
    params: query
  })
}

// 查询作业提交记录详细
export function getHomework(hmId) {
  return request({
    url: '/system/homework/' + hmId,
    method: 'get'
  })
}

// 新增作业提交记录
export function addHomework(data) {
  return request({
    url: '/system/homework',
    method: 'post',
    data: data
  })
}

// 修改作业提交记录
export function updateHomework(data) {
  return request({
    url: '/system/homework',
    method: 'put',
    data: data
  })
}

// 删除作业提交记录
export function delHomework(hmId) {
  return request({
    url: '/system/homework/' + hmId,
    method: 'delete'
  })
}
