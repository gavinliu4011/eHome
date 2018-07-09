

# 项目启动文件
from ehome import create_app, db
from flask_script import Manager
from flask_migrate import Migrate, MigrateCommand


app = create_app('develop')

Migrate(app, db)
manager = Manager(app)
manager.add_command('db', MigrateCommand)


if __name__ == '__main__':
    print(app.url_map)
    manager.run()

