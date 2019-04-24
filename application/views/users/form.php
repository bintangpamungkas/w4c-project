<div class="row clearfix">
    <div class="col-md-6">
        <div class="form-group hidden">
            <label>user_id</label>
            <input class="form-control" placeholder="user_id" name="user_id" value="<?= $is_edit=='true' ? $data->user_id : '' ?>">
        </div>
        <div class="form-group hidden">
            <label>username</label>
            <input class="form-control" placeholder="username" name="username" value="<?= $is_edit=='true' ? $data->username : '' ?>">
        </div>
        <div class="form-group hidden">
            <label>password</label>
            <input class="form-control" placeholder="password" name="password" value="<?= $is_edit=='true' ? $data->password : '' ?>">
        </div>
        <div class="form-group">
            <label>name</label>
            <input class="form-control" placeholder="name" name="name" value="<?= $is_edit=='true' ? $data->name : '' ?>" required>
        </div>
        <div class="form-group">
            <label>email</label>
            <?= $this->session->flashdata('error_email') ?>
            <input class="form-control <?= $this->session->flashdata('error_email') ? 'error-input' : '' ?>" placeholder="email" name="email" value="<?= $is_edit=='true' ? $data->email : '' ?>" required>
        </div>
        <div class="form-group">
            <label>telephone</label>
            <?= $this->session->flashdata('error_telephone') ?>
            <input type="number" class="form-control <?= $this->session->flashdata('error_telephone') ? 'error-input' : '' ?>" placeholder="telephone" name="telephone" value="<?= $is_edit=='true' ? $data->telephone : '' ?>" required>
        </div>
    </div>
    <div class="col-md-6">
        <div class="form-group">
            <label>birth date</label>
            <input class="form-control" type="date" placeholder="birth date" name="birth_date" value="<?= $is_edit=='true' ? $data->birth_date : '' ?>">
        </div>
        <div class="form-group">
            <label>gender</label>
            <div class="radio">
                <label class="i-checks i-checks-sm" style="margin-right: 10px">
                    <input type="radio" name="gender" value="1" <?= $is_edit=='true' ? ($data->gender==1 ? 'checked' : '') : '' ?>>
                    <i></i>
                    Male
                </label>
                <label class="i-checks i-checks-sm">
                    <input type="radio" name="gender" value="2" <?= $is_edit=='true' ? ($data->gender==2 ? 'checked' : '') : '' ?>>
                    <i></i>
                    Female
                </label>
            </div>
        </div>
    </div>
    <?php
    if($is_edit=='false'){
    ?>
    <div class="col-md-12">
        <div class="row">
            <div class="col-md-6">

                <div class="form-group">
                    <label>province</label>

                    <select class="option_id form-control" name="province_id" data-target="option_city" data-url="<?= site_url('Location/getCity') ?>">
                        <option value="null">-- select --</option>
                        <?php
                        foreach ($provinces as $province) {
                            ?>
                            <option value="<?= $province->province_id ?>"><?= ucwords($province->province) ?></option>
                            <?php
                        }
                        ?>
                    </select>

                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>city</label>
                            <select id="option_city" class="option_location option_id form-control" name="city_id" data-target="option_kecamatan" data-url="<?= site_url('Location/getKecamatan') ?>">
                                <option value="null">-- select --</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>kecamatan</label>
                            <select id="option_kecamatan" class="option_location form-control" name="kecamatan_id">
                                <option value="null">-- select --</option>
                            </select>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6">

                <div class="form-group">
                    <label>address</label>
                    <textarea class="form-control" name="address" placeholder="address"></textarea>
                </div>
            </div>
        </div>
    </div>
    <?php
    }
    ?>
</div>