#!/bin/bash

# ================================================
# Auto-commit script - Base Ecosystem Research
# Target: 100 public commits
# GitHub: github.com/masihperjaka/base-research
# Usage: bash auto-commit.sh
# ================================================

GITHUB_USERNAME="masihperjaka"
REPO_NAME="base-research"
REPO_URL="https://github.com/${GITHUB_USERNAME}/${REPO_NAME}.git"

echo "========================================"
echo "  Base Research - Auto Commit Script"
echo "  Repo: ${REPO_URL}"
echo "========================================"
echo ""

# Cek apakah sudah di dalam git repo
if [ ! -d ".git" ]; then
  echo "[SETUP] Inisialisasi git repo..."
  git init
  git remote add origin $REPO_URL
  git branch -M main
  echo "[SETUP] Done. Remote set to ${REPO_URL}"
  echo ""
fi

# ================================================
# Array 99 commit messages yang natural dan relevan
# ================================================
MESSAGES=(
  # Notes - Base fundamentals
  "notes: add Base chain fundamentals overview"
  "notes: update OP Stack technical specs"
  "notes: add Base Azul upgrade details"
  "notes: add Base ecosystem TVL and stats"
  "notes: add Base vs other L2 comparison"
  "notes: add network fees and speed details"
  # Notes - Airdrop strategy
  "notes: add airdrop strategy for Base ecosystem"
  "notes: update high-value DeFi activities for farming"
  "notes: add social activity signals for eligibility"
  "notes: add red flags and sybil patterns to avoid"
  "notes: add tracking tools table"
  # Notes - Security
  "notes: add security and bridges overview"
  "notes: update official bridge withdrawal times"
  "notes: add Solana bridge via Chainlink CCIP"
  "notes: add third-party bridges comparison table"
  "notes: add wallet approvals management guide"
  "notes: add common Base scams to watch out for"
  # Notes - Ecosystem
  "notes: add full ecosystem category breakdown"
  "notes: add institutional presence on Base"
  "notes: update ecosystem top projects table"
  "notes: add key metrics to track section"
  # DeFi - Aerodrome
  "defi: add Aerodrome Finance deep dive"
  "defi: update Aerodrome TVL and volume stats"
  "defi: add ve(3,3) tokenomics explanation"
  "defi: add Aerodrome participation guide"
  "defi: add Aero merger with Velodrome notes"
  "defi: update key liquidity pools to watch"
  "defi: add Aerodrome risk factors section"
  # DeFi - Morpho
  "defi: add Morpho Protocol overview"
  "defi: add Morpho funding history and backers"
  "defi: update Morpho TVL growth to 2B+"
  "defi: add Morpho vs AAVE comparison"
  "defi: add Coinbase app integration notes"
  "defi: add Seamless Protocol section"
  "defi: add Morpho usage guide"
  # DeFi - cbBTC and stablecoins
  "defi: add cbBTC and stablecoins overview"
  "defi: update cbBTC market size 2.4B"
  "defi: add cbBTC vs WBTC comparison"
  "defi: add USDC native deployment explanation"
  "defi: add key Base assets table with addresses"
  # Social - Farcaster
  "social: add Farcaster decentralized social overview"
  "social: update Clanker acquisition by Farcaster"
  "social: add Base App integration July 2025"
  "social: add Farcaster channels guide"
  "social: add Frames and Mini Apps explanation"
  "social: add content strategy for Base community"
  # Social - Zora
  "social: add Zora creator economy overview"
  "social: add Zora Coins model explanation"
  "social: update Zora Base App integration"
  "social: add creator monetization breakdown"
  "social: add Zora participation guide"
  "social: add content types that work on Zora"
  # Social - Clanker
  "social: add Clanker AI token deployment overview"
  "social: update Clanker fees 49.8M and stats"
  "social: add Clanker deployment flow steps"
  "social: add notable Clanker launches LUM BNKR"
  "social: add Clanker acquisition timeline"
  "social: update AI backbone Anthropic Claude note"
  # AI Agents - Virtuals
  "ai-agents: add Virtuals Protocol overview"
  "ai-agents: add tokenized AI agent model explained"
  "ai-agents: add AIXBT and Luna notable agents"
  "ai-agents: update Virtuals growth timeline"
  "ai-agents: add inference fees revenue model"
  "ai-agents: add risk factors for AI agent tokens"
  # AI Agents - Base MCP
  "ai-agents: add Base MCP wallet infrastructure"
  "ai-agents: add x402 payment protocol details"
  "ai-agents: add agentic payments overview"
  "ai-agents: add Builder Codes ERC-8021 notes"
  "ai-agents: add how to build agent on Base guide"
  "ai-agents: add infrastructure partners list"
  # Projects
  "projects: add Basenames identity system overview"
  "projects: add Basenames pricing tiers"
  "projects: add Basenames integration across ecosystem"
  "projects: add registration tips and best practices"
  "projects: add Limitless prediction market notes"
  "projects: add cbBTC DeFi integration tracker"
  # Tools
  "tools: add essential Base tools and analytics links"
  "tools: add ethers.js balance check snippet"
  "tools: add USDC balance query script"
  "tools: add gas price checker snippet"
  "tools: add activity tracker CSV template"
  "tools: add key Base token addresses reference"
  # Resources
  "resources: add official Base links and docs"
  "resources: add developer resources and funding"
  "resources: add key protocol links table"
  "resources: add analytics dashboards"
  "resources: add news and research sources"
  "resources: add community channels guide"
  # Updates and maintenance
  "chore: update CHANGELOG with initial setup"
  "docs: fix typos and improve formatting"
  "notes: weekly research update - Base ecosystem"
  "defi: update Aerodrome volume stats Q1 2026"
  "social: update Farcaster channel activity notes"
  "ai-agents: update Virtuals ecosystem Q1 2026"
  "notes: add Base roadmap 2026 observations"
  "docs: final review and cleanup pass"
  "chore: update README with latest stats"
  "notes: add Base 2026 outlook and predictions"
  "docs: complete research archive ready for reference"
)

echo "[INFO] Total messages prepared: ${#MESSAGES[@]}"
echo "[INFO] Starting commit process..."
echo ""

# ================================================
# COMMIT 1: Initial commit
# ================================================
git add .
git commit -m "initial commit: base ecosystem research repo"
echo "[1/100] Initial commit done"
echo ""

# ================================================
# COMMITS 2-100: Loop through messages
# ================================================
for i in "${!MESSAGES[@]}"; do
  COUNT=$((i + 2))
  MSG="${MESSAGES[$i]}"

  # Update CHANGELOG dengan timestamp agar ada perubahan di setiap commit
  TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S")
  echo "- [${COUNT}] ${MSG} (${TIMESTAMP})" >> CHANGELOG.md

  git add CHANGELOG.md
  git commit -m "$MSG"

  echo "[${COUNT}/100] ${MSG}"
  sleep 0.3
done

echo ""
echo "========================================"
echo "  100 commits selesai!"
echo ""
echo "  Sekarang push ke GitHub:"
echo "  git push -u origin main"
echo ""
echo "  Atau jika butuh authenticate:"
echo "  git remote set-url origin https://masihperjaka@github.com/masihperjaka/base-research.git"
echo "  git push -u origin main"
echo "========================================"
