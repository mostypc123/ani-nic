# ani-nic

An offline Arch Linux installer.

---

To install ani-nic, you simply boot the .iso file and follow the standard installation instructions, but instead of using `pacstrap`, you run this command, assuming your system is mounted at `/mnt`:

```
tar -I zstd -xf /root.tar.zst -C /mnt --strip-components=1
```

<img width="1263" height="781" alt="image" src="https://github.com/user-attachments/assets/02f6b05d-864a-4019-9779-f41aea1ab0ce" />

# WTF is that name?

Means "not even nothing" in my native language, Slovak.
