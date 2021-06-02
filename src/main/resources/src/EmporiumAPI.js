
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

    fetch("http://localhost:8080/api/retailers", requestOptions)
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

    fetch("http://localhost:8080/api/categories", requestOptions)
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
            return ["Φρουτα", [new Item("Μπανάνα", "banana"),
            new Item("Πορτοκάλι", "orange"),
            new Item("Λεμόνι", "lemon"),
            new Item("Μήλο", "apple"),
            new Item("Φράουλα", "strawberry")]];
        case "Galaktokomika":
            return ["Γαλακτοκομικά", [new Item("Γαλα", "milk"),
            new Item("Κακάο", "cacao"),
            new Item("Τυρι", "cheese"),
            new Item("Βούτηρο", "butter"),
            new Item("Γιαούρτι", "yogurt")]];
        case "Katepsigmena":
            return ["Κατεψυγμένα", [new Item("Ψαρι", "fish"),
            new Item("Χτάποδι", "octapus"),
            new Item("Κατεψυγμένες Πατάτες", "frozenPotatoes"),
            new Item("Τυροπιτάκια", "cheesePie"),
            new Item("Παγωτό", "icecream"),]];

        case "Laxanika":
            return ["Λαχανικά", [new Item("Ντομάτες", "tomato"),
            new Item("Αγγουρια", "cucumber"),
            new Item("Πιπερίες", "pepper"),
            new Item("Μανιταρια", "mushrooms"),
            new Item("Πατάτες", "potato")]];

        default:
            return [, []];
    }

}

export let getProducts = function (name) {
    switch (name) {
        case "banana":
            return ["Μπανάνα", [new Item("Μπανάνα Dole", "banana"),
            new Item("Μπανάνα Chiquita", "banana")]];

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
