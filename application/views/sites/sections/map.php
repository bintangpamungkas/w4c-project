
<section id="where" class="g-pt-50 g-pb-25 g-pt-140--lg g-pb-100--lg" style="padding-bottom: 0!important;">
    <div class="container text-center g-mb-50">
        <h2 class="g-color-black g-font-weight-600 <?= $this->agent->is_mobile() ? 'g-font-size-18' : '' ?>"><?= $brand_id ? 'SORTING & RECYCLING POINT' : lang('droppoint_title') ?></h2>
        <p class="text-muted <?= $this->agent->is_mobile() ? 'g-font-size-14' : '' ?>"><?= lang('droppoint_subtitle') ?></p>
    </div>

	<div class="overlay" onClick="style.pointerEvents='none'" style="background:transparent;position:relative;width: 100%;height: 500px">
		<iframe src="https://www.google.com/maps/d/u/2/embed?mid=1B8NHBepezxgndM_HW3Em1iPDDwY31sNG" style="width: 100%;height: 500px"></iframe>
	</div>

</section>
<!-- About -->
