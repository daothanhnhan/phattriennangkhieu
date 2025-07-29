<?php 
    $home_page_arr4 = array(56, 57, 58);
    $home_page_arr5 = array(59, 60, 61);
?>
<div class="container">
    <div class="gb-service-yola">
        <div class="text-center gb-service-yola-img-header"><img src="/images/img-88.png" alt="ban-tay"></div>
        <h2 class="text-center gb-service-yola-name-header"><?= $lang=='vn' ? 'Thành quả đạt được sau khóa học' : 'Achievements after the course' ?></h2>
        <div class="row">
            <?php 

            foreach ($home_page_arr4 as $id) { 

                $home_item_page = $action_page->getPageDetail_byId($id, $lang);

                $home_item_page_lang = $action_page->getPageLangDetail_byId($id, $lang);

            ?>
            <div class="col-sm-4 gb-service-yola-child">
                <div class="col-sm-3 gb-service-yola-col-3">
                    <div class="gb-service-yola-box-image"><span><?= $home_item_page['page_sub_info1'] ?></i></span></div>
                </div>
                <div class="col-sm-9">
                    <h2 class="gb-service-yola-text-body"><?= $home_item_page_lang['lang_page_name'] ?></h2>
                    <div class="gb-service-yola-home-text"> <?= $home_item_page_lang['lang_page_des'] ?>
                    </div>
                </div>
            </div>
            <?php } ?>
            
        </div>


        <div class="row">
            <?php 

            foreach ($home_page_arr5 as $id) { 

                $home_item_page = $action_page->getPageDetail_byId($id, $lang);

                $home_item_page_lang = $action_page->getPageLangDetail_byId($id, $lang);

            ?>
            <div class="col-sm-4 gb-service-yola-child">
                <div class="col-sm-3 gb-service-yola-col-3">
                    <div class="gb-service-yola-box-image"><span><?= $home_item_page['page_sub_info1'] ?></span></div>
                </div>
                <div class="col-sm-9">
                    <h2 class="gb-service-yola-text-body"><?= $home_item_page_lang['lang_page_name'] ?></h2>
                    <div class="gb-service-yola-home-text"> <?= $home_item_page_lang['lang_page_des'] ?>
                    </div>
                </div>
            </div>
            <?php } ?>
            
        </div>
    </div>
</div>