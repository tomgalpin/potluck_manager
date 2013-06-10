$(document).ready(function(){
   $('#deleteButton').on('click', function(){
     (this).parent().parent().remove();
   });
});
