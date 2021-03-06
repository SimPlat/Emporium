
/* Supermarkets */
import $ from 'jquery';
import { categoriesJSON } from "./api/categories.js";
export function checkIfSuperMarketsAreSelected() {
    // var requestOptions = {
    //     method: 'GET',
    //     redirect: 'follow',
    //     credentials: 'include'
    //   };

    // fetch("http://localhost:8080/api/categories", requestOptions)
    // .then(response => response.text())
    // .then(result => console.log(result))
    // .catch(error => console.log('error', error));
    return false;
}

export function getAvailableSupermarkets(markets) {

}

// sendSelectedMarkets([]);
export function sendSelectedMarkets(markets) {
    console.log("Sending Selected Markets " + markets);
    let raw = "[ ";
    for (let i = 0; i < markets.length; i++) {
        raw += "{ \"retailerName\": \"" + markets[i] + "\" } ";
        if (i < markets.length - 1) {
            raw += ",";
        }
    }
    raw += " ]";
    console.log(raw);

    var myHeaders = new Headers();
    myHeaders.append("Content-Type", "application/json");

    // var raw = JSON.stringify([{"retailerName":"Sklavenitis"},{"retailerName":"Masoutis"}]);

    var requestOptions = {
        method: 'POST',
        headers: myHeaders,
        body: raw,
        credentials: 'include',
        redirect: 'follow'
    };

    fetch("https://localhost:8443/api/retailers", requestOptions)
        .then(response => response.text())
        .then(result => console.log(result + " sending completed succesfully"))
        .catch(error => console.log('Error on sending', error));

}

/* Categories */


export let getCategories = function (items) {
    
    var requestOptions = {
        method: 'GET',
        redirect: 'follow',
        credentials: 'include'
    };

    fetch("https://localhost:8443/api/categories", requestOptions)
        .then(response => response.text())
        .then(result => {
            result = JSON.parse(result);
            items = [];
            for (let key in result) {
                items.push(new Item(result[key].displayName, result[key].name));
            }
    })
    .catch(error => console.log('error', error));

}

export let getCategory = function (name) {
    switch (name) {
        case "Frouta":
            return ["????????????", [new Item("??????????????", "banana"),
            new Item("??????????????????", "orange"),
            new Item("????????????", "lemon"),
            new Item("????????", "apple"),
            new Item("??????????????", "strawberry")]];
        case "Galaktokomika":
            return ["??????????????????????????", [new Item("????????", "milk"),
            new Item("??????????", "cacao"),
            new Item("????????", "cheese"),
            new Item("??????????????", "butter"),
            new Item("????????????????", "yogurt")]];
        case "Katepsigmena":
            return ["??????????????????????", [new Item("????????", "fish"),
            new Item("??????????????", "octapus"),
            new Item("???????????????????????? ??????????????", "frozenPotatoes"),
            new Item("??????????????????????", "cheesePie"),
            new Item("????????????", "icecream"),]];

        case "Laxanika":
            return ["????????????????", [new Item("????????????????", "tomato"),
            new Item("????????????????", "cucumber"),
            new Item("????????????????", "pepper"),
            new Item("??????????????????", "mushrooms"),
            new Item("??????????????", "potato")]];

        default:
            return [, []];
    }

}

export let getProducts = function (name) {
    switch (name) {
        case "banana":
            return ["??????????????", [new Item("?????????????? Dole", "banana"),
            new Item("?????????????? Chiquita", "banana")]];

        default:
            console.log("no products found in " + name);
            return [, []];
    }

}







/* froom google maps api */
export function getAvailableSupermarketsLocation(location) {
    let supported = getAvailableSupermarkets()
    /*get supported markets from backend * and compare the results */
    return [
        "MyMarket",
        "Masoutis",
        "Sklavenitis"
    ]
}

export function ch() { }

export function clearSelectedSuperMarkets() {

}

/* Cart api */
export function addItemToCart(item) {
    console.log(item.name)
}

export function alterItemQuantity(params) {
    console.log(params.quantity);
}

export function removeItemFromCart(Cartitem) {
    console.log(" removed " + Cartitem.item.name + " from cart");
}

// export function getCartItems(){
//     let cart = window.localStorage.getItem("cart");
//     if(cart == undefined){
//         console.warn("Cart not initialized cant remove item");
//         return;
//     }
//     return cart.toString();
// }

export class Item {
    constructor(displayName, name) {
        this.displayName = displayName;
        this.name = name;
    }
}

export class CartItem {
    constructor(item, quantity) {
        if (typeof (item) == Item) {
            throw 'item is not a type of iItem';
        }
        this.item = item;
        this.quantity = quantity;
    }
}
