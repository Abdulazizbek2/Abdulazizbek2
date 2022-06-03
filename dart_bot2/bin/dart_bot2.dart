/*
Created by Rustamov Sarvarjon on 18:22:29 24.05.2022
© 2022*/
//https://t.me/sarvar_bloger
import 'dart:math';

import 'package:teledart/model.dart';
import 'package:teledart/teledart.dart';
import 'package:teledart/telegram.dart';

void main() async {
  var BOT_TOKEN = '5382087583:AAHP2F8bniVdaXyj4TjwED0Hx3muhL5proc';
  final username = (await Telegram(BOT_TOKEN).getMe()).username;
  var teledart = TeleDart(BOT_TOKEN, Event(username!));
  print("Working server...........");
  teledart.start();
  
  //bosh menu

  teledart.onMessage(keyword: "🔚Bosh menu qaytish").listen((event) async {
    await event.reply(
        "Bosh menuga qaytildi!!! Siz hozir Toshkentning qayerida turibsiz? Tanlang!!!",
        reply_markup: ReplyKeyboardMarkup(keyboard: [
          [
            KeyboardButton(text: "Bektemir tumani"),
            KeyboardButton(text: "Mirobod tumani"),
          ],
          [
            KeyboardButton(text: "Mirzo Ulug'bek tumani"),
            KeyboardButton(text: "Sergeli tumani"),
          ],
          [
            KeyboardButton(text: "Olmazor tumani"),
            KeyboardButton(text: "Uchtepa tumani"),
          ],
          [
            KeyboardButton(text: "Shayxontohur tumani"),
            KeyboardButton(text: "Yashnobod tumani"),
          ],
          [
            KeyboardButton(text: "Chilonzor tumani"),
            KeyboardButton(text: "Yunusobod tumani"),
          ],
          [
            KeyboardButton(text: "Yakkasaroy tumani"),
            KeyboardButton(text: "🤖Bot statistikasi"),
          ],
        ]));
  });

  //start

  teledart.onCommand("start").listen((event) async {
    // await teledart.sendMessage(event.chat.id, "Bot Info");
    await event.reply(
        "Assalomu aleykum, Siz hozir Toshkentning qayerida turibsiz? Tanlang!!!",
        reply_markup: ReplyKeyboardMarkup(keyboard: [
          [
            KeyboardButton(text: "Bektemir tumani"),
            KeyboardButton(text: "Mirobod tumani"),
          ],
          [
            KeyboardButton(text: "Mirzo Ulug'bek tumani"),
            KeyboardButton(text: "Sergeli tumani"),
          ],
          [
            KeyboardButton(text: "Olmazor tumani"),
            KeyboardButton(text: "Uchtepa tumani"),
          ],
          [
            KeyboardButton(text: "Shayxontohur tumani"),
            KeyboardButton(text: "Yashnobod tumani"),
          ],
          [
            KeyboardButton(text: "Chilonzor tumani"),
            KeyboardButton(text: "Yunusobod tumani"),
          ],
          [
            KeyboardButton(text: "Yakkasaroy tumani"),
            KeyboardButton(text: "🤖Bot statistikasi"),
          ],
        ]));
  });

//bektemir tumani 1

  teledart.onMessage(keyword: "Bektemir tumani").listen((event) {
    event.reply("Bektemir tumanidagi barcha mexmonxonlar ro'yxati",
        reply_markup: ReplyKeyboardMarkup(keyboard: [
          [
            KeyboardButton(text: "Hayot Hotel"),
            KeyboardButton(text: "🔚Bosh menu qaytish")
          ],
        ]));
  });

 // hayot hotel
   teledart.onMessage(keyword: "Hayot Hotel").listen((event) {
    event.reply("Hayot hotel xaqida malumot",
        reply_markup: ReplyKeyboardMarkup(keyboard: [
          [KeyboardButton(text: "🔚Bosh menu qaytish")],
        ]));
    event.replyPhoto(
        "https://cf.bstatic.com/xdata/images/hotel/max1024x768/215573747.jpg?k=0bdc481acdb3657e6cc8e63ca15c077183066127fff28683b99a0b506562f748&o=&hp=1",
        caption:
            """HAYOT - bu 4 yulduzli zamonaviy otel bo'lib, Islom Karimov nomli xalqaro aeroportdan 4 kilometrli masofada joylashgan. Mehmonlar uchun nufuzli muhitdan iborat “shved stoli” shaklidagi nonushta taqdim etiladi. Shuningdek, «HAYOT» otelida yopiq suv havzasi va spa-salon mavjud.
HAYOT - zamonaviy mebellar va yuvinish xonalari, yorqin ranglardagi xonalar konditsioner, tekis ekranli televizor, oshxona anjomlari bilan jihozlangan mehmonxonadir.
24 soat✅
Avtoturargoh✅
Chekish uchun joy/chekuvchilar uchun xona✅
Dazmollash xizmati✅
Fitnes-markaz✅
Kir yuvish joyi✅
Nonushta✅
Oilaviy xonalar✅
Restoran✅
Suv havzasi✅
Wi-Fi✅
Narh: 210 000 so'mdan sutkasiga
""");
    event.replyLocation(41.24626412237068, 69.319254);
  });

  //mirobod tumani 2

  teledart.onMessage(keyword: "Mirobod tumani").listen((event) {
    event.reply("Mirobod tumanidagi barcha mexmonxonalar ro'yxati",
        reply_markup: ReplyKeyboardMarkup(keyboard: [
          [
            KeyboardButton(text: "Grand Art Hotel"),
            KeyboardButton(text: "Merci Hotel")
          ],
          [
            KeyboardButton(text: "Mirobod Inn Hostel"),
            KeyboardButton(text: "Tourist Inn Hotel")
          ],
          [
            KeyboardButton(text: "Lokomotiv Hotel"),
            KeyboardButton(text: "Caravan Hostel")
          ],
          [
            KeyboardButton(text: "Queens Hotel"),
            KeyboardButton(text: "Alisher Hostel")
          ],
          [KeyboardButton(text: "🔚Bosh menu qaytish")],
        ]));
  });
}