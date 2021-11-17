/*
    6. 구조 분해
*/

const user = {
    firstName: "둘",
    lastName: '리',
    email: "dooly@gmail.com"
};

({firstName, lastName} = user);


console.log(firstName,lastName);