# dig-clock (tty-clock-for-windows)
A terminal clock for windows users.

*Powershell version7 recommended for better experience. If you got powershell 5 make sure you download the digclkv5.ps1 script*

<img width="472" alt="image" src="https://github.com/Priyanshu-1012/dig-clock/assets/39450902/be2c7c93-9a06-423a-9cf9-113e36aaea86">

<br>

<img width="472" alt="Screenshot 2023-06-28 014649" src="https://github.com/Priyanshu-1012/dig-clock/assets/39450902/fad5bb44-a1e8-424a-8230-9529b6a03385">
<br>
<img width="472" alt="image" src="https://github.com/Priyanshu-1012/dig-clock/assets/39450902/63adfb44-74b6-4acc-8a37-d46ec70ae6d3">

<br>
<img width="472" alt="image" src="https://github.com/Priyanshu-1012/dig-clock/assets/39450902/66a2ac5a-81c6-450e-bd6e-5a0fc647de0b">
<br>

### Installation

_Note: wherever the command says ~/Documents you can go on and type your preffered location._

1. Download the script by typing the following command in powershell
   for powershell 7
   ```powershell
   Invoke-WebRequest -Uri "https://raw.githubusercontent.com/Priyanshu-1012/dig-clock/master/digclk.ps1" | Select-Object -ExpandProperty Content | Out-File -FilePath ~/Documents/digclk.ps1 -Encoding UTF8
   ```
   
<details>
<summary>for powershell 5</summary>
<br>
    
```powershell
   Invoke-WebRequest -Uri "https://raw.githubusercontent.com/Priyanshu-1012/dig-clock/master/digclkv5.ps1" | Select-Object -ExpandProperty Content | Out-File -FilePath ~/Documents/digclkv5.ps1 -Encoding UTF8
   ```

</details>
   
   
2. Next, paste the following command on terminal.
   ```powershell
   "function digclk {
    `$scriptPath = Resolve-Path -Path '~/Documents/digclk.ps1'
    & `$scriptPath
   }" | Add-Content $profile
   ```
   
<details>
<summary>for powershell 5</summary>
<br>

   ```powershell
   "function digclk {
    `$scriptPath = Resolve-Path -Path '~/Documents/digclkv5.ps1'
    & `$scriptPath
   }" | Add-Content $profile
   ```
</details>
   
3.Run the command ```pwsh``` on the same terminal to relaunch powershell

4.Now you can try and run ```digclk``` command on terminal.
