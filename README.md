# README

Как развенуть проект
 1) $ git clone https://github.com/RubyMerge/shop.git
 2) $ bundle
 3) $ rails db:migrate
 4) $ rails s

Для обновления курса валют - 'rake new_exchange_rates' 
После развёртывания на сервере добавляется в задачи rake.

Для работы mailer нужно добавить две локальные переменные  - 
1) ENV['EMAIL']
2) ENV['PASSWORD_EMAIL']

Для подключения к api новой почты я использовал  gem novaposhta2 чтобы ускорить время выполнения тз.
