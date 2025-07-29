<?php 
    $home_page_arr6 = array(62, 63, 64, 65, 66);
?>
<div class="container container-gb-sevice">
    <?php 

    foreach ($home_page_arr6 as $id) { 

        $home_item_page = $action_page->getPageDetail_byId($id, $lang);

        $home_item_page_lang = $action_page->getPageLangDetail_byId($id, $lang);

    ?>

    <div class="coll-sm">

        <div class="gb-service-benative-header">

            <div class="gb-service-benative-list-item">

                <div class="gb-service-benative-box-item"><a href="javascript:;">

                        <div class="gb-service-benative-box-item-img"><img

                                    src="/images/<?= $home_item_page['page_img'] ?>"

                                    alt="<?= $home_item_page_lang['lang_page_name'] ?>" class="lozad loaded"

                                    data-loaded="true"></div>

                        <h3 class="gb-service-benative-box-item-title"><?= $home_item_page_lang['lang_page_name'] ?></h3>

                        <div class="gb-service-benative-box-item-content"><h2><?= $home_item_page_lang['lang_page_name'] ?></h2>

                            <p><?= $home_item_page_lang['lang_page_des'] ?></p></div>

                        <span class="gb-service-benative-box-item-plus"></span> </a></div>

            </div>

        </div>

    </div>
    <?php } ?>


</div>