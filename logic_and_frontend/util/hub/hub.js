//hub.js
function clearcontent() {
    content = document.getElementsByClassName('content');
    for(i = 0; i < content.length; i++){
        content[i].style.display = 'none';
    }
}
function showcontent(contentid){
    clearcontent();
    content = document.getElementById(contentid);
    content.style.display = 'block';
}
// document.getElementById('_newscore').onkeypress =
//     function (e) {
//         var ev = e || window.event;
//         if(ev.charCode < 48 || ev.charCode > 57) {
//             return false; // not a digit
//         } else if(this.value * 10 + ev.charCode - 48 > this.max) {
//             return false;
//         } else {
//             return true;
//         }
//     }
// $("#handlecheckouts").submit(function(e) {
//
//     var url = "./util/content/helper/docheckout.php"; // the script where you handle the form input.
//
//     $.ajax({
//         type: "POST",
//         url: url,
//         data: $("#handlecheckouts").serialize(), // serializes the form's elements.
//         success: function(data)
//         {
//             alert(data); // show response from the php script.
//         }
//     });
//
//     e.preventDefault(); // avoid to execute the actual submit of the form.
// });

//rowsearch from http://jsfiddle.net/dfsq/7BUmG/1133/
// var $rows = $('#table tr');
// $('#search').keyup(function() {
//
//     var val = '^(?=.*\\b' + $.trim($(this).val()).split(/\s+/).join('\\b)(?=.*\\b') + ').*$',
//         reg = RegExp(val, 'i'),
//         text;
//
//     $rows.show().filter(function() {
//         text = $(this).text().replace(/\s+/g, ' ');
//         return !reg.test(text);
//     }).hide();
// });
//
// //selecting rows from jQuery. from http://jsfiddle.net/b39xcuac/
// $('tr').click(function() {
//     $('.selected').removeClass('selected');
//     $(this).addClass('selected');
// });
//
// $('#submit').click(function() {
//     $('.selected').children().each(function() {
//         alert($(this).html());
//     });
// });