document;
document.documentElement.children;
document.body.children[0].style.color = 'red';
document.body.children[1].innerHTML = 'Document Object Model';
document.body.children[1].parentNode; // родительский элемент

let h1 = document.createElement('h1');
h1.textContent = "Добавленный заголовок";
document.body.append(h1); // добавляет в конец children элемента, у которого вызван append

let ol = document.createElement('ol');
document.body.append(ol);

let list = [
  document.createElement('li'),
  document.createElement('li'),
  document.createElement('li'),
];
list[0].textContent = 'элемент списка 1';
list[1].textContent = 'элемент списка 2';
list[2].textContent = 'элемент списка 3';
ol.prepend(list[0]); // добавляет в начало children
ol.prepend(list[1]);
ol.prepend(list[2]);
