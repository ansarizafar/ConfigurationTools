@echo off
::查找MySQL安装目录的运行环境
cd /d "%m_p%\bin"

::是否需要启动mysql
echo 启动MySQL服务(y/n)?
set /p o=^>
echo "%o%" | find /i "y" 1>NUL 2>NUL && (
	net start mysql
	echo 登录MySQL服务
	mysql -u root -p
)
echo ********************************
echo *         MySQL安装完成
echo ********************************
