
    <div class="footer" style="">
        <p class="keep-in"><strong>Keep In Touch</strong></p>
        <h5><?= $company->address ?></h5>
        <h5>Email : <a href="mailto:<?= $company->email ?>"><?= $company->email ?></a> </h5>
    </div>
    <div class="text-center">
        <table style="width: 100%">
            <tr>
                <td style="text-align: right">
                    <a href="<?= $company->facebook ?>">
                        <img src="<?= base_url(DIR_IMG.'sampahmuda/facebook.png') ?>" style="width: 30px">
                    </a>
                </td>
                <td style="width: 10px"></td>
                <td style="text-align: left">
                    <a href="<?= $company->instagram ?>">
                        <img src="<?= base_url(DIR_IMG.'sampahmuda/instagram.png') ?>" style="width: 30px">
                    </a>
                </td>
            </tr>
        </table>
    </div>
</div>
</body>
</html>