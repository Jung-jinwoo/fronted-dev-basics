/*
    URL 다루기
*/

var url1 = "http://www.mysite.com/user?name=둘리&no=10";

// 1. escape: URL 전부 encoding (x) deprecated
var url2 = escape(url1);
console.log(url2);

// 2. encodeURI : parameter 부분만 encoding (o)
var url3 = encodeURI(url1);
console.log(url3);

// 3. encodeURIComponent: 값만 encoding해야하는 경우 (o)
var url4 = encodeURIComponent(url1); // 안좋은 사용 예시
console.log(url4);

// 만들어야할 URL
// http://mysite.com/user?no=10&name=둘리&email=dooli@gmail.com

var toQueryString = function(o){
    var qs = [];
    for(prop in o){
        qs.push(prop + "=" + encodeURIComponent(o[prop]));
    }
    return qs.join("&");
}
var url = "http://mysite.com/user";
var params={
    name: '둘리',
    no : 10,
    email: 'dooli@gmail.com'
}

var url5 = url + "?" + toQueryString(params);
console.log(url5);
// $.ajax({
//     url: url,
//     type: 'post',
//     dataType: 'application/json',
//     data: "no=10&name=둘리&email=dooli@gmail.com" toQueryString(params)
// })