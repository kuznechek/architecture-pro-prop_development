# Задание 7. Аудит и обеспечение соответствия политике безопасности контейнеров

[01-create-namespace.yaml](https://github.com/kuznechek/architecture-pro-prop_development/blob/dev/Task7/01-create-namespace.yaml)

### Три манифеста с нарушениями в insecure-manifests :

[01-privileged-pod.yaml](https://github.com/kuznechek/architecture-pro-prop_development/blob/dev/Task7/insecure-manifests/01-privileged-pod.yaml)

[02-hostpath-pod.yaml](https://github.com/kuznechek/architecture-pro-prop_development/blob/dev/Task7/insecure-manifests/02-hostpath-pod.yaml)

[03-root-user-pod.yaml](https://github.com/kuznechek/architecture-pro-prop_development/blob/dev/Task7/insecure-manifests/03-root-user-pod.yaml)

### Три исправленных манифеста с нарушениями в secure-manifests :

[01-privileged-pod.yaml](https://github.com/kuznechek/architecture-pro-prop_development/blob/dev/Task7/secure-manifests/01-secure.yaml)

[02-hostpath-pod.yaml](https://github.com/kuznechek/architecture-pro-prop_development/blob/dev/Task7/secure-manifests/02-secure.yaml)

[03-root-user-pod.yaml](https://github.com/kuznechek/architecture-pro-prop_development/blob/dev/Task7/secure-manifests/03-secure.yaml)

### Вывод :

![task7-1.png](https://github.com/kuznechek/architecture-pro-prop_development/blob/dev/Task7/task7-1.png)

## Gatekeeper

#### constraint-templates/

[privileged.yaml](https://github.com/kuznechek/architecture-pro-prop_development/blob/dev/Task7/constraint-templates/privileged.yaml)

[hostpath.yaml](https://github.com/kuznechek/architecture-pro-prop_development/blob/dev/Task7/constraint-templates/hostpath.yaml)

[runasnonroot.yaml](https://github.com/kuznechek/architecture-pro-prop_development/blob/dev/Task7/constraint-templates/runasnonroot.yaml)

#### constraints/

[privileged.yaml](https://github.com/kuznechek/architecture-pro-prop_development/blob/dev/Task7/constraints/privileged.yaml)

[hostpath.yaml](https://github.com/kuznechek/architecture-pro-prop_development/blob/dev/Task7/constraints/hostpath.yaml)

[runasnonroot.yaml](https://github.com/kuznechek/architecture-pro-prop_development/blob/dev/Task7/constraints/runasnonroot.yaml)

### Вывод :


## Политика аудита

[audit-policy.yaml](https://github.com/kuznechek/architecture-pro-prop_development/blob/dev/Task7/audit-policy.yaml)

### Верификация скриптом :

[verify-admission.sh](https://github.com/kuznechek/architecture-pro-prop_development/blob/dev/Task7/verify/verify-admission.sh)

![task7-2.png](https://github.com/kuznechek/architecture-pro-prop_development/blob/dev/Task7/task7-2.png)

### Валидация скриптом :

[validate-security.sh](https://github.com/kuznechek/architecture-pro-prop_development/blob/dev/Task7/verify/validate-security.sh)

![task7-3.png](https://github.com/kuznechek/architecture-pro-prop_development/blob/dev/Task7/task7-3.png)
