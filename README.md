
# Nobuzz Weather App
PT/BR 🇧🇷
- App produzido para equipe da petroplus. A aplicação de dados climáticos consiste em consultar dados que foram passados a um JSON com as informações que disponibilizadas para o backend.
- O app faz a consulta ao endpoint e recebe as informações. É mostrado uma lista com os estados com uma imagem representando a condição climática do local.
- Ao escolher um estado, o usuário é redirecionado a tela de next_forecast que mostra o dia que é pego dinamicamente e dois widgets. Um mostra a previsão da manhã dos próximos dias e o outro mostra a condição atual.
- A tela de detalhes do dia expande e mostra a previsão dos diferentes períodos do dia: Manhã, Tarde e Noite. Além de também mostrar em um carousel todos os estados na parte inferior em uma versão menor.
- Atela de feedback é mostrada quando o usuário clica em algum dos widgets manhã, tarde e noite.  

## Stack utilizada

**Front-end:** Dart v3.1.4 e Flutter v3.13.8

**Pacotes utilizados:** [Provider](https://pub.dev/packages/provider), [DIO](https://pub.dev/packages/dio), [Logger](https://pub.dev/packages/logger), [Intl](https://pub.dev/packages/intl)

State management: Provider + ChangeNotifier

API requests: DIO

## Melhorias

PT/BR 🇧🇷
- Alterar o código de modo que as informações sejam dinâmicas de acordo com dia real da semana
- [x] Na tela onde tem a previsão dos próximos 7 dias, organizar para que o primeiro dia seja o dia atual.
- [x] Testar em telas de tamanhos diferentes para verficar se não existem overflows de pixels nos widgets.
- [x] Como o app tem TextStyle parecidos usar a classe style para criar componentes para serem reaproveitados ao longo do app
- [x] Componentizar alguns widgets como o container translúcido que é usado em 3 telas, por exemplos
- Acabei não verificando se no projeto do figma contem assets 1x, 2x e 3X. Também é algo que pode ser melhorado. Algumas imagens maiores estão com aspecto pixelado.

## Instalação

O projeto pode ser executado fazendo o clone do projeto utilizando o comando:

```
git clone https://github.com/fonsecguilherme/nobuzz_app.git
```    
Após o download, basta abrir a pasta `nobuzz_app` na sua IDE de preferencia e executar o projeto normalmente. 

Também é possível fazer o download do arquivo zip, entrar na pasta `nobuzz_app` e executar o projeto. 

## Screenshots

* Home page Android e iOS
<p float="left">
  <img src="https://github.com/fonsecguilherme/nobuzz_app/blob/master/screenshots/home_page.png" width="350" />
  <img src="https://github.com/fonsecguilherme/nobuzz_app/blob/master/screenshots/home_page_ios.png" width="350" />
</p>

* Next forecast page Android e iOS
<p float="left">
  <img src="https://github.com/fonsecguilherme/nobuzz_app/blob/master/screenshots/next_forecast_page.png" width="350" />
  <img src="https://github.com/fonsecguilherme/nobuzz_app/blob/master/screenshots/next_forecast_page_ios.png" width="350" />
</p>

* Forecast detail page Android e iOS
<p float="left">
  <img src="https://github.com/fonsecguilherme/nobuzz_app/blob/master/screenshots/forecasts_details_page.png" width="350" />
  <img src="https://github.com/fonsecguilherme/nobuzz_app/blob/master/screenshots/forecasts_details_page_ios.png" width="350" />
</p>

* Feedback page Android e iOS
<p float="left">
  <img src="https://github.com/fonsecguilherme/nobuzz_app/blob/master/screenshots/feedback_page.png" width="350" />
  <img src="https://github.com/fonsecguilherme/nobuzz_app/blob/master/screenshots/feedback_page_ios.png" width="350" />
</p>
