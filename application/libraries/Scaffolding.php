<?php

Class Scaffolding
{

    const ROUTE_VIEW = 'view';
    const ROUTE_CREATE = 'create';
    const ROUTE_DELETE = 'delete';
    const ROUTE_EDIT = 'edit';
    const FLASH_NOTIFICATION = 'scaffolding_notif';

    private $controller,
            $db,
            $view,
            $id,
            $currentTable,
            $condition,
            $tableField = array(),
            $pagination,
            $form_validation,
            $index = 'index',
            $controllerRoute,
            $primaryField = '',
            $customCollumn = array(),
            $columnAction = array(),
            $offset = 0,
            $limit = 20,
            $autoNumber = true,
            $ciMajorVersion,
            $typeDataNumeric = array('tinyint', 'smallint', 'mediumint', 'int', 'bigin')

    ;

    public function __construct(array $args)
    {
        $getVersion = explode(".", CI_VERSION);
        $this->ciMajorVersion = $getVersion[0];
        $this->controller = $args['controller'];
        $this->index = (isset($args['method']) ? $args['method'] : $this->index);
        $this->limit = (isset($args['limit']) ? $args['limit'] : $this->limit);
        $this->autoNumber = (isset($args['autoNumber']) ? $args['autoNumber'] : $this->autoNumber);
        $this->view = $this->controller->input->get('view');
        $this->id = $this->controller->input->get('id');
        $this->db = $this->controller->db;
        $this->controllerRoute = (isset($args['controllerRoute']) ? $args['controllerRoute'] : get_class($this->controller)) . "/";
        $this->customCollumn = (isset($args['format']) ? $args['format'] : array());
        $this->columnAction = array(
            'visible' => isset($this->customCollumn['actionCollumn']['visible']) ? $this->customCollumn['actionCollumn']['visible'] : true,
            'text' => isset($this->customCollumn['actionCollumn']['text']) ? $this->customCollumn['actionCollumn']['text'] : 'Action',
            'edit' => array(
                'visible' => isset($this->customCollumn['actionCollumn']['edit']['visible']) ? $this->customCollumn['actionCollumn']['edit']['visible'] : true,
                'text' => isset($this->customCollumn['actionCollumn']['edit']['text']) ? $this->customCollumn['actionCollumn']['edit']['text'] : 'Edit'
            ),
            'delete' => array(
                'visible' => isset($this->customCollumn['actionCollumn']['delete']['visible']) ? $this->customCollumn['actionCollumn']['delete']['visible'] : true,
                'text' => isset($this->customCollumn['actionCollumn']['delete']['text']) ? $this->customCollumn['actionCollumn']['delete']['text'] : 'Delete',
                'addAction' => isset($this->customCollumn['actionCollumn']['delete']['addAction']) ? $this->customCollumn['actionCollumn']['delete']['addAction'] : null
            ),
            'create' => array(
                'visible' => isset($this->customCollumn['actionCollumn']['create']['visible']) ? $this->customCollumn['actionCollumn']['create']['visible'] : true,
                'text' => isset($this->customCollumn['actionCollumn']['create']['text']) ? $this->customCollumn['actionCollumn']['create']['text'] : 'Create New'
            )
        );
        //print_r($this->customCollumn);
        /* load pagination */
        $this->controller->load->library(array('pagination', 'form_validation', 'session'));
        $this->pagination = $this->controller->pagination;
        $this->form_validation = $this->controller->form_validation;

        /* load helper url & form */
        $this->controller->load->helper(array('url', 'form'));

        $this->offset = (int) $this->controller->input->get('per_page');
    }

    public function create($tableName, $condition = null)
    {
        $this->currentTable = $tableName;
        $this->condition = $condition;
        $this->_getTableField();
        switch ($this->view) {
            case self::ROUTE_CREATE:
                return $this->_form();
                break;
            case self::ROUTE_EDIT:
                return $this->_edit();
                break;

            case self::ROUTE_DELETE:
                return $this->_delete();
                break;

            case self::ROUTE_VIEW:
            default:
                $flash = $this->controller->session->flashdata(self::FLASH_NOTIFICATION);
                $return = "";
                if ($flash != '') {
                    $return .= "<div class='alert alert-info'>" . $flash . "</div>";
                }
                $return .= $this->_createTable();
                return $return;
                break;
        }
    }

    private function _createTable()
    {
        $actionCreate = '';
        if ($this->columnAction['create']['visible'])
            $actionCreate = anchor($this->controllerRoute . $this->index . '?view=' . self::ROUTE_CREATE, $this->columnAction['create']['text'], array());

        $table = $actionCreate;
        $table .= "<table class='table table-bordered table-condensed table-striped'>";
        $table .= "<thead>" . $this->_tHeader() . "</thead>";
        $table .= "<tbody>" . $this->_tBody() . "</tbody>";
        $table .= "</table>";

        /* Pagination Format */

        $config = $this->_paginationTemplate();
        $config['base_url'] = site_url($this->controllerRoute . $this->index) . '?' . $_SERVER['QUERY_STRING'];
        $this->_queryCondition();
        $config['total_rows'] = $countAll = $this->db->count_all_results($this->currentTable);
        ;
        $config['per_page'] = $this->limit;
        $config['page_query_string'] = true;

        $this->pagination->initialize($config);

        $table .= $this->pagination->create_links();
        return $table;
    }

    private function _queryCondition()
    {
        if (is_array($this->condition)) {
            return $this->db->where($this->condition);
        } return $this->db;
    }

    private function _getColumnMetaData($tablename)
    {
        return $this->db->query("SELECT COLUMN_NAME as name, COLUMN_DEFAULT, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH, COLUMN_KEY, EXTRA FROM information_schema.columns WHERE TABLE_NAME = '{$tablename}'")->result();
    }

    private function _getTableField()
    {
        //$this->_queryCondition();
        $fields = $this->_getColumnMetaData($this->currentTable);
        $keyFieldNumber = 0;
        foreach ($fields as $field) {

            $this->tableField[$keyFieldNumber] = (object) array(
                        'name' => $field->name,
                        'auto_increment' => ($field->EXTRA == 'auto_increment') ? 1 : 0,
                        'default' => $field->COLUMN_DEFAULT,
                        'type' => $field->DATA_TYPE,
                        'primary_key' => (($field->COLUMN_KEY == 'PRI') ? 1 : 0),
                        'title' => isset($this->customCollumn[$field->name]['title']) ? $this->customCollumn[$field->name]['title'] : ucfirst(str_replace("_", " ", $field->name)),
                        'format' => isset($this->customCollumn[$field->name]['format']) ? $this->customCollumn[$field->name]['format'] : '',
                        'visible' => isset($this->customCollumn[$field->name]['visible']) ? $this->customCollumn[$field->name]['visible'] : true
            );

            if ($this->tableField[$keyFieldNumber]->primary_key == 1)
                $this->primaryField = $field->name;

            if ($this->view == self::ROUTE_CREATE || $this->view == self::ROUTE_EDIT) {
                $rules = array();
                if (isset($this->customCollumn[$field->name]['rules'])) {
                    $myRules = $this->customCollumn[$field->name]['rules'];
                    if (!is_array($myRules)) {
                        $rules = explode("|", $myRules);
                    } else {
                        $rules = $myRules;
                    }
                } else {
                    if (in_array($this->tableField[$keyFieldNumber]->type, $this->typeDataNumeric) && $this->tableField[$keyFieldNumber]->auto_increment == 0) {
                        $rules[] = "is_numeric";
                    }
                }

                if ($this->ciMajorVersion == 3)
                    $newrules = $rules;
                else
                    $newrules = implode("|", $rules);

                $this->form_validation->set_rules($this->tableField[$keyFieldNumber]->name, ucfirst($this->tableField[$keyFieldNumber]->title), $newrules);
            }
            $keyFieldNumber++;
        }
    }

    private function _tHeader()
    {
        $header = "<tr>";
        if ($this->autoNumber)
            $header .= "<th>&nbsp;</th>";

        foreach ($this->tableField as $field) {
            if ($field->visible)
                $header .= "<th>" . $field->title . "</th>";
        }
        if ($this->columnAction['visible']) {
            $header .= "<th>" . $this->columnAction['text'] . "</th>";
        }
        $header .= "</tr>";
        return $header;
    }

    private function _tBody()
    {
        $this->_queryCondition();
        $db = $this->db->order_by('id', 'desc')->get($this->currentTable, $this->limit, $this->offset);
        //$db = $this->db->get($this->currentTable, $this->limit, $this->offset);
        //echo $this->db->last_query();
        $body = "";
        if ($db->num_rows() > 0) {
            foreach ($db->result() as $key => $value) {
                $body .= "<tr>";
                if ($this->autoNumber)
                    $body .= "<td>" . ( ++$this->offset) . ".</td>";
                foreach ($this->tableField as $field) {
                    if ($field->primary_key == 1)
                        $primary = $value->{$field->name};

                    if ($field->visible) {
                        $bodyValue = $value->{$field->name};
                        if ($field->format != '') {
                            $bodyValue = call_user_func_array(array($this->controller, $field->format), array($value));
                        }
                        $body .= "<td>" . $bodyValue . "</td>";
                    }
                }
                if ($this->columnAction['visible']) {
                    $body .= "<td>";
                    if ($this->columnAction['edit']['visible'])
                        $body .= anchor($this->controllerRoute . $this->index . '?view=' . self::ROUTE_EDIT . '&id=' . $primary, 'Edit');
                    if ($this->columnAction['edit']['visible'] && $this->columnAction['delete']['visible'])
                        $body .= " | ";
                    if ($this->columnAction['delete']['visible'])
                        $body .= anchor($this->controllerRoute . $this->index . '?view=' . self::ROUTE_DELETE . '&id=' . $primary, 'Delete', array(
                            'onclick' => "return confirm('Yakin ingin mengapus data ini?')"
                        ));
                    $body .= "</td>";
                }
                $body .= "</tr>";
            }
        } else {
            $body = "<tr>";
            $body .= "<td colspan='" . (count($this->tableField) + ($this->columnAction['visible'] ? 1 : 0) + ($this->autoNumber ? 1 : 0)) . "'>Tidak ada Data yang ditampilkan</td>";
            $body .= "</tr>";
        }
        return $body;
    }

    private function _form($row = '')
    {
        if ($this->form_validation->run() !== false) {
            $post = $this->controller->input->post();
            if ($this->view == self::ROUTE_CREATE) {
                $action = $this->db->insert($this->currentTable, $post);
            } else {

                $action = $this->db
                        ->where($this->primaryField, $this->id)
                        ->update($this->currentTable, $post);
            }
            if ($action) {
                $this->_notif("Data BERHASIL disimpan");
            } else {
                $this->_notif("Data GAGAL disimpan");
            }
            redirect($this->controllerRoute . $this->index);
        }
        $form = form_open($this->controllerRoute . $this->index . '?' . $_SERVER['QUERY_STRING'], array(
            'class' => 'form-horizontal row'
        ));
        foreach ($this->tableField as $field) {
            $form .= '<div class="form-group">';
            $form .= '<label class="control-label col-xs-4">' . $field->title . '</label>';
            $form .= '<div class="col-xs-8">';
            $form .= form_input(
                    $field->name, set_value($field->name, isset($row->{$field->name}) ? $row->{$field->name} : ''), (($field->primary_key == 1 && self::ROUTE_EDIT == $this->view) || $field->auto_increment == 1 ? " readonly" : '') . " class='form-control'"
            );
            $form .= form_error($field->name, "<div class='help-block'>", "</div>");
            $form .= "</div>";
            $form .= "</div>";
        }
        $form .= form_button(array(
            'type' => 'Submit',
            'content' => 'Simpan',
            'class' => 'btn btn-primary pull-right'
        ));
        $form .= form_close();
        return $form;
    }

    private function _edit()
    {
        $row = $this->db->get_where($this->currentTable, array(
            $this->primaryField => $this->id
        ));
        if ($row->num_rows() > 0) {
            return $this->_form($row->row());
        } else {
            $this->_notif("Data tidak ditemukan untuk diedit");
            redirect($this->controllerRoute . $this->index);
        }
    }

    private function _delete()
    {
        $row = $this->db->get_where($this->currentTable, array(
                    $this->primaryField => $this->id
                ));
        
        if ($row->num_rows() > 0) {
            if ($this->columnAction['delete']['addAction'] != null) {
                $respon = call_user_func_array(array($this->controller, $this->columnAction['delete']['addAction']), array($row->row()));
            }
            $del = $this->db
                    ->where($this->primaryField, $this->id)
                    ->delete($this->currentTable);
            if ($del) {
                $this->_notif("Data berhasil dihapus.");
            } else {
                $this->_notif("data GAGAL dihapus, cobalah beberapa saat lagi");
            }
        }
        redirect($this->controllerRoute . $this->index);
    }

    private function _notif($message)
    {
        return $this->controller->session->set_flashdata(self::FLASH_NOTIFICATION, $message);
    }

    private function _paginationTemplate()
    {
        return array(
            'display_pages' => true,
            'full_tag_open' => "<ul class='pagination'>",
            'full_tag_close' => "</ul>",
            'first_link' => 'Depan',
            'prev_tag_open' => "<li>",
            'prev_tag_close' => "</li>",
            'first_tag_open' => "<li>",
            'first_tag_close' => "</li>",
            'last_link' => 'Terakhir',
            'next_tag_open' => '<li>',
            'next_tag_close' => '</li>',
            'last_tag_open' => '<li>',
            'last_tag_close' => '</li>',
            'num_tag_open' => '<li>',
            'num_tag_close' => '</li>',
            'cur_tag_open' => '<li class="active"><a href="javascript:void(0)">',
            'cur_tag_close' => '</a></li>'
        );
    }

}
