<div class="bg-light lter b-b wrapper-md">
    <h1 class="m-n font-thin h3"><?= ucwords($title) ?></h1>
</div>
<div class="wrapper-md">

    <div class="panel panel-default">
        <div class="panel-heading font-bold hidden">Basic form</div>
        <div class="panel-body">
            <form class="submit_form" method="post" action="<?= site_url('User/postUser') ?>">
                <?php
                $this->load->view('users/form');
                ?>
                <button type="submit" class="submit_form_button btn btn-sm btn-danger pull-right">Submit</button>
            </form>
        </div>
    </div>
</div>