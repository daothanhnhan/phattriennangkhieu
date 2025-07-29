<?php 
    $home_video = $action->getList('video', '', '', 'id', 'asc', '', '4', '');
?>
<div class="gb-video-beacon">
	<div class="container">
		<div class="vk-our-staffs-title">
            <h3>VIDEO</h3>
            <h2><?= $lang == 'vn' ? 'CLIP HỌC MẪU' : 'SAMPLE LEARNING CLIP' ?></h2>
            <div class="vk-our-staffs-line"></div>
        </div>
        <div class="row">
            <?php 
            $d = 0;
            foreach ($home_video as $item) {
                $d++;
                // $rowLang = $action_news->getNewsLangDetail_byId($item['news_id'],$lang); 
            ?>
        	<div class="col-md-3 video-item">
        		<?= $item['content'] ?>
        	</div>
        	<?php } ?>
        </div>
	</div>
</div>