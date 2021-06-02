<script>
    export let params;
</script>

<div class="item">
    <div class="image">
        <img src="imgs/Categories/{params.name.replace('%', '%25')}.svg" alt="" />
    </div>

    <div class="description">
        <p>{params.displayName}</p>
    </div>

    <div class="quantity">
        <h2>{params.quantity}</h2>
    </div>

    <div class="price">
        <h2>{params.quantity * params.price} €</h2>
    </div>
</div>

<style>
    .item {
        width:40%;
        background-color: #fff;
        margin-top: 10px;
        margin-left: 20%;
        margin-right: 20%;
        padding-left: 60px;
        padding-right: 20px;
        padding-top: 14px;
        padding-bottom: 14px;
        height: 100px;
        display: flex;
    }

    .image {
        margin: auto 0;
        margin-right: 50px;
    }

    .description {
        margin: auto 0;
        padding-top: 10px;
        margin-right: 60px;
        width: 115px;
    }

    .quantity {
        margin: auto 0;
        margin-left: 50px;
        margin-right: 60px;
    }
    
    .price {
        margin: auto 0;
        margin-left: 50px;
        margin-right: 60px;
    }

    /* Media Queries */
    @media screen and (min-width: 1000px){
        .item{
            width:60%;
            margin-left: 20%;
            margin-right: 20%;
            padding-left: 50px;
            padding-right: 20px;
        }
    }

       /* Media Queries */
       @media screen and (min-width: 500px){
        .item{
            width:70%;
            margin-left: 15%;
            margin-right: 15%;
            padding-left: 40px;
            padding-right: 20px;
        }
    }

</style>