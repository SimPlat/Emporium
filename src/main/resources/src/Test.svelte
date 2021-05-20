
<script>

import j from 'jquery';









let res = j.ajax({
       method: "GET",
        url: "http://389bb775cfa8.ngrok.io/api/categories/",
        dataType: "jsonp",
        contectType:"application/json",
        cors: true ,
        headers: {
            'Access-Control-Allow-Origin': '*',
          },
        success:function(data){
            console.log(JSON.stringify(data)+"success");
        },
        error:function(data) {
            console.log(data);
        }
    });

</script>
<form action="http://389bb775cfa8.ngrok.io/api/retailers/" method="POST">
    <textarea name="content"></textarea>
    <button type="submit">submit</button>
</form>