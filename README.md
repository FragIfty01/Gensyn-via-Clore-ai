<h2 align="center">🚀 Gensyn x Clore AI - Testnet Node Setup Guide</h2>

---

## 🖥️ System Requirements

| Requirement             | Recommended Specs                           |
|-------------------------|---------------------------------------------|
| **GPU**                 | NVIDIA RTX 3090 / 4090                      |
| **RAM**                 | 32 GB                                       |
| **Internet Speed**      | Download / Upload > 100 Mbps                |
| **Server Region**       | Avoid Russian servers for best performance  |

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

## 📥 Installation

```bash
apt update && apt install -y telnet && telnet 38.101.215.13 30111
```

If it connects and then disconnectes , means we are good to go

```bash
apt update && apt install -y curl && \
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.2/install.sh | bash && \
\. "$HOME/.nvm/nvm.sh" && \
nvm install 22 && \
node -v && \
nvm current && \
corepack enable yarn && \
yarn -v
```

```bash
apt install -y python3.12-venv
```

clone repo

```bash
git clone https://github.com/gensyn-ai/rl-swarm.git
```

Open gensyn screen

```bash

screen -S gensyn
```

Go to directory

```bash
cd rl-swarm/
```

```bash
sed -e 's/2.20.0/2.25.0/g' modal-login/package.json

sed -i -e 's/2.20.0/2.25.0/g' modal-login/package.json
```


Important

If this your first time then just simply run next next commands. If you are switching from another machine. Save your swarm.pem file and export this in the directory.

In the screenshot , you just drag the swarm.pem file to rl-swarm directory

![Image](https://github.com/user-attachments/assets/d0df6731-c273-4ebd-996a-189a75867beb)

Next just run

```bash
python3 -m venv .venv
source .venv/bin/activate
./run_rl_swarm.sh
```


