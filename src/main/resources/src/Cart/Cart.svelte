<script>
    import Header from "../general/Header.svelte";
    import Footer from "../general/Footer.svelte";
    import CartList from "./CartList.svelte";
    import {push, pop, replace} from 'svelte-spa-router'


    function generateList() {
        push("/list");
    }
</script>

<Header name="Καλάθι" displayCart="False" />
<main>
    <CartList></CartList>
    <div class="button-list"><button on:click={generateList}>Υπολογισμός Λίστας</button></div>
</main>
<Footer />

<style>
    .button-list{
        display: flex;
        justify-content: center;
    }
    
    .button-list button{
        margin: 40px 0px;
        border-radius: 10px;
        width: 200px;
        height: 2.4em;
        background: #c83647;
        font-size: 1em;
        font-weight: bold;
        color: #32292f;
        outline: none;
        cursor: pointer;
    }

    main {
        width: 70vw;
        min-height: 77.65vh;
        margin-left: 10vw;
        margin-right: 10vw;
        padding-left: 5vw;
        padding-right: 5vw;
        padding-bottom: 20px;
        background-color: #f1f1f1a5;
    }
</style>
