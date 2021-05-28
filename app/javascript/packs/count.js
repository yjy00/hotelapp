(() => {
  //HTMLのid値を使って以下のDOM要素を取得
  const downbutton = document.getElementById('down');
  const upbutton = document.getElementById('up');
  const count = document.getElementById('item_count');

  //ボタンが押されたらカウント減
  downbutton.addEventListener('click', (event) => {
  event.preventDefault();
  //0以下にはならないようにする
  if(count.value >= 1) {
    count.value--;
  }
  });

  //ボタンが押されたらカウント増
  upbutton.addEventListener('click', (event) => {
  event.preventDefault();
  count.value++;
  })


})();
