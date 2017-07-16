.class public Lorg/telegram/ui/Adapters/MentionsAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "MentionsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;
    }
.end annotation


# instance fields
.field private allowNewMentions:Z

.field private botInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$BotInfo;",
            ">;"
        }
    .end annotation
.end field

.field private botsCount:I

.field private contextMedia:Z

.field private contextQueryReqid:I

.field private contextQueryRunnable:Ljava/lang/Runnable;

.field private contextUsernameReqid:I

.field private delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

.field private dialog_id:J

.field private foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

.field private info:Lorg/telegram/tgnet/TLRPC$ChatFull;

.field private isDarkTheme:Z

.field private lastKnownLocation:Landroid/location/Location;

.field private lastPosition:I

.field private lastText:Ljava/lang/String;

.field private locationProvider:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

.field private mContext:Landroid/content/Context;

.field private messages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private needBotContext:Z

.field private needUsernames:Z

.field private nextQueryOffset:Ljava/lang/String;

.field private noUserName:Z

.field private parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private resultLength:I

.field private resultStartPosition:I

.field private searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

.field private searchResultBotContext:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$BotInlineResult;",
            ">;"
        }
    .end annotation
.end field

.field private searchResultBotContextById:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/tgnet/TLRPC$BotInlineResult;",
            ">;"
        }
    .end annotation
.end field

.field private searchResultBotContextSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

.field private searchResultCommands:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private searchResultCommandsHelp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private searchResultCommandsUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;"
        }
    .end annotation
.end field

.field private searchResultHashtags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private searchResultUsernames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;"
        }
    .end annotation
.end field

.field private searchingContextQuery:Ljava/lang/String;

.field private searchingContextUsername:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZJLorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "darkTheme"    # Z
    .param p3, "did"    # J
    .param p5, "mentionsAdapterDelegate"    # Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    .prologue
    const/4 v0, 0x1

    .line 117
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 73
    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->allowNewMentions:Z

    .line 78
    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->needUsernames:Z

    .line 79
    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->needBotContext:Z

    .line 96
    new-instance v0, Lorg/telegram/ui/Adapters/MentionsAdapter$2;

    new-instance v1, Lorg/telegram/ui/Adapters/MentionsAdapter$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Adapters/MentionsAdapter$1;-><init>(Lorg/telegram/ui/Adapters/MentionsAdapter;)V

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter$2;-><init>(Lorg/telegram/ui/Adapters/MentionsAdapter;Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$LocationProviderDelegate;)V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->locationProvider:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    .line 118
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->mContext:Landroid/content/Context;

    .line 119
    iput-object p5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    .line 120
    iput-boolean p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->isDarkTheme:Z

    .line 121
    iput-wide p3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->dialog_id:J

    .line 122
    new-instance v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-direct {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    .line 123
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    new-instance v1, Lorg/telegram/ui/Adapters/MentionsAdapter$3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Adapters/MentionsAdapter$3;-><init>(Lorg/telegram/ui/Adapters/MentionsAdapter;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->setDelegate(Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;)V

    .line 136
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Adapters/MentionsAdapter;)Lorg/telegram/tgnet/TLRPC$User;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/MentionsAdapter;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Adapters/MentionsAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/MentionsAdapter;

    .prologue
    .line 50
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->noUserName:Z

    return v0
.end method

.method static synthetic access$102(Lorg/telegram/ui/Adapters/MentionsAdapter;Landroid/location/Location;)Landroid/location/Location;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/MentionsAdapter;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 50
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastKnownLocation:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/MentionsAdapter;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextUsername:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/MentionsAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextUsername:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Adapters/MentionsAdapter;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/MentionsAdapter;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$User;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->processFoundUser(Lorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method

.method static synthetic access$1302(Lorg/telegram/ui/Adapters/MentionsAdapter;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/MentionsAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextUsernameReqid:I

    return p1
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Adapters/MentionsAdapter;)Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/MentionsAdapter;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    return-object v0
.end method

.method static synthetic access$1502(Lorg/telegram/ui/Adapters/MentionsAdapter;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/MentionsAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryReqid:I

    return p1
.end method

.method static synthetic access$1602(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/MentionsAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->nextQueryOffset:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/MentionsAdapter;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextById:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1702(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/MentionsAdapter;
    .param p1, "x1"    # Ljava/util/HashMap;

    .prologue
    .line 50
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextById:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Adapters/MentionsAdapter;)Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/MentionsAdapter;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    return-object v0
.end method

.method static synthetic access$1802(Lorg/telegram/ui/Adapters/MentionsAdapter;Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;)Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/MentionsAdapter;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    .prologue
    .line 50
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    return-object p1
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/MentionsAdapter;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1902(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/MentionsAdapter;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 50
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/MentionsAdapter;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextQuery:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2002(Lorg/telegram/ui/Adapters/MentionsAdapter;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/MentionsAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextMedia:Z

    return p1
.end method

.method static synthetic access$2102(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/MentionsAdapter;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 50
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$2202(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/MentionsAdapter;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 50
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernames:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$2302(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/MentionsAdapter;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 50
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommands:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$2402(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/MentionsAdapter;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 50
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsHelp:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$2502(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/MentionsAdapter;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 50
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsUsers:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/Adapters/MentionsAdapter;ZLorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/MentionsAdapter;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchForContextBotResults(ZLorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lorg/telegram/ui/Adapters/MentionsAdapter;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/MentionsAdapter;

    .prologue
    .line 50
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->onLocationUnavailable()V

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/MentionsAdapter;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Adapters/MentionsAdapter;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/MentionsAdapter;

    .prologue
    .line 50
    iget v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastPosition:I

    return v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/MentionsAdapter;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->messages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Adapters/MentionsAdapter;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/MentionsAdapter;

    .prologue
    .line 50
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->checkLocationPermissionsOrStart()V

    return-void
.end method

.method static synthetic access$900(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/MentionsAdapter;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$902(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/MentionsAdapter;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 50
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method private checkLocationPermissionsOrStart()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 390
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 400
    :cond_0
    :goto_0
    return-void

    .line 393
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 394
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1, v4}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    .line 397
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$User;->bot_inline_geo:Z

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->locationProvider:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    invoke-virtual {v0}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->start()V

    goto :goto_0
.end method

.method private onLocationUnavailable()V
    .locals 4

    .prologue
    const-wide v2, -0x3f70c00000000000L    # -1000.0

    .line 381
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$User;->bot_inline_geo:Z

    if-eqz v0, :cond_0

    .line 382
    new-instance v0, Landroid/location/Location;

    const-string/jumbo v1, "network"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastKnownLocation:Landroid/location/Location;

    .line 383
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastKnownLocation:Landroid/location/Location;

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    .line 384
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastKnownLocation:Landroid/location/Location;

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    .line 385
    const/4 v0, 0x1

    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextQuery:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchForContextBotResults(ZLorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    :cond_0
    return-void
.end method

.method private processFoundUser(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 9
    .param p1, "user"    # Lorg/telegram/tgnet/TLRPC$User;

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 217
    iput v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextUsernameReqid:I

    .line 218
    iget-object v5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->locationProvider:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    invoke-virtual {v5}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->stop()V

    .line 219
    if-eqz p1, :cond_2

    iget-boolean v5, p1, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v5, :cond_2

    iget-object v5, p1, Lorg/telegram/tgnet/TLRPC$User;->bot_inline_placeholder:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 220
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    .line 221
    iget-object v5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$User;->bot_inline_geo:Z

    if-eqz v5, :cond_0

    .line 222
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v6, "Notifications"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 223
    .local v4, "preferences":Landroid/content/SharedPreferences;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "inlinegeo_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 224
    .local v0, "allowGeo":Z
    if-nez v0, :cond_1

    iget-object v5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 225
    iget-object v3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    .line 226
    .local v3, "foundContextBotFinal":Lorg/telegram/tgnet/TLRPC$User;
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v1, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 227
    .local v1, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v5, "ShareYouLocationTitle"

    const v6, 0x7f0705c4

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 228
    const-string/jumbo v5, "ShareYouLocationInline"

    const v6, 0x7f0705c3

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 229
    new-array v2, v8, [Z

    .line 230
    .local v2, "buttonClicked":[Z
    const-string/jumbo v5, "OK"

    const v6, 0x7f070452

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/Adapters/MentionsAdapter$4;

    invoke-direct {v6, p0, v2, v3}, Lorg/telegram/ui/Adapters/MentionsAdapter$4;-><init>(Lorg/telegram/ui/Adapters/MentionsAdapter;[ZLorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {v1, v5, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 241
    const-string/jumbo v5, "Cancel"

    const v6, 0x7f0700f0

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/Adapters/MentionsAdapter$5;

    invoke-direct {v6, p0, v2}, Lorg/telegram/ui/Adapters/MentionsAdapter$5;-><init>(Lorg/telegram/ui/Adapters/MentionsAdapter;[Z)V

    invoke-virtual {v1, v5, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 248
    iget-object v5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v6

    new-instance v7, Lorg/telegram/ui/Adapters/MentionsAdapter$6;

    invoke-direct {v7, p0, v2}, Lorg/telegram/ui/Adapters/MentionsAdapter$6;-><init>(Lorg/telegram/ui/Adapters/MentionsAdapter;[Z)V

    invoke-virtual {v5, v6, v7}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;

    .line 263
    .end local v0    # "allowGeo":Z
    .end local v1    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v2    # "buttonClicked":[Z
    .end local v3    # "foundContextBotFinal":Lorg/telegram/tgnet/TLRPC$User;
    .end local v4    # "preferences":Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    iget-object v5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v5, :cond_3

    .line 264
    iput-boolean v8, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->noUserName:Z

    .line 271
    :goto_1
    return-void

    .line 257
    .restart local v0    # "allowGeo":Z
    .restart local v4    # "preferences":Landroid/content/SharedPreferences;
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->checkLocationPermissionsOrStart()V

    goto :goto_0

    .line 261
    .end local v0    # "allowGeo":Z
    .end local v4    # "preferences":Landroid/content/SharedPreferences;
    :cond_2
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    goto :goto_0

    .line 266
    :cond_3
    iget-object v5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    if-eqz v5, :cond_4

    .line 267
    iget-object v5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    invoke-interface {v5, v8}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->onContextSearch(Z)V

    .line 269
    :cond_4
    iget-object v5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v6, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextQuery:Ljava/lang/String;

    const-string/jumbo v7, ""

    invoke-direct {p0, v8, v5, v6, v7}, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchForContextBotResults(ZLorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private searchForContextBot(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "query"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 274
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextQuery:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextQuery:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    iput-object v3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;

    .line 278
    iput-object v3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextById:Ljava/util/HashMap;

    .line 279
    iput-object v3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    .line 280
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->notifyDataSetChanged()V

    .line 281
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_2

    .line 282
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    invoke-interface {v0, v2}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->needChangePanelVisibility(Z)V

    .line 284
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 285
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 286
    iput-object v3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryRunnable:Ljava/lang/Runnable;

    .line 288
    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextUsername:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextUsername:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 289
    :cond_4
    iget v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextUsernameReqid:I

    if-eqz v0, :cond_5

    .line 290
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextUsernameReqid:I

    invoke-virtual {v0, v1, v4}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 291
    iput v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextUsernameReqid:I

    .line 293
    :cond_5
    iget v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryReqid:I

    if-eqz v0, :cond_6

    .line 294
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryReqid:I

    invoke-virtual {v0, v1, v4}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 295
    iput v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryReqid:I

    .line 297
    :cond_6
    iput-object v3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    .line 298
    iput-object v3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextUsername:Ljava/lang/String;

    .line 299
    iput-object v3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextQuery:Ljava/lang/String;

    .line 300
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->locationProvider:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    invoke-virtual {v0}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->stop()V

    .line 301
    iput-boolean v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->noUserName:Z

    .line 302
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    if-eqz v0, :cond_7

    .line 303
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    invoke-interface {v0, v2}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->onContextSearch(Z)V

    .line 305
    :cond_7
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    :cond_8
    if-nez p2, :cond_a

    .line 310
    iget v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryReqid:I

    if-eqz v0, :cond_9

    .line 311
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryReqid:I

    invoke-virtual {v0, v1, v4}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 312
    iput v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryReqid:I

    .line 314
    :cond_9
    iput-object v3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextQuery:Ljava/lang/String;

    .line 315
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    invoke-interface {v0, v2}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->onContextSearch(Z)V

    goto/16 :goto_0

    .line 320
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    if-eqz v0, :cond_b

    .line 321
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_c

    .line 322
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    invoke-interface {v0, v4}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->onContextSearch(Z)V

    .line 328
    :cond_b
    :goto_1
    iput-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextQuery:Ljava/lang/String;

    .line 329
    new-instance v0, Lorg/telegram/ui/Adapters/MentionsAdapter$7;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/Adapters/MentionsAdapter$7;-><init>(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryRunnable:Ljava/lang/Runnable;

    .line 377
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x190

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto/16 :goto_0

    .line 323
    :cond_c
    const-string/jumbo v0, "gif"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 324
    const-string/jumbo v0, "gif"

    iput-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextUsername:Ljava/lang/String;

    .line 325
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    invoke-interface {v0, v2}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->onContextSearch(Z)V

    goto :goto_1
.end method

.method private searchForContextBotResults(ZLorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .param p1, "cache"    # Z
    .param p2, "user"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p3, "query"    # Ljava/lang/String;
    .param p4, "offset"    # Ljava/lang/String;

    .prologue
    .line 419
    iget v3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryReqid:I

    if-eqz v3, :cond_0

    .line 420
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryReqid:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 421
    const/4 v3, 0x0

    iput v3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryReqid:I

    .line 423
    :cond_0
    if-eqz p3, :cond_1

    if-nez p2, :cond_3

    .line 424
    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextQuery:Ljava/lang/String;

    .line 518
    :cond_2
    :goto_0
    return-void

    .line 427
    :cond_3
    move-object/from16 v0, p2

    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$User;->bot_inline_geo:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastKnownLocation:Landroid/location/Location;

    if-eqz v3, :cond_2

    .line 430
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->dialog_id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->dialog_id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$User;->bot_inline_geo:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastKnownLocation:Landroid/location/Location;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastKnownLocation:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    const-wide v12, -0x3f70c00000000000L    # -1000.0

    cmpl-double v3, v6, v12

    if-eqz v3, :cond_5

    iget-object v3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastKnownLocation:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    iget-object v3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastKnownLocation:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v12

    add-double/2addr v6, v12

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 431
    .local v8, "key":Ljava/lang/String;
    new-instance v2, Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    move-object v3, p0

    move-object/from16 v4, p3

    move v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p4

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Adapters/MentionsAdapter$8;-><init>(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/lang/String;ZLorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    .local v2, "requestDelegate":Lorg/telegram/tgnet/RequestDelegate;
    if-eqz p1, :cond_6

    .line 497
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    invoke-virtual {v3, v8, v2}, Lorg/telegram/messenger/MessagesStorage;->getBotCache(Ljava/lang/String;Lorg/telegram/tgnet/RequestDelegate;)V

    goto/16 :goto_0

    .line 430
    .end local v2    # "requestDelegate":Lorg/telegram/tgnet/RequestDelegate;
    .end local v8    # "key":Ljava/lang/String;
    :cond_5
    const-string/jumbo v3, ""

    goto :goto_1

    .line 499
    .restart local v2    # "requestDelegate":Lorg/telegram/tgnet/RequestDelegate;
    .restart local v8    # "key":Ljava/lang/String;
    :cond_6
    new-instance v11, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;

    invoke-direct {v11}, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;-><init>()V

    .line 500
    .local v11, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v3

    iput-object v3, v11, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 501
    move-object/from16 v0, p3

    iput-object v0, v11, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->query:Ljava/lang/String;

    .line 502
    move-object/from16 v0, p4

    iput-object v0, v11, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->offset:Ljava/lang/String;

    .line 503
    move-object/from16 v0, p2

    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$User;->bot_inline_geo:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastKnownLocation:Landroid/location/Location;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastKnownLocation:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    const-wide v6, -0x3f70c00000000000L    # -1000.0

    cmpl-double v3, v4, v6

    if-eqz v3, :cond_7

    .line 504
    iget v3, v11, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->flags:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v11, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->flags:I

    .line 505
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputGeoPoint;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputGeoPoint;-><init>()V

    iput-object v3, v11, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

    .line 506
    iget-object v3, v11, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

    iget-object v4, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastKnownLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    iput-wide v4, v3, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->lat:D

    .line 507
    iget-object v3, v11, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

    iget-object v4, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastKnownLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    iput-wide v4, v3, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->_long:D

    .line 509
    :cond_7
    iget-wide v4, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->dialog_id:J

    long-to-int v10, v4

    .line 510
    .local v10, "lower_id":I
    iget-wide v4, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->dialog_id:J

    const/16 v3, 0x20

    shr-long/2addr v4, v3

    long-to-int v9, v4

    .line 511
    .local v9, "high_id":I
    if-eqz v10, :cond_8

    .line 512
    invoke-static {v10}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v3

    iput-object v3, v11, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 516
    :goto_2
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v11, v2, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryReqid:I

    goto/16 :goto_0

    .line 514
    :cond_8
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V

    iput-object v3, v11, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto :goto_2
.end method


# virtual methods
.method public addHashtagsFromMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 789
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->addHashtagsFromMessage(Ljava/lang/CharSequence;)V

    .line 790
    return-void
.end method

.method public clearRecentHashtags()V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->clearRecentHashtags()V

    .line 193
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 194
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->notifyDataSetChanged()V

    .line 195
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->needChangePanelVisibility(Z)V

    .line 198
    :cond_0
    return-void
.end method

.method public getBotCaption()Ljava/lang/String;
    .locals 2

    .prologue
    .line 403
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->bot_inline_placeholder:Ljava/lang/String;

    .line 408
    :goto_0
    return-object v0

    .line 405
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextUsername:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextUsername:Ljava/lang/String;

    const-string/jumbo v1, "gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 406
    const-string/jumbo v0, "Search GIFs"

    goto :goto_0

    .line 408
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBotContextSwitch()Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    return-object v0
.end method

.method public getContextBotId()I
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContextBotName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getContextBotUser()Lorg/telegram/tgnet/TLRPC$User;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 5
    .param p1, "i"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 800
    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 801
    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    if-eqz v1, :cond_2

    .line 802
    if-nez p1, :cond_1

    .line 803
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    .line 835
    :cond_0
    :goto_0
    return-object v0

    .line 805
    :cond_1
    add-int/lit8 p1, p1, -0x1

    .line 808
    :cond_2
    if-ltz p1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 811
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 812
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernames:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    .line 813
    if-ltz p1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 816
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 817
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    .line 818
    if-ltz p1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 821
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 822
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommands:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 823
    if-ltz p1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommands:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 826
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsUsers:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    iget v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->botsCount:I

    if-ne v0, v3, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;

    if-eqz v0, :cond_9

    .line 827
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsUsers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 828
    const-string/jumbo v1, "%s@%s"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommands:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v2, v4

    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsUsers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsUsers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    :goto_1
    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v0, ""

    goto :goto_1

    .line 830
    :cond_8
    const-string/jumbo v0, "%s"

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommands:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 833
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommands:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public getItemCount()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 764
    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 765
    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    add-int/2addr v0, v1

    .line 773
    :cond_1
    :goto_0
    return v0

    .line 766
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernames:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 767
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 768
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    .line 769
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 770
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommands:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 771
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItemPosition(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 793
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    if-eqz v0, :cond_0

    .line 794
    add-int/lit8 p1, p1, -0x1

    .line 796
    :cond_0
    return p1
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 778
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 779
    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    if-eqz v0, :cond_0

    .line 780
    const/4 v0, 0x2

    .line 784
    :goto_0
    return v0

    .line 782
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 784
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getResultLength()I
    .locals 1

    .prologue
    .line 755
    iget v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->resultLength:I

    return v0
.end method

.method public getResultStartPosition()I
    .locals 1

    .prologue
    .line 751
    iget v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->resultStartPosition:I

    return v0
.end method

.method public getSearchResultBotContext()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$BotInlineResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 759
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isBotCommands()Z
    .locals 1

    .prologue
    .line 843
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommands:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBotContext()Z
    .locals 1

    .prologue
    .line 847
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 856
    const/4 v0, 0x1

    return v0
.end method

.method public isLongClickEnabled()Z
    .locals 1

    .prologue
    .line 839
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommands:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMediaLayout()Z
    .locals 1

    .prologue
    .line 851
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextMedia:Z

    return v0
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .locals 7
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 881
    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;

    if-eqz v1, :cond_6

    .line 882
    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    if-eqz v1, :cond_1

    move v0, v3

    .line 883
    .local v0, "hasTop":Z
    :goto_0
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 884
    if-eqz v0, :cond_0

    .line 885
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/BotSwitchCell;

    iget-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/BotSwitchCell;->setText(Ljava/lang/String;)V

    .line 902
    .end local v0    # "hasTop":Z
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v4

    .line 882
    goto :goto_0

    .line 888
    .restart local v0    # "hasTop":Z
    :cond_2
    if-eqz v0, :cond_3

    .line 889
    add-int/lit8 p2, p2, -0x1

    .line 891
    :cond_3
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/ContextLinkCell;

    iget-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-boolean v6, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextMedia:Z

    iget-object v5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-eq p2, v5, :cond_4

    move v5, v3

    :goto_2
    if-eqz v0, :cond_5

    if-nez p2, :cond_5

    :goto_3
    invoke-virtual {v1, v2, v6, v5, v3}, Lorg/telegram/ui/Cells/ContextLinkCell;->setLink(Lorg/telegram/tgnet/TLRPC$BotInlineResult;ZZZ)V

    goto :goto_1

    :cond_4
    move v5, v4

    goto :goto_2

    :cond_5
    move v3, v4

    goto :goto_3

    .line 894
    .end local v0    # "hasTop":Z
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernames:Ljava/util/ArrayList;

    if-eqz v1, :cond_7

    .line 895
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/MentionCell;

    iget-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernames:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/MentionCell;->setUser(Lorg/telegram/tgnet/TLRPC$User;)V

    goto :goto_1

    .line 896
    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    if-eqz v1, :cond_8

    .line 897
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/MentionCell;

    iget-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/MentionCell;->setText(Ljava/lang/String;)V

    goto :goto_1

    .line 898
    :cond_8
    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommands:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 899
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/MentionCell;

    iget-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommands:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsHelp:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsUsers:Ljava/util/ArrayList;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsUsers:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$User;

    :goto_4
    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Cells/MentionCell;->setBotCommand(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$User;)V

    goto :goto_1

    :cond_9
    const/4 v4, 0x0

    goto :goto_4
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 862
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 863
    new-instance v0, Lorg/telegram/ui/Cells/ContextLinkCell;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/ContextLinkCell;-><init>(Landroid/content/Context;)V

    .local v0, "view":Landroid/view/View;
    move-object v1, v0

    .line 864
    check-cast v1, Lorg/telegram/ui/Cells/ContextLinkCell;

    new-instance v2, Lorg/telegram/ui/Adapters/MentionsAdapter$10;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Adapters/MentionsAdapter$10;-><init>(Lorg/telegram/ui/Adapters/MentionsAdapter;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/ContextLinkCell;->setDelegate(Lorg/telegram/ui/Cells/ContextLinkCell$ContextLinkCellDelegate;)V

    .line 876
    :goto_0
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1

    .line 870
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 871
    new-instance v0, Lorg/telegram/ui/Cells/BotSwitchCell;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/BotSwitchCell;-><init>(Landroid/content/Context;)V

    .restart local v0    # "view":Landroid/view/View;
    goto :goto_0

    .line 873
    .end local v0    # "view":Landroid/view/View;
    :cond_1
    new-instance v0, Lorg/telegram/ui/Cells/MentionCell;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/MentionCell;-><init>(Landroid/content/Context;)V

    .restart local v0    # "view":Landroid/view/View;
    move-object v1, v0

    .line 874
    check-cast v1, Lorg/telegram/ui/Cells/MentionCell;

    iget-boolean v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->isDarkTheme:Z

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/MentionCell;->setIsDarkTheme(Z)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 139
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->locationProvider:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->locationProvider:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    invoke-virtual {v0}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->stop()V

    .line 142
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 144
    iput-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryRunnable:Ljava/lang/Runnable;

    .line 146
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextUsernameReqid:I

    if-eqz v0, :cond_2

    .line 147
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextUsernameReqid:I

    invoke-virtual {v0, v1, v4}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 148
    iput v3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextUsernameReqid:I

    .line 150
    :cond_2
    iget v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryReqid:I

    if-eqz v0, :cond_3

    .line 151
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryReqid:I

    invoke-virtual {v0, v1, v4}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 152
    iput v3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryReqid:I

    .line 154
    :cond_3
    iput-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    .line 155
    iput-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextUsername:Ljava/lang/String;

    .line 156
    iput-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextQuery:Ljava/lang/String;

    .line 157
    iput-boolean v3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->noUserName:Z

    .line 158
    return-void
.end method

.method public onRequestPermissionsResultFragment(I[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 905
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 906
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$User;->bot_inline_geo:Z

    if-eqz v0, :cond_0

    .line 907
    array-length v0, p3

    if-lez v0, :cond_1

    const/4 v0, 0x0

    aget v0, p3, v0

    if-nez v0, :cond_1

    .line 908
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->locationProvider:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    invoke-virtual {v0}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->start()V

    .line 914
    :cond_0
    :goto_0
    return-void

    .line 910
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->onLocationUnavailable()V

    goto :goto_0
.end method

.method public searchForContextBotForNextOffset()V
    .locals 4

    .prologue
    .line 412
    iget v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryReqid:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->nextQueryOffset:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->nextQueryOffset:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextQuery:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 416
    :cond_0
    :goto_0
    return-void

    .line 415
    :cond_1
    const/4 v0, 0x1

    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextQuery:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->nextQueryOffset:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchForContextBotResults(ZLorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public searchUsernameOrHashtag(Ljava/lang/String;ILjava/util/ArrayList;)V
    .locals 36
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 521
    .local p3, "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v33

    if-nez v33, :cond_2

    .line 522
    :cond_0
    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchForContextBot(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-interface/range {v33 .. v34}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->needChangePanelVisibility(Z)V

    .line 524
    const/16 v33, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastText:Ljava/lang/String;

    .line 748
    :cond_1
    :goto_0
    return-void

    .line 527
    :cond_2
    move/from16 v28, p2

    .line 528
    .local v28, "searchPostion":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v33

    if-lez v33, :cond_3

    .line 529
    add-int/lit8 v28, v28, -0x1

    .line 531
    :cond_3
    const/16 v33, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastText:Ljava/lang/String;

    .line 532
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    .line 533
    .local v27, "result":Ljava/lang/StringBuilder;
    const/4 v13, -0x1

    .line 534
    .local v13, "foundType":I
    const/4 v15, 0x0

    .line 535
    .local v15, "hasIllegalUsernameCharacters":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/Adapters/MentionsAdapter;->needBotContext:Z

    move/from16 v33, v0

    if-eqz v33, :cond_c

    const/16 v33, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v33

    const/16 v34, 0x40

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_c

    .line 536
    const/16 v33, 0x20

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v19

    .line 537
    .local v19, "index":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v20

    .line 538
    .local v20, "len":I
    const/16 v30, 0x0

    .line 539
    .local v30, "username":Ljava/lang/String;
    const/16 v26, 0x0

    .line 540
    .local v26, "query":Ljava/lang/String;
    if-lez v19, :cond_8

    .line 541
    const/16 v33, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v33

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v30

    .line 542
    add-int/lit8 v33, v19, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v26

    .line 549
    :goto_1
    if-eqz v30, :cond_b

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v33

    const/16 v34, 0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-lt v0, v1, :cond_b

    .line 550
    const/4 v4, 0x1

    .local v4, "a":I
    :goto_2
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v33

    move/from16 v0, v33

    if-ge v4, v0, :cond_7

    .line 551
    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 552
    .local v7, "ch":C
    const/16 v33, 0x30

    move/from16 v0, v33

    if-lt v7, v0, :cond_4

    const/16 v33, 0x39

    move/from16 v0, v33

    if-le v7, v0, :cond_a

    :cond_4
    const/16 v33, 0x61

    move/from16 v0, v33

    if-lt v7, v0, :cond_5

    const/16 v33, 0x7a

    move/from16 v0, v33

    if-le v7, v0, :cond_a

    :cond_5
    const/16 v33, 0x41

    move/from16 v0, v33

    if-lt v7, v0, :cond_6

    const/16 v33, 0x5a

    move/from16 v0, v33

    if-le v7, v0, :cond_a

    :cond_6
    const/16 v33, 0x5f

    move/from16 v0, v33

    if-eq v7, v0, :cond_a

    .line 553
    const-string/jumbo v30, ""

    .line 560
    .end local v4    # "a":I
    .end local v7    # "ch":C
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchForContextBot(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    .end local v19    # "index":I
    .end local v20    # "len":I
    .end local v26    # "query":Ljava/lang/String;
    .end local v30    # "username":Ljava/lang/String;
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    move-object/from16 v33, v0

    if-nez v33, :cond_1

    .line 567
    const/4 v11, -0x1

    .line 568
    .local v11, "dogPostion":I
    move/from16 v4, v28

    .restart local v4    # "a":I
    :goto_5
    if-ltz v4, :cond_12

    .line 569
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v33

    move/from16 v0, v33

    if-lt v4, v0, :cond_d

    .line 568
    :goto_6
    add-int/lit8 v4, v4, -0x1

    goto :goto_5

    .line 543
    .end local v4    # "a":I
    .end local v11    # "dogPostion":I
    .restart local v19    # "index":I
    .restart local v20    # "len":I
    .restart local v26    # "query":Ljava/lang/String;
    .restart local v30    # "username":Ljava/lang/String;
    :cond_8
    add-int/lit8 v33, v20, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v33

    const/16 v34, 0x74

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_9

    add-int/lit8 v33, v20, -0x2

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v33

    const/16 v34, 0x6f

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_9

    add-int/lit8 v33, v20, -0x3

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v33

    const/16 v34, 0x62

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_9

    .line 544
    const/16 v33, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v30

    .line 545
    const-string/jumbo v26, ""

    goto/16 :goto_1

    .line 547
    :cond_9
    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchForContextBot(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 550
    .restart local v4    # "a":I
    .restart local v7    # "ch":C
    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 558
    .end local v4    # "a":I
    .end local v7    # "ch":C
    :cond_b
    const-string/jumbo v30, ""

    goto :goto_3

    .line 562
    .end local v19    # "index":I
    .end local v20    # "len":I
    .end local v26    # "query":Ljava/lang/String;
    .end local v30    # "username":Ljava/lang/String;
    :cond_c
    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchForContextBot(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 572
    .restart local v4    # "a":I
    .restart local v11    # "dogPostion":I
    :cond_d
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 573
    .restart local v7    # "ch":C
    if-eqz v4, :cond_e

    add-int/lit8 v33, v4, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v33

    const/16 v34, 0x20

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_e

    add-int/lit8 v33, v4, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v33

    const/16 v34, 0xa

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_16

    .line 574
    :cond_e
    const/16 v33, 0x40

    move/from16 v0, v33

    if-ne v7, v0, :cond_13

    .line 575
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/Adapters/MentionsAdapter;->needUsernames:Z

    move/from16 v33, v0

    if-nez v33, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/Adapters/MentionsAdapter;->needBotContext:Z

    move/from16 v33, v0

    if-eqz v33, :cond_16

    if-nez v4, :cond_16

    .line 576
    :cond_f
    if-eqz v15, :cond_10

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-interface/range {v33 .. v34}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->needChangePanelVisibility(Z)V

    goto/16 :goto_0

    .line 580
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Adapters/MentionsAdapter;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-object/from16 v33, v0

    if-nez v33, :cond_11

    if-eqz v4, :cond_11

    .line 581
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastText:Ljava/lang/String;

    .line 582
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastPosition:I

    .line 583
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->messages:Ljava/util/ArrayList;

    .line 584
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-interface/range {v33 .. v34}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->needChangePanelVisibility(Z)V

    goto/16 :goto_0

    .line 587
    :cond_11
    move v11, v4

    .line 588
    const/4 v13, 0x0

    .line 589
    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/ui/Adapters/MentionsAdapter;->resultStartPosition:I

    .line 590
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->length()I

    move-result v33

    add-int/lit8 v33, v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->resultLength:I

    .line 619
    .end local v7    # "ch":C
    :cond_12
    :goto_7
    const/16 v33, -0x1

    move/from16 v0, v33

    if-ne v13, v0, :cond_1b

    .line 620
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-interface/range {v33 .. v34}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->needChangePanelVisibility(Z)V

    goto/16 :goto_0

    .line 593
    .restart local v7    # "ch":C
    :cond_13
    const/16 v33, 0x23

    move/from16 v0, v33

    if-ne v7, v0, :cond_15

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->loadRecentHashtags()Z

    move-result v33

    if-eqz v33, :cond_14

    .line 595
    const/4 v13, 0x1

    .line 596
    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/ui/Adapters/MentionsAdapter;->resultStartPosition:I

    .line 597
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->length()I

    move-result v33

    add-int/lit8 v33, v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->resultLength:I

    .line 598
    const/16 v33, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v33

    invoke-virtual {v0, v1, v7}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 601
    :cond_14
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastText:Ljava/lang/String;

    .line 602
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastPosition:I

    .line 603
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->messages:Ljava/util/ArrayList;

    .line 604
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-interface/range {v33 .. v34}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->needChangePanelVisibility(Z)V

    goto/16 :goto_0

    .line 607
    :cond_15
    if-nez v4, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Adapters/MentionsAdapter;->botInfo:Ljava/util/HashMap;

    move-object/from16 v33, v0

    if-eqz v33, :cond_16

    const/16 v33, 0x2f

    move/from16 v0, v33

    if-ne v7, v0, :cond_16

    .line 608
    const/4 v13, 0x2

    .line 609
    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/ui/Adapters/MentionsAdapter;->resultStartPosition:I

    .line 610
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->length()I

    move-result v33

    add-int/lit8 v33, v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->resultLength:I

    goto :goto_7

    .line 614
    :cond_16
    const/16 v33, 0x30

    move/from16 v0, v33

    if-lt v7, v0, :cond_17

    const/16 v33, 0x39

    move/from16 v0, v33

    if-le v7, v0, :cond_1a

    :cond_17
    const/16 v33, 0x61

    move/from16 v0, v33

    if-lt v7, v0, :cond_18

    const/16 v33, 0x7a

    move/from16 v0, v33

    if-le v7, v0, :cond_1a

    :cond_18
    const/16 v33, 0x41

    move/from16 v0, v33

    if-lt v7, v0, :cond_19

    const/16 v33, 0x5a

    move/from16 v0, v33

    if-le v7, v0, :cond_1a

    :cond_19
    const/16 v33, 0x5f

    move/from16 v0, v33

    if-eq v7, v0, :cond_1a

    .line 615
    const/4 v15, 0x1

    .line 617
    :cond_1a
    const/16 v33, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v33

    invoke-virtual {v0, v1, v7}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 623
    .end local v7    # "ch":C
    :cond_1b
    if-nez v13, :cond_2d

    .line 624
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 625
    .local v32, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    :goto_8
    const/16 v33, 0x64

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v34

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->min(II)I

    move-result v33

    move/from16 v0, v33

    if-ge v4, v0, :cond_1d

    .line 626
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, v33

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v14, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    .line 627
    .local v14, "from_id":I
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_1c

    .line 628
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 625
    :cond_1c
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 631
    .end local v14    # "from_id":I
    :cond_1d
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v31

    .line 632
    .local v31, "usernameString":Ljava/lang/String;
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 633
    .local v22, "newResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    new-instance v25, Ljava/util/HashMap;

    invoke-direct/range {v25 .. v25}, Ljava/util/HashMap;-><init>()V

    .line 634
    .local v25, "newResultsHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$User;>;"
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/Adapters/MentionsAdapter;->needBotContext:Z

    move/from16 v33, v0

    if-eqz v33, :cond_23

    if-nez v11, :cond_23

    sget-object v33, Lorg/telegram/messenger/query/SearchQuery;->inlineBots:Ljava/util/ArrayList;

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v33

    if-nez v33, :cond_23

    .line 635
    const/4 v10, 0x0

    .line 636
    .local v10, "count":I
    const/4 v4, 0x0

    :goto_9
    sget-object v33, Lorg/telegram/messenger/query/SearchQuery;->inlineBots:Ljava/util/ArrayList;

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v33

    move/from16 v0, v33

    if-ge v4, v0, :cond_23

    .line 637
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v34

    sget-object v33, Lorg/telegram/messenger/query/SearchQuery;->inlineBots:Ljava/util/ArrayList;

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lorg/telegram/tgnet/TLRPC$TL_topPeer;

    move-object/from16 v0, v33

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v29

    .line 638
    .local v29, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-nez v29, :cond_1f

    .line 636
    :cond_1e
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 641
    :cond_1f
    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    move-object/from16 v33, v0

    if-eqz v33, :cond_22

    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v33

    if-lez v33, :cond_22

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v33

    if-lez v33, :cond_20

    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v33

    if-nez v33, :cond_21

    :cond_20
    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v33

    if-nez v33, :cond_22

    .line 642
    :cond_21
    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 643
    move-object/from16 v0, v29

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    add-int/lit8 v10, v10, 0x1

    .line 646
    :cond_22
    const/16 v33, 0x5

    move/from16 v0, v33

    if-ne v10, v0, :cond_1e

    .line 651
    .end local v10    # "count":I
    .end local v29    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Adapters/MentionsAdapter;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-object/from16 v33, v0

    if-eqz v33, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Adapters/MentionsAdapter;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    move-object/from16 v33, v0

    if-eqz v33, :cond_2b

    .line 652
    const/4 v4, 0x0

    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Adapters/MentionsAdapter;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v33

    move/from16 v0, v33

    if-ge v4, v0, :cond_2b

    .line 653
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Adapters/MentionsAdapter;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 654
    .local v8, "chatParticipant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v33

    iget v0, v8, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v29

    .line 655
    .restart local v29    # "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v29, :cond_24

    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v33

    if-nez v33, :cond_24

    move-object/from16 v0, v29

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_25

    .line 652
    :cond_24
    :goto_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 658
    :cond_25
    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v33

    if-nez v33, :cond_27

    .line 659
    move-object/from16 v0, v29

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$User;->deleted:Z

    move/from16 v33, v0

    if-nez v33, :cond_24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/Adapters/MentionsAdapter;->allowNewMentions:Z

    move/from16 v33, v0

    if-nez v33, :cond_26

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/Adapters/MentionsAdapter;->allowNewMentions:Z

    move/from16 v33, v0

    if-nez v33, :cond_24

    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    move-object/from16 v33, v0

    if-eqz v33, :cond_24

    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v33

    if-eqz v33, :cond_24

    .line 660
    :cond_26
    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 663
    :cond_27
    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    move-object/from16 v33, v0

    if-eqz v33, :cond_28

    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v33

    if-lez v33, :cond_28

    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_28

    .line 664
    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 666
    :cond_28
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/Adapters/MentionsAdapter;->allowNewMentions:Z

    move/from16 v33, v0

    if-nez v33, :cond_29

    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    move-object/from16 v33, v0

    if-eqz v33, :cond_24

    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v33

    if-eqz v33, :cond_24

    .line 669
    :cond_29
    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    move-object/from16 v33, v0

    if-eqz v33, :cond_2a

    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v33

    if-lez v33, :cond_2a

    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_2a

    .line 670
    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    .line 671
    :cond_2a
    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    move-object/from16 v33, v0

    if-eqz v33, :cond_24

    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v33

    if-lez v33, :cond_24

    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_24

    .line 672
    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    .line 678
    .end local v8    # "chatParticipant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    .end local v29    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_2b
    const/16 v33, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    .line 679
    const/16 v33, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommands:Ljava/util/ArrayList;

    .line 680
    const/16 v33, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsHelp:Ljava/util/ArrayList;

    .line 681
    const/16 v33, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsUsers:Ljava/util/ArrayList;

    .line 682
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernames:Ljava/util/ArrayList;

    .line 683
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernames:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    new-instance v34, Lorg/telegram/ui/Adapters/MentionsAdapter$9;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/ui/Adapters/MentionsAdapter$9;-><init>(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/util/HashMap;Ljava/util/ArrayList;)V

    invoke-static/range {v33 .. v34}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 705
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->notifyDataSetChanged()V

    .line 706
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    move-object/from16 v34, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v33

    if-nez v33, :cond_2c

    const/16 v33, 0x1

    :goto_c
    move-object/from16 v0, v34

    move/from16 v1, v33

    invoke-interface {v0, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->needChangePanelVisibility(Z)V

    goto/16 :goto_0

    :cond_2c
    const/16 v33, 0x0

    goto :goto_c

    .line 707
    .end local v22    # "newResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    .end local v25    # "newResultsHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$User;>;"
    .end local v31    # "usernameString":Ljava/lang/String;
    .end local v32    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_2d
    const/16 v33, 0x1

    move/from16 v0, v33

    if-ne v13, v0, :cond_31

    .line 708
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 709
    .local v21, "newResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    .line 710
    .local v17, "hashtagString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getHashtags()Ljava/util/ArrayList;

    move-result-object v18

    .line 711
    .local v18, "hashtags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;>;"
    const/4 v4, 0x0

    :goto_d
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v33

    move/from16 v0, v33

    if-ge v4, v0, :cond_2f

    .line 712
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;

    .line 713
    .local v16, "hashtagObject":Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;
    if-eqz v16, :cond_2e

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;->hashtag:Ljava/lang/String;

    move-object/from16 v33, v0

    if-eqz v33, :cond_2e

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;->hashtag:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_2e

    .line 714
    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;->hashtag:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 711
    :cond_2e
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 717
    .end local v16    # "hashtagObject":Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;
    :cond_2f
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    .line 718
    const/16 v33, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernames:Ljava/util/ArrayList;

    .line 719
    const/16 v33, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommands:Ljava/util/ArrayList;

    .line 720
    const/16 v33, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsHelp:Ljava/util/ArrayList;

    .line 721
    const/16 v33, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsUsers:Ljava/util/ArrayList;

    .line 722
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->notifyDataSetChanged()V

    .line 723
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    move-object/from16 v34, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v33

    if-nez v33, :cond_30

    const/16 v33, 0x1

    :goto_e
    move-object/from16 v0, v34

    move/from16 v1, v33

    invoke-interface {v0, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->needChangePanelVisibility(Z)V

    goto/16 :goto_0

    :cond_30
    const/16 v33, 0x0

    goto :goto_e

    .line 724
    .end local v17    # "hashtagString":Ljava/lang/String;
    .end local v18    # "hashtags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;>;"
    .end local v21    # "newResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_31
    const/16 v33, 0x2

    move/from16 v0, v33

    if-ne v13, v0, :cond_1

    .line 725
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 726
    .restart local v21    # "newResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 727
    .local v23, "newResultHelp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 728
    .local v24, "newResultUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 729
    .local v9, "command":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Adapters/MentionsAdapter;->botInfo:Ljava/util/HashMap;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v33

    :cond_32
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_34

    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 730
    .local v12, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$BotInfo;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$BotInfo;

    .line 731
    .local v6, "botInfo":Lorg/telegram/tgnet/TLRPC$BotInfo;
    const/4 v4, 0x0

    :goto_f
    iget-object v0, v6, Lorg/telegram/tgnet/TLRPC$BotInfo;->commands:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v34

    move/from16 v0, v34

    if-ge v4, v0, :cond_32

    .line 732
    iget-object v0, v6, Lorg/telegram/tgnet/TLRPC$BotInfo;->commands:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_botCommand;

    .line 733
    .local v5, "botCommand":Lorg/telegram/tgnet/TLRPC$TL_botCommand;
    if-eqz v5, :cond_33

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$TL_botCommand;->command:Ljava/lang/String;

    move-object/from16 v34, v0

    if-eqz v34, :cond_33

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$TL_botCommand;->command:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_33

    .line 734
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "/"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$TL_botCommand;->command:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v21

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 735
    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$TL_botCommand;->description:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 736
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v34

    iget v0, v6, Lorg/telegram/tgnet/TLRPC$BotInfo;->user_id:I

    move/from16 v35, v0

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v34

    move-object/from16 v0, v24

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 731
    :cond_33
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 740
    .end local v5    # "botCommand":Lorg/telegram/tgnet/TLRPC$TL_botCommand;
    .end local v6    # "botInfo":Lorg/telegram/tgnet/TLRPC$BotInfo;
    .end local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$BotInfo;>;"
    :cond_34
    const/16 v33, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    .line 741
    const/16 v33, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernames:Ljava/util/ArrayList;

    .line 742
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommands:Ljava/util/ArrayList;

    .line 743
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsHelp:Ljava/util/ArrayList;

    .line 744
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsUsers:Ljava/util/ArrayList;

    .line 745
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->notifyDataSetChanged()V

    .line 746
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    move-object/from16 v34, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v33

    if-nez v33, :cond_35

    const/16 v33, 0x1

    :goto_10
    move-object/from16 v0, v34

    move/from16 v1, v33

    invoke-interface {v0, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->needChangePanelVisibility(Z)V

    goto/16 :goto_0

    :cond_35
    const/16 v33, 0x0

    goto :goto_10
.end method

.method public setAllowNewMentions(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 161
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->allowNewMentions:Z

    .line 162
    return-void
.end method

.method public setBotInfo(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$BotInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 184
    .local p1, "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$BotInfo;>;"
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->botInfo:Ljava/util/HashMap;

    .line 185
    return-void
.end method

.method public setBotsCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 188
    iput p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->botsCount:I

    .line 189
    return-void
.end method

.method public setChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V
    .locals 3
    .param p1, "chatParticipants"    # Lorg/telegram/tgnet/TLRPC$ChatFull;

    .prologue
    .line 169
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 170
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastText:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastText:Ljava/lang/String;

    iget v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastPosition:I

    iget-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchUsernameOrHashtag(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 173
    :cond_0
    return-void
.end method

.method public setNeedBotContext(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 180
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->needBotContext:Z

    .line 181
    return-void
.end method

.method public setNeedUsernames(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 176
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->needUsernames:Z

    .line 177
    return-void
.end method

.method public setParentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0
    .param p1, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;

    .prologue
    .line 165
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 166
    return-void
.end method
