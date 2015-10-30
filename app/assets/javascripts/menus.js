$(function() {
    var v="" +
        "<div class=\"lightSpeedIn animated\">"+
        "<p class='well'>" +
        "<span class=\"badge pull-right badges\">X</span> "+
        "<input type='hidden' name=\"menu[menu_items_attributes][xx][id]\" id=\"menu_menu_items_attributes_xx_id\">"+
        "<label id=\"la\" for=\"menu_menu_items_attributes_xx_title\">Title<\/label>"+
        "<input type='text' name=\"menu[menu_items_attributes][xx][title]\" id=\"menu_menu_items_attributes_xx_title\">"+
        "<label id=\"la\" for=\"menu_menu_items_attributes_xx_url\">Url<\/label>"+
        "<input type='text' name=\"menu[menu_items_attributes][xx][url]\" id=\"menu_menu_items_attributes_xx_url\">"+
        "</div>"
    $(document).on('click', '#add_menu_item', (function (e) {
        e.preventDefault();
        f=v.replace(/xx/g,new Date().getMilliseconds());
        $('#menu_items').append(f);
        //alert(f);
    }));
    $(document).on('click', '.badges', function(e){
        alert(e.target.parentsUntil('div'))
    })
});

