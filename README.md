# 🎨 Engaged i3wm - Distribuição Customizada para Desenvolvimento e QA

Uma distribuição Linux baseada em **Manjaro i3wm**, otimizada para desenvolvimento **Node.js** e **QA/Debugging** de interfaces. Combina produtividade, estética e ferramentas especializadas.

![Status](https://img.shields.io/badge/status-active-brightgreen)
![License](https://img.shields.io/badge/license-MIT-blue)
![Manjaro](https://img.shields.io/badge/manjaro-i3wm-FF1493)

---

## 🎯 O que é?

A **Engaged i3wm** é uma distribuição customizada com:

- ✅ **i3wm**: Window Manager lightweight e produtivo
- ✅ **Node.js LTS**: Desenvolvimento e tooling
- ✅ **Dev Tools**: VS Code, Neovim, DevTools browsers
- ✅ **Docker & Git**: Essenciais para desenvolvimento
- ✅ **Tema Engaged**: Roxo, Vermelho e Preto (cores corporativas)
- ✅ **Configuração QA**: Ferramentas para debugging de interface

---

## 🎨 Paleta de Cores

| Cor | Hex | Uso |
|-----|-----|-----|
| **Roxo (Primary)** | `#663399` | Accent, highlights |
| **Vermelho (Secondary)** | `#D32F2F` | Errors, alerts |
| **Preto (Background)** | `#1a1a1a` | Base, terminal bg |
| **Branco (Text)** | `#FFFFFF` | Foreground text |

---

## 📋 Tech Stack

| Componente | Tecnologia | Versão |
|-----------|-----------|--------|
| **Base OS** | Manjaro Linux | i3wm Edition |
| **WM** | i3wm | Latest |
| **Status Bar** | Polybar | v3.7+ |
| **Launcher** | Rofi | v1.7+ |
| **Terminal** | Alacritty | Latest |
| **Shell** | Zsh + Oh My Zsh | Latest |
| **Node.js** | Node LTS | 20.x+ |
| **Editor** | Neovim + VS Code | Latest |
| **Runtime** | Docker | Latest |
| **VCS** | Git | Latest |

---

## 🚀 Instalação Rápida

### Pré-requisitos
- Manjaro com i3wm já instalado
- Acesso sudo
- Conexão internet

### Instalação Automática

```bash
git clone https://github.com/gustavo-szesz/engaged-i3wm.git
cd engaged-i3wm
chmod +x scripts/*.sh
bash scripts/install.sh
```

### Instalação Manual

Veja [INSTALACAO.md](docs/INSTALACAO.md) para guia passo-a-passo.

---

## 📖 Documentação

- 📘 [INSTALACAO.md](docs/INSTALACAO.md) - Guia completo de instalação
- 🔧 [CONFIGURACAO.md](docs/CONFIGURACAO.md) - Como customizar
- ⌨️ [KEYBINDINGS.md](docs/KEYBINDINGS.md) - Referência de atalhos
- 🐛 [TROUBLESHOOTING.md](docs/TROUBLESHOOTING.md) - Solução de problemas
- 🤝 [CONTRIBUTING.md](.github/CONTRIBUTING.md) - Como contribuir

---

## ⌨️ Keybindings Principais

| Atalho | Ação |
|--------|------|
| `Super + Enter` | Abrir terminal (Alacritty) |
| `Super + D` | Abrir Rofi (launcher) |
| `Super + Shift + Q` | Fechar janela |
| `Super + V` | Split vertical |
| `Super + H` | Split horizontal |
| `Super + 1-9` | Navegar workspaces |
| `Super + Shift + 1-9` | Mover para workspace |
| `Super + F11` | Fullscreen |
| `Super + Shift + R` | Reload i3 config |
| `Super + Shift + Restart` | Restart i3 |

Veja [KEYBINDINGS.md](docs/KEYBINDINGS.md) para lista completa.

---

## 🔧 Estrutura do Repositório

```
engaged-i3wm/
├── 📁 config/              # Arquivos de configuração
│   ├── i3/                # i3wm config
│   ├── polybar/           # Status bar
│   ├── rofi/              # Launcher
│   ├── alacritty/         # Terminal
│   ├── zsh/               # Zsh config
│   └── themes/            # Paleta de cores
├── 📁 scripts/             # Scripts de instalação
│   ├── install.sh         # Instalador principal
│   ├── setup-nodejs.sh    # Setup Node.js
│   ├── setup-devtools.sh  # Setup ferramentas QA
│   └── setup-colors.sh    # Aplicar tema
├── 📁 docs/                # Documentação
│   ├── INSTALACAO.md
│   ├── CONFIGURACAO.md
│   ├── KEYBINDINGS.md
│   └── TROUBLESHOOTING.md
├── 📁 wallpapers/          # Imagens de fundo
├── 📁 .github/             # Templates e CI/CD
├── LICENSE                 # MIT License
└── README.md               # Este arquivo
```

---

## 🎯 Use Cases

### 👨‍💻 Desenvolvedor Node.js
- Terminal com Zsh otimizado
- VS Code + Neovim preconfigurados
- Docker integrado
- Git pronto para uso

### 🐛 QA / Tester de Interface
- DevTools de browsers (Chrome, Firefox)
- Screenshot tools
- Screen recording
- Ferramentas de inspeção de elementos

### 🚀 DevOps
- Docker preinstalado
- Terminal otimizado
- Git + SSH configurado
- Monitoramento de recursos

---

## 💡 Features

- 🎨 **Tema Visual Engaged**: Roxo, Vermelho, Preto
- ⚡ **Performance**: Lightweight, rápido, responsivo
- 🔌 **Extensível**: Fácil customizar e adicionar ferramentas
- 📚 **Bem Documentado**: Guias passo-a-passo
- 🤝 **Community**: Aberto para contribuições
- 🔐 **Seguro**: SSH + GPG preconfigurados

---

## 🤝 Contribuindo

Quer melhorar? Veja [CONTRIBUTING.md](.github/CONTRIBUTING.md) para saber como.

```bash
# Fork, Clone, Branch
git checkout -b feature/sua-feature
git commit -am 'Add: sua feature'
git push origin feature/sua-feature
# Abra um Pull Request!
```

---

## 📞 Suporte

- 🐛 [Issues](https://github.com/gustavo-szesz/engaged-i3wm/issues) - Reportar bugs
- 💬 [Discussions](https://github.com/gustavo-szesz/engaged-i3wm/discussions) - Perguntas e discussões
- 📧 gustavo-szesz@github.com

---

## 📜 License

MIT License - Veja [LICENSE](LICENSE) para detalhes.

---

## 🙏 Agradecimentos

- **Manjaro Team** - Pela excelente distro
- **i3wm Community** - Pelo WM incrível
- **Engaged.com.br** - Pela visão e suporte

---

## 🗺️ Roadmap

- [ ] v1.0.0 - Primeira release estável
- [ ] Instalador gráfico
- [ ] Theme switcher
- [ ] Documentação em Português + English
- [ ] Comunidade e suporte
- [ ] ISO customizada pronta para usar

---

**Made with ❤️ by [Gustavo Szesz](https://github.com/gustavo-szesz) for [Engaged](https://www.engaged.com.br/)**
