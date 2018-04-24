%rebase base title='任务详细  第一物流任务系统',position='任务详细'
<div class="page-body">
    <div class="row">
        <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
            <div class="widget">
                <div class="widget-header bordered-bottom bordered-themesecondary" style="height:65px">
                    <i class="themesecondary" style="font-size:200%;line-height:65px;margin-left:10px;"></i>
                    <span class="widget-caption themesecondary" ><h3><b style="font-family:微软雅黑"> {{taskinfo[0].get('subject','无')}}</b></h3></span>
                </div>
            </br>
            <div style="margin-bottom:15px;">
                <span class="label label-info" style="font-size:16px;">内容</span>
                <a href={{!taskinfo[0].get('content','未知')}}>
                <p class="nav-0610"><h5 style="line-height:25px">{{!taskinfo[0].get('content','未知')}}</h5></p>
                </a>
            </div>
            <div style="margin-bottom:15px;">
                <span class="label label-info" style="font-size:16px;">处理结果</span>
                <p class="nav-0610"><h5 style="line-height:25px">xxxxx</h5></p>
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

	function operOrder(param){
		$.post('/infotask/{{taskinfo[0].get('id','')}}',{oper:param},function(data){
            if(data == 1){
               window.location.reload()
            }else{
                alert('操作失败')
            }
		},'html');
	}

	document.write("<a href='./upload/'+taskinfo[0].get('content','未知')">查看数据</a>');
</script>