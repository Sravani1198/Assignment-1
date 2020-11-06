let MYSET = Object.create(null); //It is used to check whether the value exist or  not
MYSET.id = 0;


if (MYSET.id) {
    console.log("ID is present");
}

let MYMAP = Object.create(null);
MYMAP.name = "Sravani";
let val = MYMAP.name;
console.log(val);

MYMAP[150] = 123;
console.log(MYMAP[150]);

MYMAP[150] = "GoodMorning";
console.log(MYMAP[150]);

console.log('Hello world');