export default {
  data : {
    current: 0,
    tabs: [],
    views: []
  },
  onReady(){
    /*cube 被添加到页面之后 */
    this.request({
      api:'today',
      complete : (defaultData, res) => {
        if (res && res.errno === 0 && res.data) {
         var data = res.data;
         this.dataHandle(data);
         this.setStorage({
           key: 'data',
           data: data
         })
        } else {
          this.getStorage({
            key: 'data',
            success: res => {
              const data = res || defaultData
              this.dataHandle(data)
            }
          })
        }
      }
    })
  },
  dataHandle({tabs, views}) {
    this.setData({
      tabs,
      views
    })
  },
  tabClick(index) {
    this.setData({
      current: index
    })
  },
  onHide(){
    /*cube 被隐藏，会被多次调用 */
  },
  onCollapse(){
    /*cube 被收起，会被多次调用 */
  },
  onExpand(){
    /*cube 被展开，会被多次调用 */
  },
  onUnload(){
    /*cube 被删除 */
  },
  onError(){
    /*cube 无法进入ready状态 */
  }
}