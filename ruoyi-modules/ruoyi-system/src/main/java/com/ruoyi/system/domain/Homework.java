package com.ruoyi.system.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.core.annotation.Excel;
import com.ruoyi.common.core.web.domain.BaseEntity;

/**
 * 作业提交记录对象 homework
 * 
 * @author yanpei
 * @date 2022-12-21
 */
public class Homework extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 作业记录ID */
    private Long hmId;

    /** 作业科目 */
    @Excel(name = "作业科目")
    private String hmSub;

    /** 学生姓名 */
    @Excel(name = "学生姓名")
    private String hmName;

    /** 学生班级 */
    @Excel(name = "学生班级")
    private String hmClass;

    /** 作业包URL */
    @Excel(name = "作业包URL")
    private String hmUrl;

    /** 提交时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "提交时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date hmSubtime;

    /** 作业评价 */
    @Excel(name = "作业评价")
    private String hmMark;

    public void setHmId(Long hmId) 
    {
        this.hmId = hmId;
    }

    public Long getHmId() 
    {
        return hmId;
    }
    public void setHmSub(String hmSub) 
    {
        this.hmSub = hmSub;
    }

    public String getHmSub() 
    {
        return hmSub;
    }
    public void setHmName(String hmName) 
    {
        this.hmName = hmName;
    }

    public String getHmName() 
    {
        return hmName;
    }
    public void setHmClass(String hmClass) 
    {
        this.hmClass = hmClass;
    }

    public String getHmClass() 
    {
        return hmClass;
    }
    public void setHmUrl(String hmUrl) 
    {
        this.hmUrl = hmUrl;
    }

    public String getHmUrl() 
    {
        return hmUrl;
    }
    public void setHmSubtime(Date hmSubtime) 
    {
        this.hmSubtime = hmSubtime;
    }

    public Date getHmSubtime() 
    {
        return hmSubtime;
    }
    public void setHmMark(String hmMark) 
    {
        this.hmMark = hmMark;
    }

    public String getHmMark() 
    {
        return hmMark;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("hmId", getHmId())
            .append("hmSub", getHmSub())
            .append("hmName", getHmName())
            .append("hmClass", getHmClass())
            .append("hmUrl", getHmUrl())
            .append("hmSubtime", getHmSubtime())
            .append("hmMark", getHmMark())
            .toString();
    }
}
