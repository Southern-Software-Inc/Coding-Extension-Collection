# ACE Engineering Protocol (v19.0)

## 1. Security Guardrails (Fewer Errors)
- **Zero Secrets**: Never hardcode or generate credentials.
- **Sanitization**: All inputs must be sanitized to prevent SQLi/XSS.

## 2. Performance & Complexity (Quality)
- **Big O Targets**: Prefer O(1) or O(n). Avoid O(n^2) in critical paths.
- **IO Efficiency**: Batch all database and network requests.

## 3. Resource Efficiency (Cost)
- **Token Budget**: Max 12,000 tokens per payload.
- **Compute Cost**: Optimize for the target environment (e.g., Lambda memory limits).

## 4. Reliability (Better Software)
- **Pulse Check**: Do not build on a broken (RED) build.
- **Validation**: All context must pass the structural integrity check.