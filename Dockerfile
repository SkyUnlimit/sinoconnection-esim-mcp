# Thin stdio <-> remote bridge so Glama (and any stdio-only client) can introspect
# the hosted SinoConnection Travel eSIM MCP server.
#
# The production server is a hosted Streamable-HTTP endpoint (https://mcp.sinoconnection.com/mcp).
# This container exposes that same server over stdio via mcp-remote, letting Glama's
# introspection checks start the server and list its tools.
FROM node:20-alpine
RUN npm install -g mcp-remote@latest
ENTRYPOINT ["mcp-remote", "https://mcp.sinoconnection.com/mcp"]
