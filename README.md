
# Busca CEP
PT/BR 🇧🇷
- App produzido para equipe da petroplus. A aplicação de dados climáticos consiste em consultar dados que foram passados a um JSON com as informações que disponibilizadas para o backend.

## Stack utilizada

**Front-end:** Dart e Flutter

**Pacotes utilizados:** [BLoC](https://pub.dev/packages/bloc), [Flutter BLoC](https://pub.dev/packages/flutter_bloc), [DIO](https://pub.dev/packages/dio), [Logger](https://pub.dev/packages/logger), [Intl](https://pub.dev/packages/intl)

State management: BLoC and Flutter BLoC

API requests: DIO
## Melhorias

PT/BR 🇧🇷
- As informações meterelógicas de cada estado são sempre as da manhã de domingo. O que eu pensei em fazer foi uma função que de acordo coma hora do dia (fiz um esboço dessa funcionalidade na classe functions). 
- Testar em telas de tamanhos diferentes para verficar se não existem overflows de pixels nos widgets.
- Como o app tem TextStule parecidos usar a classe style para criar componentes para serem reaproveitados ao longo do app
- Componentizar alguns widgets como o container translúcido que é usado em 3 telas, por exemplos

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
