// function something() // играем с переменными
// {


// 	var x = window.localStorage.getItem('bbb');

// 	x = x*1 +1;

// 	window.localStorage.setItem('bbb',x); 

// 	alert(x); 
	
// }

function add_to_cart(id)
{
	var key = 'product_' + id;

	var x = window.localStorage.getItem(key);
	x = x*1 +1;
	window.localStorage.setItem(key, x);

	//alert('You ordered ' + all_items() + ' pizza'); //вывод количества пицц в заказе

	update_orders(); // обновить состояние заказа
	update_orders_button(); // обновить надпись корзины
}

function all_items() 
{
	var cnt = 0;

	for (var i = 0; i < window.localStorage.length; i++) // перебор всех связок ключ значение
	{
		var key = window.localStorage.key(i); // получение имени ключа
		var value = window.localStorage.getItem(key); // получение значения по ключу

		if(key.indexOf('product_') == 0) // если ключ начинается с product_ 
		{
			cnt = cnt + value*1;
		}
	}
   
   return cnt;
}

function get_orders() 
{
	var orders= '';

	for (var i = 0; i < window.localStorage.length; i++) 
	{
		var key = window.localStorage.key(i); 
		var value = window.localStorage.getItem(key); 

		if(key.indexOf('product_') == 0) 
		{
			orders = orders + key + '=' + value + ','; //сформировать скрытую строчку с заказом
		}
		
	}
   
   return orders;
}

function update_orders()
{
	var orders = get_orders();
	$('#orders_input').val(orders); // обновить скрытую строчку с заказом
}

function update_orders_button()
{
	var text = 'Cart (' + all_items() + ')';
	$('#orders_button').val(text); // обновить на кнопке количество пицц
}

function pizzas()
{
	var key = window.localStorage.key(0); 
	var value = window.localStorage.getItem(key); 
	$('#count').val(value);
}

function cancel_order()
{
	window.localStorage.clear();
	update_orders();
	update_orders_button();

	$('#cart').text('Ваша корзина пуста');

	return false;
}