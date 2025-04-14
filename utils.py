import os
import sys
from typing import Literal
# from openai import OpenAI
from google import genai
from google.genai.types import GenerateContentConfigOrDict

# api_key = os.getenv('OPENAI_API_KEY')
# api_base = os.getenv('OPENAI_API_BASE')
# client = OpenAI(api_key=api_key, base_url=api_base)
# client = OpenAI(api_key=api_key)
from dotenv import load_dotenv

load_dotenv(".env")
api_key = os.getenv('GOOGLE_API_KEY')


from tenacity import (
    retry,
    stop_after_attempt, # type: ignore
    wait_random_exponential, # type: ignore
)


client = genai.Client(api_key=api_key, http_options={'api_version': 'v1alpha'})

Model = Literal["gemini-2.0-flash", "gemini-2.0-pro", "gemma-3-27b-it", "gemini-2.5-pro-exp-03-25"]
# model = 'gemini-2.0-flash'

@retry(wait=wait_random_exponential(min=1, max=60), stop=stop_after_attempt(6), reraise=True, before_sleep=lambda retry_state: print(f"Retrying {retry_state.attempt_number} failed with error {retry_state.outcome.exception()}"))
def get_chat(prompt, model, seed, temperature=0.0, max_tokens=256, stop_strs=None, is_batched=False, debug=False):
    messages = [
        {
            "role": "user",
            "content": prompt
        }
    ]
    config = {
        "temperature": temperature,
        "max_output_tokens": max_tokens,
        "stop_sequences": stop_strs if stop_strs else [],
        "seed": seed,
    }
    chat = client.chats.create(model=model, config=config)
    messages = chat.send_message(prompt)
    if debug:
        print(messages)
    return messages.text


if __name__ == "__main__":
    # print(client.api_key[-4:])

    # response = client.chat.completions.create(
    # model="gpt-3.5-turbo",
    # messages=[
    #     {"role": "system", "content": "You are a poetic assistant, skilled in explaining complex programming concepts with creative flair."},
    #     {"role": "user", "content": "Compose a poem that explains the concept of recursion in programming."}
    # ]
    # )

    # print(response.choices[0].message.content)

    response = get_chat("You are a poetic assistant, skilled in explaining complex programming concepts with creative flair. Compose a poem that explains the concept of recursion in programming.", "gemini-2.5-pro-exp-03-25", 6216, debug=False)
    print(response)
