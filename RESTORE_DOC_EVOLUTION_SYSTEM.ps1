# ============================================================
# ♾ DOC EVOLUTION SYSTEM — RESTORE SCRIPT
# PURPOSE: Rehydrate system on ANY machine
# ============================================================

$ErrorActionPreference = "Stop"

Write-Host "`n♾ Restoring Doc Evolution System..." -ForegroundColor Cyan

git clone https://github.com/InfinityXOneSystems/doc_evolution_system.git
cd doc_evolution_system

python -c "
import sys
sys.path.insert(0,'.')
import doc_sync
print('✅ doc_sync package restored')
"

Write-Host "♾ SYSTEM RESTORED — READY FOR OPERATION" -ForegroundColor Green
