<?php 
    $home_page_arr3 = array(53, 54, 55);
?>
<div class="gb-question-2-why-all">
    <div class="container">
        <div class="gb-question-2-why">
            <h2><?= $lang=='vn' ? 'TẠI SAO CHỌN BENATIVE?' : 'WHY CHOOSE BENATIVE?' ?></h2>
        </div>
        <div class="row">
            <?php 

            foreach ($home_page_arr3 as $id) { 

                $home_item_page = $action_page->getPageDetail_byId($id, $lang);

                $home_item_page_lang = $action_page->getPageLangDetail_byId($id, $lang);

            ?>
            <div class="col-sm-4 gb-question-2-br-why">
                <div class="gb-question-2-why-pp-head">
                    <h4><?= $home_item_page_lang['lang_page_name'] ?></h4>
                    <div class="gb-question-2-why-pp-des">
                        <?= $home_item_page_lang['lang_page_des'] ?>
                    </div>
                </div>
            </div>
            <?php } ?>
        </div>

        <!-- <div class="gb-question-2-why-box">
            <a class="btn" href="">Xem chi tiết</a>
        </div> -->
    </div>
</div>