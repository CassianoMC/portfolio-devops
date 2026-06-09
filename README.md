# 🚀 Portfólio DevOps na AWS

![AWS](https://img.shields.io/badge/AWS-EC2-orange?logo=amazonaws)
![Terraform](https://img.shields.io/badge/Terraform-IaC-purple?logo=terraform)
![Docker](https://img.shields.io/badge/Docker-Containers-blue?logo=docker)
![GitHub Actions](https://img.shields.io/badge/GitHub_Actions-CI/CD-black?logo=githubactions)
![Linux](https://img.shields.io/badge/Linux-Ubuntu-yellow?logo=ubuntu)
![Status](https://img.shields.io/badge/Status-Online-brightgreen)

Projeto desenvolvido para demonstrar conhecimentos em Cloud Computing, Infraestrutura como Código (IaC), Containerização e CI/CD utilizando ferramentas amplamente utilizadas no mercado DevOps.

---

# 📋 Sobre o Projeto

Este projeto consiste na criação e publicação de uma página web pessoal para apresentação profissional, executada em uma infraestrutura provisionada na AWS e automatizada através de pipelines CI/CD.

O objetivo foi aplicar na prática conceitos fundamentais de:

* Linux
* AWS
* Terraform
* Docker
* GitHub Actions
* GitHub Container Registry (GHCR)
* CI/CD
* Infraestrutura como Código
* Automação de Deploy

---

# 🔗 Links

### 🌐 Aplicação

https://cassianomc.github.io/portfolio-devops/

### 📂 Repositório

https://github.com/cassianomc/portfolio-devops

---

# 🖥️ Preview

> Adicione um print da aplicação na pasta `images`.

```text
portfolio-devops/
│
├── images/
│   └── portfolio-preview.png
│
└── README.md
```

Depois utilize:

```md
![Preview da Aplicação](images/portfolio-preview.png)
```

---

# 🏗️ Arquitetura da Solução

```text
┌──────────────┐
│ Desenvolvedor│
└──────┬───────┘
       │
       ▼
┌──────────────┐
│   GitHub     │
└──────┬───────┘
       │
       ▼
┌──────────────┐
│GitHub Actions│
└──────┬───────┘
       │
       ▼
┌──────────────┐
│    GHCR      │
└──────┬───────┘
       │
       ▼
┌──────────────┐
│ AWS EC2      │
└──────┬───────┘
       │
       ▼
┌──────────────┐
│ Docker       │
└──────┬───────┘
       │
       ▼
┌──────────────┐
│ Aplicação    │
└──────────────┘
```

---

# 🛠️ Tecnologias Utilizadas

## Cloud

* AWS EC2

## Infraestrutura como Código

* Terraform

## Containerização

* Docker

## CI/CD

* GitHub Actions

## Registry

* GitHub Container Registry (GHCR)

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

### Recursos Provisionados

* AWS EC2
* Security Group
* Regras SSH (22)
* Regras HTTP (80)
* Chave de acesso (Key Pair)

---

# 🔐 Acesso SSH

Após o provisionamento da instância:

```bash
ssh -i ~/.ssh/chave.pem ubuntu@IP_PUBLICO
```

Conceitos praticados:

* Linux
* SSH
* Permissões de arquivos
* Conectividade em Cloud
* Security Groups

---

# 🐳 Containerização da Aplicação

A aplicação foi empacotada utilizando Docker.

## Build da Imagem

```bash
docker build -t portfolio-devops .
```

## Execução Local

```bash
docker run -d -p 80:80 portfolio-devops
```

Benefícios:

* Portabilidade
* Padronização
* Facilidade de Deploy
* Escalabilidade

---

# 📦 GitHub Container Registry (GHCR)

O projeto utiliza o GHCR para armazenamento das imagens Docker.

Fluxo:

```text
GitHub Actions
      │
      ▼
Build Docker
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

## Benefícios

* Controle de versões
* Armazenamento centralizado
* Integração nativa com GitHub
* Facilidade de distribuição

---

# 🔄 Pipeline CI/CD

Sempre que uma alteração é enviada para a branch principal:

```bash
git add .
git commit -m "Atualização da aplicação"
git push origin main
```

O pipeline executa automaticamente:

1. Checkout do código
2. Build da imagem Docker
3. Push para GHCR
4. Atualização da aplicação
5. Reinício do container
6. Publicação da nova versão

---

# 📖 Jornada do Projeto

## Fase 1 - Desenvolvimento da Aplicação

Criação da página pessoal para apresentação profissional com foco em:

* DevOps
* SRE
* Observabilidade

---

## Fase 2 - Infraestrutura como Código

Provisionamento completo da infraestrutura utilizando Terraform.

Aprendizados:

* Providers
* Recursos AWS
* Estado do Terraform
* Automação da infraestrutura

---

## Fase 3 - Configuração da AWS

Criação e configuração de:

* Instância EC2
* Security Groups
* Key Pair
* Regras de acesso

---

## Fase 4 - Conectividade SSH

Desafios enfrentados:

* Timeout na porta 22
* Validação de Security Groups
* Verificação do estado da instância
* Configuração correta da chave PEM

---

## Fase 5 - Containerização

Empacotamento da aplicação utilizando Docker.

Objetivos:

* Padronização
* Portabilidade
* Facilidade de Deploy

---

## Fase 6 - Registro de Imagens

Integração com GitHub Container Registry.

Aprendizados:

* Imagens Docker
* Versionamento
* Pull e Push
* Registro de Containers

---

## Fase 7 - Automação

Criação do pipeline CI/CD utilizando GitHub Actions.

Fluxo:

```text
Push → Build → GHCR → Deploy → Aplicação Atualizada
```

---

## Fase 8 - Publicação

Disponibilização da aplicação para acesso público através da infraestrutura criada.

---

# 🎓 Habilidades Demonstradas

✅ Linux

✅ AWS EC2

✅ Terraform

✅ Docker

✅ Git

✅ GitHub

✅ GitHub Actions

✅ GHCR

✅ SSH

✅ Infraestrutura como Código (IaC)

✅ CI/CD

✅ Deploy Automatizado

✅ Cloud Computing

---

# 📊 Próximas Implementações de Observabilidade

Planejo evoluir este projeto adicionando:

* Prometheus
* Grafana
* Node Exporter
* Alertmanager

Objetivos:

* Coleta de métricas
* Dashboards operacionais
* Alertas automatizados
* Monitoramento de infraestrutura
* Observabilidade da aplicação

---

# 🛣️ Roadmap

## Curto Prazo

* [x] Criar aplicação
* [x] Containerizar aplicação
* [x] Criar infraestrutura AWS
* [x] Configurar CI/CD
* [x] Publicar aplicação

## Médio Prazo

* [ ] Configurar HTTPS
* [ ] Adicionar domínio próprio
* [ ] Configurar Nginx Reverso
* [ ] Implementar Remote State no Terraform

## Longo Prazo

* [ ] Kubernetes
* [ ] Prometheus
* [ ] Grafana
* [ ] Alertmanager
* [ ] Observabilidade Completa
* [ ] GitOps

---

# 👨‍💻 Autor

## Cassiano Marinho

**DevOps | SRE | Observabilidade**

### Tecnologias

* Linux
* AWS
* Docker
* Terraform
* GitHub Actions
* Observabilidade

### Atualmente Estudando

* Kubernetes
* Advanced Terraform State Management
* Observabilidade

---

⭐ Este projeto faz parte da minha jornada de transição e evolução na área de DevOps, SRE e Cloud Computing.
