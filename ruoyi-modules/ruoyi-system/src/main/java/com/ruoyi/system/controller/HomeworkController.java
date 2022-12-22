package com.ruoyi.system.controller;

import java.util.List;
import java.io.IOException;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.ruoyi.common.log.annotation.Log;
import com.ruoyi.common.log.enums.BusinessType;
import com.ruoyi.common.security.annotation.RequiresPermissions;
import com.ruoyi.system.domain.Homework;
import com.ruoyi.system.service.IHomeworkService;
import com.ruoyi.common.core.web.controller.BaseController;
import com.ruoyi.common.core.web.domain.AjaxResult;
import com.ruoyi.common.core.utils.poi.ExcelUtil;
import com.ruoyi.common.core.web.page.TableDataInfo;

/**
 * 作业提交记录Controller
 * 
 * @author yanpei
 * @date 2022-12-21
 */
@RestController
@RequestMapping("/homework")
public class HomeworkController extends BaseController
{
    @Autowired
    private IHomeworkService homeworkService;

    /**
     * 查询作业提交记录列表
     */
    @RequiresPermissions("system:homework:list")
    @GetMapping("/list")
    public TableDataInfo list(Homework homework)
    {
        startPage();
        List<Homework> list = homeworkService.selectHomeworkList(homework);
        return getDataTable(list);
    }

    /**
     * 导出作业提交记录列表
     */
    @RequiresPermissions("system:homework:export")
    @Log(title = "作业提交记录", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, Homework homework)
    {
        List<Homework> list = homeworkService.selectHomeworkList(homework);
        ExcelUtil<Homework> util = new ExcelUtil<Homework>(Homework.class);
        util.exportExcel(response, list, "作业提交记录数据");
    }

    /**
     * 获取作业提交记录详细信息
     */
    @RequiresPermissions("system:homework:query")
    @GetMapping(value = "/{hmId}")
    public AjaxResult getInfo(@PathVariable("hmId") Long hmId)
    {
        return success(homeworkService.selectHomeworkByHmId(hmId));
    }

    /**
     * 新增作业提交记录
     */
    @RequiresPermissions("system:homework:add")
    @Log(title = "作业提交记录", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Homework homework)
    {
        return toAjax(homeworkService.insertHomework(homework));
    }

    /**
     * 修改作业提交记录
     */
    @RequiresPermissions("system:homework:edit")
    @Log(title = "作业提交记录", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Homework homework)
    {
        return toAjax(homeworkService.updateHomework(homework));
    }

    /**
     * 删除作业提交记录
     */
    @RequiresPermissions("system:homework:remove")
    @Log(title = "作业提交记录", businessType = BusinessType.DELETE)
	@DeleteMapping("/{hmIds}")
    public AjaxResult remove(@PathVariable Long[] hmIds)
    {
        return toAjax(homeworkService.deleteHomeworkByHmIds(hmIds));
    }
}
