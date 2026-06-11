# 🚀 Portfólio DevOps na AWS

![AWS](https://img.shields.io/badge/AWS-EC2-orange)
![Terraform](https://img.shields.io/badge/Terraform-IaC-purple)
![Docker](https://img.shields.io/badge/Docker-Containers-blue)
![GitHub Actions](https://img.shields.io/badge/GitHub%20Actions-CI%2FCD-black)
![Prometheus](https://img.shields.io/badge/Prometheus-Monitoring-orange)
![Grafana](https://img.shields.io/badge/Grafana-Dashboards-yellow)
![Alertmanager](https://img.shields.io/badge/Alertmanager-Alerts-red)
![Linux](https://img.shields.io/badge/Linux-Ubuntu-green)

Projeto desenvolvido para demonstrar conhecimentos práticos em:

* Cloud Computing
* Infraestrutura como Código (IaC)
* Containerização
* CI/CD
* Observabilidade
* Monitoramento de Infraestrutura
* Monitoramento de Containers

utilizando ferramentas amplamente adotadas no mercado DevOps.

---

# 📋 Sobre o Projeto

Este projeto consiste na criação e publicação de uma página web pessoal hospedada em uma infraestrutura provisionada na AWS e totalmente automatizada através de pipelines CI/CD.

Além da publicação da aplicação, foi implementada uma stack completa de observabilidade para monitoramento da infraestrutura e dos containers em execução.

Conceitos praticados:

* Linux
* AWS
* Terraform
* Docker
* GitHub Actions
* GitHub Container Registry (GHCR)
* CI/CD
* Observabilidade
* Prometheus
* Grafana
* Alertmanager
* Node Exporter
* cAdvisor
* Infraestrutura como Código
* Automação de Deploy

---

# 🔗 Links

## 🌐 Aplicação

https://cassianomc.github.io/portfolio-devops/

## 📂 Repositório

https://github.com/cassianomc/portfolio-devops

---

# 🖥️ Preview

```text
images/
└── portfolio-preview.png
```

```markdown
![Preview da Aplicação](images/portfolio-preview.png)
```

---

# 🏗️ Arquitetura da Solução

```text
                     Git Push
                         │
                         ▼
┌──────────────────────────────────┐
│             GitHub               │
└───────────────┬──────────────────┘
                │
                ▼
┌──────────────────────────────────┐
│         GitHub Actions           │
│      Build + Deploy Pipeline     │
└───────────────┬──────────────────┘
                │
                ▼
┌──────────────────────────────────┐
│               GHCR               │
│   GitHub Container Registry      │
└───────────────┬──────────────────┘
                │
                ▼
┌─────────────────────────────────────────────┐
│               AWS EC2 Ubuntu                │
│                                             │
│ Docker                                      │
│ ├── Portfolio                               │
│ ├── Prometheus                              │
│ ├── Grafana                                 │
│ ├── Alertmanager                            │
│ ├── Node Exporter                           │
│ └── cAdvisor                                │
└─────────────────────────────────────────────┘
```

---

# 📊 Arquitetura de Observabilidade

```text
Node Exporter ──┐
                │
cAdvisor ───────┼────► Prometheus ───► Grafana
                │
                └────► Alertmanager
```

---

# 🛠️ Tecnologias Utilizadas

## Cloud

* AWS EC2

## Infraestrutura como Código

* Terraform

## Containerização

* Docker
* Docker Compose

## CI/CD

* GitHub Actions

## Registry

* GitHub Container Registry (GHCR)

## Observabilidade

* Prometheus
* Grafana
* Alertmanager
* Node Exporter
* cAdvisor

## Sistema Operacional

* Ubuntu Linux

## Controle de Versão

* Git
* GitHub

## Desenvolvimento Web

* HTML5
* CSS3

---

# 📁 Estrutura do Projeto

```text
portfolio-devops/
│
├── .github/
│   └── workflows/
│       └── deploy.yml
│
├── terraform/
│   ├── main.tf
│   ├── variables.tf
│   └── outputs.tf
│
├── observability/
│   ├── docker-compose.yml
│   ├── prometheus.yml
│   ├── alert.rules.yml
│   │
│   └── alertmanager/
│       └── alertmanager.yml
│
├── images/
│
├── Dockerfile
├── index.html
├── README.md
└── .gitignore
```

---

# ⚙️ Provisionamento da Infraestrutura

A infraestrutura foi criada utilizando Terraform.

## Inicialização

```bash
terraform init
```

## Planejamento

```bash
terraform plan
```

## Aplicação

```bash
terraform apply
```

## Recursos Provisionados

* AWS EC2
* Security Group
* Regras HTTP (80)
* Regras HTTPS (443)
* Regras SSH (22)
* Key Pair

---

# 🔐 Acesso SSH

Após o provisionamento:

```bash
ssh -i ~/.ssh/chave.pem ubuntu@IP_PUBLICO
```

Conceitos praticados:

* Linux
* SSH
* Permissões de arquivos
* Segurança
* Security Groups
* Conectividade Cloud

---

# 🐳 Containerização da Aplicação

A aplicação foi empacotada utilizando Docker.

## Build

```bash
docker build -t portfolio-devops .
```

## Execução

```bash
docker run -d -p 80:80 portfolio-devops
```

Benefícios:

* Portabilidade
* Padronização
* Escalabilidade
* Facilidade de Deploy

---

# 📦 GitHub Container Registry (GHCR)

O projeto utiliza o GitHub Container Registry para armazenamento e distribuição das imagens Docker.

Fluxo:

```text
GitHub Actions
      │
      ▼
Docker Build
      │
      ▼
GHCR
      │
      ▼
AWS EC2
      │
      ▼
Deploy
```

Benefícios:

* Versionamento
* Armazenamento centralizado
* Integração com GitHub
* Distribuição simplificada

---

# 🔄 Pipeline CI/CD

A cada alteração enviada para a branch principal:

```bash
git add .
git commit -m "Atualização"
git push origin main
```

A pipeline executa automaticamente:

1. Checkout do código
2. Build da imagem Docker
3. Push para GHCR
4. SSH para EC2
5. Pull da nova imagem
6. Atualização do container
7. Deploy automático

Fluxo:

```text
Push
 │
 ▼
GitHub Actions
 │
 ▼
Docker Build
 │
 ▼
GHCR
 │
 ▼
EC2
 │
 ▼
Deploy Automático
```

---

# 📈 Observabilidade

Foi implementada uma stack completa de observabilidade para monitoramento da infraestrutura e containers.

## Prometheus

Responsável pela coleta das métricas.

Monitora:

* CPU EC2
* Memória EC2
* Disco EC2
* Uptime
* Containers ativos
* CPU Containers
* Memória Containers
* Tráfego de rede

---

## Grafana

Responsável pela visualização dos dados.

Dashboard principal:

* Status da aplicação
* Status Prometheus
* Containers ativos
* Targets monitorados
* Targets saudáveis
* Uptime EC2
* CPU EC2
* Memória EC2
* Disco EC2
* Uso de CPU dos containers
* Uso de memória dos containers
* Tráfego da aplicação

---

## Node Exporter

Responsável pela coleta de métricas do sistema operacional Linux.

---

## cAdvisor

Responsável pela coleta de métricas dos containers Docker.

---

## Alertmanager

Integrado ao Prometheus para gerenciamento de alertas.

Alertas já validados:

* Target indisponível
* Alta utilização de memória
* Alta utilização de disco
* Alertas customizados de teste

---

# 🔒 Segurança

Boas práticas aplicadas:

## Portas Públicas

* 80 (Aplicação)
* 22 (SSH)

## Portas Restritas

Serviços internos de observabilidade não são expostos publicamente:

* 9090 (Prometheus)
* 9093 (Alertmanager)
* 9100 (Node Exporter)
* 8080 (cAdvisor)

Comunicação realizada através da rede Docker interna.

---

# 📖 Principais Desafios e Troubleshooting

Durante o desenvolvimento foram resolvidos diversos problemas reais de infraestrutura:

### GitHub Actions não acessava EC2

* Ajuste de Security Groups
* Configuração correta do SSH

### Permission denied (publickey)

* Correção dos Secrets do GitHub

### Timeout SSH

* Validação das regras de entrada AWS

### cAdvisor sem métricas

* Ajuste de permissões e montagem de volumes Docker

### Prometheus sem targets

* Correção das configurações de scrape

### Segurança da observabilidade

* Remoção da exposição pública dos exporters

---

# 🎓 Habilidades Demonstradas

✅ Linux

✅ AWS EC2

✅ Terraform

✅ Docker

✅ Docker Compose

✅ Git

✅ GitHub

✅ GitHub Actions

✅ GHCR

✅ SSH

✅ Infraestrutura como Código (IaC)

✅ CI/CD

✅ Deploy Automatizado

✅ Cloud Computing

✅ Prometheus

✅ Grafana

✅ Alertmanager

✅ Node Exporter

✅ cAdvisor

✅ Observabilidade

✅ Monitoramento de Infraestrutura

✅ Monitoramento de Containers

✅ Troubleshooting

---

# 🛣️ Roadmap

## Concluído

* [x] Aplicação Web
* [x] Docker
* [x] AWS EC2
* [x] Terraform
* [x] GitHub Actions
* [x] GHCR
* [x] Deploy Automático
* [x] Prometheus
* [x] Grafana
* [x] Node Exporter
* [x] cAdvisor
* [x] Alertmanager
* [x] Dashboard Executivo

## Próximas Evoluções

* [ ] Remote State Terraform (S3)
* [ ] Dashboard dedicado para containers
* [ ] Integração Alertmanager + Discord
* [ ] HTTPS com Let's Encrypt
* [ ] Domínio personalizado
* [ ] Loki
* [ ] Centralização de Logs
* [ ] Kubernetes
* [ ] GitOps

---

# 👨‍💻 Autor

## Cassiano Marinho

DevOps | SRE | Cloud | Observabilidade

### Tecnologias

* Linux
* AWS
* Docker
* Terraform
* GitHub Actions
* Prometheus
* Grafana
* Observabilidade

### Atualmente Estudando

* Kubernetes
* GitOps
* Advanced Terraform
* Observabilidade

---

⭐ Este projeto faz parte da minha jornada de evolução profissional na área de DevOps, Cloud Computing, SRE e Observabilidade, buscando aplicar boas práticas utilizadas em ambientes corporativos reais.
