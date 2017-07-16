.class public Lorg/telegram/messenger/BuildVars;
.super Ljava/lang/Object;
.source "BuildVars.java"


# static fields
.field public static APP_HASH:Ljava/lang/String;

.field public static APP_ID:I

.field public static BING_SEARCH_KEY:Ljava/lang/String;

.field public static BUILD_VERSION:I

.field public static BUILD_VERSION_STRING:Ljava/lang/String;

.field public static DEBUG_PRIVATE_VERSION:Z

.field public static DEBUG_VERSION:Z

.field public static FOURSQUARE_API_ID:Ljava/lang/String;

.field public static FOURSQUARE_API_KEY:Ljava/lang/String;

.field public static FOURSQUARE_API_VERSION:Ljava/lang/String;

.field public static GCM_SENDER_ID:Ljava/lang/String;

.field public static HASH_DEBUG:I

.field public static HOCKEY_APP_HASH:Ljava/lang/String;

.field public static HOCKEY_APP_HASH_DEBUG:Ljava/lang/String;

.field public static HOCKEY_APP_HASH_DEBUG_SECRET:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 12
    sput-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    .line 13
    sput-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    .line 14
    const/16 v0, 0x3c5

    sput v0, Lorg/telegram/messenger/BuildVars;->BUILD_VERSION:I

    .line 15
    const-string/jumbo v0, "3.18.0.0"

    sput-object v0, Lorg/telegram/messenger/BuildVars;->BUILD_VERSION_STRING:Ljava/lang/String;

    .line 16
    const/16 v0, 0x40ef

    sput v0, Lorg/telegram/messenger/BuildVars;->APP_ID:I

    .line 17
    const-string/jumbo v0, "8c9dbfe58437d1739540f5d53c72ae4b"

    sput-object v0, Lorg/telegram/messenger/BuildVars;->APP_HASH:Ljava/lang/String;

    .line 18
    const-string/jumbo v0, "9602f502a85552c90543497e91a071f0"

    sput-object v0, Lorg/telegram/messenger/BuildVars;->HOCKEY_APP_HASH:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, "0bf574d05ea448cea56617c5fcb9a6b3"

    sput-object v0, Lorg/telegram/messenger/BuildVars;->HOCKEY_APP_HASH_DEBUG:Ljava/lang/String;

    .line 20
    const-string/jumbo v0, "326898382893"

    sput-object v0, Lorg/telegram/messenger/BuildVars;->GCM_SENDER_ID:Ljava/lang/String;

    .line 21
    const-string/jumbo v0, "dKYt6BjhkmFnJABZI/nWs++mx7owYEKZLcdA3DTOO1s"

    sput-object v0, Lorg/telegram/messenger/BuildVars;->BING_SEARCH_KEY:Ljava/lang/String;

    .line 22
    const-string/jumbo v0, "AYVLOEUWYPLCHN113NI41GHUE2NVHO4NHA5XLZWJU152N3ZP"

    sput-object v0, Lorg/telegram/messenger/BuildVars;->FOURSQUARE_API_KEY:Ljava/lang/String;

    .line 23
    const-string/jumbo v0, "CRY3VMYDJYBKQQDCZ4YY3ZAACTIITLVMBUUEDSPRXNZVZZA1"

    sput-object v0, Lorg/telegram/messenger/BuildVars;->FOURSQUARE_API_ID:Ljava/lang/String;

    .line 24
    const-string/jumbo v0, "20150326"

    sput-object v0, Lorg/telegram/messenger/BuildVars;->FOURSQUARE_API_VERSION:Ljava/lang/String;

    .line 25
    const v0, 0x49d3bb62    # 1734508.2f

    sput v0, Lorg/telegram/messenger/BuildVars;->HASH_DEBUG:I

    .line 26
    const-string/jumbo v0, "5ae36310b7eab71158eaa5382d247f57"

    sput-object v0, Lorg/telegram/messenger/BuildVars;->HOCKEY_APP_HASH_DEBUG_SECRET:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
