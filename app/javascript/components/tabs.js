export const displayTab = () => {
console.log($('a[data-toggle="pill"]'))
$('a[data-toggle="pill"]').on('show.bs.tab', function(e) {
    localStorage.setItem('activeTab', $(e.target).attr('href'));
    console.log($(e.target).attr('href'))
    });
    var activeTab = localStorage.getItem('activeTab');
    if(activeTab){
        $('#v-pills-tab a[href="' + activeTab + '"]').tab('show');
    };
};

