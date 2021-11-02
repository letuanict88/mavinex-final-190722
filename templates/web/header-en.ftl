<#import "/templates/system/common/cstudio-support.ftl" as studio />
<!-- navigation bar -->
<div class="mavinex-nav" <@studio.iceAttr component=contentModel/>>
    <div class="mavinex-nav__container container">
        <a class="mavinex-nav__logo navbar-brand" href="/en/index">
            <img class="header--logo" src="${contentModel.logo_s}" alt="Logo">
        </a>

        <div id="nav-content" class="mavinex-nav__links">
            <div class="dropdown">
              <a class="mavinex-nav__link" href="/en/introductions/">Introduction</a>
              <div class="dropdown-content">
                <a class="mavinex-nav__link" href="/en/introducts/introduction">Introduction</a>
                <a class="mavinex-nav__link" href="/en/introducts/history">History</a>
                <a class="mavinex-nav__link" href="/en/introducts/scope-of-activities">Scope of activities</a>
                <a class="mavinex-nav__link" href="/en/introducts/partnership">Partnership</a>
              </div>
            </div>
            <div class="dropdown">
            <a class="mavinex-nav__link" href="/en/product">Product</a>
                <div class="dropdown-content">
                <a class="mavinex-nav__link" href="/en/group-product/farm-equipment">Farm equipment</a>
                <a class="mavinex-nav__link" href="/en/group-product/egg-hatching-machine ">Egg hatching machine </a>
                <a class="mavinex-nav__link" href="/en/group-product/aquaculture-equipment">Aquaculture equipment</a>
                <a class="mavinex-nav__link" href="/en/group-product/animal-feed-processing">Animal feed processing</a>
                </div>
            </div>
            <a class="mavinex-nav__link" href="/en/news">News</a>
            <div class="dropdown">
            <a class="mavinex-nav__link" href="/en/capability">Capability</a>
                <div class="dropdown-content">
                <a class="mavinex-nav__link" href="/en/building-sector">Building sector</a>
                <a class="mavinex-nav__link" href="/en/overall-consulting--livestock-farm-design">Overall consulting, livestock farm design</a>
                </div>
            </div>

            <a class="mavinex-nav__link" href="/en/career-opportunities">Job</a>
            <a class="mavinex-nav__link" href="/en/contact">Contact</a>
        </div>

        <div class="mavinex-nav__btns">
            <select class="selectpicker mr-1" id="languageSelector" data-width="fit" data-style="btn-primary rounded-0">
                <option data-content="&lt;i class=&quot;flag-icon flag-icon-vn mr-1&quot;&gt;&lt;/i&gt; &lt;span&gt;VIE&lt;/span&gt;" onclick="changeLanguageVN()">VIE</option>
                <option data-content="&lt;i class=&quot;flag-icon flag-icon-us mr-1&quot;&gt;&lt;/i&gt; &lt;span&gt;EN&lt;/span&gt;" onclick="changeLanguageEN()">EN</option>
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