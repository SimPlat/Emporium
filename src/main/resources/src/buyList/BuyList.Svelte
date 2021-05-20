<script>
    import Header from "../general/Header.svelte";
    import Footer from "../general/Footer.svelte";
    import BuyListForm from "./BuyListForm.svelte";
</script>
<Header name="Λίστα αγορών" displayCart="False" />
<main>
    <BuyListForm></BuyListForm>
</main>
<Footer />

<style>
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
