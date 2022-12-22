package com.ruoyi.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.HomeworkMapper;
import com.ruoyi.system.domain.Homework;
import com.ruoyi.system.service.IHomeworkService;

/**
 * 作业提交记录Service业务层处理
 * 
 * @author yanpei
 * @date 2022-12-21
 */
@Service
public class HomeworkServiceImpl implements IHomeworkService 
{
    @Autowired
    private HomeworkMapper homeworkMapper;

    /**
     * 查询作业提交记录
     * 
     * @param hmId 作业提交记录主键
     * @return 作业提交记录
     */
    @Override
    public Homework selectHomeworkByHmId(Long hmId)
    {
        return homeworkMapper.selectHomeworkByHmId(hmId);
    }

    /**
     * 查询作业提交记录列表
     * 
     * @param homework 作业提交记录
     * @return 作业提交记录
     */
    @Override
    public List<Homework> selectHomeworkList(Homework homework)
    {
        return homeworkMapper.selectHomeworkList(homework);
    }

    /**
     * 新增作业提交记录
     * 
     * @param homework 作业提交记录
     * @return 结果
     */
    @Override
    public int insertHomework(Homework homework)
    {
        return homeworkMapper.insertHomework(homework);
    }

    /**
     * 修改作业提交记录
     * 
     * @param homework 作业提交记录
     * @return 结果
     */
    @Override
    public int updateHomework(Homework homework)
    {
        return homeworkMapper.updateHomework(homework);
    }

    /**
     * 批量删除作业提交记录
     * 
     * @param hmIds 需要删除的作业提交记录主键
     * @return 结果
     */
    @Override
    public int deleteHomeworkByHmIds(Long[] hmIds)
    {
        return homeworkMapper.deleteHomeworkByHmIds(hmIds);
    }

    /**
     * 删除作业提交记录信息
     * 
     * @param hmId 作业提交记录主键
     * @return 结果
     */
    @Override
    public int deleteHomeworkByHmId(Long hmId)
    {
        return homeworkMapper.deleteHomeworkByHmId(hmId);
    }
}
