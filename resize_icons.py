from PIL import Image
import os
import shutil

img_path = "/home/zuki/Downloads/main-btn-pre-arrow-c.png"
res_dir = "/home/zuki/Desktop/Devastate-Copy/app/src/main/res"

if not os.path.exists(img_path):
    print("Image not found")
    exit(1)

sizes = {
    "mdpi": 48,
    "hdpi": 72,
    "xhdpi": 96,
    "xxhdpi": 144,
    "xxxhdpi": 192
}

img = Image.open(img_path)

for dpi, size in sizes.items():
    folder = os.path.join(res_dir, f"mipmap-{dpi}")
    if not os.path.exists(folder):
        os.makedirs(folder)
    
    resized = img.resize((size, size), Image.Resampling.LANCZOS)
    resized.save(os.path.join(folder, "ic_launcher.png"))
    resized.save(os.path.join(folder, "ic_launcher_round.png"))
    resized.save(os.path.join(folder, "ic_launcher_foreground.png"))
    resized.save(os.path.join(folder, "ic_launcher_background.png"))
    print(f"Saved for {dpi} ({size}x{size})")

# Remove anydpi-v26 since the bash script might have failed if it existed, but it did remove it
anydpi = os.path.join(res_dir, "mipmap-anydpi-v26")
if os.path.exists(anydpi):
    shutil.rmtree(anydpi)

print("Done")
