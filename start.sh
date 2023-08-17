# 启动前进行编译防止代码变更
mvn clean package -Dmaven.test.skip=true

# 启动管理员
nohup java -jar /usr/local/xxl-job/xxl-job-admin/target/xxl-job-admin-2.4.1-SNAPSHOT.jar > xxl-job-admin.log 2>&1 &
# 启动执行器
nohup java -jar /usr/local/xxl-job/xxl-job-executor-samples/xxl-job-executor-sample-springboot/target/xxl-job-executor-sample-springboot-2.4.1-SNAPSHOT.jar > xxl-job-executor-sample-springboot.log 2>&1 &
