REMOTE_GIT_URL="https://raw.githubusercontent.com/azdolinski/rules-of-coding/refs/heads/main/claude-code-agents/"
LOCAL_DIR="./claude-code-agents"
mkdir -p "$LOCAL_DIR"
AGENT_FILES=(
    "architect-planner.md"
    "code-engineer.md"
    "coding-teacher.md"
    "debug-specialist.md"
    "devops-automation.md"
    "documentation-writer.md"
    "google-genai-developer.md"
    "jest-test-engineer.md"
    "merge-conflict-resolver.md"
    "mode-writer.md"
    "project-research.md"
    "security-auditor.md"
    "systematic-debugger.md"
    "technical-advisor.md"
    "user-story-creator.md"
    "workflow-orchestrator.md"
)
for FILE in "${AGENT_FILES[@]}"; do
    HTTP_RESPONSE=$(curl -s -w "%{http_code}" "${REMOTE_GIT_URL}${FILE}" -o "${LOCAL_DIR}/${FILE}")
    if [ "$HTTP_RESPONSE" == "200" ]; then
        echo "✓ Successfully downloaded $FILE"
    else
        echo "✗ Failed to download $FILE (HTTP status: $HTTP_RESPONSE)"
        rm "${LOCAL_DIR}/${FILE}"
    fi
done

echo "All done!"
exit 0
