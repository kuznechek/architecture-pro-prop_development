# Задание 5. Управление трафиком внутри кластера Kubertnetes

## Создание подов

```
kubectl run front-end-app --image=nginx --labels role=front-end --expose --port 80 -n propdevelopment
kubectl run back-end-api-app --image=nginx --labels role=back-end-api --expose --port 80 -n propdevelopment
kubectl run admin-front-end-app --image=nginx --labels role=admin-front-end --expose --port 80 -n propdevelopment
kubectl run admin-back-end-api-app --image=nginx --labels role=admin-back-end-api --expose --port 80 -n propdevelopment
```

![task5.png](https://github.com/kuznechek/architecture-pro-prop_development/blob/dev/Task5/task5-1.png)

# Скрипт для настройки траффика между подами

[politics.yaml](https://github.com/kuznechek/architecture-pro-prop_development/blob/dev/kubernetes/politics.yaml)