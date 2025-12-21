# ACE-EngOps (v20.0)

## The Autonomous Context Engine (ACE)

**ACE-EngOps** is a high-fidelity, self-evolving engineering substrate designed to bridge the gap between raw LLM reasoning and production reality. It is a recursive, multi-layered system of specialized agents that optimize context for **maximum quality, minimum cost, and zero-drift architectural integrity.**

---

## 🚀 Core Pillars

* **Better Software**: Type-safe, flow-aware, and architecturally compliant code generation.
* **Faster Delivery**: Parallelized context synthesis and predictive dependency pre-fetching.
* **Lower Cost**: Aggressive semantic pruning and infrastructure cost attribution.
* **Fewer Errors**: Pre-flight structural validation and post-flight logic verification.

---

## 🏗️ System Architecture

The system operates as a recursive chain of orchestrators, each adding a layer of intelligence:

| Version   | Layer          | Focus                                            |
|:--------- |:-------------- |:------------------------------------------------ |
| **v20.0** | **EngOps**     | Behavioral Traces, Blast Radius, Cloud Cost      |
| **v19.0** | **Architect**  | Security Sentinel, Perf Prediction, Compliance   |
| **v18.0** | **Autonomic**  | Self-Healing, Build Pulse, Test Coverage         |
| **v17.0** | **Synapse**    | Predictive Oracle, Semantic Linting, Tiering     |
| **v16.0** | **Nexus**      | Verification, Caching, Blueprints                |
| **v15.0** | **Engine**     | Call-Graphs, Impact Zones, Dependency Resolution |
| **v14.0** | **Production** | Type Injection, Token Pruning, Validation        |

---

## 🛠️ Installation

### Prerequisites

* **Bash Environment** (Linux, macOS, or Git Bash on Windows).
* **ripgrep (`rg`)**: Required for high-speed semantic discovery.
* **Gemini CLI**: For slash-command integration.

### Setup

1. **Clone and Permission**:
   
   ```bash
   chmod +x *.sh agents/*.sh
   ```
2. **Initialize Directories**:
   
   ```bash
   mkdir -p src logs .ace_engops .ace_architect .ace_autonomic .ace_synapse .ace_nexus .ace_engine .ace_production
   ```
3. **Configure Mesh**:
   Update `.ace_nexus/index/mesh.json` with paths to your microservices for cross-repo awareness.

---

## ⌨️ Slash Commands (Gemini CLI)

ACE-EngOps integrates directly into your workflow via modular `.toml` slash commands:

* **`/optimize [task]`**: Triggers the full v20.0 pipeline. Synthesizes context, checks security, and maps the blast radius.
* **`/heal`**: Diagnoses build failures. Parses `logs/build.log` and provides a "Healing Context" to fix errors.
* **`/cost [task]`**: Attributes infrastructure spend to the specific module and optimizes token usage.
* **`/audit`**: Performs a deep-scan for secrets (Sentinel) and policy violations (Compliance).
* **`/verify`**: Validates the last code block against project types and architectural blueprints.
* **`/status`**: Displays system vitals, including build status and test coverage.

---

## 🧠 Specialized Agents

The system leverages over 30 specialized agents, including:

* **The Oracle**: Predicts which files you'll need next based on current intent.
* **The Sentinel**: Prevents secrets from leaking into context and identifies OWASP risks.
* **The Shadow-Tracer**: Matches new code against production behavioral baselines.
* **The Blast-Radius Mapper**: Calculates the "Ripple Effect" of a change across the architecture.
* **The Type-Injector**: Ensures the LLM has the exact data shapes required for the task.

---

## 📜 Governance: `ACE.md`

All agents and LLM interactions are governed by `ACE.md`. This file defines the "Source of Truth" for:

* **Coding Patterns**: Repository, Service, and Factory standards.
* **Quality Gates**: Structural integrity and temporal alignment rules.
* **Security Protocols**: Zero-secret and input-sanitization mandates.

---

## 🔄 The Feedback Loop

ACE-EngOps is **Autopoietic**. Through the `learn` and `reward` hooks, the system records successful implementation patterns and user feedback to refine its own "Global Brain," ensuring that the engine becomes more accurate the more you use it.

---

**Version**: 20.0.0  
**Author**: ACE-Engine-Core  
**Protocol**: ACE.md  
**Status**: Operational / Self-Healing Enabled
