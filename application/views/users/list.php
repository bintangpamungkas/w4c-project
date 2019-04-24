<div class="table-responsive">
    <table class="table table-striped b-t b-light">
        <thead>
        <tr>
            <th style="width:20px;">
                <label class="i-checks m-b-none">
                    <input type="checkbox"><i></i>
                </label>
            </th>
            <th>Name</th>
            <th>Email</th>
            <th>Telephone</th>
            <th>Gender</th>
            <th class="text-right"> Option</th>
        </tr>
        </thead>
        <tbody>
        <?php
        if($data_mode=='general'){
            $data=$users;
        }
        if(count($data)==0){
            ?>
            <tr>
                <td colspan="100">empty</td>
            </tr>
            <?php
        }else{
            foreach ($data as $user) {
                ?>
                <tr>
                    <td><label class="i-checks m-b-none"><input type="checkbox" name="post[]"><i></i></label></td>
                    <td><?= ucwords($user->name) ?></td>
                    <td><?= ($user->email) ?></td>
                    <td><?= view_telephone($user->telephone, true) ?></td>
                    <td><?= ucwords($user->gender==1 ? 'male' : 'female') ?></td>
                    <td class="text-right">
                        <a href="<?= site_url('user/detail/'.$user->user_id) ?>" style="margin-left: 10px"><i class="icon-eye fa-fw text-success"></i></a>
                        <a href="<?= site_url('user/edit/'.$user->user_id) ?>" style="margin-left: 10px"><i class="icon-pencil fa-fw text-info"></i></a>
                        <a style="margin-left: 10px"><i class="icon-trash fa-fw text-danger"></i></a>
                    </td>
                </tr>
                <?php
            }
        }
        ?>
        </tbody>
    </table>
</div>