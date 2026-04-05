# Задание 4. Защита доступа к кластеру Kubernetes

Необходимо организовать ролевой доступ к Kubernetes для пользователей кластера.

## Роли и их полномочия при работе с Kubernetes

| Роль                                                  | Права роли                                                               | Группы пользователей                           |
| ----------------------------------------------------- | ------------------------------------------------------------------------ | ---------------------------------------------- |
| cluster-admin                                         | полный доступ во всех кластерах                                          | администраторы, девопс                         |
| cluster-secret                                        | get/list/watch в кластера с секретными данными                           | сб, пользователи с доступом к секретным данным |
| cluster-staff                                         | get/list/watch в кластеры без секретных данных                           | рядовые сотрудники без привилегерованных прав  |
| smarthome-admin                                       | get,list,watch,create,update,patch для кластеров, связанных с Smart Home | интеграторы сервиса Smart Home                 |

## Скрипт для неймспейсов

[namespace.yaml](https://github.com/kuznechek/architecture-pro-prop_development/blob/dev/Task4/namespace.yaml)

```
kubectl apply -f namespace.yaml
```

## Скрипт для создания пользователей

[users.yaml](https://github.com/kuznechek/architecture-pro-prop_development/blob/dev/Task4/users.yaml)

```
kubectl apply -f users.yaml
```

## Скрипт для определения ролей

[role.yaml](https://github.com/kuznechek/architecture-pro-prop_development/blob/dev/Task4/role.yaml)

```
kubectl apply -f role.yaml
```

## Скрипт для связи пользователей с ролями

[rolebinding.yaml](https://github.com/kuznechek/architecture-pro-prop_development/blob/dev/Task4/rolebinding.yaml)

```
kubectl apply -f rolebinding.yaml
```

## Результат

![task4.png](https://github.com/kuznechek/architecture-pro-prop_development/blob/dev/Task4/task4.png)
