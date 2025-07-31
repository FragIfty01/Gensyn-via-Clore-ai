<h2 align="center">🚀 Gensyn x Clore AI - Swarm Setup Guide</h2>

---

## 🖥️ System Requirements

| Requirement             | Recommended Specs                           |
|-------------------------|---------------------------------------------|
| **GPU**                 | NVIDIA RTX 3090 / 4090                      |
| **RAM**                 | 25 GB                                       |
| **Internet Speed**      | Download / Upload > 100 Mbps                |
| **Server Region**       | Avoid Russian servers  |

---

## 📝 Signup & SSH Key Setup

1. **Sign Up at Clore AI**  
   👉 [https://clore.ai?ref_id=1pgsgg8q](https://clore.ai?ref_id=1pgsgg8q)

2. **Add SSH Key to Account**  
   🔐 [https://clore.ai/account#keys](https://clore.ai/account#keys)

![How to Add SSH Key](https://github.com/user-attachments/assets/c5a402df-db90-43ca-ad99-500dcf28335e)

---

## ⚙️ Server Setup (Clore Dashboard)

1. Select `Ubuntu Jupyter` as the image.
2. **Delete** extra HTTP ports.
3. **Add** HTTP port: `3000`.
4. Click **Create** to deploy your node.

![Server Setup Screenshot](https://github.com/user-attachments/assets/eb8089fc-923a-4157-8143-450afaf4c2dd)

---

## 🔌 Connect to Your Server via SSH

1. **Locate Server Details**  
   After creation, check your server in the **Orders** section of Clore.  
   Format: `Address : Port`

2. **Connect Using Termius**  
   [Download Termius](https://termius.com/) or use your preferred terminal client.

3. **SSH Connection Command**  
   ```bash
   ssh -p <port> root@<address>


![Image](https://github.com/user-attachments/assets/1f4ab34b-55cd-4604-9f44-29a950c7828d)

e.g : For above case , I connect with ssh -p 1254 root@n1.us.clorecloud.net > Press enter > Ignore pass and select Key to connect > And we are in  !

Video 

https://github.com/user-attachments/assets/3969c1aa-65f6-443a-b088-004afa08448e

🚀 Quick Start (One-Click Install)

Just run the following commands on your Ubuntu machine:

```bash
git clone https://github.com/FragIfty01/Gensyn-via-Clore-ai.git
cd rl-swarm
chmod +x install.sh        
./install.sh
```

Go back to your order and click the http link. Cut extra characters after /.  Check video 👇

https://github.com/user-attachments/assets/29227eff-7402-4a38-976b-c91f48c3d7a5


# You know the rest !



## Error Handling 

[ ./run_rl_swarm.sh: line 160: sudo: command not found ]

```bash
sed -i 's/sudo //g' run_rl_swarm.sh
```

rerun 

![Image](https://github.com/user-attachments/assets/73f6b49a-47f8-4164-ae50-7bbb197a82fb)

If you face this error , **CTRL + C** and run : 

```bash
sed -i -E 's/(startup_timeout: *float *= *)[0-9.]+/\1120/' $(python3 -c "import hivemind.p2p.p2p_daemon as m; print(m.__file__)")
```

Rerun
```bash
./run_rl_swarm.sh
```
# Login page not opening

Stop process with Ctrl + C

```bash
nano modal-login/app/page.tsx
```
Just above that return line, paste the following code (make sure there is one line of space between the pasted code and the return line, and that the indentation matches):,

```bash
   useEffect(() => {
     if (!user && !signerStatus.isInitializing) {
       openAuthModal(); 
     }
   }, [user, signerStatus.isInitializing]);

```

![Image](https://github.com/user-attachments/assets/e2a15569-0cc3-4649-9fbb-c84b1cc1c4bd)

Save it by pressing: 

- Ctrl X + Y

- Enter


Rerun

```bash
./run_rl_swarm.sh
```

## PS1 unbound variable
![Image](https://github.com/user-attachments/assets/9db8a84d-cc60-4b52-bedd-f8e392d2caab)

```bash
sed -i '/\[ -z "\$PS1" \] && return/i : "${PS1:=}"' /root/.bashrc
```

## line 101 / 121 : open : command not found

![Image](https://github.com/user-attachments/assets/26394b1f-7f05-4bf2-870c-a530a4318706)

```bash
sed -i '101s|^|# |' run_rl_swarm.sh
```

![Image](https://github.com/user-attachments/assets/0342658f-c408-4b3d-9f2c-dd4c45b71905)|

```bash
sed -i '121s|^|# |' run_rl_swarm.sh
```
Just comment out the line 

Rerun 


```bash
./run_rl_swarm.sh
```



## Good luck in swarm ❤️


