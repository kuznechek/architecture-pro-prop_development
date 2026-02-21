# Задание 4. Защита доступа к кластеру Kubernetes

Необходимо организовать ролевой доступ к Kubernetes для пользователей кластера.

## Роли и их полномочия при работе с Kubernetes

| Роль                                                  | Права роли                                                               | Группы пользователей                           |
| ----------------------------------------------------- | ------------------------------------------------------------------------ | ---------------------------------------------- |
| cluster-admin                                         | полный доступ во всех кластерах                                          | администраторы, девопс                         |
| cluster-secret                                        | get/list/watch в кластера с секретными данными                           | сб, пользователи с доступом к секретным данным |
| cluster-staff                                         | get/list/watch в кластеры без секретных данных                           | рядовые сотрудники без привилегерованных прав  |
| smarthome-admin                                       | get,list,watch,create,update,patch для кластеров, связанных с Smart Home | интеграторы сервиса Smart Home                 |


[namespace.yaml](https://github.com/kuznechek/architecture-pro-prop_development/blob/dev/kubernetes/namespace.yaml)

[users.yaml](https://github.com/kuznechek/architecture-pro-prop_development/blob/dev/kubernetes/users.yaml)

[role.yaml](https://github.com/kuznechek/architecture-pro-prop_development/blob/dev/kubernetes/role.yaml)

[rolebinding.yaml](https://github.com/kuznechek/architecture-pro-prop_development/blob/dev/kubernetes/rolebinding.yaml)

```
kubectl get sa -A
```

![task4.png](https://github.com/kuznechek/architecture-pro-prop_development/blob/dev/Task4/task4.png)
