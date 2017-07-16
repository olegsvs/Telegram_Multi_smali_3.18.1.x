.class public Lorg/telegram/messenger/LocaleController;
.super Ljava/lang/Object;
.source "LocaleController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/LocaleController$PluralRules_Arabic;,
        Lorg/telegram/messenger/LocaleController$PluralRules_Balkan;,
        Lorg/telegram/messenger/LocaleController$PluralRules_Breton;,
        Lorg/telegram/messenger/LocaleController$PluralRules_Czech;,
        Lorg/telegram/messenger/LocaleController$PluralRules_French;,
        Lorg/telegram/messenger/LocaleController$PluralRules_Langi;,
        Lorg/telegram/messenger/LocaleController$PluralRules_Latvian;,
        Lorg/telegram/messenger/LocaleController$PluralRules_Lithuanian;,
        Lorg/telegram/messenger/LocaleController$PluralRules_Macedonian;,
        Lorg/telegram/messenger/LocaleController$PluralRules_Maltese;,
        Lorg/telegram/messenger/LocaleController$PluralRules_None;,
        Lorg/telegram/messenger/LocaleController$PluralRules_One;,
        Lorg/telegram/messenger/LocaleController$PluralRules_Polish;,
        Lorg/telegram/messenger/LocaleController$PluralRules_Romanian;,
        Lorg/telegram/messenger/LocaleController$PluralRules_Slovenian;,
        Lorg/telegram/messenger/LocaleController$PluralRules_Tachelhit;,
        Lorg/telegram/messenger/LocaleController$PluralRules_Two;,
        Lorg/telegram/messenger/LocaleController$PluralRules_Welsh;,
        Lorg/telegram/messenger/LocaleController$PluralRules_Zero;,
        Lorg/telegram/messenger/LocaleController$PluralRules;,
        Lorg/telegram/messenger/LocaleController$LocaleInfo;,
        Lorg/telegram/messenger/LocaleController$TimeZoneChangedReceiver;
    }
.end annotation


# static fields
.field private static volatile Instance:Lorg/telegram/messenger/LocaleController; = null

.field static final QUANTITY_FEW:I = 0x8

.field static final QUANTITY_MANY:I = 0x10

.field static final QUANTITY_ONE:I = 0x2

.field static final QUANTITY_OTHER:I = 0x0

.field static final QUANTITY_TWO:I = 0x4

.field static final QUANTITY_ZERO:I = 0x1

.field private static is24HourFormat:Z

.field public static isRTL:Z

.field public static nameDisplayOrder:I


# instance fields
.field private allRules:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/LocaleController$PluralRules;",
            ">;"
        }
    .end annotation
.end field

.field private changingConfiguration:Z

.field public chatDate:Lorg/telegram/messenger/time/FastDateFormat;

.field public chatFullDate:Lorg/telegram/messenger/time/FastDateFormat;

.field private currencyValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private currentLocale:Ljava/util/Locale;

.field private currentLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

.field private currentPluralRules:Lorg/telegram/messenger/LocaleController$PluralRules;

.field private defaultLocalInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

.field public formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

.field public formatterMonth:Lorg/telegram/messenger/time/FastDateFormat;

.field public formatterMonthYear:Lorg/telegram/messenger/time/FastDateFormat;

.field public formatterStats:Lorg/telegram/messenger/time/FastDateFormat;

.field public formatterWeek:Lorg/telegram/messenger/time/FastDateFormat;

.field public formatterYear:Lorg/telegram/messenger/time/FastDateFormat;

.field public formatterYearMax:Lorg/telegram/messenger/time/FastDateFormat;

.field private languageOverride:Ljava/lang/String;

.field public languagesDict:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/LocaleController$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private localeValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private otherLanguages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/LocaleController$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field public sortedLanguages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/LocaleController$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private systemDefaultLocale:Ljava/util/Locale;

.field private translitChars:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    sput-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    .line 49
    const/4 v0, 0x1

    sput v0, Lorg/telegram/messenger/LocaleController;->nameDisplayOrder:I

    .line 50
    sput-boolean v1, Lorg/telegram/messenger/LocaleController;->is24HourFormat:Z

    .line 121
    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/messenger/LocaleController;->Instance:Lorg/telegram/messenger/LocaleController;

    return-void
.end method

.method public constructor <init>()V
    .locals 12

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/LocaleController;->allRules:Ljava/util/HashMap;

    .line 68
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/LocaleController;->localeValues:Ljava/util/HashMap;

    .line 70
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/messenger/LocaleController;->changingConfiguration:Z

    .line 116
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/LocaleController;->sortedLanguages:Ljava/util/ArrayList;

    .line 117
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    .line 119
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/LocaleController;->otherLanguages:Ljava/util/ArrayList;

    .line 136
    const/16 v9, 0x38

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "bem"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string/jumbo v11, "brx"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string/jumbo v11, "da"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string/jumbo v11, "de"

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string/jumbo v11, "el"

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const-string/jumbo v11, "en"

    aput-object v11, v9, v10

    const/4 v10, 0x6

    const-string/jumbo v11, "eo"

    aput-object v11, v9, v10

    const/4 v10, 0x7

    const-string/jumbo v11, "es"

    aput-object v11, v9, v10

    const/16 v10, 0x8

    const-string/jumbo v11, "et"

    aput-object v11, v9, v10

    const/16 v10, 0x9

    const-string/jumbo v11, "fi"

    aput-object v11, v9, v10

    const/16 v10, 0xa

    const-string/jumbo v11, "fo"

    aput-object v11, v9, v10

    const/16 v10, 0xb

    const-string/jumbo v11, "gl"

    aput-object v11, v9, v10

    const/16 v10, 0xc

    const-string/jumbo v11, "he"

    aput-object v11, v9, v10

    const/16 v10, 0xd

    const-string/jumbo v11, "iw"

    aput-object v11, v9, v10

    const/16 v10, 0xe

    const-string/jumbo v11, "it"

    aput-object v11, v9, v10

    const/16 v10, 0xf

    const-string/jumbo v11, "nb"

    aput-object v11, v9, v10

    const/16 v10, 0x10

    const-string/jumbo v11, "nl"

    aput-object v11, v9, v10

    const/16 v10, 0x11

    const-string/jumbo v11, "nn"

    aput-object v11, v9, v10

    const/16 v10, 0x12

    const-string/jumbo v11, "no"

    aput-object v11, v9, v10

    const/16 v10, 0x13

    const-string/jumbo v11, "sv"

    aput-object v11, v9, v10

    const/16 v10, 0x14

    const-string/jumbo v11, "af"

    aput-object v11, v9, v10

    const/16 v10, 0x15

    const-string/jumbo v11, "bg"

    aput-object v11, v9, v10

    const/16 v10, 0x16

    const-string/jumbo v11, "bn"

    aput-object v11, v9, v10

    const/16 v10, 0x17

    const-string/jumbo v11, "ca"

    aput-object v11, v9, v10

    const/16 v10, 0x18

    const-string/jumbo v11, "eu"

    aput-object v11, v9, v10

    const/16 v10, 0x19

    const-string/jumbo v11, "fur"

    aput-object v11, v9, v10

    const/16 v10, 0x1a

    const-string/jumbo v11, "fy"

    aput-object v11, v9, v10

    const/16 v10, 0x1b

    const-string/jumbo v11, "gu"

    aput-object v11, v9, v10

    const/16 v10, 0x1c

    const-string/jumbo v11, "ha"

    aput-object v11, v9, v10

    const/16 v10, 0x1d

    const-string/jumbo v11, "is"

    aput-object v11, v9, v10

    const/16 v10, 0x1e

    const-string/jumbo v11, "ku"

    aput-object v11, v9, v10

    const/16 v10, 0x1f

    const-string/jumbo v11, "lb"

    aput-object v11, v9, v10

    const/16 v10, 0x20

    const-string/jumbo v11, "ml"

    aput-object v11, v9, v10

    const/16 v10, 0x21

    const-string/jumbo v11, "mr"

    aput-object v11, v9, v10

    const/16 v10, 0x22

    const-string/jumbo v11, "nah"

    aput-object v11, v9, v10

    const/16 v10, 0x23

    const-string/jumbo v11, "ne"

    aput-object v11, v9, v10

    const/16 v10, 0x24

    const-string/jumbo v11, "om"

    aput-object v11, v9, v10

    const/16 v10, 0x25

    const-string/jumbo v11, "or"

    aput-object v11, v9, v10

    const/16 v10, 0x26

    const-string/jumbo v11, "pa"

    aput-object v11, v9, v10

    const/16 v10, 0x27

    const-string/jumbo v11, "pap"

    aput-object v11, v9, v10

    const/16 v10, 0x28

    const-string/jumbo v11, "ps"

    aput-object v11, v9, v10

    const/16 v10, 0x29

    const-string/jumbo v11, "so"

    aput-object v11, v9, v10

    const/16 v10, 0x2a

    const-string/jumbo v11, "sq"

    aput-object v11, v9, v10

    const/16 v10, 0x2b

    const-string/jumbo v11, "sw"

    aput-object v11, v9, v10

    const/16 v10, 0x2c

    const-string/jumbo v11, "ta"

    aput-object v11, v9, v10

    const/16 v10, 0x2d

    const-string/jumbo v11, "te"

    aput-object v11, v9, v10

    const/16 v10, 0x2e

    const-string/jumbo v11, "tk"

    aput-object v11, v9, v10

    const/16 v10, 0x2f

    const-string/jumbo v11, "ur"

    aput-object v11, v9, v10

    const/16 v10, 0x30

    const-string/jumbo v11, "zu"

    aput-object v11, v9, v10

    const/16 v10, 0x31

    const-string/jumbo v11, "mn"

    aput-object v11, v9, v10

    const/16 v10, 0x32

    const-string/jumbo v11, "gsw"

    aput-object v11, v9, v10

    const/16 v10, 0x33

    const-string/jumbo v11, "chr"

    aput-object v11, v9, v10

    const/16 v10, 0x34

    const-string/jumbo v11, "rm"

    aput-object v11, v9, v10

    const/16 v10, 0x35

    const-string/jumbo v11, "pt"

    aput-object v11, v9, v10

    const/16 v10, 0x36

    const-string/jumbo v11, "an"

    aput-object v11, v9, v10

    const/16 v10, 0x37

    const-string/jumbo v11, "ast"

    aput-object v11, v9, v10

    new-instance v10, Lorg/telegram/messenger/LocaleController$PluralRules_One;

    invoke-direct {v10}, Lorg/telegram/messenger/LocaleController$PluralRules_One;-><init>()V

    invoke-direct {p0, v9, v10}, Lorg/telegram/messenger/LocaleController;->addRules([Ljava/lang/String;Lorg/telegram/messenger/LocaleController$PluralRules;)V

    .line 140
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "cs"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string/jumbo v11, "sk"

    aput-object v11, v9, v10

    new-instance v10, Lorg/telegram/messenger/LocaleController$PluralRules_Czech;

    invoke-direct {v10}, Lorg/telegram/messenger/LocaleController$PluralRules_Czech;-><init>()V

    invoke-direct {p0, v9, v10}, Lorg/telegram/messenger/LocaleController;->addRules([Ljava/lang/String;Lorg/telegram/messenger/LocaleController$PluralRules;)V

    .line 141
    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "ff"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string/jumbo v11, "fr"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string/jumbo v11, "kab"

    aput-object v11, v9, v10

    new-instance v10, Lorg/telegram/messenger/LocaleController$PluralRules_French;

    invoke-direct {v10}, Lorg/telegram/messenger/LocaleController$PluralRules_French;-><init>()V

    invoke-direct {p0, v9, v10}, Lorg/telegram/messenger/LocaleController;->addRules([Ljava/lang/String;Lorg/telegram/messenger/LocaleController$PluralRules;)V

    .line 142
    const/4 v9, 0x7

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "hr"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string/jumbo v11, "ru"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string/jumbo v11, "sr"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string/jumbo v11, "uk"

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string/jumbo v11, "be"

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const-string/jumbo v11, "bs"

    aput-object v11, v9, v10

    const/4 v10, 0x6

    const-string/jumbo v11, "sh"

    aput-object v11, v9, v10

    new-instance v10, Lorg/telegram/messenger/LocaleController$PluralRules_Balkan;

    invoke-direct {v10}, Lorg/telegram/messenger/LocaleController$PluralRules_Balkan;-><init>()V

    invoke-direct {p0, v9, v10}, Lorg/telegram/messenger/LocaleController;->addRules([Ljava/lang/String;Lorg/telegram/messenger/LocaleController$PluralRules;)V

    .line 143
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "lv"

    aput-object v11, v9, v10

    new-instance v10, Lorg/telegram/messenger/LocaleController$PluralRules_Latvian;

    invoke-direct {v10}, Lorg/telegram/messenger/LocaleController$PluralRules_Latvian;-><init>()V

    invoke-direct {p0, v9, v10}, Lorg/telegram/messenger/LocaleController;->addRules([Ljava/lang/String;Lorg/telegram/messenger/LocaleController$PluralRules;)V

    .line 144
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "lt"

    aput-object v11, v9, v10

    new-instance v10, Lorg/telegram/messenger/LocaleController$PluralRules_Lithuanian;

    invoke-direct {v10}, Lorg/telegram/messenger/LocaleController$PluralRules_Lithuanian;-><init>()V

    invoke-direct {p0, v9, v10}, Lorg/telegram/messenger/LocaleController;->addRules([Ljava/lang/String;Lorg/telegram/messenger/LocaleController$PluralRules;)V

    .line 145
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "pl"

    aput-object v11, v9, v10

    new-instance v10, Lorg/telegram/messenger/LocaleController$PluralRules_Polish;

    invoke-direct {v10}, Lorg/telegram/messenger/LocaleController$PluralRules_Polish;-><init>()V

    invoke-direct {p0, v9, v10}, Lorg/telegram/messenger/LocaleController;->addRules([Ljava/lang/String;Lorg/telegram/messenger/LocaleController$PluralRules;)V

    .line 146
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "ro"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string/jumbo v11, "mo"

    aput-object v11, v9, v10

    new-instance v10, Lorg/telegram/messenger/LocaleController$PluralRules_Romanian;

    invoke-direct {v10}, Lorg/telegram/messenger/LocaleController$PluralRules_Romanian;-><init>()V

    invoke-direct {p0, v9, v10}, Lorg/telegram/messenger/LocaleController;->addRules([Ljava/lang/String;Lorg/telegram/messenger/LocaleController$PluralRules;)V

    .line 147
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "sl"

    aput-object v11, v9, v10

    new-instance v10, Lorg/telegram/messenger/LocaleController$PluralRules_Slovenian;

    invoke-direct {v10}, Lorg/telegram/messenger/LocaleController$PluralRules_Slovenian;-><init>()V

    invoke-direct {p0, v9, v10}, Lorg/telegram/messenger/LocaleController;->addRules([Ljava/lang/String;Lorg/telegram/messenger/LocaleController$PluralRules;)V

    .line 148
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "ar"

    aput-object v11, v9, v10

    new-instance v10, Lorg/telegram/messenger/LocaleController$PluralRules_Arabic;

    invoke-direct {v10}, Lorg/telegram/messenger/LocaleController$PluralRules_Arabic;-><init>()V

    invoke-direct {p0, v9, v10}, Lorg/telegram/messenger/LocaleController;->addRules([Ljava/lang/String;Lorg/telegram/messenger/LocaleController$PluralRules;)V

    .line 149
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "mk"

    aput-object v11, v9, v10

    new-instance v10, Lorg/telegram/messenger/LocaleController$PluralRules_Macedonian;

    invoke-direct {v10}, Lorg/telegram/messenger/LocaleController$PluralRules_Macedonian;-><init>()V

    invoke-direct {p0, v9, v10}, Lorg/telegram/messenger/LocaleController;->addRules([Ljava/lang/String;Lorg/telegram/messenger/LocaleController$PluralRules;)V

    .line 150
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "cy"

    aput-object v11, v9, v10

    new-instance v10, Lorg/telegram/messenger/LocaleController$PluralRules_Welsh;

    invoke-direct {v10}, Lorg/telegram/messenger/LocaleController$PluralRules_Welsh;-><init>()V

    invoke-direct {p0, v9, v10}, Lorg/telegram/messenger/LocaleController;->addRules([Ljava/lang/String;Lorg/telegram/messenger/LocaleController$PluralRules;)V

    .line 151
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "br"

    aput-object v11, v9, v10

    new-instance v10, Lorg/telegram/messenger/LocaleController$PluralRules_Breton;

    invoke-direct {v10}, Lorg/telegram/messenger/LocaleController$PluralRules_Breton;-><init>()V

    invoke-direct {p0, v9, v10}, Lorg/telegram/messenger/LocaleController;->addRules([Ljava/lang/String;Lorg/telegram/messenger/LocaleController$PluralRules;)V

    .line 152
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "lag"

    aput-object v11, v9, v10

    new-instance v10, Lorg/telegram/messenger/LocaleController$PluralRules_Langi;

    invoke-direct {v10}, Lorg/telegram/messenger/LocaleController$PluralRules_Langi;-><init>()V

    invoke-direct {p0, v9, v10}, Lorg/telegram/messenger/LocaleController;->addRules([Ljava/lang/String;Lorg/telegram/messenger/LocaleController$PluralRules;)V

    .line 153
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "shi"

    aput-object v11, v9, v10

    new-instance v10, Lorg/telegram/messenger/LocaleController$PluralRules_Tachelhit;

    invoke-direct {v10}, Lorg/telegram/messenger/LocaleController$PluralRules_Tachelhit;-><init>()V

    invoke-direct {p0, v9, v10}, Lorg/telegram/messenger/LocaleController;->addRules([Ljava/lang/String;Lorg/telegram/messenger/LocaleController$PluralRules;)V

    .line 154
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "mt"

    aput-object v11, v9, v10

    new-instance v10, Lorg/telegram/messenger/LocaleController$PluralRules_Maltese;

    invoke-direct {v10}, Lorg/telegram/messenger/LocaleController$PluralRules_Maltese;-><init>()V

    invoke-direct {p0, v9, v10}, Lorg/telegram/messenger/LocaleController;->addRules([Ljava/lang/String;Lorg/telegram/messenger/LocaleController$PluralRules;)V

    .line 155
    const/4 v9, 0x7

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "ga"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string/jumbo v11, "se"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string/jumbo v11, "sma"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string/jumbo v11, "smi"

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string/jumbo v11, "smj"

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const-string/jumbo v11, "smn"

    aput-object v11, v9, v10

    const/4 v10, 0x6

    const-string/jumbo v11, "sms"

    aput-object v11, v9, v10

    new-instance v10, Lorg/telegram/messenger/LocaleController$PluralRules_Two;

    invoke-direct {v10}, Lorg/telegram/messenger/LocaleController$PluralRules_Two;-><init>()V

    invoke-direct {p0, v9, v10}, Lorg/telegram/messenger/LocaleController;->addRules([Ljava/lang/String;Lorg/telegram/messenger/LocaleController$PluralRules;)V

    .line 156
    const/16 v9, 0xc

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "ak"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string/jumbo v11, "am"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string/jumbo v11, "bh"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string/jumbo v11, "fil"

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string/jumbo v11, "tl"

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const-string/jumbo v11, "guw"

    aput-object v11, v9, v10

    const/4 v10, 0x6

    const-string/jumbo v11, "hi"

    aput-object v11, v9, v10

    const/4 v10, 0x7

    const-string/jumbo v11, "ln"

    aput-object v11, v9, v10

    const/16 v10, 0x8

    const-string/jumbo v11, "mg"

    aput-object v11, v9, v10

    const/16 v10, 0x9

    const-string/jumbo v11, "nso"

    aput-object v11, v9, v10

    const/16 v10, 0xa

    const-string/jumbo v11, "ti"

    aput-object v11, v9, v10

    const/16 v10, 0xb

    const-string/jumbo v11, "wa"

    aput-object v11, v9, v10

    new-instance v10, Lorg/telegram/messenger/LocaleController$PluralRules_Zero;

    invoke-direct {v10}, Lorg/telegram/messenger/LocaleController$PluralRules_Zero;-><init>()V

    invoke-direct {p0, v9, v10}, Lorg/telegram/messenger/LocaleController;->addRules([Ljava/lang/String;Lorg/telegram/messenger/LocaleController$PluralRules;)V

    .line 157
    const/16 v9, 0x1b

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "az"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string/jumbo v11, "bm"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string/jumbo v11, "fa"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string/jumbo v11, "ig"

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string/jumbo v11, "hu"

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const-string/jumbo v11, "ja"

    aput-object v11, v9, v10

    const/4 v10, 0x6

    const-string/jumbo v11, "kde"

    aput-object v11, v9, v10

    const/4 v10, 0x7

    const-string/jumbo v11, "kea"

    aput-object v11, v9, v10

    const/16 v10, 0x8

    const-string/jumbo v11, "ko"

    aput-object v11, v9, v10

    const/16 v10, 0x9

    const-string/jumbo v11, "my"

    aput-object v11, v9, v10

    const/16 v10, 0xa

    const-string/jumbo v11, "ses"

    aput-object v11, v9, v10

    const/16 v10, 0xb

    const-string/jumbo v11, "sg"

    aput-object v11, v9, v10

    const/16 v10, 0xc

    const-string/jumbo v11, "to"

    aput-object v11, v9, v10

    const/16 v10, 0xd

    const-string/jumbo v11, "tr"

    aput-object v11, v9, v10

    const/16 v10, 0xe

    const-string/jumbo v11, "vi"

    aput-object v11, v9, v10

    const/16 v10, 0xf

    const-string/jumbo v11, "wo"

    aput-object v11, v9, v10

    const/16 v10, 0x10

    const-string/jumbo v11, "yo"

    aput-object v11, v9, v10

    const/16 v10, 0x11

    const-string/jumbo v11, "zh"

    aput-object v11, v9, v10

    const/16 v10, 0x12

    const-string/jumbo v11, "bo"

    aput-object v11, v9, v10

    const/16 v10, 0x13

    const-string/jumbo v11, "dz"

    aput-object v11, v9, v10

    const/16 v10, 0x14

    const-string/jumbo v11, "id"

    aput-object v11, v9, v10

    const/16 v10, 0x15

    const-string/jumbo v11, "jv"

    aput-object v11, v9, v10

    const/16 v10, 0x16

    const-string/jumbo v11, "ka"

    aput-object v11, v9, v10

    const/16 v10, 0x17

    const-string/jumbo v11, "km"

    aput-object v11, v9, v10

    const/16 v10, 0x18

    const-string/jumbo v11, "kn"

    aput-object v11, v9, v10

    const/16 v10, 0x19

    const-string/jumbo v11, "ms"

    aput-object v11, v9, v10

    const/16 v10, 0x1a

    const-string/jumbo v11, "th"

    aput-object v11, v9, v10

    new-instance v10, Lorg/telegram/messenger/LocaleController$PluralRules_None;

    invoke-direct {v10}, Lorg/telegram/messenger/LocaleController$PluralRules_None;-><init>()V

    invoke-direct {p0, v9, v10}, Lorg/telegram/messenger/LocaleController;->addRules([Ljava/lang/String;Lorg/telegram/messenger/LocaleController$PluralRules;)V

    .line 160
    new-instance v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    invoke-direct {v5}, Lorg/telegram/messenger/LocaleController$LocaleInfo;-><init>()V

    .line 161
    .local v5, "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    const-string/jumbo v9, "English"

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    .line 162
    const-string/jumbo v9, "English"

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    .line 163
    const-string/jumbo v9, "en"

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    .line 164
    const/4 v9, 0x0

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    .line 165
    iget-object v9, p0, Lorg/telegram/messenger/LocaleController;->sortedLanguages:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    iget-object v9, p0, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    iget-object v10, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v9, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    new-instance v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .end local v5    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    invoke-direct {v5}, Lorg/telegram/messenger/LocaleController$LocaleInfo;-><init>()V

    .line 169
    .restart local v5    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    const-string/jumbo v9, "Italiano"

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    .line 170
    const-string/jumbo v9, "Italian"

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    .line 171
    const-string/jumbo v9, "it"

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    .line 172
    const/4 v9, 0x0

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    .line 173
    iget-object v9, p0, Lorg/telegram/messenger/LocaleController;->sortedLanguages:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    iget-object v9, p0, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    iget-object v10, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v9, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    new-instance v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .end local v5    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    invoke-direct {v5}, Lorg/telegram/messenger/LocaleController$LocaleInfo;-><init>()V

    .line 177
    .restart local v5    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    const-string/jumbo v9, "Espa\u00f1ol"

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    .line 178
    const-string/jumbo v9, "Spanish"

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    .line 179
    const-string/jumbo v9, "es"

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    .line 180
    iget-object v9, p0, Lorg/telegram/messenger/LocaleController;->sortedLanguages:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    iget-object v9, p0, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    iget-object v10, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v9, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    new-instance v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .end local v5    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    invoke-direct {v5}, Lorg/telegram/messenger/LocaleController$LocaleInfo;-><init>()V

    .line 184
    .restart local v5    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    const-string/jumbo v9, "Deutsch"

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    .line 185
    const-string/jumbo v9, "German"

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    .line 186
    const-string/jumbo v9, "de"

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    .line 187
    const/4 v9, 0x0

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    .line 188
    iget-object v9, p0, Lorg/telegram/messenger/LocaleController;->sortedLanguages:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    iget-object v9, p0, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    iget-object v10, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v9, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    new-instance v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .end local v5    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    invoke-direct {v5}, Lorg/telegram/messenger/LocaleController$LocaleInfo;-><init>()V

    .line 192
    .restart local v5    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    const-string/jumbo v9, "Nederlands"

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    .line 193
    const-string/jumbo v9, "Dutch"

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    .line 194
    const-string/jumbo v9, "nl"

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    .line 195
    const/4 v9, 0x0

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    .line 196
    iget-object v9, p0, Lorg/telegram/messenger/LocaleController;->sortedLanguages:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    iget-object v9, p0, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    iget-object v10, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v9, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    new-instance v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .end local v5    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    invoke-direct {v5}, Lorg/telegram/messenger/LocaleController$LocaleInfo;-><init>()V

    .line 200
    .restart local v5    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    const-string/jumbo v9, "\u0627\u0644\u0639\u0631\u0628\u064a\u0629"

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    .line 201
    const-string/jumbo v9, "Arabic"

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    .line 202
    const-string/jumbo v9, "ar"

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    .line 203
    const/4 v9, 0x0

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    .line 204
    iget-object v9, p0, Lorg/telegram/messenger/LocaleController;->sortedLanguages:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    iget-object v9, p0, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    iget-object v10, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v9, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    new-instance v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .end local v5    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    invoke-direct {v5}, Lorg/telegram/messenger/LocaleController$LocaleInfo;-><init>()V

    .line 208
    .restart local v5    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    const-string/jumbo v9, "\u0411\u044a\u043b\u0433\u0430\u0440\u0441\u043a\u0438"

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    .line 209
    const-string/jumbo v9, "Bulgarian"

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    .line 210
    const-string/jumbo v9, "bg"

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    .line 211
    iget-object v9, p0, Lorg/telegram/messenger/LocaleController;->sortedLanguages:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    iget-object v9, p0, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    iget-object v10, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v9, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    new-instance v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .end local v5    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    invoke-direct {v5}, Lorg/telegram/messenger/LocaleController$LocaleInfo;-><init>()V

    .line 215
    .restart local v5    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    const-string/jumbo v9, "\u0641\u0627\u0631\u0633\u06cc"

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    .line 216
    const-string/jumbo v9, "Parsi"

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    .line 217
    const-string/jumbo v9, "fa_IR"

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    .line 218
    const/4 v9, 0x0

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    .line 219
    iget-object v9, p0, Lorg/telegram/messenger/LocaleController;->sortedLanguages:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    iget-object v9, p0, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    iget-object v10, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v9, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    new-instance v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .end local v5    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    invoke-direct {v5}, Lorg/telegram/messenger/LocaleController$LocaleInfo;-><init>()V

    .line 223
    .restart local v5    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    const-string/jumbo v9, "\u0905\u0902\u0917\u094d\u0930\u0947\u091c\u0940"

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    .line 224
    const-string/jumbo v9, "Hindi"

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    .line 225
    const-string/jumbo v9, "hi"

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    .line 226
    const/4 v9, 0x0

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    .line 227
    iget-object v9, p0, Lorg/telegram/messenger/LocaleController;->sortedLanguages:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    iget-object v9, p0, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    iget-object v10, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v9, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    new-instance v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .end local v5    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    invoke-direct {v5}, Lorg/telegram/messenger/LocaleController$LocaleInfo;-><init>()V

    .line 231
    .restart local v5    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    const-string/jumbo v9, "Catal\u00e0"

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    .line 232
    const-string/jumbo v9, "Catalan"

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    .line 233
    const-string/jumbo v9, "ca"

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    .line 234
    const/4 v9, 0x0

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    .line 235
    iget-object v9, p0, Lorg/telegram/messenger/LocaleController;->sortedLanguages:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    iget-object v9, p0, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    iget-object v10, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v9, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    new-instance v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .end local v5    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    invoke-direct {v5}, Lorg/telegram/messenger/LocaleController$LocaleInfo;-><init>()V

    .line 239
    .restart local v5    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    const-string/jumbo v9, "Esperanto"

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    .line 240
    const-string/jumbo v9, "Esperanto"

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    .line 241
    const-string/jumbo v9, "eo"

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    .line 242
    iget-object v9, p0, Lorg/telegram/messenger/LocaleController;->sortedLanguages:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    iget-object v9, p0, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    iget-object v10, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v9, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    new-instance v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .end local v5    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    invoke-direct {v5}, Lorg/telegram/messenger/LocaleController$LocaleInfo;-><init>()V

    .line 246
    .restart local v5    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    const-string/jumbo v9, "\u6b63\u9ad4\u4e2d\u6587\uff08\u53f0\u7063\uff09"

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    .line 247
    const-string/jumbo v9, "Chinese Traditional (Taiwan)"

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    .line 248
    const-string/jumbo v9, "zh_TW"

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    .line 249
    const/4 v9, 0x0

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    .line 250
    iget-object v9, p0, Lorg/telegram/messenger/LocaleController;->sortedLanguages:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    iget-object v9, p0, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    iget-object v10, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v9, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    new-instance v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .end local v5    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    invoke-direct {v5}, Lorg/telegram/messenger/LocaleController$LocaleInfo;-><init>()V

    .line 254
    .restart local v5    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    const-string/jumbo v9, "\u7b80\u4f53\u4e2d\u6587"

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    .line 255
    const-string/jumbo v9, "Simplified Chinese"

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    .line 256
    const-string/jumbo v9, "zh_CN"

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    .line 257
    const/4 v9, 0x0

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    .line 258
    iget-object v9, p0, Lorg/telegram/messenger/LocaleController;->sortedLanguages:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    iget-object v9, p0, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    iget-object v10, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v9, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    new-instance v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .end local v5    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    invoke-direct {v5}, Lorg/telegram/messenger/LocaleController$LocaleInfo;-><init>()V

    .line 262
    .restart local v5    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    const-string/jumbo v9, "\u65e5\u672c\u8a9e"

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    .line 263
    const-string/jumbo v9, "Japanese"

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    .line 264
    const-string/jumbo v9, "ja"

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    .line 265
    const/4 v9, 0x0

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    .line 266
    iget-object v9, p0, Lorg/telegram/messenger/LocaleController;->sortedLanguages:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    iget-object v9, p0, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    iget-object v10, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v9, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    new-instance v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .end local v5    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    invoke-direct {v5}, Lorg/telegram/messenger/LocaleController$LocaleInfo;-><init>()V

    .line 270
    .restart local v5    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    const-string/jumbo v9, "Hrvatski"

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    .line 271
    const-string/jumbo v9, "Croatian"

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    .line 272
    const-string/jumbo v9, "hr"

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    .line 273
    const/4 v9, 0x0

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    .line 274
    iget-object v9, p0, Lorg/telegram/messenger/LocaleController;->sortedLanguages:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    iget-object v9, p0, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    iget-object v10, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v9, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    new-instance v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .end local v5    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    invoke-direct {v5}, Lorg/telegram/messenger/LocaleController$LocaleInfo;-><init>()V

    .line 278
    .restart local v5    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    const-string/jumbo v9, "Euskara"

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    .line 279
    const-string/jumbo v9, "Basque"

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    .line 280
    const-string/jumbo v9, "eu"

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    .line 281
    iget-object v9, p0, Lorg/telegram/messenger/LocaleController;->sortedLanguages:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    iget-object v9, p0, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    iget-object v10, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v9, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    new-instance v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .end local v5    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    invoke-direct {v5}, Lorg/telegram/messenger/LocaleController$LocaleInfo;-><init>()V

    .line 285
    .restart local v5    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    const-string/jumbo v9, "Fran\u00e7ais"

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    .line 286
    const-string/jumbo v9, "French"

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    .line 287
    const-string/jumbo v9, "fr"

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    .line 288
    iget-object v9, p0, Lorg/telegram/messenger/LocaleController;->sortedLanguages:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    iget-object v9, p0, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    iget-object v10, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v9, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    new-instance v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .end local v5    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    invoke-direct {v5}, Lorg/telegram/messenger/LocaleController$LocaleInfo;-><init>()V

    .line 292
    .restart local v5    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    const-string/jumbo v9, "Galego"

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    .line 293
    const-string/jumbo v9, "Galician"

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    .line 294
    const-string/jumbo v9, "gl"

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    .line 295
    iget-object v9, p0, Lorg/telegram/messenger/LocaleController;->sortedLanguages:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    iget-object v9, p0, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    iget-object v10, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v9, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    new-instance v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .end local v5    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    invoke-direct {v5}, Lorg/telegram/messenger/LocaleController$LocaleInfo;-><init>()V

    .line 299
    .restart local v5    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    const-string/jumbo v9, "\u05e2\u05d1\u05e8\u05d9\u05ea"

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    .line 300
    const-string/jumbo v9, "hebrew"

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    .line 301
    const-string/jumbo v9, "he"

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    .line 302
    iget-object v9, p0, Lorg/telegram/messenger/LocaleController;->sortedLanguages:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    iget-object v9, p0, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    iget-object v10, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v9, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    new-instance v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .end local v5    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    invoke-direct {v5}, Lorg/telegram/messenger/LocaleController$LocaleInfo;-><init>()V

    .line 306
    .restart local v5    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    const-string/jumbo v9, "\u05e2\u05d1\u05e8\u05d9\u05ea"

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    .line 307
    const-string/jumbo v9, "Hebrew"

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    .line 308
    const-string/jumbo v9, "iw"

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    .line 309
    iget-object v9, p0, Lorg/telegram/messenger/LocaleController;->sortedLanguages:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    iget-object v9, p0, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    iget-object v10, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v9, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    new-instance v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .end local v5    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    invoke-direct {v5}, Lorg/telegram/messenger/LocaleController$LocaleInfo;-><init>()V

    .line 313
    .restart local v5    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    const-string/jumbo v9, "Polski"

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    .line 314
    const-string/jumbo v9, "Polish"

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    .line 315
    const-string/jumbo v9, "pl"

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    .line 316
    const/4 v9, 0x0

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    .line 317
    iget-object v9, p0, Lorg/telegram/messenger/LocaleController;->sortedLanguages:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    iget-object v9, p0, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    iget-object v10, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v9, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    new-instance v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .end local v5    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    invoke-direct {v5}, Lorg/telegram/messenger/LocaleController$LocaleInfo;-><init>()V

    .line 321
    .restart local v5    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    const-string/jumbo v9, "\u0420\u0443\u0441\u0441\u043a\u0438\u0439"

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    .line 322
    const-string/jumbo v9, "Russian"

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    .line 323
    const-string/jumbo v9, "ru"

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    .line 324
    iget-object v9, p0, Lorg/telegram/messenger/LocaleController;->sortedLanguages:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    iget-object v9, p0, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    iget-object v10, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v9, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    new-instance v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .end local v5    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    invoke-direct {v5}, Lorg/telegram/messenger/LocaleController$LocaleInfo;-><init>()V

    .line 328
    .restart local v5    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    const-string/jumbo v9, "T\u00fcrk\u00e7e"

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    .line 329
    const-string/jumbo v9, "Turkish"

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    .line 330
    const-string/jumbo v9, "tr"

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    .line 331
    const/4 v9, 0x0

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    .line 332
    iget-object v9, p0, Lorg/telegram/messenger/LocaleController;->sortedLanguages:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    iget-object v9, p0, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    iget-object v10, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v9, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    new-instance v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .end local v5    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    invoke-direct {v5}, Lorg/telegram/messenger/LocaleController$LocaleInfo;-><init>()V

    .line 336
    .restart local v5    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    const-string/jumbo v9, "\u0423\u043a\u0440\u0430\u0457\u043d\u0441\u044c\u043a\u0430"

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    .line 337
    const-string/jumbo v9, "Ukrainian"

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    .line 338
    const-string/jumbo v9, "uk"

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    .line 339
    const/4 v9, 0x0

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    .line 340
    iget-object v9, p0, Lorg/telegram/messenger/LocaleController;->sortedLanguages:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    iget-object v9, p0, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    iget-object v10, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v9, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    new-instance v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .end local v5    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    invoke-direct {v5}, Lorg/telegram/messenger/LocaleController$LocaleInfo;-><init>()V

    .line 344
    .restart local v5    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    const-string/jumbo v9, "Portugu\u00eas (Brasil)"

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    .line 345
    const-string/jumbo v9, "Portuguese (Brazil)"

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    .line 346
    const-string/jumbo v9, "pt_BR"

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    .line 347
    const/4 v9, 0x0

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    .line 348
    iget-object v9, p0, Lorg/telegram/messenger/LocaleController;->sortedLanguages:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    iget-object v9, p0, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    iget-object v10, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v9, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    new-instance v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .end local v5    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    invoke-direct {v5}, Lorg/telegram/messenger/LocaleController$LocaleInfo;-><init>()V

    .line 352
    .restart local v5    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    const-string/jumbo v9, "\ud55c\uad6d\uc5b4"

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    .line 353
    const-string/jumbo v9, "Korean"

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    .line 354
    const-string/jumbo v9, "ko"

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    .line 355
    const/4 v9, 0x0

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    .line 356
    iget-object v9, p0, Lorg/telegram/messenger/LocaleController;->sortedLanguages:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    iget-object v9, p0, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    iget-object v10, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v9, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    invoke-direct {p0}, Lorg/telegram/messenger/LocaleController;->loadOtherLanguages()V

    .line 361
    iget-object v9, p0, Lorg/telegram/messenger/LocaleController;->otherLanguages:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .line 362
    .local v4, "locale":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    iget-object v10, p0, Lorg/telegram/messenger/LocaleController;->sortedLanguages:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    iget-object v10, p0, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    iget-object v11, v4, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v10, v11, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 366
    .end local v4    # "locale":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    :cond_0
    iget-object v9, p0, Lorg/telegram/messenger/LocaleController;->sortedLanguages:Ljava/util/ArrayList;

    new-instance v10, Lorg/telegram/messenger/LocaleController$1;

    invoke-direct {v10, p0}, Lorg/telegram/messenger/LocaleController$1;-><init>(Lorg/telegram/messenger/LocaleController;)V

    invoke-static {v9, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 373
    new-instance v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .end local v5    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    invoke-direct {v5}, Lorg/telegram/messenger/LocaleController$LocaleInfo;-><init>()V

    .restart local v5    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    iput-object v5, p0, Lorg/telegram/messenger/LocaleController;->defaultLocalInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .line 374
    const-string/jumbo v9, "System default"

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    .line 375
    const-string/jumbo v9, "System default"

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    .line 376
    const/4 v9, 0x0

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    .line 377
    const/4 v9, 0x0

    iput-object v9, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    .line 378
    iget-object v9, p0, Lorg/telegram/messenger/LocaleController;->sortedLanguages:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 380
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    iput-object v9, p0, Lorg/telegram/messenger/LocaleController;->systemDefaultLocale:Ljava/util/Locale;

    .line 381
    sget-object v9, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v9

    sput-boolean v9, Lorg/telegram/messenger/LocaleController;->is24HourFormat:Z

    .line 382
    const/4 v1, 0x0

    .line 383
    .local v1, "currentInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    const/4 v6, 0x0

    .line 386
    .local v6, "override":Z
    :try_start_0
    sget-object v9, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v10, "mainconfig"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 387
    .local v7, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v9, "language"

    const/4 v10, 0x0

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 388
    .local v3, "lang":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 389
    iget-object v9, p0, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    invoke-virtual {v9, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-object v1, v0

    .line 390
    if-eqz v1, :cond_1

    .line 391
    const/4 v6, 0x1

    .line 395
    :cond_1
    if-nez v1, :cond_2

    iget-object v9, p0, Lorg/telegram/messenger/LocaleController;->systemDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 396
    iget-object v9, p0, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    iget-object v10, p0, Lorg/telegram/messenger/LocaleController;->systemDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-object v1, v0

    .line 398
    :cond_2
    if-nez v1, :cond_3

    .line 399
    iget-object v9, p0, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    iget-object v10, p0, Lorg/telegram/messenger/LocaleController;->systemDefaultLocale:Ljava/util/Locale;

    invoke-direct {p0, v10}, Lorg/telegram/messenger/LocaleController;->getLocaleString(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-object v1, v0

    .line 401
    :cond_3
    if-nez v1, :cond_4

    .line 402
    iget-object v9, p0, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    const-string/jumbo v10, "en"

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-object v1, v0

    .line 404
    :cond_4
    invoke-virtual {p0, v1, v6}, Lorg/telegram/messenger/LocaleController;->applyLanguage(Lorg/telegram/messenger/LocaleController$LocaleInfo;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    .end local v3    # "lang":Ljava/lang/String;
    .end local v7    # "preferences":Landroid/content/SharedPreferences;
    :goto_1
    :try_start_1
    new-instance v8, Landroid/content/IntentFilter;

    const-string/jumbo v9, "android.intent.action.TIMEZONE_CHANGED"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 411
    .local v8, "timezoneFilter":Landroid/content/IntentFilter;
    sget-object v9, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v10, Lorg/telegram/messenger/LocaleController$TimeZoneChangedReceiver;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lorg/telegram/messenger/LocaleController$TimeZoneChangedReceiver;-><init>(Lorg/telegram/messenger/LocaleController;Lorg/telegram/messenger/LocaleController$1;)V

    invoke-virtual {v9, v10, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 415
    .end local v8    # "timezoneFilter":Landroid/content/IntentFilter;
    :goto_2
    return-void

    .line 405
    :catch_0
    move-exception v2

    .line 406
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 412
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 413
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private addRules([Ljava/lang/String;Lorg/telegram/messenger/LocaleController$PluralRules;)V
    .locals 4
    .param p1, "languages"    # [Ljava/lang/String;
    .param p2, "rules"    # Lorg/telegram/messenger/LocaleController$PluralRules;

    .prologue
    .line 418
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 419
    .local v0, "language":Ljava/lang/String;
    iget-object v3, p0, Lorg/telegram/messenger/LocaleController;->allRules:Ljava/util/HashMap;

    invoke-virtual {v3, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 421
    .end local v0    # "language":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;
    .locals 3
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "defaultFormat"    # Ljava/lang/String;

    .prologue
    .line 1110
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 1111
    :cond_0
    move-object p2, p3

    .line 1115
    :cond_1
    :try_start_0
    invoke-static {p2, p1}, Lorg/telegram/messenger/time/FastDateFormat;->getInstance(Ljava/lang/String;Ljava/util/Locale;)Lorg/telegram/messenger/time/FastDateFormat;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1120
    .local v1, "formatter":Lorg/telegram/messenger/time/FastDateFormat;
    :goto_0
    return-object v1

    .line 1116
    .end local v1    # "formatter":Lorg/telegram/messenger/time/FastDateFormat;
    :catch_0
    move-exception v0

    .line 1117
    .local v0, "e":Ljava/lang/Exception;
    move-object p2, p3

    .line 1118
    invoke-static {p2, p1}, Lorg/telegram/messenger/time/FastDateFormat;->getInstance(Ljava/lang/String;Ljava/util/Locale;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v1

    .restart local v1    # "formatter":Lorg/telegram/messenger/time/FastDateFormat;
    goto :goto_0
.end method

.method public static formatCallDuration(I)Ljava/lang/String;
    .locals 4
    .param p0, "duration"    # I

    .prologue
    .line 941
    const/16 v2, 0xe10

    if-le p0, v2, :cond_1

    .line 942
    const-string/jumbo v2, "Hours"

    div-int/lit16 v3, p0, 0xe10

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 943
    .local v1, "result":Ljava/lang/String;
    rem-int/lit16 v2, p0, 0xe10

    div-int/lit8 v0, v2, 0x3c

    .line 944
    .local v0, "minutes":I
    if-lez v0, :cond_0

    .line 945
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Minutes"

    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 951
    .end local v0    # "minutes":I
    .end local v1    # "result":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 948
    :cond_1
    const/16 v2, 0x3c

    if-le p0, v2, :cond_2

    .line 949
    const-string/jumbo v2, "Minutes"

    div-int/lit8 v3, p0, 0x3c

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 951
    :cond_2
    const-string/jumbo v2, "Seconds"

    invoke-static {v2, p0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static formatDate(J)Ljava/lang/String;
    .locals 10
    .param p0, "date"    # J

    .prologue
    .line 1001
    const-wide/16 v6, 0x3e8

    mul-long/2addr p0, v6

    .line 1002
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 1003
    .local v4, "rightNow":Ljava/util/Calendar;
    const/4 v6, 0x6

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 1004
    .local v2, "day":I
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 1005
    .local v5, "year":I
    invoke-virtual {v4, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1006
    const/4 v6, 0x6

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 1007
    .local v0, "dateDay":I
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1009
    .local v1, "dateYear":I
    if-ne v0, v2, :cond_0

    if-ne v5, v1, :cond_0

    .line 1010
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 1021
    .end local v0    # "dateDay":I
    .end local v1    # "dateYear":I
    .end local v2    # "day":I
    .end local v4    # "rightNow":Ljava/util/Calendar;
    .end local v5    # "year":I
    :goto_0
    return-object v6

    .line 1011
    .restart local v0    # "dateDay":I
    .restart local v1    # "dateYear":I
    .restart local v2    # "day":I
    .restart local v4    # "rightNow":Ljava/util/Calendar;
    .restart local v5    # "year":I
    :cond_0
    add-int/lit8 v6, v0, 0x1

    if-ne v6, v2, :cond_1

    if-ne v5, v1, :cond_1

    .line 1012
    const-string/jumbo v6, "Yesterday"

    const v7, 0x7f0706b9

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 1013
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, p0

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide v8, 0x757b12c00L

    cmp-long v6, v6, v8

    if-gez v6, :cond_2

    .line 1014
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/messenger/LocaleController;->formatterMonth:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 1016
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/messenger/LocaleController;->formatterYear:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    .line 1018
    .end local v0    # "dateDay":I
    .end local v1    # "dateYear":I
    .end local v2    # "day":I
    .end local v4    # "rightNow":Ljava/util/Calendar;
    .end local v5    # "year":I
    :catch_0
    move-exception v3

    .line 1019
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1021
    const-string/jumbo v6, "LOC_ERR: formatDate"

    goto :goto_0
.end method

.method public static formatDateAudio(J)Ljava/lang/String;
    .locals 12
    .param p0, "date"    # J

    .prologue
    .line 1026
    const-wide/16 v6, 0x3e8

    mul-long/2addr p0, v6

    .line 1027
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 1028
    .local v4, "rightNow":Ljava/util/Calendar;
    const/4 v6, 0x6

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 1029
    .local v2, "day":I
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 1030
    .local v5, "year":I
    invoke-virtual {v4, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1031
    const/4 v6, 0x6

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 1032
    .local v0, "dateDay":I
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1034
    .local v1, "dateYear":I
    if-ne v0, v2, :cond_0

    if-ne v5, v1, :cond_0

    .line 1035
    const-string/jumbo v6, "%s %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "TodayAt"

    const v10, 0x7f07063c

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v9

    iget-object v9, v9, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1046
    .end local v0    # "dateDay":I
    .end local v1    # "dateYear":I
    .end local v2    # "day":I
    .end local v4    # "rightNow":Ljava/util/Calendar;
    .end local v5    # "year":I
    :goto_0
    return-object v6

    .line 1036
    .restart local v0    # "dateDay":I
    .restart local v1    # "dateYear":I
    .restart local v2    # "day":I
    .restart local v4    # "rightNow":Ljava/util/Calendar;
    .restart local v5    # "year":I
    :cond_0
    add-int/lit8 v6, v0, 0x1

    if-ne v6, v2, :cond_1

    if-ne v5, v1, :cond_1

    .line 1037
    const-string/jumbo v6, "%s %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "YesterdayAt"

    const v10, 0x7f0706ba

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v9

    iget-object v9, v9, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 1038
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, p0

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide v8, 0x757b12c00L

    cmp-long v6, v6, v8

    if-gez v6, :cond_2

    .line 1039
    const-string/jumbo v6, "formatDateAtTime"

    const v7, 0x7f0706d0

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v10

    iget-object v10, v10, Lorg/telegram/messenger/LocaleController;->formatterMonth:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v11}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v10

    iget-object v10, v10, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v11}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 1041
    :cond_2
    const-string/jumbo v6, "formatDateAtTime"

    const v7, 0x7f0706d0

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v10

    iget-object v10, v10, Lorg/telegram/messenger/LocaleController;->formatterYear:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v11}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v10

    iget-object v10, v10, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v11}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto/16 :goto_0

    .line 1043
    .end local v0    # "dateDay":I
    .end local v1    # "dateYear":I
    .end local v2    # "day":I
    .end local v4    # "rightNow":Ljava/util/Calendar;
    .end local v5    # "year":I
    :catch_0
    move-exception v3

    .line 1044
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1046
    const-string/jumbo v6, "LOC_ERR"

    goto/16 :goto_0
.end method

.method public static formatDateCallLog(J)Ljava/lang/String;
    .locals 12
    .param p0, "date"    # J

    .prologue
    .line 1051
    const-wide/16 v6, 0x3e8

    mul-long/2addr p0, v6

    .line 1052
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 1053
    .local v4, "rightNow":Ljava/util/Calendar;
    const/4 v6, 0x6

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 1054
    .local v2, "day":I
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 1055
    .local v5, "year":I
    invoke-virtual {v4, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1056
    const/4 v6, 0x6

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 1057
    .local v0, "dateDay":I
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1059
    .local v1, "dateYear":I
    if-ne v0, v2, :cond_0

    if-ne v5, v1, :cond_0

    .line 1060
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 1071
    .end local v0    # "dateDay":I
    .end local v1    # "dateYear":I
    .end local v2    # "day":I
    .end local v4    # "rightNow":Ljava/util/Calendar;
    .end local v5    # "year":I
    :goto_0
    return-object v6

    .line 1061
    .restart local v0    # "dateDay":I
    .restart local v1    # "dateYear":I
    .restart local v2    # "day":I
    .restart local v4    # "rightNow":Ljava/util/Calendar;
    .restart local v5    # "year":I
    :cond_0
    add-int/lit8 v6, v0, 0x1

    if-ne v6, v2, :cond_1

    if-ne v5, v1, :cond_1

    .line 1062
    const-string/jumbo v6, "%s %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "YesterdayAt"

    const v10, 0x7f0706ba

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v9

    iget-object v9, v9, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 1063
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, p0

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide v8, 0x757b12c00L

    cmp-long v6, v6, v8

    if-gez v6, :cond_2

    .line 1064
    const-string/jumbo v6, "formatDateAtTime"

    const v7, 0x7f0706d0

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v10

    iget-object v10, v10, Lorg/telegram/messenger/LocaleController;->chatDate:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v11}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v10

    iget-object v10, v10, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v11}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 1066
    :cond_2
    const-string/jumbo v6, "formatDateAtTime"

    const v7, 0x7f0706d0

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v10

    iget-object v10, v10, Lorg/telegram/messenger/LocaleController;->chatFullDate:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v11}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v10

    iget-object v10, v10, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v11}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto/16 :goto_0

    .line 1068
    .end local v0    # "dateDay":I
    .end local v1    # "dateYear":I
    .end local v2    # "day":I
    .end local v4    # "rightNow":Ljava/util/Calendar;
    .end local v5    # "year":I
    :catch_0
    move-exception v3

    .line 1069
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1071
    const-string/jumbo v6, "LOC_ERR"

    goto/16 :goto_0
.end method

.method public static formatDateChat(J)Ljava/lang/String;
    .locals 6
    .param p0, "date"    # J

    .prologue
    .line 984
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 985
    .local v1, "rightNow":Ljava/util/Calendar;
    const-wide/16 v2, 0x3e8

    mul-long/2addr p0, v2

    .line 987
    invoke-virtual {v1, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 989
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide v4, 0x757b12c00L

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 990
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/LocaleController;->chatDate:Lorg/telegram/messenger/time/FastDateFormat;

    invoke-virtual {v2, p0, p1}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    .line 996
    .end local v1    # "rightNow":Ljava/util/Calendar;
    :goto_0
    return-object v2

    .line 992
    .restart local v1    # "rightNow":Ljava/util/Calendar;
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/LocaleController;->chatFullDate:Lorg/telegram/messenger/time/FastDateFormat;

    invoke-virtual {v2, p0, p1}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 993
    .end local v1    # "rightNow":Ljava/util/Calendar;
    :catch_0
    move-exception v0

    .line 994
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 996
    const-string/jumbo v2, "LOC_ERR: formatDateChat"

    goto :goto_0
.end method

.method public static formatDateOnline(J)Ljava/lang/String;
    .locals 14
    .param p0, "date"    # J

    .prologue
    .line 1076
    const-wide/16 v8, 0x3e8

    mul-long/2addr p0, v8

    .line 1077
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 1078
    .local v5, "rightNow":Ljava/util/Calendar;
    const/4 v7, 0x6

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 1079
    .local v2, "day":I
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 1080
    .local v6, "year":I
    invoke-virtual {v5, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1081
    const/4 v7, 0x6

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 1082
    .local v0, "dateDay":I
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1084
    .local v1, "dateYear":I
    if-ne v0, v2, :cond_0

    if-ne v6, v1, :cond_0

    .line 1085
    const-string/jumbo v7, "%s %s %s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "LastSeen"

    const v11, 0x7f070323

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string/jumbo v10, "TodayAt"

    const v11, 0x7f07063c

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v10

    iget-object v10, v10, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v11}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1106
    .end local v0    # "dateDay":I
    .end local v1    # "dateYear":I
    .end local v2    # "day":I
    .end local v5    # "rightNow":Ljava/util/Calendar;
    .end local v6    # "year":I
    :goto_0
    return-object v7

    .line 1094
    .restart local v0    # "dateDay":I
    .restart local v1    # "dateYear":I
    .restart local v2    # "day":I
    .restart local v5    # "rightNow":Ljava/util/Calendar;
    .restart local v6    # "year":I
    :cond_0
    add-int/lit8 v7, v0, 0x1

    if-ne v7, v2, :cond_1

    if-ne v6, v1, :cond_1

    .line 1095
    const-string/jumbo v7, "%s %s %s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "LastSeen"

    const v11, 0x7f070323

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string/jumbo v10, "YesterdayAt"

    const v11, 0x7f0706ba

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v10

    iget-object v10, v10, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v11}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 1096
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, p0

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide v10, 0x757b12c00L

    cmp-long v7, v8, v10

    if-gez v7, :cond_2

    .line 1097
    const-string/jumbo v7, "formatDateAtTime"

    const v8, 0x7f0706d0

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v11

    iget-object v11, v11, Lorg/telegram/messenger/LocaleController;->formatterMonth:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v12, Ljava/util/Date;

    invoke-direct {v12, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v11, v12}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v11

    iget-object v11, v11, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v12, Ljava/util/Date;

    invoke-direct {v12, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v11, v12}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1098
    .local v4, "format":Ljava/lang/String;
    const-string/jumbo v7, "%s %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "LastSeenDate"

    const v11, 0x7f070328

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v4, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 1100
    .end local v4    # "format":Ljava/lang/String;
    :cond_2
    const-string/jumbo v7, "formatDateAtTime"

    const v8, 0x7f0706d0

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v11

    iget-object v11, v11, Lorg/telegram/messenger/LocaleController;->formatterYear:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v12, Ljava/util/Date;

    invoke-direct {v12, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v11, v12}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v11

    iget-object v11, v11, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v12, Ljava/util/Date;

    invoke-direct {v12, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v11, v12}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1101
    .restart local v4    # "format":Ljava/lang/String;
    const-string/jumbo v7, "%s %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "LastSeenDate"

    const v11, 0x7f070328

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v4, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto/16 :goto_0

    .line 1103
    .end local v0    # "dateDay":I
    .end local v1    # "dateYear":I
    .end local v2    # "day":I
    .end local v4    # "format":Ljava/lang/String;
    .end local v5    # "rightNow":Ljava/util/Calendar;
    .end local v6    # "year":I
    :catch_0
    move-exception v3

    .line 1104
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1106
    const-string/jumbo v7, "LOC_ERR"

    goto/16 :goto_0
.end method

.method public static formatPluralString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "plural"    # I

    .prologue
    .line 756
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/LocaleController;->currentPluralRules:Lorg/telegram/messenger/LocaleController$PluralRules;

    if-nez v2, :cond_1

    .line 757
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "LOC_ERR:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 762
    :goto_0
    return-object v2

    .line 759
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/LocaleController;->currentPluralRules:Lorg/telegram/messenger/LocaleController$PluralRules;

    invoke-virtual {v3, p1}, Lorg/telegram/messenger/LocaleController$PluralRules;->quantityForNumber(I)I

    move-result v3

    invoke-direct {v2, v3}, Lorg/telegram/messenger/LocaleController;->stringForQuantity(I)Ljava/lang/String;

    move-result-object v0

    .line 760
    .local v0, "param":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 761
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "string"

    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 762
    .local v1, "resourceId":I
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static formatShortNumber(I[I)Ljava/lang/String;
    .locals 4
    .param p0, "number"    # I
    .param p1, "rounded"    # [I

    .prologue
    .line 1179
    const-string/jumbo v0, ""

    .line 1183
    .local v0, "K":Ljava/lang/String;
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v1

    int-to-long v2, p0

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static varargs formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "res"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 767
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/LocaleController;->localeValues:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 768
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 769
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 772
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    if-eqz v2, :cond_1

    .line 773
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    invoke-static {v2, v1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 779
    .end local v1    # "value":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 775
    .restart local v1    # "value":Ljava/lang/String;
    :cond_1
    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 777
    .end local v1    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 778
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 779
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "LOC_ERR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static varargs formatStringSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 929
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    if-eqz v1, :cond_0

    .line 930
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    invoke-static {v1, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 936
    :goto_0
    return-object v1

    .line 932
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 934
    :catch_0
    move-exception v0

    .line 935
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 936
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "LOC_ERR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static formatTTLString(I)Ljava/lang/String;
    .locals 6
    .param p0, "ttl"    # I

    .prologue
    .line 784
    const/16 v1, 0x3c

    if-ge p0, v1, :cond_0

    .line 785
    const-string/jumbo v1, "Seconds"

    invoke-static {v1, p0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 797
    :goto_0
    return-object v1

    .line 786
    :cond_0
    const/16 v1, 0xe10

    if-ge p0, v1, :cond_1

    .line 787
    const-string/jumbo v1, "Minutes"

    div-int/lit8 v2, p0, 0x3c

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 788
    :cond_1
    const v1, 0x15180

    if-ge p0, v1, :cond_2

    .line 789
    const-string/jumbo v1, "Hours"

    div-int/lit8 v2, p0, 0x3c

    div-int/lit8 v2, v2, 0x3c

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 790
    :cond_2
    const v1, 0x93a80

    if-ge p0, v1, :cond_3

    .line 791
    const-string/jumbo v1, "Days"

    div-int/lit8 v2, p0, 0x3c

    div-int/lit8 v2, v2, 0x3c

    div-int/lit8 v2, v2, 0x18

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 793
    :cond_3
    div-int/lit8 v1, p0, 0x3c

    div-int/lit8 v1, v1, 0x3c

    div-int/lit8 v0, v1, 0x18

    .line 794
    .local v0, "days":I
    rem-int/lit8 v1, p0, 0x7

    if-nez v1, :cond_4

    .line 795
    const-string/jumbo v1, "Weeks"

    div-int/lit8 v2, v0, 0x7

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 797
    :cond_4
    const-string/jumbo v1, "%s %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "Weeks"

    div-int/lit8 v5, v0, 0x7

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "Days"

    rem-int/lit8 v5, v0, 0x7

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static formatUserStatus(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;
    .locals 7
    .param p0, "user"    # Lorg/telegram/tgnet/TLRPC$User;

    .prologue
    const v6, 0x7f070456

    const/16 v5, -0x64

    const/16 v4, -0x65

    const/16 v3, -0x66

    .line 1214
    if-eqz p0, :cond_0

    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    if-nez v1, :cond_0

    .line 1215
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_userStatusRecently;

    if-eqz v1, :cond_1

    .line 1216
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iput v5, v1, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    .line 1223
    :cond_0
    :goto_0
    if-eqz p0, :cond_3

    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    if-gtz v1, :cond_3

    .line 1224
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->onlinePrivacy:Ljava/util/concurrent/ConcurrentHashMap;

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1225
    const-string/jumbo v1, "Online"

    invoke-static {v1, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1244
    :goto_1
    return-object v1

    .line 1217
    :cond_1
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_userStatusLastWeek;

    if-eqz v1, :cond_2

    .line 1218
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iput v4, v1, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    goto :goto_0

    .line 1219
    :cond_2
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_userStatusLastMonth;

    if-eqz v1, :cond_0

    .line 1220
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    goto :goto_0

    .line 1228
    :cond_3
    if-eqz p0, :cond_4

    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    if-eqz v1, :cond_4

    invoke-static {p0}, Lorg/telegram/messenger/UserObject;->isDeleted(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v1

    if-nez v1, :cond_4

    instance-of v1, p0, Lorg/telegram/tgnet/TLRPC$TL_userEmpty;

    if-eqz v1, :cond_5

    .line 1229
    :cond_4
    const-string/jumbo v1, "ALongTimeAgo"

    const v2, 0x7f070011

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1231
    :cond_5
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v0

    .line 1232
    .local v0, "currentTime":I
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    if-le v1, v0, :cond_6

    .line 1233
    const-string/jumbo v1, "Online"

    invoke-static {v1, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1235
    :cond_6
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_7

    .line 1236
    const-string/jumbo v1, "Invisible"

    const v2, 0x7f0702fb

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1237
    :cond_7
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    if-ne v1, v5, :cond_8

    .line 1238
    const-string/jumbo v1, "Lately"

    const v2, 0x7f07033c

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1239
    :cond_8
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    if-ne v1, v4, :cond_9

    .line 1240
    const-string/jumbo v1, "WithinAWeek"

    const v2, 0x7f0706af

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 1241
    :cond_9
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    if-ne v1, v3, :cond_a

    .line 1242
    const-string/jumbo v1, "WithinAMonth"

    const v2, 0x7f0706ae

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 1244
    :cond_a
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    int-to-long v2, v1

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->formatDateOnline(J)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1
.end method

.method public static getCurrentLanguageName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 733
    const-string/jumbo v0, "LanguageName"

    const v1, 0x7f070320

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lorg/telegram/messenger/LocaleController;
    .locals 4

    .prologue
    .line 123
    sget-object v0, Lorg/telegram/messenger/LocaleController;->Instance:Lorg/telegram/messenger/LocaleController;

    .line 124
    .local v0, "localInstance":Lorg/telegram/messenger/LocaleController;
    if-nez v0, :cond_1

    .line 125
    const-class v3, Lorg/telegram/messenger/LocaleController;

    monitor-enter v3

    .line 126
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/LocaleController;->Instance:Lorg/telegram/messenger/LocaleController;

    .line 127
    if-nez v0, :cond_0

    .line 128
    new-instance v1, Lorg/telegram/messenger/LocaleController;

    invoke-direct {v1}, Lorg/telegram/messenger/LocaleController;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "localInstance":Lorg/telegram/messenger/LocaleController;
    .local v1, "localInstance":Lorg/telegram/messenger/LocaleController;
    :try_start_1
    sput-object v1, Lorg/telegram/messenger/LocaleController;->Instance:Lorg/telegram/messenger/LocaleController;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 130
    .end local v1    # "localInstance":Lorg/telegram/messenger/LocaleController;
    .restart local v0    # "localInstance":Lorg/telegram/messenger/LocaleController;
    :cond_0
    :try_start_2
    monitor-exit v3

    .line 132
    :cond_1
    return-object v0

    .line 130
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "localInstance":Lorg/telegram/messenger/LocaleController;
    .restart local v1    # "localInstance":Lorg/telegram/messenger/LocaleController;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "localInstance":Lorg/telegram/messenger/LocaleController;
    .restart local v0    # "localInstance":Lorg/telegram/messenger/LocaleController;
    goto :goto_0
.end method

.method private getLocaleFileStrings(Ljava/io/File;)Ljava/util/HashMap;
    .locals 12
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 604
    const/4 v6, 0x0

    .line 606
    .local v6, "stream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 607
    .local v8, "stringMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 608
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 609
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .local v7, "stream":Ljava/io/FileInputStream;
    :try_start_1
    const-string/jumbo v10, "UTF-8"

    invoke-interface {v5, v7, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 610
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    .line 611
    .local v3, "eventType":I
    const/4 v4, 0x0

    .line 612
    .local v4, "name":Ljava/lang/String;
    const/4 v9, 0x0

    .line 613
    .local v9, "value":Ljava/lang/String;
    const/4 v0, 0x0

    .line 614
    .local v0, "attrName":Ljava/lang/String;
    :goto_0
    const/4 v10, 0x1

    if-eq v3, v10, :cond_4

    .line 615
    const/4 v10, 0x2

    if-ne v3, v10, :cond_2

    .line 616
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 617
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    .line 618
    .local v1, "c":I
    if-lez v1, :cond_0

    .line 619
    const/4 v10, 0x0

    invoke-interface {v5, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 635
    .end local v1    # "c":I
    :cond_0
    :goto_1
    if-eqz v4, :cond_1

    const-string/jumbo v10, "string"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    if-eqz v9, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_1

    .line 636
    invoke-virtual {v8, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    const/4 v4, 0x0

    .line 638
    const/4 v9, 0x0

    .line 639
    const/4 v0, 0x0

    .line 641
    :cond_1
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    goto :goto_0

    .line 621
    :cond_2
    const/4 v10, 0x4

    if-ne v3, v10, :cond_3

    .line 622
    if-eqz v0, :cond_0

    .line 623
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v9

    .line 624
    if-eqz v9, :cond_0

    .line 625
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 626
    const-string/jumbo v10, "\\n"

    const-string/jumbo v11, "\n"

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 627
    const-string/jumbo v10, "\\"

    const-string/jumbo v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v9

    goto :goto_1

    .line 630
    :cond_3
    const/4 v10, 0x3

    if-ne v3, v10, :cond_0

    .line 631
    const/4 v9, 0x0

    .line 632
    const/4 v0, 0x0

    .line 633
    const/4 v4, 0x0

    goto :goto_1

    .line 648
    :cond_4
    if-eqz v7, :cond_5

    .line 649
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_5
    :goto_2
    move-object v6, v7

    .line 655
    .end local v0    # "attrName":Ljava/lang/String;
    .end local v3    # "eventType":I
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "stream":Ljava/io/FileInputStream;
    .end local v8    # "stringMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "value":Ljava/lang/String;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :goto_3
    return-object v8

    .line 651
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v0    # "attrName":Ljava/lang/String;
    .restart local v3    # "eventType":I
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v8    # "stringMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v9    # "value":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 652
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 644
    .end local v0    # "attrName":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "eventType":I
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "stream":Ljava/io/FileInputStream;
    .end local v8    # "stringMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "value":Ljava/lang/String;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v2

    .line 645
    .restart local v2    # "e":Ljava/lang/Exception;
    :goto_4
    :try_start_3
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 648
    if-eqz v6, :cond_6

    .line 649
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 655
    :cond_6
    :goto_5
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    goto :goto_3

    .line 651
    :catch_2
    move-exception v2

    .line 652
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 647
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    .line 648
    :goto_6
    if-eqz v6, :cond_7

    .line 649
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 653
    :cond_7
    :goto_7
    throw v10

    .line 651
    :catch_3
    move-exception v2

    .line 652
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_7

    .line 647
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v8    # "stringMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_1
    move-exception v10

    move-object v6, v7

    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    goto :goto_6

    .line 644
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    :catch_4
    move-exception v2

    move-object v6, v7

    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    goto :goto_4
.end method

.method private getLocaleString(Ljava/util/Locale;)Ljava/lang/String;
    .locals 6
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    const/16 v5, 0x5f

    .line 445
    if-nez p1, :cond_0

    .line 446
    const-string/jumbo v4, "en"

    .line 464
    :goto_0
    return-object v4

    .line 448
    :cond_0
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 449
    .local v1, "languageCode":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 450
    .local v0, "countryCode":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v3

    .line 451
    .local v3, "variantCode":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 452
    const-string/jumbo v4, "en"

    goto :goto_0

    .line 454
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v4, 0xb

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 455
    .local v2, "result":Ljava/lang/StringBuilder;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 457
    :cond_2
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 459
    :cond_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    .line 461
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 463
    :cond_4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static getLocaleStringIso639()Ljava/lang/String;
    .locals 6

    .prologue
    .line 468
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/LocaleController;->getSystemDefaultLocale()Ljava/util/Locale;

    move-result-object v2

    .line 469
    .local v2, "locale":Ljava/util/Locale;
    if-nez v2, :cond_0

    .line 470
    const-string/jumbo v5, "en"

    .line 488
    :goto_0
    return-object v5

    .line 472
    :cond_0
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 473
    .local v1, "languageCode":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 474
    .local v0, "countryCode":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v4

    .line 475
    .local v4, "variantCode":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 476
    const-string/jumbo v5, "en"

    goto :goto_0

    .line 478
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v5, 0xb

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 479
    .local v3, "result":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 481
    :cond_2
    const/16 v5, 0x2d

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 483
    :cond_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 485
    const/16 v5, 0x5f

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 487
    :cond_4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static getString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "res"    # I

    .prologue
    .line 752
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getStringInternal(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "res"    # I

    .prologue
    .line 737
    iget-object v2, p0, Lorg/telegram/messenger/LocaleController;->localeValues:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 738
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 740
    :try_start_0
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 745
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 746
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "LOC_ERR:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 748
    :cond_1
    return-object v1

    .line 741
    :catch_0
    move-exception v0

    .line 742
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static isRTLCharacter(C)Z
    .locals 3
    .param p0, "ch"    # C

    .prologue
    const/4 v0, 0x1

    .line 1147
    invoke-static {p0}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-static {p0}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    invoke-static {p0}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v1

    const/16 v2, 0x10

    if-eq v1, v2, :cond_0

    invoke-static {p0}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v1

    const/16 v2, 0x11

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadOtherLanguages()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 589
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v7, "langconfig"

    invoke-virtual {v6, v7, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 590
    .local v4, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v6, "locales"

    const/4 v7, 0x0

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 591
    .local v2, "locales":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 601
    :cond_0
    return-void

    .line 594
    :cond_1
    const-string/jumbo v6, "&"

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 595
    .local v3, "localesArr":[Ljava/lang/String;
    array-length v6, v3

    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v0, v3, v5

    .line 596
    .local v0, "locale":Ljava/lang/String;
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->createWithString(Ljava/lang/String;)Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v1

    .line 597
    .local v1, "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    if-eqz v1, :cond_2

    .line 598
    iget-object v7, p0, Lorg/telegram/messenger/LocaleController;->otherLanguages:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 595
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method private saveOtherLanguages()V
    .locals 8

    .prologue
    .line 555
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v6, "langconfig"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 556
    .local v4, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 557
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v3, ""

    .line 558
    .local v3, "locales":Ljava/lang/String;
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->otherLanguages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .line 559
    .local v2, "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    invoke-virtual {v2}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getSaveString()Ljava/lang/String;

    move-result-object v1

    .line 560
    .local v1, "loc":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 561
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    .line 562
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "&"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 564
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 567
    .end local v1    # "loc":Ljava/lang/String;
    .end local v2    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    :cond_2
    const-string/jumbo v5, "locales"

    invoke-interface {v0, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 568
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 569
    return-void
.end method

.method public static stringForMessageListDate(J)Ljava/lang/String;
    .locals 14
    .param p0, "date"    # J

    .prologue
    const/4 v12, -0x1

    .line 1152
    const-wide/16 v8, 0x3e8

    mul-long/2addr p0, v8

    .line 1153
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 1154
    .local v5, "rightNow":Ljava/util/Calendar;
    const/4 v7, 0x6

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 1155
    .local v2, "day":I
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 1156
    .local v6, "year":I
    invoke-virtual {v5, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1157
    const/4 v7, 0x6

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 1158
    .local v0, "dateDay":I
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1160
    .local v1, "dateYear":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, p0

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide v10, 0x757b12c00L

    cmp-long v7, v8, v10

    if-ltz v7, :cond_0

    .line 1161
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/messenger/LocaleController;->formatterYear:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    .line 1175
    .end local v0    # "dateDay":I
    .end local v1    # "dateYear":I
    .end local v2    # "day":I
    .end local v5    # "rightNow":Ljava/util/Calendar;
    .end local v6    # "year":I
    :goto_0
    return-object v7

    .line 1163
    .restart local v0    # "dateDay":I
    .restart local v1    # "dateYear":I
    .restart local v2    # "day":I
    .restart local v5    # "rightNow":Ljava/util/Calendar;
    .restart local v6    # "year":I
    :cond_0
    sub-int v3, v0, v2

    .line 1164
    .local v3, "dayDiff":I
    if-eqz v3, :cond_1

    if-ne v3, v12, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, p0

    const-wide/32 v10, 0x1b77400

    cmp-long v7, v8, v10

    if-gez v7, :cond_2

    .line 1165
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 1166
    :cond_2
    const/4 v7, -0x7

    if-le v3, v7, :cond_3

    if-gt v3, v12, :cond_3

    .line 1167
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/messenger/LocaleController;->formatterWeek:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 1169
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/messenger/LocaleController;->formatterMonth:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_0

    .line 1172
    .end local v0    # "dateDay":I
    .end local v1    # "dateYear":I
    .end local v2    # "day":I
    .end local v3    # "dayDiff":I
    .end local v5    # "rightNow":Ljava/util/Calendar;
    .end local v6    # "year":I
    :catch_0
    move-exception v4

    .line 1173
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1175
    const-string/jumbo v7, "LOC_ERR"

    goto :goto_0
.end method

.method private stringForQuantity(I)Ljava/lang/String;
    .locals 1
    .param p1, "quantity"    # I

    .prologue
    .line 424
    sparse-switch p1, :sswitch_data_0

    .line 436
    const-string/jumbo v0, "other"

    :goto_0
    return-object v0

    .line 426
    :sswitch_0
    const-string/jumbo v0, "zero"

    goto :goto_0

    .line 428
    :sswitch_1
    const-string/jumbo v0, "one"

    goto :goto_0

    .line 430
    :sswitch_2
    const-string/jumbo v0, "two"

    goto :goto_0

    .line 432
    :sswitch_3
    const-string/jumbo v0, "few"

    goto :goto_0

    .line 434
    :sswitch_4
    const-string/jumbo v0, "many"

    goto :goto_0

    .line 424
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
    .end sparse-switch
.end method


# virtual methods
.method public applyLanguage(Lorg/telegram/messenger/LocaleController$LocaleInfo;Z)V
    .locals 1
    .param p1, "localeInfo"    # Lorg/telegram/messenger/LocaleController$LocaleInfo;
    .param p2, "override"    # Z

    .prologue
    .line 659
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/messenger/LocaleController;->applyLanguage(Lorg/telegram/messenger/LocaleController$LocaleInfo;ZZ)V

    .line 660
    return-void
.end method

.method public applyLanguage(Lorg/telegram/messenger/LocaleController$LocaleInfo;ZZ)V
    .locals 11
    .param p1, "localeInfo"    # Lorg/telegram/messenger/LocaleController$LocaleInfo;
    .param p2, "override"    # Z
    .param p3, "fromFile"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 663
    if-nez p1, :cond_0

    .line 730
    :goto_0
    return-void

    .line 668
    :cond_0
    :try_start_0
    iget-object v7, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    if-eqz v7, :cond_6

    .line 669
    iget-object v7, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    const-string/jumbo v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 670
    .local v0, "args":[Ljava/lang/String;
    array-length v7, v0

    if-ne v7, v9, :cond_5

    .line 671
    new-instance v5, Ljava/util/Locale;

    iget-object v7, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-direct {v5, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 675
    .local v5, "newLocale":Ljava/util/Locale;
    :goto_1
    if-eqz v5, :cond_1

    .line 676
    if-eqz p2, :cond_1

    .line 677
    iget-object v7, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    iput-object v7, p0, Lorg/telegram/messenger/LocaleController;->languageOverride:Ljava/lang/String;

    .line 679
    sget-object v7, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v8, "mainconfig"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 680
    .local v6, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 681
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v7, "language"

    iget-object v8, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 682
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 706
    .end local v0    # "args":[Ljava/lang/String;
    .end local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v6    # "preferences":Landroid/content/SharedPreferences;
    :cond_1
    :goto_2
    if-eqz v5, :cond_4

    .line 707
    iget-object v7, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    if-nez v7, :cond_9

    .line 708
    iget-object v7, p0, Lorg/telegram/messenger/LocaleController;->localeValues:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 712
    :cond_2
    :goto_3
    iput-object v5, p0, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    .line 713
    iput-object p1, p0, Lorg/telegram/messenger/LocaleController;->currentLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .line 714
    iget-object v7, p0, Lorg/telegram/messenger/LocaleController;->allRules:Ljava/util/HashMap;

    iget-object v8, p0, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/LocaleController$PluralRules;

    iput-object v7, p0, Lorg/telegram/messenger/LocaleController;->currentPluralRules:Lorg/telegram/messenger/LocaleController$PluralRules;

    .line 715
    iget-object v7, p0, Lorg/telegram/messenger/LocaleController;->currentPluralRules:Lorg/telegram/messenger/LocaleController$PluralRules;

    if-nez v7, :cond_3

    .line 716
    iget-object v7, p0, Lorg/telegram/messenger/LocaleController;->allRules:Ljava/util/HashMap;

    const-string/jumbo v8, "en"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/LocaleController$PluralRules;

    iput-object v7, p0, Lorg/telegram/messenger/LocaleController;->currentPluralRules:Lorg/telegram/messenger/LocaleController$PluralRules;

    .line 718
    :cond_3
    const/4 v7, 0x1

    iput-boolean v7, p0, Lorg/telegram/messenger/LocaleController;->changingConfiguration:Z

    .line 719
    iget-object v7, p0, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    invoke-static {v7}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 720
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    .line 721
    .local v1, "config":Landroid/content/res/Configuration;
    iget-object v7, p0, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    iput-object v7, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 722
    sget-object v7, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget-object v8, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 723
    const/4 v7, 0x0

    iput-boolean v7, p0, Lorg/telegram/messenger/LocaleController;->changingConfiguration:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 729
    .end local v1    # "config":Landroid/content/res/Configuration;
    .end local v5    # "newLocale":Ljava/util/Locale;
    :cond_4
    :goto_4
    invoke-virtual {p0}, Lorg/telegram/messenger/LocaleController;->recreateFormatters()V

    goto/16 :goto_0

    .line 673
    .restart local v0    # "args":[Ljava/lang/String;
    :cond_5
    :try_start_1
    new-instance v5, Ljava/util/Locale;

    const/4 v7, 0x0

    aget-object v7, v0, v7

    const/4 v8, 0x1

    aget-object v8, v0, v8

    invoke-direct {v5, v7, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v5    # "newLocale":Ljava/util/Locale;
    goto/16 :goto_1

    .line 686
    .end local v0    # "args":[Ljava/lang/String;
    .end local v5    # "newLocale":Ljava/util/Locale;
    :cond_6
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->systemDefaultLocale:Ljava/util/Locale;

    .line 687
    .restart local v5    # "newLocale":Ljava/util/Locale;
    const/4 v7, 0x0

    iput-object v7, p0, Lorg/telegram/messenger/LocaleController;->languageOverride:Ljava/lang/String;

    .line 688
    sget-object v7, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v8, "mainconfig"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 689
    .restart local v6    # "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 690
    .restart local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v7, "language"

    invoke-interface {v3, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 691
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 693
    if-eqz v5, :cond_1

    .line 694
    const/4 v4, 0x0

    .line 695
    .local v4, "info":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 696
    iget-object v7, p0, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "info":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    check-cast v4, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .line 698
    .restart local v4    # "info":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    :cond_7
    if-nez v4, :cond_8

    .line 699
    iget-object v7, p0, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    invoke-direct {p0, v5}, Lorg/telegram/messenger/LocaleController;->getLocaleString(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "info":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    check-cast v4, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .line 701
    .restart local v4    # "info":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    :cond_8
    if-nez v4, :cond_1

    .line 702
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    goto/16 :goto_2

    .line 709
    .end local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v4    # "info":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    .end local v6    # "preferences":Landroid/content/SharedPreferences;
    :cond_9
    if-nez p3, :cond_2

    .line 710
    new-instance v7, Ljava/io/File;

    iget-object v8, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v7}, Lorg/telegram/messenger/LocaleController;->getLocaleFileStrings(Ljava/io/File;)Ljava/util/HashMap;

    move-result-object v7

    iput-object v7, p0, Lorg/telegram/messenger/LocaleController;->localeValues:Ljava/util/HashMap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 725
    .end local v5    # "newLocale":Ljava/util/Locale;
    :catch_0
    move-exception v2

    .line 726
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 727
    iput-boolean v10, p0, Lorg/telegram/messenger/LocaleController;->changingConfiguration:Z

    goto :goto_4
.end method

.method public applyLanguageFile(Ljava/io/File;)Z
    .locals 13
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 493
    :try_start_0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/LocaleController;->getLocaleFileStrings(Ljava/io/File;)Ljava/util/HashMap;

    move-result-object v6

    .line 495
    .local v6, "stringMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v10, "LanguageName"

    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 496
    .local v3, "languageName":Ljava/lang/String;
    const-string/jumbo v10, "LanguageNameInEnglish"

    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 497
    .local v4, "languageNameInEnglish":Ljava/lang/String;
    const-string/jumbo v10, "LanguageCode"

    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 498
    .local v2, "languageCode":Ljava/lang/String;
    const-string/jumbo v10, "Theming"

    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 499
    .local v7, "theming":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_0

    if-eqz v4, :cond_0

    .line 500
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_0

    if-eqz v2, :cond_0

    .line 501
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    if-gtz v10, :cond_1

    :cond_0
    if-eqz v7, :cond_2

    .line 502
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_2

    .line 504
    :cond_1
    const-string/jumbo v10, "&"

    invoke-virtual {v3, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string/jumbo v10, "|"

    invoke-virtual {v3, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 551
    .end local v2    # "languageCode":Ljava/lang/String;
    .end local v3    # "languageName":Ljava/lang/String;
    .end local v4    # "languageNameInEnglish":Ljava/lang/String;
    .end local v6    # "stringMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "theming":Ljava/lang/String;
    :cond_2
    :goto_0
    return v8

    .line 507
    .restart local v2    # "languageCode":Ljava/lang/String;
    .restart local v3    # "languageName":Ljava/lang/String;
    .restart local v4    # "languageNameInEnglish":Ljava/lang/String;
    .restart local v6    # "stringMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v7    # "theming":Ljava/lang/String;
    :cond_3
    const-string/jumbo v10, "&"

    invoke-virtual {v4, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string/jumbo v10, "|"

    invoke-virtual {v4, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 510
    const-string/jumbo v10, "&"

    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string/jumbo v10, "|"

    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string/jumbo v10, "/"

    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string/jumbo v10, "\\"

    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 514
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ".xml"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 515
    .local v1, "finalFile":Ljava/io/File;
    invoke-static {p1, v1}, Lorg/telegram/messenger/AndroidUtilities;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 519
    iget-object v10, p0, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    invoke-virtual {v10, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .line 520
    .local v5, "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    if-nez v5, :cond_4

    .line 521
    new-instance v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .end local v5    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    invoke-direct {v5}, Lorg/telegram/messenger/LocaleController$LocaleInfo;-><init>()V

    .line 522
    .restart local v5    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    iput-object v3, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    .line 523
    iput-object v4, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    .line 524
    iput-object v2, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    .line 526
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    .line 527
    iget-object v10, p0, Lorg/telegram/messenger/LocaleController;->sortedLanguages:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 528
    iget-object v10, p0, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    iget-object v11, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v10, v11, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    iget-object v10, p0, Lorg/telegram/messenger/LocaleController;->otherLanguages:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    iget-object v10, p0, Lorg/telegram/messenger/LocaleController;->sortedLanguages:Ljava/util/ArrayList;

    new-instance v11, Lorg/telegram/messenger/LocaleController$2;

    invoke-direct {v11, p0}, Lorg/telegram/messenger/LocaleController$2;-><init>(Lorg/telegram/messenger/LocaleController;)V

    invoke-static {v10, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 542
    invoke-direct {p0}, Lorg/telegram/messenger/LocaleController;->saveOtherLanguages()V

    .line 544
    :cond_4
    iput-object v6, p0, Lorg/telegram/messenger/LocaleController;->localeValues:Ljava/util/HashMap;

    .line 545
    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-virtual {p0, v5, v10, v11}, Lorg/telegram/messenger/LocaleController;->applyLanguage(Lorg/telegram/messenger/LocaleController$LocaleInfo;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v8, v9

    .line 546
    goto/16 :goto_0

    .line 548
    .end local v1    # "finalFile":Ljava/io/File;
    .end local v2    # "languageCode":Ljava/lang/String;
    .end local v3    # "languageName":Ljava/lang/String;
    .end local v4    # "languageNameInEnglish":Ljava/lang/String;
    .end local v5    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    .end local v6    # "stringMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "theming":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 549
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public deleteLanguage(Lorg/telegram/messenger/LocaleController$LocaleInfo;)Z
    .locals 4
    .param p1, "localeInfo"    # Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .prologue
    const/4 v1, 0x1

    .line 572
    iget-object v2, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 573
    const/4 v1, 0x0

    .line 585
    :goto_0
    return v1

    .line 575
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/LocaleController;->currentLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    if-ne v2, p1, :cond_1

    .line 576
    iget-object v2, p0, Lorg/telegram/messenger/LocaleController;->defaultLocalInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    invoke-virtual {p0, v2, v1}, Lorg/telegram/messenger/LocaleController;->applyLanguage(Lorg/telegram/messenger/LocaleController$LocaleInfo;Z)V

    .line 579
    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/LocaleController;->otherLanguages:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 580
    iget-object v2, p0, Lorg/telegram/messenger/LocaleController;->sortedLanguages:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 581
    iget-object v2, p0, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    iget-object v3, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    new-instance v0, Ljava/io/File;

    iget-object v2, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 583
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 584
    invoke-direct {p0}, Lorg/telegram/messenger/LocaleController;->saveOtherLanguages()V

    goto :goto_0
.end method

.method public formatCurrencyDecimalString(JLjava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "amount"    # J
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 869
    invoke-virtual {p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p3

    .line 872
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    .line 873
    const/4 v1, -0x1

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 920
    const-string/jumbo v0, " %.2f"

    .line 921
    .local v0, "customFormat":Ljava/lang/String;
    long-to-double v6, p1

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double v2, v6, v8

    .line 924
    .local v2, "doubleAmount":D
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 873
    .end local v0    # "customFormat":Ljava/lang/String;
    .end local v2    # "doubleAmount":D
    :sswitch_0
    const-string/jumbo v6, "CLF"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v1, v4

    goto :goto_0

    :sswitch_1
    const-string/jumbo v6, "BHD"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v1, v5

    goto :goto_0

    :sswitch_2
    const-string/jumbo v6, "IQD"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v6, "JOD"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v6, "KWD"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v6, "LYD"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_6
    const-string/jumbo v6, "OMR"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_7
    const-string/jumbo v6, "TND"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v1, 0x7

    goto :goto_0

    :sswitch_8
    const-string/jumbo v6, "BIF"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_9
    const-string/jumbo v6, "BYR"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_a
    const-string/jumbo v6, "CLP"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_b
    const-string/jumbo v6, "CVE"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_c
    const-string/jumbo v6, "DJF"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string/jumbo v6, "GNF"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_e
    const-string/jumbo v6, "ISK"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v1, 0xe

    goto/16 :goto_0

    :sswitch_f
    const-string/jumbo v6, "JPY"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v1, 0xf

    goto/16 :goto_0

    :sswitch_10
    const-string/jumbo v6, "KMF"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v1, 0x10

    goto/16 :goto_0

    :sswitch_11
    const-string/jumbo v6, "KRW"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v1, 0x11

    goto/16 :goto_0

    :sswitch_12
    const-string/jumbo v6, "MGA"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v1, 0x12

    goto/16 :goto_0

    :sswitch_13
    const-string/jumbo v6, "PYG"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v1, 0x13

    goto/16 :goto_0

    :sswitch_14
    const-string/jumbo v6, "RWF"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v1, 0x14

    goto/16 :goto_0

    :sswitch_15
    const-string/jumbo v6, "UGX"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v1, 0x15

    goto/16 :goto_0

    :sswitch_16
    const-string/jumbo v6, "UYI"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v1, 0x16

    goto/16 :goto_0

    :sswitch_17
    const-string/jumbo v6, "VND"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v1, 0x17

    goto/16 :goto_0

    :sswitch_18
    const-string/jumbo v6, "VUV"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v1, 0x18

    goto/16 :goto_0

    :sswitch_19
    const-string/jumbo v6, "XAF"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v1, 0x19

    goto/16 :goto_0

    :sswitch_1a
    const-string/jumbo v6, "XOF"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v1, 0x1a

    goto/16 :goto_0

    :sswitch_1b
    const-string/jumbo v6, "XPF"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v1, 0x1b

    goto/16 :goto_0

    :sswitch_1c
    const-string/jumbo v6, "MRO"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v1, 0x1c

    goto/16 :goto_0

    .line 875
    :pswitch_0
    const-string/jumbo v0, " %.4f"

    .line 876
    .restart local v0    # "customFormat":Ljava/lang/String;
    long-to-double v6, p1

    const-wide v8, 0x40c3880000000000L    # 10000.0

    div-double v2, v6, v8

    .line 877
    .restart local v2    # "doubleAmount":D
    goto/16 :goto_1

    .line 886
    .end local v0    # "customFormat":Ljava/lang/String;
    .end local v2    # "doubleAmount":D
    :pswitch_1
    const-string/jumbo v0, " %.3f"

    .line 887
    .restart local v0    # "customFormat":Ljava/lang/String;
    long-to-double v6, p1

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double v2, v6, v8

    .line 888
    .restart local v2    # "doubleAmount":D
    goto/16 :goto_1

    .line 910
    .end local v0    # "customFormat":Ljava/lang/String;
    .end local v2    # "doubleAmount":D
    :pswitch_2
    const-string/jumbo v0, " %.0f"

    .line 911
    .restart local v0    # "customFormat":Ljava/lang/String;
    long-to-double v2, p1

    .line 912
    .restart local v2    # "doubleAmount":D
    goto/16 :goto_1

    .line 915
    .end local v0    # "customFormat":Ljava/lang/String;
    .end local v2    # "doubleAmount":D
    :pswitch_3
    const-string/jumbo v0, " %.1f"

    .line 916
    .restart local v0    # "customFormat":Ljava/lang/String;
    long-to-double v6, p1

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    div-double v2, v6, v8

    .line 917
    .restart local v2    # "doubleAmount":D
    goto/16 :goto_1

    .line 873
    :sswitch_data_0
    .sparse-switch
        0x100be -> :sswitch_1
        0x100df -> :sswitch_8
        0x102db -> :sswitch_9
        0x104fd -> :sswitch_0
        0x10507 -> :sswitch_a
        0x10632 -> :sswitch_b
        0x10880 -> :sswitch_c
        0x1143f -> :sswitch_d
        0x11c1c -> :sswitch_2
        0x11c61 -> :sswitch_e
        0x11f9f -> :sswitch_3
        0x11fd3 -> :sswitch_f
        0x12324 -> :sswitch_10
        0x123d0 -> :sswitch_11
        0x12458 -> :sswitch_4
        0x12857 -> :sswitch_5
        0x129e7 -> :sswitch_12
        0x12b4a -> :sswitch_1c
        0x13234 -> :sswitch_6
        0x1375e -> :sswitch_13
        0x13ea1 -> :sswitch_14
        0x1450a -> :sswitch_7
        0x14806 -> :sswitch_15
        0x14a25 -> :sswitch_16
        0x14c8c -> :sswitch_17
        0x14d77 -> :sswitch_18
        0x1527d -> :sswitch_19
        0x1542f -> :sswitch_1a
        0x1544e -> :sswitch_1b
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public formatCurrencyString(JLjava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p1, "amount"    # J
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 803
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p3

    .line 806
    const-wide/16 v10, 0x0

    cmp-long v10, p1, v10

    if-gez v10, :cond_1

    move v3, v8

    .line 807
    .local v3, "discount":Z
    :goto_0
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    .line 808
    const/4 v10, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    :cond_0
    :goto_1
    packed-switch v10, :pswitch_data_0

    .line 855
    const-string/jumbo v2, " %.2f"

    .line 856
    .local v2, "customFormat":Ljava/lang/String;
    move-wide/from16 v0, p1

    long-to-double v10, v0

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    div-double v4, v10, v12

    .line 859
    .local v4, "doubleAmount":D
    :goto_2
    invoke-static/range {p3 .. p3}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v7

    .line 860
    .local v7, "\u0441urrency":Ljava/util/Currency;
    if-eqz v7, :cond_4

    .line 861
    iget-object v8, p0, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    :goto_3
    invoke-static {v8}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v6

    .line 862
    .local v6, "format":Ljava/text/NumberFormat;
    invoke-virtual {v6, v7}, Ljava/text/NumberFormat;->setCurrency(Ljava/util/Currency;)V

    .line 863
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v3, :cond_3

    const-string/jumbo v8, "-"

    :goto_4
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 865
    .end local v6    # "format":Ljava/text/NumberFormat;
    :goto_5
    return-object v8

    .end local v2    # "customFormat":Ljava/lang/String;
    .end local v3    # "discount":Z
    .end local v4    # "doubleAmount":D
    .end local v7    # "\u0441urrency":Ljava/util/Currency;
    :cond_1
    move v3, v9

    .line 806
    goto :goto_0

    .line 808
    .restart local v3    # "discount":Z
    :sswitch_0
    const-string/jumbo v11, "CLF"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    move v10, v9

    goto :goto_1

    :sswitch_1
    const-string/jumbo v11, "BHD"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    move v10, v8

    goto :goto_1

    :sswitch_2
    const-string/jumbo v11, "IQD"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v10, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v11, "JOD"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v10, 0x3

    goto :goto_1

    :sswitch_4
    const-string/jumbo v11, "KWD"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v10, 0x4

    goto :goto_1

    :sswitch_5
    const-string/jumbo v11, "LYD"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v10, 0x5

    goto/16 :goto_1

    :sswitch_6
    const-string/jumbo v11, "OMR"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v10, 0x6

    goto/16 :goto_1

    :sswitch_7
    const-string/jumbo v11, "TND"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v10, 0x7

    goto/16 :goto_1

    :sswitch_8
    const-string/jumbo v11, "BIF"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v10, 0x8

    goto/16 :goto_1

    :sswitch_9
    const-string/jumbo v11, "BYR"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v10, 0x9

    goto/16 :goto_1

    :sswitch_a
    const-string/jumbo v11, "CLP"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v10, 0xa

    goto/16 :goto_1

    :sswitch_b
    const-string/jumbo v11, "CVE"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v10, 0xb

    goto/16 :goto_1

    :sswitch_c
    const-string/jumbo v11, "DJF"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v10, 0xc

    goto/16 :goto_1

    :sswitch_d
    const-string/jumbo v11, "GNF"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v10, 0xd

    goto/16 :goto_1

    :sswitch_e
    const-string/jumbo v11, "ISK"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v10, 0xe

    goto/16 :goto_1

    :sswitch_f
    const-string/jumbo v11, "JPY"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v10, 0xf

    goto/16 :goto_1

    :sswitch_10
    const-string/jumbo v11, "KMF"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v10, 0x10

    goto/16 :goto_1

    :sswitch_11
    const-string/jumbo v11, "KRW"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v10, 0x11

    goto/16 :goto_1

    :sswitch_12
    const-string/jumbo v11, "MGA"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v10, 0x12

    goto/16 :goto_1

    :sswitch_13
    const-string/jumbo v11, "PYG"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v10, 0x13

    goto/16 :goto_1

    :sswitch_14
    const-string/jumbo v11, "RWF"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v10, 0x14

    goto/16 :goto_1

    :sswitch_15
    const-string/jumbo v11, "UGX"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v10, 0x15

    goto/16 :goto_1

    :sswitch_16
    const-string/jumbo v11, "UYI"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v10, 0x16

    goto/16 :goto_1

    :sswitch_17
    const-string/jumbo v11, "VND"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v10, 0x17

    goto/16 :goto_1

    :sswitch_18
    const-string/jumbo v11, "VUV"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v10, 0x18

    goto/16 :goto_1

    :sswitch_19
    const-string/jumbo v11, "XAF"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v10, 0x19

    goto/16 :goto_1

    :sswitch_1a
    const-string/jumbo v11, "XOF"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v10, 0x1a

    goto/16 :goto_1

    :sswitch_1b
    const-string/jumbo v11, "XPF"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v10, 0x1b

    goto/16 :goto_1

    :sswitch_1c
    const-string/jumbo v11, "MRO"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v10, 0x1c

    goto/16 :goto_1

    .line 810
    :pswitch_0
    const-string/jumbo v2, " %.4f"

    .line 811
    .restart local v2    # "customFormat":Ljava/lang/String;
    move-wide/from16 v0, p1

    long-to-double v10, v0

    const-wide v12, 0x40c3880000000000L    # 10000.0

    div-double v4, v10, v12

    .line 812
    .restart local v4    # "doubleAmount":D
    goto/16 :goto_2

    .line 821
    .end local v2    # "customFormat":Ljava/lang/String;
    .end local v4    # "doubleAmount":D
    :pswitch_1
    const-string/jumbo v2, " %.3f"

    .line 822
    .restart local v2    # "customFormat":Ljava/lang/String;
    move-wide/from16 v0, p1

    long-to-double v10, v0

    const-wide v12, 0x408f400000000000L    # 1000.0

    div-double v4, v10, v12

    .line 823
    .restart local v4    # "doubleAmount":D
    goto/16 :goto_2

    .line 845
    .end local v2    # "customFormat":Ljava/lang/String;
    .end local v4    # "doubleAmount":D
    :pswitch_2
    const-string/jumbo v2, " %.0f"

    .line 846
    .restart local v2    # "customFormat":Ljava/lang/String;
    move-wide/from16 v0, p1

    long-to-double v4, v0

    .line 847
    .restart local v4    # "doubleAmount":D
    goto/16 :goto_2

    .line 850
    .end local v2    # "customFormat":Ljava/lang/String;
    .end local v4    # "doubleAmount":D
    :pswitch_3
    const-string/jumbo v2, " %.1f"

    .line 851
    .restart local v2    # "customFormat":Ljava/lang/String;
    move-wide/from16 v0, p1

    long-to-double v10, v0

    const-wide/high16 v12, 0x4024000000000000L    # 10.0

    div-double v4, v10, v12

    .line 852
    .restart local v4    # "doubleAmount":D
    goto/16 :goto_2

    .line 861
    .restart local v7    # "\u0441urrency":Ljava/util/Currency;
    :cond_2
    iget-object v8, p0, Lorg/telegram/messenger/LocaleController;->systemDefaultLocale:Ljava/util/Locale;

    goto/16 :goto_3

    .line 863
    .restart local v6    # "format":Ljava/text/NumberFormat;
    :cond_3
    const-string/jumbo v8, ""

    goto/16 :goto_4

    .line 865
    .end local v6    # "format":Ljava/text/NumberFormat;
    :cond_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v3, :cond_5

    const-string/jumbo v10, "-"

    :goto_6
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    aput-object v12, v8, v9

    invoke-static {v11, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_5

    :cond_5
    const-string/jumbo v10, ""

    goto :goto_6

    .line 808
    :sswitch_data_0
    .sparse-switch
        0x100be -> :sswitch_1
        0x100df -> :sswitch_8
        0x102db -> :sswitch_9
        0x104fd -> :sswitch_0
        0x10507 -> :sswitch_a
        0x10632 -> :sswitch_b
        0x10880 -> :sswitch_c
        0x1143f -> :sswitch_d
        0x11c1c -> :sswitch_2
        0x11c61 -> :sswitch_e
        0x11f9f -> :sswitch_3
        0x11fd3 -> :sswitch_f
        0x12324 -> :sswitch_10
        0x123d0 -> :sswitch_11
        0x12458 -> :sswitch_4
        0x12857 -> :sswitch_5
        0x129e7 -> :sswitch_12
        0x12b4a -> :sswitch_1c
        0x13234 -> :sswitch_6
        0x1375e -> :sswitch_13
        0x13ea1 -> :sswitch_14
        0x1450a -> :sswitch_7
        0x14806 -> :sswitch_15
        0x14a25 -> :sswitch_16
        0x14c8c -> :sswitch_17
        0x14d77 -> :sswitch_18
        0x1527d -> :sswitch_19
        0x1542f -> :sswitch_1a
        0x1544e -> :sswitch_1b
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getSystemDefaultLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->systemDefaultLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getTranslitString(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    .line 1251
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    if-nez v5, :cond_0

    .line 1252
    new-instance v5, Ljava/util/HashMap;

    const/16 v6, 0x208

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(I)V

    iput-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    .line 1253
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u023c"

    const-string/jumbo v7, "c"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1254
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d87"

    const-string/jumbo v7, "n"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1255
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0256"

    const-string/jumbo v7, "d"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1256
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1eff"

    const-string/jumbo v7, "y"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1257
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d13"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1258
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u00f8"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1259
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e01"

    const-string/jumbo v7, "a"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1260
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u02af"

    const-string/jumbo v7, "h"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1261
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0177"

    const-string/jumbo v7, "y"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1262
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u029e"

    const-string/jumbo v7, "k"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1263
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1eeb"

    const-string/jumbo v7, "u"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1264
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\ua733"

    const-string/jumbo v7, "aa"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1265
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0133"

    const-string/jumbo v7, "ij"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1266
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e3d"

    const-string/jumbo v7, "l"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1267
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u026a"

    const-string/jumbo v7, "i"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1268
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e07"

    const-string/jumbo v7, "b"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1269
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0280"

    const-string/jumbo v7, "r"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1270
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u011b"

    const-string/jumbo v7, "e"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1271
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\ufb03"

    const-string/jumbo v7, "ffi"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1272
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u01a1"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1273
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u2c79"

    const-string/jumbo v7, "r"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1274
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1ed3"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1275
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u01d0"

    const-string/jumbo v7, "i"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1276
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\ua755"

    const-string/jumbo v7, "p"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1277
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u00fd"

    const-string/jumbo v7, "y"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1278
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e1d"

    const-string/jumbo v7, "e"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1279
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u2092"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1280
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u2c65"

    const-string/jumbo v7, "a"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1281
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0299"

    const-string/jumbo v7, "b"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1282
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e1b"

    const-string/jumbo v7, "e"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1283
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0188"

    const-string/jumbo v7, "c"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1284
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0266"

    const-string/jumbo v7, "h"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1285
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d6c"

    const-string/jumbo v7, "b"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1286
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e63"

    const-string/jumbo v7, "s"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1287
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0111"

    const-string/jumbo v7, "d"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1288
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1ed7"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1289
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u025f"

    const-string/jumbo v7, "j"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1290
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e9a"

    const-string/jumbo v7, "a"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1291
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u024f"

    const-string/jumbo v7, "y"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1292
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u043b"

    const-string/jumbo v7, "l"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1293
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u028c"

    const-string/jumbo v7, "v"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1294
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\ua753"

    const-string/jumbo v7, "p"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1295
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\ufb01"

    const-string/jumbo v7, "fi"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1296
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d84"

    const-string/jumbo v7, "k"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1297
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e0f"

    const-string/jumbo v7, "d"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1298
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d0c"

    const-string/jumbo v7, "l"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1299
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0117"

    const-string/jumbo v7, "e"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1300
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0451"

    const-string/jumbo v7, "yo"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1301
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d0b"

    const-string/jumbo v7, "k"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1302
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u010b"

    const-string/jumbo v7, "c"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1303
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0281"

    const-string/jumbo v7, "r"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1304
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0195"

    const-string/jumbo v7, "hv"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1305
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0180"

    const-string/jumbo v7, "b"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1306
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e4d"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1307
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0223"

    const-string/jumbo v7, "ou"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1308
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u01f0"

    const-string/jumbo v7, "j"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1309
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d83"

    const-string/jumbo v7, "g"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1310
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e4b"

    const-string/jumbo v7, "n"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1311
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0249"

    const-string/jumbo v7, "j"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1312
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u01e7"

    const-string/jumbo v7, "g"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1313
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u01f3"

    const-string/jumbo v7, "dz"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1314
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u017a"

    const-string/jumbo v7, "z"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1315
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\ua737"

    const-string/jumbo v7, "au"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1316
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u01d6"

    const-string/jumbo v7, "u"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1317
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d79"

    const-string/jumbo v7, "g"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1318
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u022f"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1319
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0250"

    const-string/jumbo v7, "a"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1320
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0105"

    const-string/jumbo v7, "a"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1321
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u00f5"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1322
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u027b"

    const-string/jumbo v7, "r"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1323
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\ua74d"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1324
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u01df"

    const-string/jumbo v7, "a"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1325
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0234"

    const-string/jumbo v7, "l"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1326
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0282"

    const-string/jumbo v7, "s"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1327
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\ufb02"

    const-string/jumbo v7, "fl"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1328
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0209"

    const-string/jumbo v7, "i"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1329
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u2c7b"

    const-string/jumbo v7, "e"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1330
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e49"

    const-string/jumbo v7, "n"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1331
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u00ef"

    const-string/jumbo v7, "i"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1332
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u00f1"

    const-string/jumbo v7, "n"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1333
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d09"

    const-string/jumbo v7, "i"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1334
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0287"

    const-string/jumbo v7, "t"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1335
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e93"

    const-string/jumbo v7, "z"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1336
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1ef7"

    const-string/jumbo v7, "y"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1337
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0233"

    const-string/jumbo v7, "y"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1338
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e69"

    const-string/jumbo v7, "s"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1339
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u027d"

    const-string/jumbo v7, "r"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1340
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u011d"

    const-string/jumbo v7, "g"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1341
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0432"

    const-string/jumbo v7, "v"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1342
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d1d"

    const-string/jumbo v7, "u"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1343
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e33"

    const-string/jumbo v7, "k"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1344
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\ua76b"

    const-string/jumbo v7, "et"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1345
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u012b"

    const-string/jumbo v7, "i"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1346
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0165"

    const-string/jumbo v7, "t"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1347
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\ua73f"

    const-string/jumbo v7, "c"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1348
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u029f"

    const-string/jumbo v7, "l"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1349
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\ua739"

    const-string/jumbo v7, "av"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1350
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u00fb"

    const-string/jumbo v7, "u"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1351
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u00e6"

    const-string/jumbo v7, "ae"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1352
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0438"

    const-string/jumbo v7, "i"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1353
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0103"

    const-string/jumbo v7, "a"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1354
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u01d8"

    const-string/jumbo v7, "u"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1355
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\ua785"

    const-string/jumbo v7, "s"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1356
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d63"

    const-string/jumbo v7, "r"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1357
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d00"

    const-string/jumbo v7, "a"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1358
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0183"

    const-string/jumbo v7, "b"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1359
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e29"

    const-string/jumbo v7, "h"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1360
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e67"

    const-string/jumbo v7, "s"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1361
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u2091"

    const-string/jumbo v7, "e"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1362
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u029c"

    const-string/jumbo v7, "h"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1363
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e8b"

    const-string/jumbo v7, "x"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1364
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\ua745"

    const-string/jumbo v7, "k"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1365
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e0b"

    const-string/jumbo v7, "d"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1366
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u01a3"

    const-string/jumbo v7, "oi"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1367
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\ua751"

    const-string/jumbo v7, "p"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1368
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0127"

    const-string/jumbo v7, "h"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1369
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u2c74"

    const-string/jumbo v7, "v"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1370
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e87"

    const-string/jumbo v7, "w"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1371
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u01f9"

    const-string/jumbo v7, "n"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1372
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u026f"

    const-string/jumbo v7, "m"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1373
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0261"

    const-string/jumbo v7, "g"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1374
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0274"

    const-string/jumbo v7, "n"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1375
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d18"

    const-string/jumbo v7, "p"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1376
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d65"

    const-string/jumbo v7, "v"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1377
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u016b"

    const-string/jumbo v7, "u"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1378
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e03"

    const-string/jumbo v7, "b"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1379
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e57"

    const-string/jumbo v7, "p"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1380
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u044c"

    const-string/jumbo v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1381
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u00e5"

    const-string/jumbo v7, "a"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1382
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0255"

    const-string/jumbo v7, "c"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1383
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1ecd"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1384
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1eaf"

    const-string/jumbo v7, "a"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1385
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0192"

    const-string/jumbo v7, "f"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1386
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u01e3"

    const-string/jumbo v7, "ae"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1387
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\ua761"

    const-string/jumbo v7, "vy"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1388
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\ufb00"

    const-string/jumbo v7, "ff"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1389
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d89"

    const-string/jumbo v7, "r"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1390
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u00f4"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1391
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u01ff"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1392
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e73"

    const-string/jumbo v7, "u"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1393
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0225"

    const-string/jumbo v7, "z"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1394
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e1f"

    const-string/jumbo v7, "f"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1395
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e13"

    const-string/jumbo v7, "d"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1396
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0207"

    const-string/jumbo v7, "e"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1397
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0215"

    const-string/jumbo v7, "u"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1398
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u043f"

    const-string/jumbo v7, "p"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1399
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0235"

    const-string/jumbo v7, "n"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1400
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u02a0"

    const-string/jumbo v7, "q"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1401
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1ea5"

    const-string/jumbo v7, "a"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1402
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u01e9"

    const-string/jumbo v7, "k"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1403
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0129"

    const-string/jumbo v7, "i"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1404
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e75"

    const-string/jumbo v7, "u"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1405
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0167"

    const-string/jumbo v7, "t"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1406
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u027e"

    const-string/jumbo v7, "r"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1407
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0199"

    const-string/jumbo v7, "k"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1408
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e6b"

    const-string/jumbo v7, "t"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1409
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\ua757"

    const-string/jumbo v7, "q"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1410
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1ead"

    const-string/jumbo v7, "a"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1411
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u043d"

    const-string/jumbo v7, "n"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1412
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0284"

    const-string/jumbo v7, "j"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1413
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u019a"

    const-string/jumbo v7, "l"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1414
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d82"

    const-string/jumbo v7, "f"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1415
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0434"

    const-string/jumbo v7, "d"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1416
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d74"

    const-string/jumbo v7, "s"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1417
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\ua783"

    const-string/jumbo v7, "r"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1418
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d8c"

    const-string/jumbo v7, "v"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1419
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0275"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1420
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e09"

    const-string/jumbo v7, "c"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1421
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d64"

    const-string/jumbo v7, "u"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1422
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e91"

    const-string/jumbo v7, "z"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1423
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e79"

    const-string/jumbo v7, "u"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1424
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0148"

    const-string/jumbo v7, "n"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1425
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u028d"

    const-string/jumbo v7, "w"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1426
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1ea7"

    const-string/jumbo v7, "a"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1427
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u01c9"

    const-string/jumbo v7, "lj"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1428
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0253"

    const-string/jumbo v7, "b"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1429
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u027c"

    const-string/jumbo v7, "r"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1430
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u00f2"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1431
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e98"

    const-string/jumbo v7, "w"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1432
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0257"

    const-string/jumbo v7, "d"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1433
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\ua73d"

    const-string/jumbo v7, "ay"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1434
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u01b0"

    const-string/jumbo v7, "u"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1435
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d80"

    const-string/jumbo v7, "b"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1436
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u01dc"

    const-string/jumbo v7, "u"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1437
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1eb9"

    const-string/jumbo v7, "e"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1438
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u01e1"

    const-string/jumbo v7, "a"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1439
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0265"

    const-string/jumbo v7, "h"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1440
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e4f"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1441
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u01d4"

    const-string/jumbo v7, "u"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1442
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u028e"

    const-string/jumbo v7, "y"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1443
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0231"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1444
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1ec7"

    const-string/jumbo v7, "e"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1445
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1ebf"

    const-string/jumbo v7, "e"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1446
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u012d"

    const-string/jumbo v7, "i"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1447
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u2c78"

    const-string/jumbo v7, "e"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1448
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e6f"

    const-string/jumbo v7, "t"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1449
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d91"

    const-string/jumbo v7, "d"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1450
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e27"

    const-string/jumbo v7, "h"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1451
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e65"

    const-string/jumbo v7, "s"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1452
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u00eb"

    const-string/jumbo v7, "e"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1453
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d0d"

    const-string/jumbo v7, "m"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1454
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u00f6"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1455
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u00e9"

    const-string/jumbo v7, "e"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1456
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0131"

    const-string/jumbo v7, "i"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1457
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u010f"

    const-string/jumbo v7, "d"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1458
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d6f"

    const-string/jumbo v7, "m"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1459
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1ef5"

    const-string/jumbo v7, "y"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1460
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u044f"

    const-string/jumbo v7, "ya"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1461
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0175"

    const-string/jumbo v7, "w"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1462
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1ec1"

    const-string/jumbo v7, "e"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1463
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1ee9"

    const-string/jumbo v7, "u"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1464
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u01b6"

    const-string/jumbo v7, "z"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1465
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0135"

    const-string/jumbo v7, "j"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1466
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e0d"

    const-string/jumbo v7, "d"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1467
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u016d"

    const-string/jumbo v7, "u"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1468
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u029d"

    const-string/jumbo v7, "j"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1469
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0436"

    const-string/jumbo v7, "zh"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1470
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u00ea"

    const-string/jumbo v7, "e"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1471
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u01da"

    const-string/jumbo v7, "u"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1472
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0121"

    const-string/jumbo v7, "g"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1473
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e59"

    const-string/jumbo v7, "r"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1474
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u019e"

    const-string/jumbo v7, "n"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1475
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u044a"

    const-string/jumbo v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1476
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e17"

    const-string/jumbo v7, "e"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1477
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e9d"

    const-string/jumbo v7, "s"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1478
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d81"

    const-string/jumbo v7, "d"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1479
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0137"

    const-string/jumbo v7, "k"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1480
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d02"

    const-string/jumbo v7, "ae"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1481
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0258"

    const-string/jumbo v7, "e"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1482
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1ee3"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1483
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e3f"

    const-string/jumbo v7, "m"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1484
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\ua730"

    const-string/jumbo v7, "f"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1485
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0430"

    const-string/jumbo v7, "a"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1486
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1eb5"

    const-string/jumbo v7, "a"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1487
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\ua74f"

    const-string/jumbo v7, "oo"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1488
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d86"

    const-string/jumbo v7, "m"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1489
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d7d"

    const-string/jumbo v7, "p"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1490
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0446"

    const-string/jumbo v7, "ts"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1491
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1eef"

    const-string/jumbo v7, "u"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1492
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u2c6a"

    const-string/jumbo v7, "k"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1493
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e25"

    const-string/jumbo v7, "h"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1494
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0163"

    const-string/jumbo v7, "t"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1495
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d71"

    const-string/jumbo v7, "p"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1496
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e41"

    const-string/jumbo v7, "m"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1497
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u00e1"

    const-string/jumbo v7, "a"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1498
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d0e"

    const-string/jumbo v7, "n"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1499
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\ua75f"

    const-string/jumbo v7, "v"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1500
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u00e8"

    const-string/jumbo v7, "e"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1501
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d8e"

    const-string/jumbo v7, "z"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1502
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\ua77a"

    const-string/jumbo v7, "d"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1503
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d88"

    const-string/jumbo v7, "p"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1504
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u043c"

    const-string/jumbo v7, "m"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1505
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u026b"

    const-string/jumbo v7, "l"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1506
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d22"

    const-string/jumbo v7, "z"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1507
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0271"

    const-string/jumbo v7, "m"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1508
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e5d"

    const-string/jumbo v7, "r"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1509
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e7d"

    const-string/jumbo v7, "v"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1510
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0169"

    const-string/jumbo v7, "u"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1511
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u00df"

    const-string/jumbo v7, "ss"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1512
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0442"

    const-string/jumbo v7, "t"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1513
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0125"

    const-string/jumbo v7, "h"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1514
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d75"

    const-string/jumbo v7, "t"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1515
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0290"

    const-string/jumbo v7, "z"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1516
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e5f"

    const-string/jumbo v7, "r"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1517
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0272"

    const-string/jumbo v7, "n"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1518
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u00e0"

    const-string/jumbo v7, "a"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1519
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e99"

    const-string/jumbo v7, "y"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1520
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1ef3"

    const-string/jumbo v7, "y"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1521
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d14"

    const-string/jumbo v7, "oe"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1522
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u044b"

    const-string/jumbo v7, "i"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1523
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u2093"

    const-string/jumbo v7, "x"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1524
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0217"

    const-string/jumbo v7, "u"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1525
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u2c7c"

    const-string/jumbo v7, "j"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1526
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1eab"

    const-string/jumbo v7, "a"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1527
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0291"

    const-string/jumbo v7, "z"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1528
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e9b"

    const-string/jumbo v7, "s"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1529
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e2d"

    const-string/jumbo v7, "i"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1530
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\ua735"

    const-string/jumbo v7, "ao"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1531
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0240"

    const-string/jumbo v7, "z"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1532
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u00ff"

    const-string/jumbo v7, "y"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1533
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u01dd"

    const-string/jumbo v7, "e"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1534
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u01ed"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1535
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d05"

    const-string/jumbo v7, "d"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1536
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d85"

    const-string/jumbo v7, "l"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1537
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u00f9"

    const-string/jumbo v7, "u"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1538
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1ea1"

    const-string/jumbo v7, "a"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1539
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e05"

    const-string/jumbo v7, "b"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1540
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1ee5"

    const-string/jumbo v7, "u"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1541
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u043a"

    const-string/jumbo v7, "k"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1542
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1eb1"

    const-string/jumbo v7, "a"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1543
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d1b"

    const-string/jumbo v7, "t"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1544
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u01b4"

    const-string/jumbo v7, "y"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1545
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u2c66"

    const-string/jumbo v7, "t"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1546
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0437"

    const-string/jumbo v7, "z"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1547
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u2c61"

    const-string/jumbo v7, "l"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1548
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0237"

    const-string/jumbo v7, "j"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1549
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d76"

    const-string/jumbo v7, "z"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1550
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e2b"

    const-string/jumbo v7, "h"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1551
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u2c73"

    const-string/jumbo v7, "w"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1552
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e35"

    const-string/jumbo v7, "k"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1553
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1edd"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1554
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u00ee"

    const-string/jumbo v7, "i"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1555
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0123"

    const-string/jumbo v7, "g"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1556
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0205"

    const-string/jumbo v7, "e"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1557
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0227"

    const-string/jumbo v7, "a"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1558
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1eb3"

    const-string/jumbo v7, "a"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1559
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0449"

    const-string/jumbo v7, "sch"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1560
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u024b"

    const-string/jumbo v7, "q"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1561
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e6d"

    const-string/jumbo v7, "t"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1562
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\ua778"

    const-string/jumbo v7, "um"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1563
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d04"

    const-string/jumbo v7, "c"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1564
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e8d"

    const-string/jumbo v7, "x"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1565
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1ee7"

    const-string/jumbo v7, "u"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1566
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1ec9"

    const-string/jumbo v7, "i"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1567
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d1a"

    const-string/jumbo v7, "r"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1568
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u015b"

    const-string/jumbo v7, "s"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1569
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\ua74b"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1570
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1ef9"

    const-string/jumbo v7, "y"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1571
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e61"

    const-string/jumbo v7, "s"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1572
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u01cc"

    const-string/jumbo v7, "nj"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1573
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0201"

    const-string/jumbo v7, "a"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1574
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e97"

    const-string/jumbo v7, "t"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1575
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u013a"

    const-string/jumbo v7, "l"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1576
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u017e"

    const-string/jumbo v7, "z"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1577
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d7a"

    const-string/jumbo v7, "th"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1578
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u018c"

    const-string/jumbo v7, "d"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1579
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0219"

    const-string/jumbo v7, "s"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1580
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0161"

    const-string/jumbo v7, "s"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1581
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d99"

    const-string/jumbo v7, "u"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1582
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1ebd"

    const-string/jumbo v7, "e"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1583
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e9c"

    const-string/jumbo v7, "s"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1584
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0247"

    const-string/jumbo v7, "e"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1585
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e77"

    const-string/jumbo v7, "u"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1586
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1ed1"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1587
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u023f"

    const-string/jumbo v7, "s"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1588
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d20"

    const-string/jumbo v7, "v"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1589
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\ua76d"

    const-string/jumbo v7, "is"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1590
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d0f"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1591
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u025b"

    const-string/jumbo v7, "e"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1592
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u01fb"

    const-string/jumbo v7, "a"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1593
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\ufb04"

    const-string/jumbo v7, "ffl"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1594
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u2c7a"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1595
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u020b"

    const-string/jumbo v7, "i"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1596
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d6b"

    const-string/jumbo v7, "ue"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1597
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0221"

    const-string/jumbo v7, "d"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1598
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u2c6c"

    const-string/jumbo v7, "z"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1599
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e81"

    const-string/jumbo v7, "w"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1600
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d8f"

    const-string/jumbo v7, "a"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1601
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\ua787"

    const-string/jumbo v7, "t"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1602
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u011f"

    const-string/jumbo v7, "g"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1603
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0273"

    const-string/jumbo v7, "n"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1604
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u029b"

    const-string/jumbo v7, "g"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1605
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d1c"

    const-string/jumbo v7, "u"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1606
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0444"

    const-string/jumbo v7, "f"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1607
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1ea9"

    const-string/jumbo v7, "a"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1608
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e45"

    const-string/jumbo v7, "n"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1609
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0268"

    const-string/jumbo v7, "i"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1610
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d19"

    const-string/jumbo v7, "r"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1611
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u01ce"

    const-string/jumbo v7, "a"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1612
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u017f"

    const-string/jumbo v7, "s"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1613
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0443"

    const-string/jumbo v7, "u"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1614
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u022b"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1615
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u027f"

    const-string/jumbo v7, "r"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1616
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u01ad"

    const-string/jumbo v7, "t"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1617
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e2f"

    const-string/jumbo v7, "i"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1618
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u01fd"

    const-string/jumbo v7, "ae"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1619
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u2c71"

    const-string/jumbo v7, "v"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1620
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0276"

    const-string/jumbo v7, "oe"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1621
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e43"

    const-string/jumbo v7, "m"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1622
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u017c"

    const-string/jumbo v7, "z"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1623
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0115"

    const-string/jumbo v7, "e"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1624
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\ua73b"

    const-string/jumbo v7, "av"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1625
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1edf"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1626
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1ec5"

    const-string/jumbo v7, "e"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1627
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u026c"

    const-string/jumbo v7, "l"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1628
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1ecb"

    const-string/jumbo v7, "i"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1629
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d6d"

    const-string/jumbo v7, "d"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1630
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\ufb06"

    const-string/jumbo v7, "st"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1631
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e37"

    const-string/jumbo v7, "l"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1632
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0155"

    const-string/jumbo v7, "r"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1633
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d15"

    const-string/jumbo v7, "ou"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1634
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0288"

    const-string/jumbo v7, "t"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1635
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0101"

    const-string/jumbo v7, "a"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1636
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u044d"

    const-string/jumbo v7, "e"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1637
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e19"

    const-string/jumbo v7, "e"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1638
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d11"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1639
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u00e7"

    const-string/jumbo v7, "c"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1640
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d8a"

    const-string/jumbo v7, "s"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1641
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1eb7"

    const-string/jumbo v7, "a"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1642
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0173"

    const-string/jumbo v7, "u"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1643
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1ea3"

    const-string/jumbo v7, "a"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1644
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u01e5"

    const-string/jumbo v7, "g"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1645
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0440"

    const-string/jumbo v7, "r"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1646
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\ua741"

    const-string/jumbo v7, "k"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1647
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e95"

    const-string/jumbo v7, "z"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1648
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u015d"

    const-string/jumbo v7, "s"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1649
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e15"

    const-string/jumbo v7, "e"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1650
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0260"

    const-string/jumbo v7, "g"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1651
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\ua749"

    const-string/jumbo v7, "l"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1652
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\ua77c"

    const-string/jumbo v7, "f"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1653
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d8d"

    const-string/jumbo v7, "x"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1654
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0445"

    const-string/jumbo v7, "h"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1655
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u01d2"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1656
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0119"

    const-string/jumbo v7, "e"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1657
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1ed5"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1658
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u01ab"

    const-string/jumbo v7, "t"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1659
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u01eb"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1660
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "i\u0307"

    const-string/jumbo v7, "i"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1661
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e47"

    const-string/jumbo v7, "n"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1662
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0107"

    const-string/jumbo v7, "c"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1663
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d77"

    const-string/jumbo v7, "g"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1664
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e85"

    const-string/jumbo v7, "w"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1665
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e11"

    const-string/jumbo v7, "d"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1666
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e39"

    const-string/jumbo v7, "l"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1667
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0447"

    const-string/jumbo v7, "ch"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1668
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0153"

    const-string/jumbo v7, "oe"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1669
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d73"

    const-string/jumbo v7, "r"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1670
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u013c"

    const-string/jumbo v7, "l"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1671
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0211"

    const-string/jumbo v7, "r"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1672
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u022d"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1673
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d70"

    const-string/jumbo v7, "n"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1674
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d01"

    const-string/jumbo v7, "ae"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1675
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0140"

    const-string/jumbo v7, "l"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1676
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u00e4"

    const-string/jumbo v7, "a"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1677
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u01a5"

    const-string/jumbo v7, "p"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1678
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1ecf"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1679
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u012f"

    const-string/jumbo v7, "i"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1680
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0213"

    const-string/jumbo v7, "r"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1681
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u01c6"

    const-string/jumbo v7, "dz"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1682
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e21"

    const-string/jumbo v7, "g"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1683
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e7b"

    const-string/jumbo v7, "u"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1684
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u014d"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1685
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u013e"

    const-string/jumbo v7, "l"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1686
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e83"

    const-string/jumbo v7, "w"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1687
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u021b"

    const-string/jumbo v7, "t"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1688
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0144"

    const-string/jumbo v7, "n"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1689
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u024d"

    const-string/jumbo v7, "r"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1690
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0203"

    const-string/jumbo v7, "a"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1691
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u00fc"

    const-string/jumbo v7, "u"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1692
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\ua781"

    const-string/jumbo v7, "l"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1693
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d10"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1694
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1edb"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1695
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d03"

    const-string/jumbo v7, "b"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1696
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0279"

    const-string/jumbo v7, "r"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1697
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d72"

    const-string/jumbo v7, "r"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1698
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u028f"

    const-string/jumbo v7, "y"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1699
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d6e"

    const-string/jumbo v7, "f"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1700
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u2c68"

    const-string/jumbo v7, "h"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1701
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u014f"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1702
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u00fa"

    const-string/jumbo v7, "u"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1703
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e5b"

    const-string/jumbo v7, "r"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1704
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u02ae"

    const-string/jumbo v7, "h"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1705
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u00f3"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1706
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u016f"

    const-string/jumbo v7, "u"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1707
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1ee1"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1708
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e55"

    const-string/jumbo v7, "p"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1709
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d96"

    const-string/jumbo v7, "i"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1710
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1ef1"

    const-string/jumbo v7, "u"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1711
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u00e3"

    const-string/jumbo v7, "a"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1712
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d62"

    const-string/jumbo v7, "i"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1713
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e71"

    const-string/jumbo v7, "t"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1714
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1ec3"

    const-string/jumbo v7, "e"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1715
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1eed"

    const-string/jumbo v7, "u"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1716
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u00ed"

    const-string/jumbo v7, "i"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1717
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0254"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1718
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0441"

    const-string/jumbo v7, "s"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1719
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0439"

    const-string/jumbo v7, "i"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1720
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u027a"

    const-string/jumbo v7, "r"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1721
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0262"

    const-string/jumbo v7, "g"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1722
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0159"

    const-string/jumbo v7, "r"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1723
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e96"

    const-string/jumbo v7, "h"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1724
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0171"

    const-string/jumbo v7, "u"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1725
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u020d"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1726
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0448"

    const-string/jumbo v7, "sh"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1727
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e3b"

    const-string/jumbo v7, "l"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1728
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e23"

    const-string/jumbo v7, "h"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1729
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0236"

    const-string/jumbo v7, "t"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1730
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0146"

    const-string/jumbo v7, "n"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1731
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d92"

    const-string/jumbo v7, "e"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1732
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u00ec"

    const-string/jumbo v7, "i"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1733
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e89"

    const-string/jumbo v7, "w"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1734
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0431"

    const-string/jumbo v7, "b"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1735
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0113"

    const-string/jumbo v7, "e"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1736
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d07"

    const-string/jumbo v7, "e"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1737
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0142"

    const-string/jumbo v7, "l"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1738
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1ed9"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1739
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u026d"

    const-string/jumbo v7, "l"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1740
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e8f"

    const-string/jumbo v7, "y"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1741
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d0a"

    const-string/jumbo v7, "j"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1742
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e31"

    const-string/jumbo v7, "k"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1743
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e7f"

    const-string/jumbo v7, "v"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1744
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0229"

    const-string/jumbo v7, "e"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1745
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u00e2"

    const-string/jumbo v7, "a"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1746
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u015f"

    const-string/jumbo v7, "s"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1747
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0157"

    const-string/jumbo v7, "r"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1748
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u028b"

    const-string/jumbo v7, "v"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1749
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u2090"

    const-string/jumbo v7, "a"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1750
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u2184"

    const-string/jumbo v7, "c"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1751
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d93"

    const-string/jumbo v7, "e"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1752
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0270"

    const-string/jumbo v7, "m"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1753
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0435"

    const-string/jumbo v7, "e"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1754
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d21"

    const-string/jumbo v7, "w"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1755
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u020f"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1756
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u010d"

    const-string/jumbo v7, "c"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1757
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u01f5"

    const-string/jumbo v7, "g"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1758
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0109"

    const-string/jumbo v7, "c"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1759
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u044e"

    const-string/jumbo v7, "yu"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1760
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1d97"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1761
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\ua743"

    const-string/jumbo v7, "k"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1762
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\ua759"

    const-string/jumbo v7, "q"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1763
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0433"

    const-string/jumbo v7, "g"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1764
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e51"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1765
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\ua731"

    const-string/jumbo v7, "s"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1766
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1e53"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1767
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u021f"

    const-string/jumbo v7, "h"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1768
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u0151"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1769
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\ua729"

    const-string/jumbo v7, "tz"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1770
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u1ebb"

    const-string/jumbo v7, "e"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1771
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v6, "\u043e"

    const-string/jumbo v7, "o"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1773
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1774
    .local v2, "dst":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 1775
    .local v3, "len":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 1776
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p1, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1777
    .local v1, "ch":Ljava/lang/String;
    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1778
    .local v4, "tch":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 1779
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1775
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1781
    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1784
    .end local v1    # "ch":Ljava/lang/String;
    .end local v4    # "tch":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public onDeviceConfigurationChange(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 956
    iget-boolean v4, p0, Lorg/telegram/messenger/LocaleController;->changingConfiguration:Z

    if-eqz v4, :cond_1

    .line 980
    :cond_0
    :goto_0
    return-void

    .line 959
    :cond_1
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v4

    sput-boolean v4, Lorg/telegram/messenger/LocaleController;->is24HourFormat:Z

    .line 960
    iget-object v4, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v4, p0, Lorg/telegram/messenger/LocaleController;->systemDefaultLocale:Ljava/util/Locale;

    .line 961
    iget-object v4, p0, Lorg/telegram/messenger/LocaleController;->languageOverride:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 962
    iget-object v3, p0, Lorg/telegram/messenger/LocaleController;->currentLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .line 963
    .local v3, "toSet":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/telegram/messenger/LocaleController;->currentLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .line 964
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lorg/telegram/messenger/LocaleController;->applyLanguage(Lorg/telegram/messenger/LocaleController$LocaleInfo;Z)V

    goto :goto_0

    .line 966
    .end local v3    # "toSet":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    :cond_2
    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 967
    .local v2, "newLocale":Ljava/util/Locale;
    if-eqz v2, :cond_0

    .line 968
    invoke-virtual {v2}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 969
    .local v0, "d1":Ljava/lang/String;
    iget-object v4, p0, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 970
    .local v1, "d2":Ljava/lang/String;
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 971
    invoke-virtual {p0}, Lorg/telegram/messenger/LocaleController;->recreateFormatters()V

    .line 973
    :cond_3
    iput-object v2, p0, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    .line 974
    iget-object v4, p0, Lorg/telegram/messenger/LocaleController;->allRules:Ljava/util/HashMap;

    iget-object v5, p0, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/LocaleController$PluralRules;

    iput-object v4, p0, Lorg/telegram/messenger/LocaleController;->currentPluralRules:Lorg/telegram/messenger/LocaleController$PluralRules;

    .line 975
    iget-object v4, p0, Lorg/telegram/messenger/LocaleController;->currentPluralRules:Lorg/telegram/messenger/LocaleController$PluralRules;

    if-nez v4, :cond_0

    .line 976
    iget-object v4, p0, Lorg/telegram/messenger/LocaleController;->allRules:Ljava/util/HashMap;

    const-string/jumbo v5, "en"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/LocaleController$PluralRules;

    iput-object v4, p0, Lorg/telegram/messenger/LocaleController;->currentPluralRules:Lorg/telegram/messenger/LocaleController$PluralRules;

    goto :goto_0
.end method

.method public recreateFormatters()V
    .locals 5

    .prologue
    .line 1124
    iget-object v1, p0, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    .line 1125
    .local v1, "locale":Ljava/util/Locale;
    if-nez v1, :cond_0

    .line 1126
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 1128
    :cond_0
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 1129
    .local v0, "lang":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1130
    const-string/jumbo v0, "en"

    .line 1132
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ar"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    .line 1133
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ko"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    :goto_0
    sput v2, Lorg/telegram/messenger/LocaleController;->nameDisplayOrder:I

    .line 1135
    const-string/jumbo v2, "formatterMonth"

    const v3, 0x7f0706d3

    invoke-direct {p0, v2, v3}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "dd MMM"

    invoke-direct {p0, v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/LocaleController;->formatterMonth:Lorg/telegram/messenger/time/FastDateFormat;

    .line 1136
    const-string/jumbo v2, "formatterYear"

    const v3, 0x7f0706d8

    invoke-direct {p0, v2, v3}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "dd.MM.yy"

    invoke-direct {p0, v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/LocaleController;->formatterYear:Lorg/telegram/messenger/time/FastDateFormat;

    .line 1137
    const-string/jumbo v2, "formatterYearMax"

    const v3, 0x7f0706d9

    invoke-direct {p0, v2, v3}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "dd.MM.yyyy"

    invoke-direct {p0, v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/LocaleController;->formatterYearMax:Lorg/telegram/messenger/time/FastDateFormat;

    .line 1138
    const-string/jumbo v2, "chatDate"

    const v3, 0x7f0706cd

    invoke-direct {p0, v2, v3}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "d MMMM"

    invoke-direct {p0, v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/LocaleController;->chatDate:Lorg/telegram/messenger/time/FastDateFormat;

    .line 1139
    const-string/jumbo v2, "chatFullDate"

    const v3, 0x7f0706ce

    invoke-direct {p0, v2, v3}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "d MMMM yyyy"

    invoke-direct {p0, v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/LocaleController;->chatFullDate:Lorg/telegram/messenger/time/FastDateFormat;

    .line 1140
    const-string/jumbo v2, "formatterWeek"

    const v3, 0x7f0706d7

    invoke-direct {p0, v2, v3}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "EEE"

    invoke-direct {p0, v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/LocaleController;->formatterWeek:Lorg/telegram/messenger/time/FastDateFormat;

    .line 1141
    const-string/jumbo v2, "formatterMonthYear"

    const v3, 0x7f0706d4

    invoke-direct {p0, v2, v3}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "MMMM yyyy"

    invoke-direct {p0, v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/LocaleController;->formatterMonthYear:Lorg/telegram/messenger/time/FastDateFormat;

    .line 1142
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ar"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ko"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    move-object v2, v1

    :goto_1
    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->is24HourFormat:Z

    if-eqz v3, :cond_5

    const-string/jumbo v3, "formatterDay24H"

    const v4, 0x7f0706d2

    invoke-direct {p0, v3, v4}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    :goto_2
    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->is24HourFormat:Z

    if-eqz v4, :cond_6

    const-string/jumbo v4, "HH:mm"

    :goto_3
    invoke-direct {p0, v2, v3, v4}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    .line 1143
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->is24HourFormat:Z

    if-eqz v2, :cond_7

    const-string/jumbo v2, "formatterStats24H"

    const v3, 0x7f0706d6

    invoke-direct {p0, v2, v3}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    :goto_4
    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->is24HourFormat:Z

    if-eqz v3, :cond_8

    const-string/jumbo v3, "MMM dd yyyy, HH:mm"

    :goto_5
    invoke-direct {p0, v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/LocaleController;->formatterStats:Lorg/telegram/messenger/time/FastDateFormat;

    .line 1144
    return-void

    .line 1133
    :cond_3
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1142
    :cond_4
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    goto :goto_1

    :cond_5
    const-string/jumbo v3, "formatterDay12H"

    const v4, 0x7f0706d1

    invoke-direct {p0, v3, v4}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_6
    const-string/jumbo v4, "h:mm a"

    goto :goto_3

    .line 1143
    :cond_7
    const-string/jumbo v2, "formatterStats12H"

    const v3, 0x7f0706d5

    invoke-direct {p0, v2, v3}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_8
    const-string/jumbo v3, "MMM dd yyyy, h:mm a"

    goto :goto_5
.end method
