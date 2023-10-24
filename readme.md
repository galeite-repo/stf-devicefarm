




<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/othneildrew/Best-README-Template">
    <img src="https://avatars2.githubusercontent.com/u/12196621?s=400&amp;v=4" alt="Logo" width="80" height="80">
  </a>

  <h3 align="center">Smartphone Test Farm</h3>

  <p align="center">
    Projeto de estudo para uso do STF (Smartphone Test Farm: STF)
    <br />
  </p>
</div>




<!-- ABOUT THE PROJECT -->
## Sobre o Projeto
Resolvi criar este projeto para melhorar a disponibilidade e maior desempenho na execução de testes automatizados em dispositivos móveis.




### Construído com

Para executar este projeto foi necessário algumas tecnologias conforme abaixo:
<br>
* **Docker**
* **Node**
* **RethinkDB**
* **Appium**
* **Robotframework**
* **Android Debug Bridge (adb)**



<!-- GETTING STARTED -->
## Começando

Para obter uma cópia local instalada e funcionando, siga estas etapas simples de exemplo.

### Banco de Dados RethinkDB

#### Faça o download e instale o banco de dados rethinkdb
  ```sh
  # Download the public key.
  wget -qO- https://download.rethinkdb.com/repository/raw/pubkey.gpg | \
    sudo gpg --dearmor -o /usr/share/keyrings/rethinkdb-archive-keyrings.gpg

  # Add the repository.
echo "deb [signed-by=/usr/share/keyrings/rethinkdb-archive-keyrings.gpg] https://download.rethinkdb.com/repository/ubuntu-$(lsb_release -cs) $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/rethinkdb.list
  
sudo apt-get update
sudo apt-get install rethinkdb

# Check installation.
rethinkdb --version
  ```
Referência: [rethinkdb oficial](https://rethinkdb.com/)


  #### Precisa dar permissão para acessar /usr/local/lib e /usr/local/bin, ao usuário atual:
  ```
sudo chown -R $USER /usr/local/lib
sudo chown -R $USER /usr/local/bin
  ```

### Instalando o DeviceFarmer

   ```sh
   npm install -g @devicefarmer/stf
   ```


<!-- USAGE EXAMPLES -->
## Usando o DeviceFarm

#### Agora iremos colocar todos os serviços para funcionar e conectar o emulador.

### Iniciando o RethinkFB 
Execute rethinkdb como um processo em segundo plano (crie um diretório separado para armazenar arquivos de dados e execute o comando abaixo dentro desse diretório para que possamos reutilizá-lo em caso de reinicialização)

   ```sh
   nohup rethinkdb &
   ```
### Iniciando o STF 
Execute o serviço STF em segundo plano em uma determinada interface (substitua o ip para se adequar à interface do seu servidor)

   ```sh
   nohup stf local --public-ip 192.168.0.170 &
   ```

A porta padrão do painel STF é 7100 e pode acessar-lo no navegador usando url

   ```js
   http://192.168.0.170:7100
   ```



## Iniciando o Emulador
A imagem utilizada foi [budtmo/docker-android](https://github.com/budtmo/docker-android) para mais informações acesse o link.

   ```sh
   #Emulador 1
   docker run -d --network host -e EMULATOR_DEVICE="Samsung Galaxy S10" --device /dev/kvm --name emulator-1 budtmo/docker-android:emulator_9.0

#Emulador 2
  docker run -d --network host -e EMULATOR_DEVICE="Samsung Galaxy S7" --device /dev/kvm --name emulator-2 budtmo/docker-android:emulator_9.0

   ```



<!-- CONTRIBUTING -->
## Considerações

Com isto será possível se conectar remotamente ao emuladores ou dispositivos reais conectados ao seu servidor.
<br>
Você pode desenvolver suas automações com qualquer outra linguagem e executar normalmente se conectando ao emulador remoto.


<!-- CONTACT -->
## Contato



[![LinkedIn][linkedin]][linkedin-url]
[![LinkedIn][site]][site-url]




[linkedin]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://www.linkedin.com/in/-gabriel-leite/


[site]: https://img.shields.io/badge/Galeite-grey?style=for-the-badge&logo=javascript
[site-url]: https://www.galeite.com
