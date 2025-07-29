<div class="vk-blog-left-search">
<form action="/search-news/0" method="post">
    <div class="input-group">
        <input type="text" name="q" class="form-control" placeholder="Search...">
        <span class="input-group-btn">
            <button class="btn btn-default" type="submit"><i class="fa fa-search" aria-hidden="true"></i></button>
        </span>
    </div>
</form>
</div>
<?php 
    $sidebar_news = $action_news->getNewsCat_byNewsCatIdParent(0, 'desc');
?>
<div class="vk-blog-left-category">
    <h1>CATEGORY</h1>
    <ul>
        <?php 
        foreach ($sidebar_news as $item) {
            $rowLang = $action_news->getNewsCatLangDetail_byId($item['newscat_id'],$lang); 
        ?>
        <li><a href="/<?= $rowLang['friendly_url'] ?>"><span class="ti-angle-right"></span> <?= $rowLang['lang_newscat_name'] ?></a></li>
        <?php } ?>
    </ul>
</div>
<?php 
    $sidebar_news_new = $action_news->getListNewsNew_hasLimit(4);//var_dump($sidebar_news_new);
?>
<div class="vk-blog-left-recent-posts">
    <h1>RECENT POST</h1>
    <ul>
        <?php 
        foreach ($sidebar_news_new as $item) {
            $rowLang = $action_news->getNewsLangDetail_byId($item['news_id'],$lang);
        ?>
        <li>
            <div class="vk-item-recent-posts">
                <div class="vk-item-recent-posts-img">
                    <a href="/<?= $rowLang['friendly_url'] ?>"><img src="/images/<?= $item['news_img'] ?>" alt="new"></a>
                </div>
                <div class="vk-item-recent-posts-text">
                    <h2><a href="/<?= $rowLang['friendly_url'] ?>"><?= $rowLang['lang_news_name'] ?></a></h2>
                    <div class="vk-item-recent-post-time">
                        <span><i class="fa fa-calendar" aria-hidden="true"></i> <?= substr($item['news_created_date'], 0, 10) ?></span>
                    </div>
                </div>
            </div>
        </li>
        <?php } ?>
    </ul>
</div>

<!-- <div class="vk-blog-left-tags">
    <h1>TAGS</h1>
    <ul>
        <li><a href="#">Vnskills</a></li>
        <li><a href="#">Graphic</a></li>
        <li><a href="#">Design</a></li>
        <li><a href="#">UI/UX</a></li>
        <li><a href="#">Web Design</a></li>
        <li><a href="#">Solution</a></li>
        <li><a href="#">Đồ Họa</a></li>
    </ul>
</div> -->