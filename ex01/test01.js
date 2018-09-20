const A =
  class{
    constructor(v){
      this.v = v;
    }
  };

const B =
  class{
    constructor(a){
      this.v = a.v;
    }
  };

const b =
    new B(new A(3));

//A클래스속성v가변경되면즉시B클래스가깨짐
