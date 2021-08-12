var temp = 0
const addQuantity = document.getElementById('plus')
const reduceQuantity = document.getElementById('unless')
var quantity = document.getElementsByClassName('ip-quantity')[0].value
reduceQuantity.onclick= (()=>{
    
    quantity--;
    if(quantity < 1){
        quantity =1
    } 
    
    document.getElementsByClassName('ip-quantity')[0].value = quantity
})
addQuantity.onclick= (()=>{
    quantity++;
    document.getElementsByClassName('ip-quantity')[0].value = quantity
})