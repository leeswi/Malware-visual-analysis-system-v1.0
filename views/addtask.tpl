%rebase base title='添加任务  第一物流任务系统',position='添加任务'

<style>
.message{width:320px;margin:120px auto 0px auto;line-height:24px;color:#ffd5bc;overflow:hidden}
.message .input{width:219px;height:28px;line-height:28px;border:none;background:#333333;padding-left:20px;color:#ffffff;font-family:Microsoft YaHei;}
.message .liulan{width:64px;height:28px;border:1px solid #ffb660;background:#fe9e19;color:#ffffff;cursor:pointer;}
.message .files{position:absolute;left:-1000px;top:52px;heigth:26px;cursor:pointer;filter: Alpha(opacity=0);-moz-opacity:0;opacity:0;}
</style>

<div class="page-body">
    <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <div class="widget">
                <div class="widget-header bordered-bottom bordered-themesecondary">
                    <i class="widget-icon fa fa-tags themesecondary"></i>
                    <span class="widget-caption themesecondary">添加任务</span>
                    <div class="widget-buttons">
                        <a href="#" data-toggle="maximize">
                            <i class="fa fa-expand"></i>
                        </a>
                        <a href="#" data-toggle="collapse">
                            <i class="fa fa-minus"></i>
                        </a>
                        <a href="#" data-toggle="dispose">
                            <i class="fa fa-times"></i>
                        </a>
                    </div>

                </div><!--Widget Header-->
                <div style="padding:-10px 0px;" class="widget-body no-padding">
                  <form action="" method="post" enctype="multipart/form-data">
                    <div class="row">
                        <div class="input-group col-lg-4 col-md-4 col-md-offset-1 pull-left" style="padding:5px 0;margin-left:1.88%;">
                            <span class="input-group-addon">任务名</span>
                            <input type="text"  class="form-control" id="" name="subject" aria-describedby="inputGroupSuccess4Status" value="{{task_data[0].get('subject','')}}">
                        </div>
                        <div class="input-group col-lg-4 col-md-4 col-md-offset-1 pull-left" style="padding:5px 0;">
                            <span class="input-group-addon">优先级</span>
                            <select class="form-control" name="priority" id="priority">
                                <option value="-1">-- 请选择任务紧急状态 --</option>
                                <option value="1">不急</option>
                                <option value="2">一般</option>
                                <option value="3">很急</option>
                                <option value="4">紧急</option>
                            </select>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-group col-lg-4 col-md-4 col-md-offset-1 pull-left" style="padding:5px 0;margin-left:1.88%;">
                            <input class="form-control" type="file" name="content" />
                            <input type="submit" value="Upload" class="btn btn-primary"/>
                    </div>
                  </form>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="/assets/js/datetime/bootstrap-datepicker.js"></script>
<script>
    $('.date-picker').datepicker();     //时间插件
    KindEditor.ready(function(K) {
            window.editor = K.create('#editor_id');
    });
    $(function(){
        var userid = {{task_data[0].get('userid','-1')}}
        var assist = {{task_data[0].get('assistid','-1')}}
        var item = {{task_data[0].get('itemid','-1')}}
        var priority = {{task_data[0].get('priority','-1')}}
        var departmentid = {{task_data[0].get('departmentid','-1')}}
        $('#user').val(userid);
        $('#assist').val(assist);
        $('#item').val(item);
        $('#priority').val(priority);
        $('#departmentid').val(departmentid);
    })
</script>