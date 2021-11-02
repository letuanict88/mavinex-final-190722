$(document).ready(function() {
    $('#btn-intro').click(function() {
            window.location.href = "http://www.w3schools.com";
    });
    
    // Flag redirect
    $('#languageSelector').change(function() {
       var language = $('#languageSelector').val();
       console.log(language);
      if (language == 'VIE') {
          window.location.replace(getContextPath() + "/trang-chu");
      } else {
          window.location.replace(getContextPath() + "/en/index");
      }
    });
    
    var url = window.location;
    
    if (url.href.indexOf('/en') > -1) {
      var button =  $('.mavinex-nav__btns').find('button');
      $(button[0]).prop('title', 'EN');
      $(button[0]).find('i').removeClass('flag-icon-vn');
      $(button[0]).find('i').addClass('flag-icon-us');
      $(button[0]).find('span').text('EN');
      
       $('.product-title-en').css('display','block');
       $('.product-title-vie').css('display','none');
    } else {
        $('.product-title-en').css('display','none');
        $('.product-title-vie').css('display','block');
    }
    
    
    $('.bootstrap-select').click(function() {
        var lstbtn = $('.dropdown-menu').find('li');
        if (url.href.indexOf('/en') > -1) {
            $(lstbtn[1]).addClass('selected');
            $(lstbtn[1]).addClass('active');
            $(lstbtn[1]).find('a').addClass('selected');
            $(lstbtn[1]).find('a').addClass('active');
            
            $(lstbtn[0]).removeClass('selected');
            $(lstbtn[0]).removeClass('active');
            $(lstbtn[0]).find('a').removeClass('selected');
            $(lstbtn[0]).find('a').removeClass('active');
            
        }
        
        $(lstbtn[0]).click(function() {
            window.location.replace(getContextPath());
        });
        
         $(lstbtn[1]).click(function() {
            window.location.replace(getContextPath() + "/en/index");
        });
    });
    
    
    if(document.readyState === 'complete') {
    var li = $('.dropdown-menu').find('ul').find('li');
      
      $(li[0]).removeClass('active');
      $(li[1]).addClass('active');
    }
    
    // ==================================
    
    $('.search-result').css("display", "none");
    // set active to nav
    $('#nav-content a').filter(function() {
        return this.href == url;
    }).css('font-family', 'UVF-DINPro Bold');
    
    var lstPageURL = ["/linh-vuc-xay-dung","/tu-van-tong-the","/all-jobs","/jobs"];
    
    if(url.href.indexOf('san-pham') > -1) {
        $('.content').css('background', 'white');
    }
    
    if(url.href == getContextPath()+'/en/product') {
        $('.content').css('background', 'white');
    }
    
    if (url.href.indexOf(lstPageURL[0]) > -1) {
        $('#nav-content a').filter(function() {
            return this.href == getContextPath()+"/nang-luc-kinh-nghiem";
        }).css('font-weight', 'bold');
    }
    
     if (url.href.indexOf(lstPageURL[1]) > -1) {
        $('#nav-content a').filter(function() {
            return this.href == getContextPath()+"/nang-luc-kinh-nghiem";
        }).css('font-weight', 'bold');
    }
    
    if (url.href.indexOf(lstPageURL[2]) > -1) {
        $('#nav-content a').filter(function() {
            return this.href == getContextPath()+"/co-hoi-nghe-nghiep";
        }).css('font-weight', 'bold');
    }
    
    if (url.href.indexOf(lstPageURL[3]) > -1) {
        $('#nav-content a').filter(function() {
            return this.href == getContextPath()+"/co-hoi-nghe-nghiep";
        }).css('font-weight', 'bold');
    }
    
    let dateVal = $('.date-formater').text();
    $('.date-formater').text(formatDate(dateVal));

    // Display content for search page
    if(url == getContextPath()+ "/search-result" || url == getContextPath()+ "/en/search-result") {
        
        var $pagination = $('#pagination'), 
            totalRecords = 0,
            records = [],
            displayRecords = [],
            recPerPage = 10,
            page = 1,
            totalPages = 0;
            
        var storedLstSearch = JSON.parse(localStorage.getItem("mergeLst"));
        records = storedLstSearch;
        totalRecords = records.length;
        totalPages = Math.ceil(totalRecords / recPerPage);
        apply_pagination();
        
        $('.totalSearch').text(totalRecords);
        $('.keywordSearch').text(localStorage.getItem("userTerm"))
        $('.content').css("background-color", "#FFF")
        // --- limit desc search --
        var lent = $(".limit-text-250");
       
        for (let i = 0; i < lent.length; i++) {
             var txtDesc = $(lent[i]).html();
             console.log(txtDesc);
            if(txtDesc.length > 150) {
               let txt = txtDesc.substr(0, 150);
               $(lent[i]).html(txt)
            }
        }

        $(".limit-text-250 em").css("font-weight", "bold");
    }
    
    function apply_pagination() {
          $pagination.twbsPagination({
                totalPages: totalPages,
                visiblePages: 6,
                onPageClick: function (event, page) {
                      displayRecordsIndex = Math.max(page - 1, 0) * recPerPage;
                      endRec = (displayRecordsIndex) + recPerPage;
                     
                      displayRecords = records.slice(displayRecordsIndex, endRec);
                      generateContent();
                }
          });
    }
    
    // generate content search result
    function generateContent() {
         var source = $("#search-results-template").html();
         var template = Handlebars.compile(source);
         var context = { results: displayRecords };
         var html = template(context);
        
        $('.search-result_item').html(html);
    }
});

function formatDate(value) {
    var date = new Date(value);
    return (
      (date.getMonth() > 8) 
      ? (date.getMonth() + 1) 
      : ('0' + (date.getMonth() + 1))) + '/' + ((date.getDate() > 9) 
        ? date.getDate() 
        : ('0' + date.getDate())) + '/' + date.getFullYear();
}

function getContextPath() {
   return  window.location.protocol + "//" + window.location.host
}

function search() {
    var url = window.location;
    var prevUrl = document.referrer;
    
    let userTerm = $('#txtSearch').val();
    if (userTerm === "") {
        if (url.href.indexOf('/en') > -1) {
            alert("Enter keyword for searching!");
        } else {
            alert("Bạn cần nhập từ khóa tìm kiếm!");
        }
        
        $('#txtSearch').focus();
    }
    else {
        //var urlService = this.getContextPath() + "/api/search.json?q="+ userTerm
        
        var urlService = "";
        var urlRedirect = "";
        if (url.href.indexOf('/en') > -1 || prevUrl.indexOf('/en') > -1) {
            urlService += this.getContextPath() + "/api/searchen.json?q="+ userTerm;
            urlRedirect += "/en/search-result"
        } else {
            urlService += this.getContextPath() + "/api/search.json?q="+ userTerm;
            urlRedirect += "/search-result";
        }
        
        localStorage.setItem("userTerm", userTerm);
        $.ajax({
            type: "GET",
            url:urlService,
            success: function(resp){
                localStorage.setItem("mergeLst", JSON.stringify(resp[0].concat(resp[1]).concat(resp[2]).concat(resp[3])));

                window.location.replace(getContextPath()+ urlRedirect);
            }
        });
        
        $('.nav-bar__search').css("display", "none");
    }
}

