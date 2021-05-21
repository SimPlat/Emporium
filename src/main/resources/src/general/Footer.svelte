<script>
    export let simple = true;
</script>

{#if !simple}
    <footer>
        <h2>© 2021 Emporium Με επιφύλαξη όλων των δικαιωμάτων. Όροι χρήσης, Πολιτική ιδιωτικού απορρήτου και Πολιτική περί cookies του Emporium</h2>
        <div class="footer-social-div">
            <h3>Συνδέσου μαζί μας</h3>
            <ul>
                <li onclick='window.open("https://www.w3schools.com");' class="facebook"></li>
                <li onclick='window.open("https://www.w3schools.com");' class="instagram"></li>
                <li onclick='window.open("https://www.w3schools.com");' class="twitter"></li>
            </ul>
        </div>
    </footer>
{:else}
    <footer class="footer-simple">
    © 2021 Emporium Με επιφύλαξη όλων των δικαιωμάτων. Όροι χρήσης, Πολιτική ιδιωτικού απορρήτου και Πολιτική περί cookies του Emporium
    </footer>
{/if}


<style>
    .footer-simple{
        position: relative;
        height: 60px !important;
        width: 100% !important;
        background-color: #c83647ff!important;
        display: grid!important;
        place-items: center !important;
        font-size: 1.5rem !important;
    }

    footer{
        font-size: 1.2rem;
        position: absolute;
        bottom:0px;
        width: 100vw;
        height: 50px;
    }

    footer h2{
        margin-top: 15px;
        text-align: center;
    }

    .footer-social-div h3{
        font-family: Segoe Script;
        font-size: 1.5em;
    }
    .footer-social-div{
        position: absolute;
        bottom:100%;
        right:0;
        width: 300px;
        height: 50px;
        padding-right: 100px;
    }


    .footer-social-div ul > li {
        display: inline-block;
        /* You can also add some margins here to make it look prettier */
        zoom:1;
        *display:inline;
        /* this fix is needed for IE7- */
    }

    .footer-social-div ul{
        margin-top: 6px;
        margin-left: 40px;
    }

    .footer-social-div li{
        cursor: pointer;
        width: 52px;
        margin-left: 4px;
        height: 52px;
    }

    .facebook{
        background-image: url("../imgs/icons/facebook.png");
    }

    .instagram{
        background-image: url("../imgs/icons/instagram.png");
    }

    .twitter{
        background-image: url("../imgs/icons/twitter.png");
    }

</style>