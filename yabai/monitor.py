import subprocess
import json

# Run the yabai command and capture the output
output = subprocess.run(["yabai", "-m", "query", "--displays"], capture_output=True, text=True)
output_text = output.stdout.strip()

# Parse the JSON output
output_obj = json.loads(output_text)

# Get the width of the first display
width = output_obj[0]["frame"]["w"]

# Set the top padding based on the width
if width == 3008 or width == 1080:
    subprocess.run(["yabai", "-m", "config", "top_padding", "40"])
    print("Padding set to 34")
else:
    subprocess.run(["yabai", "-m", "config", "top_padding", "1"])
    print("Padding set to 0")

