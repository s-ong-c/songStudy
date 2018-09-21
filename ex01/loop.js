// 사용자 반복 처리 
const loop =
      (iter, f) => {
        //Iterable이라면Iterator를얻음
        if(typeof iter[Symbol.iterator] == 'function'){
          iter = iter[Symbol.iterator]();
        }
        //IteratorObject가아니라면건너뜀
  if(typeof iter.next != 'function') return;

  while(true){
    const v = iter.next();
    if(v.done) return;

    //종료처리f(v.value); //현재값을전달함}};
