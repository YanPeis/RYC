package com.ruoyi.system.service;

import java.util.List;
import com.ruoyi.system.domain.Homework;

/**
 * 作业提交记录Service接口
 * 
 * @author yanpei
 * @date 2022-12-21
 */
public interface IHomeworkService 
{
    /**
     * 查询作业提交记录
     * 
     * @param hmId 作业提交记录主键
     * @return 作业提交记录
     */
    public Homework selectHomeworkByHmId(Long hmId);

    /**
     * 查询作业提交记录列表
     * 
     * @param homework 作业提交记录
     * @return 作业提交记录集合
     */
    public List<Homework> selectHomeworkList(Homework homework);

    /**
     * 新增作业提交记录
     * 
     * @param homework 作业提交记录
     * @return 结果
     */
    public int insertHomework(Homework homework);

    /**
     * 修改作业提交记录
     * 
     * @param homework 作业提交记录
     * @return 结果
     */
    public int updateHomework(Homework homework);

    /**
     * 批量删除作业提交记录
     * 
     * @param hmIds 需要删除的作业提交记录主键集合
     * @return 结果
     */
    public int deleteHomeworkByHmIds(Long[] hmIds);

    /**
     * 删除作业提交记录信息
     * 
     * @param hmId 作业提交记录主键
     * @return 结果
     */
    public int deleteHomeworkByHmId(Long hmId);
}
