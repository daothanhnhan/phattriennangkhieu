<?php 
    $home_page_arr1 = array(47, 48, 49);
    $home_page_arr2 = array(50, 51, 52);
?>
<div class="question-phattriennangkhieu">
    <div class="container">
        <div class="row">
            <div class="col-sm-4">
                <?php 

                foreach ($home_page_arr1 as $id) { 

                    $home_item_page = $action_page->getPageDetail_byId($id, $lang);

                    $home_item_page_lang = $action_page->getPageLangDetail_byId($id, $lang);

                ?>
                <div class="question-phattriennangkhieu-products">
                    <div class="row">
                        <div class="col-sm-2 question-phattriennangkhieu-img-right">
                            <div class="question-phattriennangkhieu-vd"><?= $home_item_page['page_sub_info1'] ?>
                            </div>
                        </div>
                        <div class="col-sm-10 question-phattriennangkhieu-text-right">
                            <div class="question-phattriennangkhieu-right">
                                <h3><?= $home_item_page_lang['lang_page_name'] ?></h3>
                                <div class="question-phattriennangkhieu-chil">
                                    <?= $home_item_page_lang['lang_page_des'] ?>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <?php } ?>
            </div>
            <div class="col-sm-4">
                <div class="question-phattriennangkhieu-col4-img">
                <img src="/images/<?= $rowConfig['banner1'] ?>" alt="">
                </div>
            </div>
            <div class="col-sm-4">
                <?php 

                foreach ($home_page_arr2 as $id) { 

                    $home_item_page = $action_page->getPageDetail_byId($id, $lang);

                    $home_item_page_lang = $action_page->getPageLangDetail_byId($id, $lang);

                ?>
                <div class="question-phattriennangkhieu-products">
                    <div class="row">
                        <div class="col-sm-2">
                            <div class="question-phattriennangkhieu-vd1"><?= $home_item_page['page_sub_info1'] ?>
                            </div>
                        </div>
                        <div class="col-sm-10">
                            <div class="question-phattriennangkhieu-text">
                                <h3><?= $home_item_page_lang['lang_page_name'] ?></h3>
                                <div class="question-phattriennangkhieu-chil"><?= $home_item_page_lang['lang_page_des'] ?>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <?php } ?>
            </div>
        </div>
    </div>
</div>