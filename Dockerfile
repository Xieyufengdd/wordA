#FROM openjdk:14
#COPY ./ /app/
#WORKDIR /app/
#RUN javac src/Lexer.java -d ./
# -- Dockerfile --
# 这个文件负责构建包含你的程序的 Docker 容器

# 使用 Java 12
FROM openjdk:14
# 向容器内复制文件
COPY ./ /app/
# 编译程序
WORKDIR /app/
RUN javac ./src/Lexer.java -d ./
# 将当前目录设为 /app/output
# WORKDIR /app/output