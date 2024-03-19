# Monero
Monero Wallet + Mining

### XMR-Wallet:
```
48SbFrFAitEExDSXJ24vz3aYRSsp16JYDY6tFDdAAp9v9GbGnSwbuWfYKjdCpUcPheaepBwPqVYDoFUz6bvkgCN3CBGRBcF
```
[MyMonero Wallet](https://wallet.mymonero.com)

### Mining-Pools:
[Moneroocean](https://moneroocean.stream)

[Nanopool](https://xmr.nanopool.org)

### Web-Miner:
[Crypto-Webminer-Moneroocean](https://www.moneroocean.crypto-webminer.com/moneroocean.html)

[Crypto-Webminer-Monero](https://www.monero.crypto-webminer.com/monero.html)

[Crypto-Webminer-poc](https://www.monerorandomx.crypto-webminer.com/monerorandomx.html)

### Mining-Scripts:
[xmrig](https://github.com/xmrig/xmrig)

### Instant-Commands:
Installation via moneroocean

```bash
curl -s -L https://raw.githubusercontent.com/MoneroOcean/xmrig_setup/master/setup_moneroocean_miner.sh | bash -s 48SbFrFAitEExDSXJ24vz3aYRSsp16JYDY6tFDdAAp9v9GbGnSwbuWfYKjdCpUcPheaepBwPqVYDoFUz6bvkgCN3CBGRBcF
```

```powershell
powershell -Command "$wc = New-Object System.Net.WebClient; $tempfile = [System.IO.Path]::GetTempFileName(); $tempfile += '.bat'; $wc.DownloadFile('https://raw.githubusercontent.com/MoneroOcean/xmrig_setup/master/setup_moneroocean_miner.bat', $tempfile); & $tempfile 48SbFrFAitEExDSXJ24vz3aYRSsp16JYDY6tFDdAAp9v9GbGnSwbuWfYKjdCpUcPheaepBwPqVYDoFUz6bvkgCN3CBGRBcF; Remove-Item -Force $tempfile"
```

Standard setup
```bash
./xmrig -o gulf.moneroocean.stream:10128 -u 48SbFrFAitEExDSXJ24vz3aYRSsp16JYDY6tFDdAAp9v9GbGnSwbuWfYKjdCpUcPheaepBwPqVYDoFUz6bvkgCN3CBGRBcF -p name
```

Background setup
```bash
screen ./xmrig -o gulf.moneroocean.stream:10128 -u 48SbFrFAitEExDSXJ24vz3aYRSsp16JYDY6tFDdAAp9v9GbGnSwbuWfYKjdCpUcPheaepBwPqVYDoFUz6bvkgCN3CBGRBcF -p name
STRG + A
STRG + D
screen -r
```

[xmrig(moneroocean)](https://github.com/MoneroOcean/xmrig)

[Ducky-Scripts](./Ducky-Scripts/)

[Bunny-Scripts](./Bunny-Scripts/)

### Misc:
[Official Website](https://www.getmonero.org)
