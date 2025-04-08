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

![Add SSH Key](https://github.com/user-attachments/assets/c5a402df-db90-43ca-ad99-500dcf28335e)

---

## ⚙️ Server Setup (Clore Dashboard)

1. Select `Ubuntu Jupyter` as the image.
2. **Delete** extra HTTP ports.
3. **Add** HTTP port: `3000`.
4. Click **Create** to deploy your node.

![Server Setup Screenshot](https://github.com/user-attachments/assets/eb8089fc-923a-4157-8143-450afaf4c2dd)

---

## 🔌 Connect to Your Server via SSH

1. After creation, check the **Orders** section in Clore.
2. You'll see your server like this: `Address : Port`
3. Open [Termius](https://termius.com/) (or any terminal).
4. Connect using:

```bash
ssh -p <port> root@<address>



Signup : https://clore.ai?ref_id=1pgsgg8q

Add SSH key : https://clore.ai/account#keys

https://github.com/user-attachments/assets/c5a402df-db90-43ca-ad99-500dcf28335e


Server Setup :

- Select Ubuntu Jupyter as image
- Delete extra HTTP port
- Add 3000 HTTP port 
- Create 

https://github.com/user-attachments/assets/eb8089fc-923a-4157-8143-450afaf4c2dd


Connecting to Server :

Your rented server will show in orders. Your server will be shown as [ Address : Port ]

Go to termius and Type ssh -p port root@address

![Image](https://github.com/user-attachments/assets/1f4ab34b-55cd-4604-9f44-29a950c7828d)

e.g : For above case , I connect with ssh -p 1254 root@n1.us.clorecloud.net > Press enter > Ignore pass and select Key to connect > And we are in  !

Video 

https://github.com/user-attachments/assets/3969c1aa-65f6-443a-b088-004afa08448e

Commands :

"apt update && apt install -y telnet && telnet 38.101.215.13 30111"



