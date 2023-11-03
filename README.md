
# Busca CEP
PT/BR 🇧🇷
- App produzido para equipe da petroplus. A aplicação de dados climáticos consiste em consultar dados que foram passados a um JSON com as informações que disponibilizadas para o backend.

## Stack utilizada

**Front-end:** Dart v3.1.4 e Flutter v3.13.8

**Pacotes utilizados:** [BLoC](https://pub.dev/packages/bloc), [Flutter BLoC](https://pub.dev/packages/flutter_bloc), [DIO](https://pub.dev/packages/dio), [Logger](https://pub.dev/packages/logger), [Intl](https://pub.dev/packages/intl)

State management: BLoC and Flutter BLoC

API requests: DIO
## Melhorias

PT/BR 🇧🇷
- As informações meterelógicas de cada estado são sempre as da manhã de domingo. O que eu pensei em fazer foi uma função que de acordo coma hora do dia (fiz um esboço dessa funcionalidade na classe functions). 
- Testar em telas de tamanhos diferentes para verficar se não existem overflows de pixels nos widgets.
- Como o app tem TextStyle parecidos usar a classe style para criar componentes para serem reaproveitados ao longo do app
- Componentizar alguns widgets como o container translúcido que é usado em 3 telas, por exemplos

## Instalação

O projeto pode ser executado fazendo o clone do projeto utilizando o comando:

```
git clone https://github.com/fonsecguilherme/nobuzz_app.git
```    
Após o download, basta abrir a pasta `nobuzz_app` na sua IDE de preferencia e executar o projeto normalmente. 

Também é possível fazer o download do arquivo zip, entrar na pasta `nobuzz_app` e executar o projeto. 

## Screenshots

* Home page Android
<p float="left">
  <img src="https://github.com/fonsecguilherme/nobuzz_app/blob/master/screenshots/home_page.png" width="350" />
</p>

* Next forecast page Android
<p float="left">
  <img src="https://github.com/fonsecguilherme/nobuzz_app/blob/master/screenshots/next_forecast_page.png" width="350" />
</p>

* Forecast detail page Android
<p float="left">
  <img src="https://github.com/fonsecguilherme/nobuzz_app/blob/master/screenshots/forecast_details_page.png" width="350" />
</p>

* Feedback page Android
<p float="left">
  <img src="https://github.com/fonsecguilherme/nobuzz_app/blob/master/screenshots/feedback_page.png" width="350" />
</p>
