function coder --wraps='aider --model ollama/qwen2.5-coder:1.5b --no-browser' --description 'alias coder=aider --model ollama/qwen2.5-coder:1.5b --no-browser'
    aider --model ollama/qwen2.5-coder:1.5b --no-browser $argv
end
