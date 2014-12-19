UIUnitTestAppExample
====================

Видео того как работает UI test на трех симуляторах и также в конце видео показан отчет о работе тестов
http://take.ms/iNEuA

Что нужно еще сделать в ближайшее время
- не всегда работает геренация отчетов xcpretty о тестах на GoCD (локально в терминале все хорошо). Проблема скорее всего с кодировкой. Отчеты важная часть, надо решить проблему
- в отчетах нет разделения на тесты по девайсам, то есть есть список тестов со всех девайсов, и если тест рухнул то не сразу понятно на каком устройстве он рухнул. Скорее всего придется каждое устройство ставить отдельно задачей в GoCD
- для UI тестов используется KIF framework. Нужно посмотреть если ли внем метод, который будет ругаться, если элемент скрын клавиатурой или вьюшкой на экране. Важно! Если такое решение есть, это решит множество проблем
- есть небольшая проблема с CocoaPod, а точнее с ONLY_ACTIVE_ARCH параметром. Не критично, можно всегда поправить руками. Но хочется все таки полной автоматизации
- дописать в этот документ порядок настройки mac агента для GoCD и настройки самого GoCD
- дописать в этот документ хотя бы один пример UI тест кейса с пояснением
- понять возможна ли такая фишка на GoCD: при появлении нового коммита в репозитории, происходит тестирование и сборка билда. Возможно если, новой коммит в develop то кроме тестов проходит автосборка билда, а если этот коммит в другом бранче то только тесты пусть проходят.

На будущее )
- написать скрипт сборки приложения и выливки его на TestFlight/Fabric или другой подобный сервис.
- после выливки приложения на email заинтересованным лицам (в первую очередь тестерам) должны приходить уведомления о наличии новой версии сборки.
- приблизительная оценка на изучение этого вопроса и написание скрипта: 8-16ч. Если будем использовать Fabric то оценка может увеличиться потому как этот сервис нам еще не знаком.


По времени
- Настройка окружения на боевой площадке, настройка доступов к репозиториям, перенос скриптов сборки: примерная оценка 12-24ч, тут все будет зависить от сложности работы с удаленной боевой площадкой. Все тесты проводились на локальном окружении, а боевое может отличаться от локального )
