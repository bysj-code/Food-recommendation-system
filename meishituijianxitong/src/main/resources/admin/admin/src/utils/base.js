const base = {
    get() {
        return {
            url : "http://localhost:8080/meishituijianxitong/",
            name: "meishituijianxitong",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/meishituijianxitong/front/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "美食推荐系统"
        } 
    }
}
export default base
