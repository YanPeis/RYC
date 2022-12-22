<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="作业科目" prop="hmSub">
        <el-input
          v-model="queryParams.hmSub"
          placeholder="请输入作业科目"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="学生姓名" prop="hmName">
        <el-input
          v-model="queryParams.hmName"
          placeholder="请输入学生姓名"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="学生班级" prop="hmClass">
        <el-input
          v-model="queryParams.hmClass"
          placeholder="请输入学生班级"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="作业包URL" prop="hmUrl">
        <el-input
          v-model="queryParams.hmUrl"
          placeholder="请输入作业包URL"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="提交时间" prop="hmSubtime">
        <el-date-picker clearable
          v-model="queryParams.hmSubtime"
          type="date"
          value-format="yyyy-MM-dd"
          placeholder="请选择提交时间">
        </el-date-picker>
      </el-form-item>
      <el-form-item label="作业评价" prop="hmMark">
        <el-input
          v-model="queryParams.hmMark"
          placeholder="请输入作业评价"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item>
        <el-button type="primary" icon="el-icon-search" size="mini" @click="handleQuery">搜索</el-button>
        <el-button icon="el-icon-refresh" size="mini" @click="resetQuery">重置</el-button>
      </el-form-item>
    </el-form>

    <el-row :gutter="10" class="mb8">
<!--      <el-col :span="1.5">-->
<!--        <el-button-->
<!--          type="primary"-->
<!--          plain-->
<!--          icon="el-icon-plus"-->
<!--          size="mini"-->
<!--          @click="handleAdd"-->
<!--          v-hasPermi="['system:homework:add']"-->
<!--        >新增</el-button>-->
<!--      </el-col>-->
      <el-col :span="1.5">
        <el-button
          type="success"
          plain
          icon="el-icon-edit"
          size="mini"
          :disabled="single"
          @click="handleUpdate"
          v-hasPermi="['system:homework:edit']"
        >修改</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="danger"
          plain
          icon="el-icon-delete"
          size="mini"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['system:homework:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['system:homework:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="homeworkList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="作业记录ID" align="center" prop="hmId" />
      <el-table-column label="作业科目" align="center" prop="hmSub" />
      <el-table-column label="学生姓名" align="center" prop="hmName" />
      <el-table-column label="学生班级" align="center" prop="hmClass" />
      <el-table-column label="作业包URL" align="center" prop="hmUrl" />
      <el-table-column label="提交时间" align="center" prop="hmSubtime" width="180">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.hmSubtime, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="作业评价" align="center" prop="hmMark" />
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['system:homework:edit']"
          >修改</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['system:homework:remove']"
          >删除</el-button>
        </template>
      </el-table-column>
    </el-table>

    <pagination
      v-show="total>0"
      :total="total"
      :page.sync="queryParams.pageNum"
      :limit.sync="queryParams.pageSize"
      @pagination="getList"
    />

    <!-- 添加或修改作业提交记录对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="作业科目" prop="hmSub">
          <el-input v-model="form.hmSub" placeholder="请输入作业科目" />
        </el-form-item>
        <el-form-item label="学生姓名" prop="hmName">
          <el-input v-model="form.hmName" placeholder="请输入学生姓名" />
        </el-form-item>
        <el-form-item label="学生班级" prop="hmClass">
          <el-input v-model="form.hmClass" placeholder="请输入学生班级" />
        </el-form-item>
        <el-form-item label="作业包URL" prop="hmUrl">
          <el-input v-model="form.hmUrl" placeholder="请输入作业包URL" />
        </el-form-item>
        <el-form-item label="提交时间" prop="hmSubtime">
          <el-date-picker clearable
            v-model="form.hmSubtime"
            type="date"
            value-format="yyyy-MM-dd"
            placeholder="请选择提交时间">
          </el-date-picker>
        </el-form-item>
        <el-form-item label="作业评价" prop="hmMark">
          <el-input v-model="form.hmMark" placeholder="请输入作业评价" />
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script>
import { listHomework, getHomework, delHomework, addHomework, updateHomework } from "@/api/system/homework";

export default {
  name: "Homework",
  data() {
    return {
      // 遮罩层
      loading: true,
      // 选中数组
      ids: [],
      // 非单个禁用
      single: true,
      // 非多个禁用
      multiple: true,
      // 显示搜索条件
      showSearch: true,
      // 总条数
      total: 0,
      // 作业提交记录表格数据
      homeworkList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        hmSub: null,
        hmName: null,
        hmClass: null,
        hmUrl: null,
        hmSubtime: null,
        hmMark: null
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
        hmSubtime: [
          { required: true, message: "提交时间不能为空", trigger: "blur" }
        ],
      }
    };
  },
  created() {
    this.getList();
  },
  methods: {
    /** 查询作业提交记录列表 */
    getList() {
      this.loading = true;
      listHomework(this.queryParams).then(response => {
        this.homeworkList = response.rows;
        this.total = response.total;
        this.loading = false;
      });
    },
    // 取消按钮
    cancel() {
      this.open = false;
      this.reset();
    },
    // 表单重置
    reset() {
      this.form = {
        hmId: null,
        hmSub: null,
        hmName: null,
        hmClass: null,
        hmUrl: null,
        hmSubtime: null,
        hmMark: null
      };
      this.resetForm("form");
    },
    /** 搜索按钮操作 */
    handleQuery() {
      this.queryParams.pageNum = 1;
      this.getList();
    },
    /** 重置按钮操作 */
    resetQuery() {
      this.resetForm("queryForm");
      this.handleQuery();
    },
    // 多选框选中数据
    handleSelectionChange(selection) {
      this.ids = selection.map(item => item.hmId)
      this.single = selection.length!==1
      this.multiple = !selection.length
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.reset();
      this.open = true;
      this.title = "添加作业提交记录";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const hmId = row.hmId || this.ids
      getHomework(hmId).then(response => {
        this.form = response.data;
        this.open = true;
        this.title = "修改作业提交记录";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          if (this.form.hmId != null) {
            updateHomework(this.form).then(response => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addHomework(this.form).then(response => {
              this.$modal.msgSuccess("新增成功");
              this.open = false;
              this.getList();
            });
          }
        }
      });
    },
    /** 删除按钮操作 */
    handleDelete(row) {
      const hmIds = row.hmId || this.ids;
      this.$modal.confirm('是否确认删除作业提交记录编号为"' + hmIds + '"的数据项？').then(function() {
        return delHomework(hmIds);
      }).then(() => {
        this.getList();
        this.$modal.msgSuccess("删除成功");
      }).catch(() => {});
    },
    /** 导出按钮操作 */
    handleExport() {
      this.download('system/homework/export', {
        ...this.queryParams
      }, `homework_${new Date().getTime()}.xlsx`)
    }
  }
};
</script>
