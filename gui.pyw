import os
import tkinter as tk

def toggle_autoupdate():
    os.system(f'start "" "%APPDATA%\\CubeOS\\Scripts\\autoupdate_toggle.bat"')

def toggle_autostart():
    os.system(f'start "" "%APPDATA%\\CubeOS\\Scripts\\autostart_toggle.bat"')

def Update():
    os.system(f'start "" "%APPDATA%\\CubeOS\\Scripts\\update.bat"')

def Start():
    os.system(f'start "" "%APPDATA%\\CubeOS\\Scripts\\start.bat"')

root = tk.Tk()
root.title("Cube OS Settings")
root.geometry("200x200")

tk.Label(root, text="Cube OS Settings", font=("Arial", 14)).pack(pady=10)
tk.Button(root, text="Toggle Auto-Update", command=toggle_autoupdate, width=20).pack(pady=5)
tk.Button(root, text="Toggle Auto-Start", command=toggle_autostart, width=20).pack(pady=5)
tk.Button(root, text="Update", command=Update, width=20).pack(pady=5)
tk.Button(root, text="Start", command=Start, width=20).pack(pady=5)

root.mainloop()