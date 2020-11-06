class List {
    private items: any[];
    constructor() {
        this.items = [];
    }
    add<T>(item1: T): void {  //used to add the values from list
        this.items.push(item1);
    }
    get<F>(index: number): F {  //used to get the valuesbfrom list
        return this.items[index];
    }
}
let strlist = new List();
strlist.add("name");
strlist.add("age");
console.log(strlist.get<string>(0).substr(0, 3));
console.log(strlist.get<string>(1).substr(0, 4));

let numlist = new List();
numlist.add(234);
numlist.add(7);
console.log(numlist.get<number>(0));
console.log(numlist.get<number>(1));



console.log('Hello world');