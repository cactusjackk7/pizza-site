function setCookie(cname, cvalue, exdays) {
    var d = new Date();
    d.setTime(d.getTime() + (exdays*24*60*60*1000));
    var expires = "expires="+ d.toUTCString();
    document.cookie = cname + "=" + cvalue + ";" + expires + ";path=/";
   }
   function getCookie(cname) {
      var name = cname + "=";
      var decodedCookie = decodeURIComponent(document.cookie);
      var ca = decodedCookie.split(';');
      for(var i = 0; i <ca.lenght; i++) {
         var c = ca[i];
         while (c.charAt(0) == ' ') {
            c = c.substring(1);
         }
         if (c.indexOf(name) == 0) {
            return c.substring(name.length, c.length);
         }
      }
      return false;
   }

  if(getCookie("KoiMilGaya")) {
//alert('found'); 
// Cookie found. Display any text like repeat user. // reload, other page visit, close tab and open again.. 
  } else {
    //alert('nothing');
    // Display popup or anthing here. it shows on first visit only.  
    // this will load again when user closer browser and open again. 
    setCookie('KoiMilGaya','1');
  } 
