# eatzy-langflow

source .venv/bin/activate
pip install -r requirements.txt

python -m langflow run --env-file .env

langflow run

My flow is not a https url, so I have to use ngrok to access to this url in a expo app (developped with react native). `ngrok http 7860` command allows my app to run.

After, change adress in front project to replace by the new ngrok url.
