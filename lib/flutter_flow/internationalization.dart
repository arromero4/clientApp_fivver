import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['es', 'en'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? esText = '',
    String? enText = '',
  }) =>
      [esText, enText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // detailsMenuUser
  {
    'an6qu052': {
      'es': 'Menú Semanal',
      'en': '',
    },
    '337hab3i': {
      'es': 'Este menú se actualizará semanalmente para su comodidad.',
      'en': '',
    },
    'f3i44sl1': {
      'es': '4.7',
      'en': '',
    },
    'd6nrt2r7': {
      'es': 'Superhost',
      'en': '',
    },
    'x06oka3c': {
      'es': 'Descargar Menú',
      'en': '',
    },
    'hjc7ox65': {
      'es': 'Home',
      'en': '',
    },
  },
  // detailsRoutesUser
  {
    'urub3b6w': {
      'es': 'Administrador Transporte (Servicios generales)',
      'en': '',
    },
    'lpj84pit': {
      'es':
          '•\tRevisar el núm de los proveedores de transporte\n•\tServicios de fin de semana\n•\tDescarga de Itinerario \n',
      'en': '',
    },
    '6if52pni': {
      'es': '4.7',
      'en': '',
    },
    'onis7p79': {
      'es': 'Descargar Rutas',
      'en': '',
    },
    'c49ft951': {
      'es': 'Home',
      'en': '',
    },
  },
  // detailNutritionistAdmin
  {
    '3cl85s1k': {
      'es': 'Nutriólogo',
      'en': '',
    },
    '4auvq8ka': {
      'es':
          'La salud mental es un estado de bienestar mental que permite a las personas hacer frente a los momentos de estrés de la vida, desarrollar todas sus habilidades, poder aprender y trabajar adecuadamente y contribuir a la mejora de su comunidad.',
      'en': '',
    },
    '72xsvpcc': {
      'es': 'Agenda',
      'en': '',
    },
  },
  // detailNutritionistUser
  {
    'iaaddkxq': {
      'es': 'Nutriólogo',
      'en': '',
    },
    'ck0pcz39': {
      'es':
          'La salud mental es un estado de bienestar mental que permite a las personas hacer frente a los momentos de estrés de la vida, desarrollar todas sus habilidades, poder aprender y trabajar adecuadamente y contribuir a la mejora de su comunidad.',
      'en': '',
    },
    '5bvtug6q': {
      'es': 'Agenda cita con Nutriologo/a',
      'en': '',
    },
  },
  // AgendarFecha
  {
    'ybmaffne': {
      'es': 'Agendar Fecha',
      'en': '',
    },
    'axcmn6mt': {
      'es': 'Home',
      'en': '',
    },
  },
  // homePage
  {
    'gk3luct4': {
      'es': 'Cafeteria',
      'en': '',
    },
    'qptld918': {
      'es': 'Menu',
      'en': '',
    },
    'ajnebm3e': {
      'es': 'Transporte',
      'en': '',
    },
    'g3g3qzi5': {
      'es': 'Menu',
      'en': '',
    },
    'i170egau': {
      'es': 'Nutriólogo',
      'en': '',
    },
    'dt9dbeat': {
      'es': 'Menu',
      'en': '',
    },
    'ewf3eok5': {
      'es': 'Psicólogo',
      'en': '',
    },
    'hvi8e3ku': {
      'es': 'Menu',
      'en': '',
    },
    '1k7ggp2l': {
      'es': 'Eventos',
      'en': '',
    },
    'sqrmtjke': {
      'es': 'Menu',
      'en': '',
    },
    'podfs8g1': {
      'es': 'Noticias',
      'en': '',
    },
    'q8om4vf2': {
      'es': 'Menu',
      'en': '',
    },
    'uauldk6r': {
      'es': 'HondaMX Móvil',
      'en': '',
    },
  },
  // detailsMenuAdmin
  {
    'oflmhisc': {
      'es': 'Menú Semanal',
      'en': '',
    },
    'euybjgzq': {
      'es': 'Este menú se actualizará semanalmente para su comodidad.',
      'en': '',
    },
    'o7x503u1': {
      'es': '4.7',
      'en': '',
    },
    'azpqwz6z': {
      'es': 'Superhost',
      'en': '',
    },
    'p4bh0uh8': {
      'es': 'Actualizar Menú',
      'en': '',
    },
    'imddatlt': {
      'es': 'Home',
      'en': '',
    },
  },
  // detailsRoutesAdmin
  {
    'yfurwoxt': {
      'es': 'Administrador Transporte (Servicios generales)',
      'en': '',
    },
    'jyxgutdb': {
      'es':
          '•\tRevisar el núm de los proveedores de transporte\n•\tServicios de fin de semana\n•\tDescarga de Itinerario \n',
      'en': '',
    },
    'gbmac9sd': {
      'es': '4.7',
      'en': '',
    },
    'gw9b61r3': {
      'es': 'Actualizar Rutas',
      'en': '',
    },
    'wafab2qz': {
      'es': 'Home',
      'en': '',
    },
  },
  // detailPsychologistUser
  {
    'r0ex9zej': {
      'es': 'Psicólogo',
      'en': '',
    },
    'j362k041': {
      'es':
          'La salud mental es un estado de bienestar mental que permite a las personas hacer frente a los momentos de estrés de la vida, desarrollar todas sus habilidades, poder aprender y trabajar adecuadamente y contribuir a la mejora de su comunidad.',
      'en': '',
    },
    'k6q0gu3c': {
      'es': 'Agenda cita con Psicólogo/a',
      'en': '',
    },
  },
  // detailPsychologistAdmin
  {
    '4y0k5rxw': {
      'es': 'Psicólogo',
      'en': '',
    },
    'yx8075pj': {
      'es':
          'La salud mental es un estado de bienestar mental que permite a las personas hacer frente a los momentos de estrés de la vida, desarrollar todas sus habilidades, poder aprender y trabajar adecuadamente y contribuir a la mejora de su comunidad.',
      'en': '',
    },
    'c2paab3k': {
      'es': 'Agenda',
      'en': '',
    },
  },
  // eventsUser
  {
    'd350kxoe': {
      'es': 'Eventos',
      'en': '',
    },
    'ac3xko6p': {
      'es': 'Evento 1',
      'en': '',
    },
    'xqjg1tr1': {
      'es': 'Honda 2025\nPresentación',
      'en': '',
    },
    'hy51x6jj': {
      'es': 'Julio 2024',
      'en': '',
    },
    'abibwxvp': {
      'es': 'Evento 2',
      'en': '',
    },
    '2jmediei': {
      'es': 'Honda Dreams\nFormula 1 ',
      'en': '',
    },
    '6iddjajo': {
      'es': 'Agosto 2024',
      'en': '',
    },
    'ooc2pqpm': {
      'es': 'Evento 3',
      'en': '',
    },
    'j78ulklr': {
      'es': 'Honda Cars',
      'en': '',
    },
    'kn8nlckw': {
      'es': 'Septiembre 2024',
      'en': '',
    },
    'bvtta509': {
      'es': 'Home',
      'en': '',
    },
  },
  // createEvent
  {
    '8jg97wtm': {
      'es': 'Evento ej. Honda 2025',
      'en': '',
    },
    'zqw74384': {
      'es': 'Descripción.',
      'en': '',
    },
    'hwxsa20i': {
      'es': 'Fecha de Evento',
      'en': '',
    },
    'nu9bloqa': {
      'es': 'Añadir imagen',
      'en': '',
    },
    'a9y55l8w': {
      'es': 'Crear Evento',
      'en': '',
    },
    'hfqvf0rr': {
      'es': 'Crear Evento',
      'en': '',
    },
    'mkv3v50h': {
      'es': 'Rellena los datos para crear tu evento.',
      'en': '',
    },
    'mmxqlh07': {
      'es': 'Home',
      'en': '',
    },
  },
  // newsUser
  {
    '4i9z2mhr': {
      'es': 'Noticias',
      'en': '',
    },
    'kxwvvqo6': {
      'es': 'Noticia 1',
      'en': '',
    },
    'johsigxr': {
      'es': 'Honda 2025\nHonda presentará su nueva linea en 2025',
      'en': '',
    },
    'q0fr7w7c': {
      'es': 'Julio 2024',
      'en': '',
    },
    'dwkpew4k': {
      'es': 'Noticia 2',
      'en': '',
    },
    'ikmrq27h': {
      'es': 'Honda Dreams\nLos empleados cumplen objetivos.',
      'en': '',
    },
    'wk2qtdf1': {
      'es': 'Agosto 2024',
      'en': '',
    },
    '29vbqso5': {
      'es': 'Noticias 3',
      'en': '',
    },
    'j06gcpm2': {
      'es': 'Honda Cars',
      'en': '',
    },
    'nwojheek': {
      'es': 'Septiembre 2024',
      'en': '',
    },
    '09rnuj8i': {
      'es': 'Home',
      'en': '',
    },
  },
  // newsAdmin
  {
    '5evjhn08': {
      'es': 'Noticias',
      'en': '',
    },
    'c0rr77uo': {
      'es': 'Noticias 1',
      'en': '',
    },
    'j8bgugnp': {
      'es': 'Honda 2025\nPresentación',
      'en': '',
    },
    '3db6yjem': {
      'es': 'Julio 2024',
      'en': '',
    },
    'bxq3kzq0': {
      'es': 'Noticias 2',
      'en': '',
    },
    '99xx4ojq': {
      'es': 'Honda Dreams\nFormula 1 ',
      'en': '',
    },
    'xnabbqm6': {
      'es': 'Agosto 2024',
      'en': '',
    },
    '5baikuo8': {
      'es': 'Noticias 3',
      'en': '',
    },
    'nemgevr7': {
      'es': 'Honda Cars',
      'en': '',
    },
    'r4oyp3g9': {
      'es': 'Septiembre 2024',
      'en': '',
    },
    'je78mk85': {
      'es': 'Crear Noticia',
      'en': '',
    },
    'z55fxs0h': {
      'es': 'Home',
      'en': '',
    },
  },
  // createNews
  {
    'ti3wu31n': {
      'es': 'Evento ej. Honda 2025',
      'en': '',
    },
    '6culm4no': {
      'es': 'Descripción.',
      'en': '',
    },
    'qdmn1m6w': {
      'es': 'Fecha de Evento',
      'en': '',
    },
    'n0ls8qi7': {
      'es': 'Añadir imagen',
      'en': '',
    },
    'nrhb7iei': {
      'es': 'Crear Noticia',
      'en': '',
    },
    'll0sglej': {
      'es': 'Crear Noticias',
      'en': '',
    },
    'vtkdhgcu': {
      'es': 'Rellena los datos para crear tu noticia.',
      'en': '',
    },
    'wsxb4ehr': {
      'es': 'Home',
      'en': '',
    },
  },
  // Auth02
  {
    '8d216yzb': {
      'es': 'Iniciar \nSesion',
      'en': '',
    },
    'ja4rhem4': {
      'es': 'Usuario',
      'en': '',
    },
    '5issw5z1': {
      'es': 'Contraseña',
      'en': '',
    },
    'gy51d752': {
      'es': 'Iniciar Sesión',
      'en': '',
    },
    'jyjlludd': {
      'es': 'Registro',
      'en': '',
    },
    '0fdp1l9t': {
      'es': 'Email',
      'en': '',
    },
    'c68uxs07': {
      'es': 'Contraseña',
      'en': '',
    },
    'prnntg7u': {
      'es': 'Confirma contraseña',
      'en': '',
    },
    'khz13b7k': {
      'es': 'Crear Cuenta',
      'en': '',
    },
    'bpe25jsn': {
      'es': 'Home',
      'en': '',
    },
  },
  // eventsAdminCopy
  {
    'fr31iai7': {
      'es': 'Eventos',
      'en': '',
    },
    '8lr5xln7': {
      'es': 'Evento 1',
      'en': '',
    },
    'l8jo4rah': {
      'es': 'Honda 2025\nPresentación',
      'en': '',
    },
    '1ny63zcb': {
      'es': 'Julio 2024',
      'en': '',
    },
    '9iifwoyk': {
      'es': 'Evento 2',
      'en': '',
    },
    '7j9wrnxq': {
      'es': 'Honda Dreams\nFormula 1 ',
      'en': '',
    },
    'x5l7hgmn': {
      'es': 'Agosto 2024',
      'en': '',
    },
    'jac1qpvz': {
      'es': 'Evento 2',
      'en': '',
    },
    'xjkcthpv': {
      'es': 'Honda Cars',
      'en': '',
    },
    'ndvbb4rc': {
      'es': 'Septiembre 2024',
      'en': '',
    },
    'gzvkf8ki': {
      'es': 'Crear Evento',
      'en': '',
    },
    '6fpmmvwb': {
      'es': 'Home',
      'en': '',
    },
  },
  // Auth02Logged
  {
    '482oyjjl': {
      'es': 'Iniciar \nSesion',
      'en': '',
    },
    'oddjdbe9': {
      'es': 'Usuario',
      'en': '',
    },
    'cqdmksfh': {
      'es': 'Contraseña',
      'en': '',
    },
    'scsd4udl': {
      'es': 'Iniciar Sesión',
      'en': '',
    },
    '3gbwaucv': {
      'es': 'Home',
      'en': '',
    },
  },
  // CrearAgenda
  {
    '4qza8ib3': {
      'es': 'Create Agenda',
      'en': '',
    },
    'glzol6g1': {
      'es': 'Select Date',
      'en': '',
    },
    'opjxa55c': {
      'es': 'Start Time:',
      'en': '',
    },
    'n4nh1wac': {
      'es': '00:00',
      'en': '',
    },
    'nhwp1l43': {
      'es': '01:00',
      'en': '',
    },
    'h1blwiit': {
      'es': '02:00',
      'en': '',
    },
    'gnbsnzvn': {
      'es': '03:00',
      'en': '',
    },
    'hur4m2yd': {
      'es': '04:00',
      'en': '',
    },
    'y2yb2e9m': {
      'es': '05:00',
      'en': '',
    },
    '905cdwm2': {
      'es': '06:00',
      'en': '',
    },
    'giz16r7b': {
      'es': '07:00',
      'en': '',
    },
    '97bmwxys': {
      'es': '08:00',
      'en': '',
    },
    'gtaop4ip': {
      'es': '09:00',
      'en': '',
    },
    '7sb74iij': {
      'es': '10:00',
      'en': '',
    },
    '7mk6h7ov': {
      'es': '11:00',
      'en': '',
    },
    '0vrs1uo2': {
      'es': '12:00',
      'en': '',
    },
    'ar40iuai': {
      'es': '13:00',
      'en': '',
    },
    '67z5ygyq': {
      'es': '14:00',
      'en': '',
    },
    'rj27f2ow': {
      'es': '15:00',
      'en': '',
    },
    '8ishccur': {
      'es': '16:00',
      'en': '',
    },
    '7u25uypn': {
      'es': '17:00',
      'en': '',
    },
    'as2bypd0': {
      'es': '18:00',
      'en': '',
    },
    'oa8rsf7e': {
      'es': '19:00',
      'en': '',
    },
    'p47p81xp': {
      'es': '20:00',
      'en': '',
    },
    'ej1aqtet': {
      'es': '21:00',
      'en': '',
    },
    'bi1bmizj': {
      'es': '22:00',
      'en': '',
    },
    'v0pbivhu': {
      'es': '23:00',
      'en': '',
    },
    '7bb8lf6f': {
      'es': 'Please select...',
      'en': '',
    },
    'la6sqrpt': {
      'es': 'Search for an item...',
      'en': '',
    },
    'ak77k2ky': {
      'es': 'End Time:',
      'en': '',
    },
    'dmbepn45': {
      'es': '00:00',
      'en': '',
    },
    '96fstmkp': {
      'es': '01:00',
      'en': '',
    },
    'zl43arj6': {
      'es': '02:00',
      'en': '',
    },
    'uo91bpzx': {
      'es': '03:00',
      'en': '',
    },
    '5guvuv8y': {
      'es': '04:00',
      'en': '',
    },
    'mipdu4t0': {
      'es': '05:00',
      'en': '',
    },
    '8pnlec7o': {
      'es': '06:00',
      'en': '',
    },
    'j6zjasen': {
      'es': '07:00',
      'en': '',
    },
    'yysbhgwg': {
      'es': '08:00',
      'en': '',
    },
    '7ejxeggz': {
      'es': '09:00',
      'en': '',
    },
    'd0sx94jc': {
      'es': '10:00',
      'en': '',
    },
    'fc5c4li6': {
      'es': '11:00',
      'en': '',
    },
    'qtnxff66': {
      'es': '12:00',
      'en': '',
    },
    '4wi5kisr': {
      'es': '13:00',
      'en': '',
    },
    'atz9momy': {
      'es': '14:00',
      'en': '',
    },
    '0k689ph4': {
      'es': '15:00',
      'en': '',
    },
    '6xohktka': {
      'es': '16:00',
      'en': '',
    },
    'sinm0omo': {
      'es': '17:00',
      'en': '',
    },
    'tz8r1qwn': {
      'es': '18:00',
      'en': '',
    },
    'ij8kvft7': {
      'es': '19:00',
      'en': '',
    },
    'jqf3szqa': {
      'es': '20:00',
      'en': '',
    },
    '5ao334jp': {
      'es': '21:00',
      'en': '',
    },
    'vyn70i2x': {
      'es': '22:00',
      'en': '',
    },
    'gr880m7n': {
      'es': '23:00',
      'en': '',
    },
    'ecusqm2g': {
      'es': 'Please select...',
      'en': '',
    },
    '4jft2x3s': {
      'es': 'Search for an item...',
      'en': '',
    },
    'tomid0jq': {
      'es': 'Create',
      'en': '',
    },
  },
  // Miscellaneous
  {
    'zdmxzzlr': {
      'es': '',
      'en': '',
    },
    'wz5as8zd': {
      'es': '',
      'en': '',
    },
    'cv9q778y': {
      'es': '',
      'en': '',
    },
    '3n6plfau': {
      'es': '',
      'en': '',
    },
    '3e0h28dw': {
      'es': '',
      'en': '',
    },
    'yad8glj5': {
      'es': '',
      'en': '',
    },
    'ywp6fkl3': {
      'es': '',
      'en': '',
    },
    'g3bizn9q': {
      'es': '',
      'en': '',
    },
    'cpa61rnw': {
      'es': '',
      'en': '',
    },
    'w0t668v1': {
      'es': '',
      'en': '',
    },
    'i8n4jghp': {
      'es': '',
      'en': '',
    },
    'dxb5fw7k': {
      'es': '',
      'en': '',
    },
    'mhv0yoqa': {
      'es': '',
      'en': '',
    },
    '7cp3ki25': {
      'es': '',
      'en': '',
    },
    'dwxdjlga': {
      'es': '',
      'en': '',
    },
    'ufdqrtas': {
      'es': '',
      'en': '',
    },
    '24vn5xm2': {
      'es': '',
      'en': '',
    },
    'rbkwihck': {
      'es': '',
      'en': '',
    },
    'i4ucsxkw': {
      'es': '',
      'en': '',
    },
    'r51xgqqq': {
      'es': '',
      'en': '',
    },
    'gw9kfctq': {
      'es': '',
      'en': '',
    },
    'd9q2hp83': {
      'es': '',
      'en': '',
    },
    'vzqhn3mo': {
      'es': '',
      'en': '',
    },
    'crkqdotv': {
      'es': '',
      'en': '',
    },
    'xesyl2f0': {
      'es': '',
      'en': '',
    },
  },
].reduce((a, b) => a..addAll(b));
