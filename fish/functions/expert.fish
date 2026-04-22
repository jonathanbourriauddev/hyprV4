function expert --wraps='aider --model ollama/qwen2.5-coder:7b --no-browser' --description 'alias expert=aider --model ollama/qwen2.5-coder:7b --no-browser'
    aider --model ollama/qwen2.5-coder:7b --no-browser $argv
end
