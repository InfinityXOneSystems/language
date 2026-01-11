# ============================================================
# ♾ DOC EVOLUTION SYSTEM — RESTORE SCRIPT
# PURPOSE: Rehydrate system on ANY machine
# ============================================================

$ErrorActionPreference = "Stop"

Write-Output "`n♾ Restoring Doc Evolution System..."

git clone https://github.com/InfinityXOneSystems/doc_evolution_system.git
Set-Location doc_evolution_system

python -c "
import sys
sys.path.insert(0,'.')
import doc_sync
print('✅ doc_sync package restored')
"

Write-Output "♾ SYSTEM RESTORED — READY FOR OPERATION"
