/*
    6. 구조 분해 (Destructing)
*/

// ex01 - basic
const user = {
    firstName: "둘",
    lastName: '리',
    email: "dooly@gmail.com"
};

// let firstName = user.firstName;
// let lastName = user.lastName;
// ({firstName, lastName} = user);
const {firstName, lastName} = user;

console.log(firstName,lastName);

// ex02 - Default value
const goods = {
    name: 'TV',
    price: 10000,
    stockCount: 30
}

let {name, price, countStock=0, stockCount=0} =goods;
console.log(name, price, countStock, stockCount);

// ex03 - 구조 분해해야 할 객체의 속성과 변수 이름이 다를 때
const person = {
    name: '정진우',
    country: 'korea'
};

const {name: fullName, country: place} = person;
console.log(fullName, place);

// ex04 - 내부 객체(Nested Object)의 구조 분해
const student = {
    name: '둘리',
    age: 10,
    score: {
        math: 90,
        kor: 70,
        sci: 100
    }
};

const {
    name: studentName, 
    score:{
        math=0, 
        kor=0, 
        sci=0, 
        music=0
    }
} = student;

console.log(`${studentName}의 성적
    수학: ${math}
    국어: ${kor}
    과학: ${sci}
    음악: ${music}
`);

// ex05 - 함수의 파라미터
const averageScore = function({name: studentName, score:{math=0, kor=0, sci=0, }}){
    console.log(`${studentName}의 평균은 ${(math + kor + sci) / 3} 입니다.`);
};

averageScore(student);

// ex06 - 배열...