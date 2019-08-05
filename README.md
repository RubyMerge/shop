# README

Чтобы развенуть проект
 $ git clone https://github.com/RubyMerge/shop.git
 $ bundle
 $ rails db:migrate
 $ rails s
Для обновления курса валют - rake new_exchange_rates 
После развёртывания на сервере добавляется в задачи rake.

Для работы mailer нужно добавить две локальные переменные  - ENV['EMAIL'], ENV['PASSWORD_EMAIL']

Для подключения к api новой почты я использовал  gem novaposhta2 чтобы ускорить время выполнения тз.
