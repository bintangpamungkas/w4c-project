<div class="container">
	<div class="row justify-content-center g-mt-<?= $this->agent->is_mobile() ? '100' : '150' ?>">
		<div class="col-md-8">
			<div class="form-group g-mb-20 text-center" style="padding: 15px 8px">

				<?php if ($value == 1): ?>
					<h3>Trial Form <?= $value ?></h3>
					<!-- www.123formbuilder.com script begins here -->
					<iframe allowTransparency="true" style=" min-height:<?= $this->agent->is_mobile() ? '1100px' : '1200px' ?>; overflow:auto;" width="100%" id="contactform123" name="contactform123"
					        marginwidth="0" marginheight="0" frameborder="0" src="//www.123formbuilder.com/my-contact-form-5335043.html">
						<p>Your browser does not support iframes. The contact form cannot be displayed. Please use another contact method (phone, fax etc)</p>
					</iframe>
					<!-- www.123formbuilder.com script ends here -->

				<?php elseif ($value == 2): ?>
					<h3>Trial Form <?= $value ?></h3>
					<iframe width="640px" height="480px" src="https://forms.office.com/Pages/ResponsePage.aspx?id=DQSIkWdsW0yxEjajBLZtrQAAAAAAAAAAAANAASLsAn9UQVgzOTMwVDI2SzBOQ01VMFUzMlFEN0M2VS4u&embed=true"
					        frameborder="0" marginwidth="0" marginheight="0" style="border: none; max-width:100%; min-height:100vh" allowfullscreen webkitallowfullscreen mozallowfullscreen
					        msallowfullscreen></iframe>

				<?php elseif ($value == 3): ?>
					<h3>Trial Form <?= $value ?></h3>
					<iframe frameborder="0" style="min-height:90vh;width:99%;border:none;"
					        src='https://forms.zohopublic.com/aprilfiorentina/form/ZeroWasteToLandfill/formperma/4UDpmj9Q9Zy_kw2FUY-gqoUwAC07VrsEujIH7zUKesk'></iframe>

				<?php elseif ($value == 4): ?>
					<h3>Trial Form <?= $value ?></h3>
					<iframe src="https://services.cognitoforms.com/f/24JJlChGdE2Hjf-hkLfUxw?id=3" style="position:relative;width:1px;min-width:100%;*width:100%;min-height:90vh" frameborder="0" scrolling="yes"
					        seamless="seamless" height="1040" width="100%"></iframe>
					<script src="https://services.cognitoforms.com/scripts/embed.js"></script>

				<?php else:
					show_404();
				endif; ?>


			</div>
		</div>
	</div>
</div>
