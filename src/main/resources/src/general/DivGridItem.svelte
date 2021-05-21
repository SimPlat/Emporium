<script>
    import {Item} from "../EmporiumAPI";
    
    export let item;
    export let classColor;
    export let onClickName;
    
    if(classColor == undefined){
        classColor=item.name;
    }
    classColor+=" generic ";
    classColor+=" container";
    export let onClick;

</script>
    <div class="product {classColor}">
        <div class="product-content">
            <div class="product-img">
                <img src="imgs/Categories/{item.name}.svg" alt="category">
            </div>
            <div class="product-btns">
                <button on:click={onClick(item)} type="button" class="btn-cart"> {onClickName}</button>
            </div>
        </div>

        <div class="product-info">
            <span class="product-name">{item.displayName}</span>
        </div>

    </div>
<style>
    
    /* product section */
    .product{
        width:  100%;
        height: 100%;
        position: relative;
    }
    .product-content{
        padding: 3rem 0.5rem 2rem 0.5rem;
        cursor: pointer;
    }

    .product-btns{
        
        display: flex;
        justify-content: center;
        opacity: 0;
        margin-top: 1em;
        transition: opacity 0.6s ease;
    }

    .btn-cart{
        position: absolute;
        background: transparent;
        border: 1px solid black;
        padding: 0.8rem 0;
        width: 125px;
        font-family: inherit;
        text-transform: uppercase;
        cursor: pointer;
        border: none;
        transition: all 0.6s ease;
    }
    .btn-cart{
        background: black;
        color: white;
    }

    .product-info{
        height: 70px;
        background: white;
        padding: 1rem;
    }
    
    .product-name{
        color: black;
        display: block;
        text-decoration: none;
        font-size: 1rem;
        text-transform: uppercase;
        font-weight: bold;
    }
    .product-img{
        display: grid;
        place-items: center;
    }

    .product-img img{
        width:100%;
        transition: transform 0.6s ease;
    }
    .product:hover .product-img img{
        transform: scale(1.1);
    }
    .product:hover .product-btns{
        opacity: 1;
    }
</style>