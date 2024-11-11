const base = {
    get() {
                return {
            url : "http://localhost:8080/dianzhishangcheng/",
            name: "dianzhishangcheng",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/dianzhishangcheng/front/index.html'
        };
            },
    getProjectName(){
        return {
            projectName: "电子商城"
        } 
    }
}
export default base
