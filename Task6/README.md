# Задание 6. Аудит активности пользователей и обнаружение инцидентов

[audit-policy.yaml](https://github.com/kuznechek/architecture-pro-prop_development/blob/dev/Task6/audit-policy.yaml)

[filter-script.sh](https://github.com/kuznechek/architecture-pro-prop_development/blob/dev/Task6/filter-script.sh)

[audit-extract.json](https://github.com/kuznechek/architecture-pro-prop_development/blob/dev/Task6/audit-extract.json)


# Отчёт по результатам анализа Kubernetes Audit Log

Приведённые ниже данные содержатся в файле [analysis.md](https://github.com/kuznechek/architecture-pro-prop_development/blob/dev/Task6/analysis.md).

## Подозрительные события

1. Доступ к секретам:
   - Кто: `kubernetes-admin`
   - Где: `kube-system`, попытка доступа к секрету `bootstrap-token`
   - Почему подозрительно: не определена роль для kubernetes-admin

2. Привилегированные поды:
   - Кто: `minikube-user`
   - Комментарий: создание пода privileged-pod в namespace "securityContext": { "privileged": true }, что предоставляет полный доступ к хостовой системе.

3. Использование kubectl exec в чужом поде:
   - Кто: `minikube-user`
   - Что делал: попытка выполнения команды `cat /etc/resolv.conf`

4. Создание RoleBinding с правами cluster-admin:
   - Кто: `minikube-user`
   - К чему привело: 

5. Удаление audit-policy.yaml:
   - Кто: --as=admin
   - Возможные последствия: изменение конфигурации аудита позволило бы стороннему лицу выполнить незаметно действия с кластером

## Вывод :

* Попытка доступа к критическому секрету кластера пользователем kubernetes-admin
* Создание привилегированного пода пользователем minikube-user
* Недостаточные ограничения для пользователей с повышенными привилегиями

### Необходимо :

* Ограничить доступ к критическим секретам кластера
* Настроить мониторинг подозрительных действий в кластере
* Вести логирование
