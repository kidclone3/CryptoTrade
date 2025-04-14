import google.generativeai as genai
import os
import sys

# --- Configuration ---
# Load the API key from the environment variable
try:
    # Option 1: Use os.getenv (recommended)
    api_key = os.getenv("GOOGLE_API_KEY")
    if not api_key:
        raise ValueError("GOOGLE_API_KEY environment variable not set.")

    # Option 2: Hardcode (less secure, use only for quick tests if needed)
    # api_key = "YOUR_API_KEY_HERE" # <-- Replace if not using env var

    genai.configure(api_key=api_key)

except ValueError as e:
    print(f"Error: {e}")
    print("Please set the GOOGLE_API_KEY environment variable.")
    sys.exit(1) # Exit if API key is not configured
except Exception as e:
    print(f"An unexpected error occurred during configuration: {e}")
    sys.exit(1)


# --- Model Selection ---
# Use the recommended model name for Gemini 1.5 Pro
# Using "-latest" ensures you get the most recent stable version.
model_name = "gemini-2.5-pro-exp-03-25"

# --- Initialize the Model ---
try:
    model = genai.GenerativeModel(model_name)
    print(f"Successfully initialized model: {model_name}")
except Exception as e:
    print(f"Error initializing the model: {e}")
    sys.exit(1)


# --- Define your Prompt ---
prompt = "Explain the concept of zero-shot learning in machine learning as if you were explaining it to a curious high school student."


# --- Generate Content ---
print("\nSending prompt to Gemini...")
try:
    # Simple text generation
    response = model.generate_content(prompt)

    # --- Display the Response ---
    print("\n--- Gemini 1.5 Pro Response ---")
    # Access the generated text
    print(response.text)
    print("-----------------------------")

    # You can also inspect other parts of the response if needed
    # print(response.prompt_feedback)
    # print(response.candidates)

except Exception as e:
    print(f"\nAn error occurred during content generation: {e}")

print("\nScript finished.")