<#import "/templates/system/common/cstudio-support.ftl" as studio />
<!-- navigation bar -->
<div class="mavinex-nav" <@studio.iceAttr component=contentModel/>>
    <div class="mavinex-nav__container container">
        <a class="mavinex-nav__logo navbar-brand" href="/trang-chu">
            <img class="header--logo" src="${contentModel.logo_s}" alt="Logo">
        </a>

        <div id="nav-content" class="mavinex-nav__links">
            <div class="dropdown">
              <a class="mavinex-nav__link" href="/gioi-thieu">Giới thiệu</a>
              <div class="dropdown-content">
                <a class="mavinex-nav__link" href="/introducts/gioi-thieu-chung">Giới thiệu chung</a>
                <a class="mavinex-nav__link" href="/introducts/lich-su-hinh-thanh">Lịch sử hình thành</a>
                <a class="mavinex-nav__link" href="/introducts/linh-vuc-hoat-dong">Lĩnh vực hoạt động</a>
                <a class="mavinex-nav__link" href="/introducts/doi-tac-chien-luoc">Đối tác chiến lược</a>
              </div>
            </div>
            <div class="dropdown">
            <a class="mavinex-nav__link" href="/san-pham">Sản phẩm</a>
                <div class="dropdown-content">
                <a class="mavinex-nav__link" href="/group-product/thiet-bi-chuong-trai">Thiết bị chuồng trại</a>
                <a class="mavinex-nav__link" href="/group-product/may-ap-no-trung">Máy ấp nở trứng</a>
                <a class="mavinex-nav__link" href="/group-product/thiet-bi-thuy-san">Thiết bị thuỷ sản</a>
                <a class="mavinex-nav__link" href="/group-product/thiet-bi-thuc-an-chan-nuoi">Thiết bị nhà máy thức ăn chăn nuôi</a>
                </div>
            </div>
            <a class="mavinex-nav__link" href="/tin-tuc">Tin tức</a>
            <div class="dropdown">
            <a class="mavinex-nav__link" href="/nang-luc-kinh-nghiem">Năng lực kinh nghiệm</a>
                <div class="dropdown-content">
                <a class="mavinex-nav__link" href="/linh-vuc-xay-dung">Lĩnh vực xây dựng</a>
                <a class="mavinex-nav__link" href="/tu-van-tong-the">Tư vấn tổng thể và thiết kế trang trại chăn nuôi</a>
                </div>
            </div>
            <a class="mavinex-nav__link" href="/co-hoi-nghe-nghiep">Tuyển dụng</a>
            <a class="mavinex-nav__link" href="/lien-he">Liên hệ</a>
        </div>

        <div class="mavinex-nav__btns">
            <select class="selectpicker mr-1" id="languageSelector" data-width="fit" data-style="btn-primary rounded-0">
                <option id="flag-vn" data-content="&lt;i class=&quot;flag-icon flag-icon-vn mr-1&quot;&gt;&lt;/i&gt; &lt;span&gt;VIE&lt;/span&gt;">VIE</option>
                <option id ="flag-en"data-content="&lt;i class=&quot;flag-icon flag-icon-us mr-1&quot;&gt;&lt;/i&gt; &lt;span&gt;EN&lt;/span&gt;" >EN</option>
            </select>
            <button class="mavinex-nav__btn btn" onclick="toggleSearchBar()">
                <i class="fas fa-search"></i>
            </button>
            <button id="toggleNavBtn" class="mavinex-nav__btn btn" onclick="toggleNav()">
                <i class="fas fa-bars"></i>
            </button>
        </div>

        <div id="searchBar" class="mavinex-nav__search-bar">
            <div class="input-group">
                <input 
                    type="text" 
                    class="form-control rounded-0" 
                    placeholder="" 
                    id="txtSearch"
                    onfocus="this.placeholder=' '"
                    onblur="this.placeholder='Nhập từ khóa tìm kiếm!'"
                >
                <div class="input-group-append">
                  <button type="button" class="btn btn-secondary rounded-0" onclick="search()"><i class="fas fa-search"></i></button>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- /navigation bar -->