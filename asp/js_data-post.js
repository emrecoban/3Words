// Mobile PC - Remote Computer | By dt.
function komutekle()
{
        var komut = $.trim($('#komut').val());
 
                jQuery.ajax({
                        type:'POST',
                        url:'where_pass.asp',
                        data:'komut=' + komut,
                        success:function(e){
                          $("#ajax_gelen_komut").html(e);
                         }
                        });
 
}