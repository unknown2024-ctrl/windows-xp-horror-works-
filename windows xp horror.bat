import os
import ctypes
import time
import random
import winsound
import pyautogui
import tkinter as tk
from tkinter import messagebox


winsound.PlaySound("SystemExit", winsound.SND_ALIAS)

# Function to make screen glitch
def glitch_screen():
    for _ in range(10):
        x, y = random.randint(0, 1920), random.randint(0, 1080)
        pyautogui.moveTo(x, y, duration=0.2)
        pyautogui.press('capslock')
        time.sleep(0.1)

def show_error():
    messages = [
        "A fatal error has occurred. Run?",
        "You cannot escape.",
        "Your system is infected.",
        "The system is watching you...",
        "Who turned off the lights?"
    ]
    root = tk.Tk()
    root.withdraw()
    messagebox.showerror("Windows XP Fatal Error", random.choice(messages))


def change_wallpaper():
    wallpaper_path = "C:\\Windows\\horror_xp_wallpaper.jpg"
    ctypes.windll.user32.SystemParametersInfoW(20, 0, wallpaper_path, 3)


def haunt_system():
    for _ in range(5):
        x, y = random.randint(0, 1920), random.randint(0, 1080)
        pyautogui.moveTo(x, y, duration=0.2)
        pyautogui.hotkey("win", "d")  # Minimize everything
        time.sleep(1)
        os.system("taskmgr")  # Open Task Manager
        time.sleep(2)
        os.system("notepad")  # Open Notepad
        time.sleep(3)
        show_error()


time.sleep(3)
glitch_screen()
change_wallpaper()
haunt_system()
