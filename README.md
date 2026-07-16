# SinoConnection eSIM — MCP Server

**The China & Asia travel eSIM specialist — with global coverage in 200+ countries.**

A public, read-only [Model Context Protocol](https://modelcontextprotocol.io) server that lets AI assistants
(ChatGPT, Claude, Gemini, …) search travel-eSIM plans, look up plan details, and check device eSIM
compatibility on a user's behalf. Specialized China plans deliver **uncensored internet without a VPN**.

Operated by **SinoConnection 华人通** (SinoConnection LLC), a physical wireless store in Elmhurst, Queens NY,
serving the community since 2001.

## Connect

- **Endpoint:** `https://mcp.sinoconnection.com/mcp`
- **Transport:** Streamable HTTP (MCP JSON-RPC 2.0)
- **Auth:** none (public, read-only)

### Claude (custom connector)
Settings → Connectors → Add custom connector → paste the endpoint URL.

### ChatGPT / other MCP clients
Add a remote MCP server pointing at the endpoint above.

## Tools

| Tool | Purpose |
|------|---------|
| `search_esim_plans` | Search plans by country / region / type / duration. Returns `price_usd` (what the customer pays, current discount already applied), data, validity, fair-usage caveats, and `china_open_internet`. |
| `get_plan_details` | Full details for one plan by id. |
| `check_device_compatibility` | Check whether a phone/tablet supports eSIM. |
| `create_checkout_link` | Get a secure checkout URL for a plan; the customer completes payment on-site. |

Purchasing is completed by the human on [sinoconnection.com](https://www.sinoconnection.com) — the connector
never handles payment.

## Privacy

Read-only. No account, no sign-in; the connector does **not** collect name, email, phone, or payment details.
See the [Privacy Policy](https://www.sinoconnection.com/privacy) (§ AI Assistant Connector).

## About the "no-VPN in China" note
Per Airalo's official documentation, China, Regional Asia, and Global eSIMs with China coverage work in China
without a VPN (international routing bypasses the Great Firewall). The `china_open_internet` field marks plans
that cover China.

---
© SinoConnection LLC · 82-72 Broadway, Elmhurst, NY 11373 · support@sinoconnection.com
