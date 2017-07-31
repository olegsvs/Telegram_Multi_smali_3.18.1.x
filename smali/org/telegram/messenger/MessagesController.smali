.class public Lorg/telegram/messenger/MessagesController;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/MessagesController$PrintingUser;,
        Lorg/telegram/messenger/MessagesController$UserActionUpdatesPts;,
        Lorg/telegram/messenger/MessagesController$UserActionUpdatesSeq;
    }
.end annotation


# static fields
.field private static volatile Instance:Lorg/telegram/messenger/MessagesController; = null

.field public static final UPDATE_MASK_ALL:I = 0x5ff

.field public static final UPDATE_MASK_AVATAR:I = 0x2

.field public static final UPDATE_MASK_CHANNEL:I = 0x2000

.field public static final UPDATE_MASK_CHAT_ADMINS:I = 0x4000

.field public static final UPDATE_MASK_CHAT_AVATAR:I = 0x8

.field public static final UPDATE_MASK_CHAT_MEMBERS:I = 0x20

.field public static final UPDATE_MASK_CHAT_NAME:I = 0x10

.field public static final UPDATE_MASK_NAME:I = 0x1

.field public static final UPDATE_MASK_NEW_MESSAGE:I = 0x800

.field public static final UPDATE_MASK_PHONE:I = 0x400

.field public static final UPDATE_MASK_READ_DIALOG_MESSAGE:I = 0x100

.field public static final UPDATE_MASK_SELECT_DIALOG:I = 0x200

.field public static final UPDATE_MASK_SEND_STATE:I = 0x1000

.field public static final UPDATE_MASK_STATUS:I = 0x4

.field public static final UPDATE_MASK_USER_PHONE:I = 0x80

.field public static final UPDATE_MASK_USER_PRINT:I = 0x40


# instance fields
.field public allowBigEmoji:Z

.field public blockedUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public callConnectTimeout:I

.field public callPacketTimeout:I

.field public callReceiveTimeout:I

.field public callRingTimeout:I

.field public callsEnabled:Z

.field private channelViewsToReload:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private channelViewsToSend:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private channelsPts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private chats:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ">;"
        }
    .end annotation
.end field

.field private checkingLastMessagesDialogs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private createdDialogIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private currentDeleteTaskRunnable:Ljava/lang/Runnable;

.field private currentDeletingTaskMids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private currentDeletingTaskTime:I

.field private final dialogComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation
.end field

.field public dialogMessage:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field public dialogMessagesByIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field public dialogMessagesByRandomIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field public dialogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation
.end field

.field public dialogsAdminChannels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation
.end field

.field public dialogsAdminGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation
.end field

.field public dialogsAdminSuperGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation
.end field

.field public dialogsBots:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation
.end field

.field public dialogsChannels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation
.end field

.field public dialogsEndReached:Z

.field public dialogsFavs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation
.end field

.field public dialogsGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation
.end field

.field public dialogsGroupsAll:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation
.end field

.field public dialogsGroupsOnly:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation
.end field

.field public dialogsMegaGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation
.end field

.field public dialogsOwnChannels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation
.end field

.field public dialogsOwnGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation
.end field

.field public dialogsOwnSuperGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation
.end field

.field public dialogsSecrets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation
.end field

.field public dialogsServerOnly:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation
.end field

.field public dialogsUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation
.end field

.field public dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation
.end field

.field public dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private disabledFeatures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_disabledFeature;",
            ">;"
        }
    .end annotation
.end field

.field public enableJoined:Z

.field private encryptedChats:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$EncryptedChat;",
            ">;"
        }
    .end annotation
.end field

.field private exportedChats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;",
            ">;"
        }
    .end annotation
.end field

.field public firstGettingTask:Z

.field public fontSize:I

.field private fullUsers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$TL_userFull;",
            ">;"
        }
    .end annotation
.end field

.field public gettingDifference:Z

.field private gettingDifferenceChannels:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private gettingNewDeleteTask:Z

.field private gettingUnknownChannels:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public groupBigSize:I

.field public hideJoinedGroup:Z

.field public hideLeftGroup:Z

.field private joiningToChannels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lastPrintingStringCount:I

.field private lastStatusUpdateTime:J

.field private lastViewsCheckTime:J

.field public linkPrefix:Ljava/lang/String;

.field private loadedFullChats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private loadedFullParticipants:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private loadedFullUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public loadingBlockedUsers:Z

.field public loadingDialogs:Z

.field private loadingFullChats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private loadingFullParticipants:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private loadingFullUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private loadingPeerSettings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public maxBroadcastCount:I

.field public maxEditTime:I

.field public maxGroupCount:I

.field public maxMegagroupCount:I

.field public maxPinnedDialogsCount:I

.field public maxRecentGifsCount:I

.field public maxRecentStickersCount:I

.field private migratingDialogs:Z

.field public minGroupConvertSize:I

.field private needShortPollChannels:Landroid/util/SparseIntArray;

.field public nextDialogsCacheOffset:I

.field private offlineSent:Z

.field public onlinePrivacy:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public printingStrings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field public printingStringsTypes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public printingUsers:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessagesController$PrintingUser;",
            ">;>;"
        }
    .end annotation
.end field

.field public ratingDecay:I

.field public registeringForPush:Z

.field private reloadingMessages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private reloadingWebpages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;>;"
        }
    .end annotation
.end field

.field private reloadingWebpagesPending:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;>;"
        }
    .end annotation
.end field

.field public secretWebpagePreview:I

.field public sendingTypings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field public serverDialogsEndReached:Z

.field private shortPollChannels:Landroid/util/SparseIntArray;

.field private statusRequest:I

.field private statusSettingState:I

.field private final updatesComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Update;",
            ">;"
        }
    .end annotation
.end field

.field private updatesQueueChannels:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Updates;",
            ">;>;"
        }
    .end annotation
.end field

.field private updatesQueuePts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Updates;",
            ">;"
        }
    .end annotation
.end field

.field private updatesQueueQts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Updates;",
            ">;"
        }
    .end annotation
.end field

.field private updatesQueueSeq:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Updates;",
            ">;"
        }
    .end annotation
.end field

.field private updatesStartWaitTimeChannels:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private updatesStartWaitTimePts:J

.field private updatesStartWaitTimeQts:J

.field private updatesStartWaitTimeSeq:J

.field public updatingState:Z

.field private uploadingAvatar:Ljava/lang/String;

.field public useSystemEmoji:Z

.field private users:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;"
        }
    .end annotation
.end field

.field private usersByUsernames:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/messenger/MessagesController;->Instance:Lorg/telegram/messenger/MessagesController;

    return-void
.end method

.method public constructor <init>()V
    .locals 13

    .prologue
    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v9, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v10, 0x64

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x2

    invoke-direct {v9, v10, v11, v12}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v9, p0, Lorg/telegram/messenger/MessagesController;->chats:Ljava/util/concurrent/ConcurrentHashMap;

    .line 58
    new-instance v9, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v10, 0xa

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x2

    invoke-direct {v9, v10, v11, v12}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v9, p0, Lorg/telegram/messenger/MessagesController;->encryptedChats:Ljava/util/concurrent/ConcurrentHashMap;

    .line 59
    new-instance v9, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v10, 0x64

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x2

    invoke-direct {v9, v10, v11, v12}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v9, p0, Lorg/telegram/messenger/MessagesController;->users:Ljava/util/concurrent/ConcurrentHashMap;

    .line 60
    new-instance v9, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v10, 0x64

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x2

    invoke-direct {v9, v10, v11, v12}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v9, p0, Lorg/telegram/messenger/MessagesController;->usersByUsernames:Ljava/util/concurrent/ConcurrentHashMap;

    .line 62
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MessagesController;->dialogsAdminChannels:Ljava/util/ArrayList;

    .line 63
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MessagesController;->dialogsAdminGroups:Ljava/util/ArrayList;

    .line 64
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MessagesController;->dialogsAdminSuperGroups:Ljava/util/ArrayList;

    .line 65
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MessagesController;->dialogsBots:Ljava/util/ArrayList;

    .line 66
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MessagesController;->dialogsChannels:Ljava/util/ArrayList;

    .line 67
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MessagesController;->dialogsFavs:Ljava/util/ArrayList;

    .line 68
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MessagesController;->dialogsGroups:Ljava/util/ArrayList;

    .line 69
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MessagesController;->dialogsGroupsAll:Ljava/util/ArrayList;

    .line 70
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MessagesController;->dialogsMegaGroups:Ljava/util/ArrayList;

    .line 71
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MessagesController;->dialogsOwnChannels:Ljava/util/ArrayList;

    .line 72
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MessagesController;->dialogsOwnGroups:Ljava/util/ArrayList;

    .line 73
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MessagesController;->dialogsOwnSuperGroups:Ljava/util/ArrayList;

    .line 74
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MessagesController;->dialogsSecrets:Ljava/util/ArrayList;

    .line 75
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MessagesController;->dialogsUsers:Ljava/util/ArrayList;

    .line 79
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MessagesController;->joiningToChannels:Ljava/util/ArrayList;

    .line 81
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MessagesController;->exportedChats:Ljava/util/HashMap;

    .line 83
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    .line 84
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MessagesController;->dialogsServerOnly:Ljava/util/ArrayList;

    .line 85
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MessagesController;->dialogsGroupsOnly:Ljava/util/ArrayList;

    .line 87
    new-instance v9, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v10, 0x64

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x2

    invoke-direct {v9, v10, v11, v12}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v9, p0, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    .line 88
    new-instance v9, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v10, 0x64

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x2

    invoke-direct {v9, v10, v11, v12}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v9, p0, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    .line 89
    new-instance v9, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v10, 0x64

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x2

    invoke-direct {v9, v10, v11, v12}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v9, p0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    .line 90
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    .line 91
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByRandomIds:Ljava/util/HashMap;

    .line 92
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    .line 93
    new-instance v9, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v10, 0x14

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x2

    invoke-direct {v9, v10, v11, v12}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v9, p0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    .line 94
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MessagesController;->printingStrings:Ljava/util/HashMap;

    .line 95
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MessagesController;->printingStringsTypes:Ljava/util/HashMap;

    .line 96
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MessagesController;->sendingTypings:Ljava/util/HashMap;

    .line 97
    new-instance v9, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v10, 0x14

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x2

    invoke-direct {v9, v10, v11, v12}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v9, p0, Lorg/telegram/messenger/MessagesController;->onlinePrivacy:Ljava/util/concurrent/ConcurrentHashMap;

    .line 100
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MessagesController;->loadingPeerSettings:Ljava/util/HashMap;

    .line 102
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MessagesController;->createdDialogIds:Ljava/util/ArrayList;

    .line 104
    new-instance v9, Landroid/util/SparseIntArray;

    invoke-direct {v9}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MessagesController;->shortPollChannels:Landroid/util/SparseIntArray;

    .line 105
    new-instance v9, Landroid/util/SparseIntArray;

    invoke-direct {v9}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MessagesController;->needShortPollChannels:Landroid/util/SparseIntArray;

    .line 107
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/messenger/MessagesController;->loadingBlockedUsers:Z

    .line 108
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MessagesController;->blockedUsers:Ljava/util/ArrayList;

    .line 110
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MessagesController;->channelViewsToSend:Landroid/util/SparseArray;

    .line 111
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MessagesController;->channelViewsToReload:Landroid/util/SparseArray;

    .line 114
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MessagesController;->updatesQueueChannels:Ljava/util/HashMap;

    .line 115
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeChannels:Ljava/util/HashMap;

    .line 116
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MessagesController;->channelsPts:Ljava/util/HashMap;

    .line 117
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MessagesController;->gettingDifferenceChannels:Ljava/util/HashMap;

    .line 119
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MessagesController;->gettingUnknownChannels:Ljava/util/HashMap;

    .line 120
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MessagesController;->checkingLastMessagesDialogs:Ljava/util/HashMap;

    .line 122
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MessagesController;->updatesQueueSeq:Ljava/util/ArrayList;

    .line 123
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MessagesController;->updatesQueuePts:Ljava/util/ArrayList;

    .line 124
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MessagesController;->updatesQueueQts:Ljava/util/ArrayList;

    .line 128
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MessagesController;->fullUsers:Ljava/util/HashMap;

    .line 129
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MessagesController;->loadingFullUsers:Ljava/util/ArrayList;

    .line 130
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MessagesController;->loadedFullUsers:Ljava/util/ArrayList;

    .line 131
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MessagesController;->loadingFullChats:Ljava/util/ArrayList;

    .line 132
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MessagesController;->loadingFullParticipants:Ljava/util/ArrayList;

    .line 133
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MessagesController;->loadedFullParticipants:Ljava/util/ArrayList;

    .line 134
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MessagesController;->loadedFullChats:Ljava/util/ArrayList;

    .line 136
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MessagesController;->reloadingWebpages:Ljava/util/HashMap;

    .line 137
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MessagesController;->reloadingWebpagesPending:Ljava/util/HashMap;

    .line 139
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MessagesController;->reloadingMessages:Ljava/util/HashMap;

    .line 155
    const/4 v9, 0x2

    iput v9, p0, Lorg/telegram/messenger/MessagesController;->secretWebpagePreview:I

    .line 163
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/messenger/MessagesController;->enableJoined:Z

    .line 167
    const-string/jumbo v9, "t.me"

    iput-object v9, p0, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    .line 168
    const/high16 v9, 0x41800000    # 16.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    iput v9, p0, Lorg/telegram/messenger/MessagesController;->fontSize:I

    .line 169
    const/16 v9, 0xc8

    iput v9, p0, Lorg/telegram/messenger/MessagesController;->maxGroupCount:I

    .line 170
    const/16 v9, 0x64

    iput v9, p0, Lorg/telegram/messenger/MessagesController;->maxBroadcastCount:I

    .line 171
    const/16 v9, 0x1388

    iput v9, p0, Lorg/telegram/messenger/MessagesController;->maxMegagroupCount:I

    .line 172
    const/16 v9, 0xc8

    iput v9, p0, Lorg/telegram/messenger/MessagesController;->minGroupConvertSize:I

    .line 173
    const v9, 0x2a300

    iput v9, p0, Lorg/telegram/messenger/MessagesController;->maxEditTime:I

    .line 176
    const/16 v9, 0x1e

    iput v9, p0, Lorg/telegram/messenger/MessagesController;->maxRecentStickersCount:I

    .line 177
    const/16 v9, 0xc8

    iput v9, p0, Lorg/telegram/messenger/MessagesController;->maxRecentGifsCount:I

    .line 178
    const/16 v9, 0x4e20

    iput v9, p0, Lorg/telegram/messenger/MessagesController;->callReceiveTimeout:I

    .line 179
    const v9, 0x15f90

    iput v9, p0, Lorg/telegram/messenger/MessagesController;->callRingTimeout:I

    .line 180
    const/16 v9, 0x7530

    iput v9, p0, Lorg/telegram/messenger/MessagesController;->callConnectTimeout:I

    .line 181
    const/16 v9, 0x2710

    iput v9, p0, Lorg/telegram/messenger/MessagesController;->callPacketTimeout:I

    .line 182
    const/16 v9, 0xa

    iput v9, p0, Lorg/telegram/messenger/MessagesController;->maxPinnedDialogsCount:I

    .line 184
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MessagesController;->disabledFeatures:Ljava/util/ArrayList;

    .line 219
    new-instance v9, Lorg/telegram/messenger/MessagesController$1;

    invoke-direct {v9, p0}, Lorg/telegram/messenger/MessagesController$1;-><init>(Lorg/telegram/messenger/MessagesController;)V

    iput-object v9, p0, Lorg/telegram/messenger/MessagesController;->dialogComparator:Ljava/util/Comparator;

    .line 248
    new-instance v9, Lorg/telegram/messenger/MessagesController$2;

    invoke-direct {v9, p0}, Lorg/telegram/messenger/MessagesController$2;-><init>(Lorg/telegram/messenger/MessagesController;)V

    iput-object v9, p0, Lorg/telegram/messenger/MessagesController;->updatesComparator:Ljava/util/Comparator;

    .line 286
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    .line 287
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    .line 288
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/NotificationCenter;->FileDidUpload:I

    invoke-virtual {v9, p0, v10}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 289
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/NotificationCenter;->FileDidFailUpload:I

    invoke-virtual {v9, p0, v10}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 290
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/NotificationCenter;->FileDidLoaded:I

    invoke-virtual {v9, p0, v10}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 291
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/NotificationCenter;->FileDidFailedLoad:I

    invoke-virtual {v9, p0, v10}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 292
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/NotificationCenter;->messageReceivedByServer:I

    invoke-virtual {v9, p0, v10}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 293
    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesController;->addSupportUser()V

    .line 294
    sget-object v9, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Notifications"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lorg/telegram/messenger/ChangeUserHelper;->getUserTag()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 295
    .local v8, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v9, "EnableContactJoined"

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lorg/telegram/messenger/MessagesController;->enableJoined:Z

    .line 296
    sget-object v9, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v10, "plusconfig"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 297
    .local v7, "plusPrefs":Landroid/content/SharedPreferences;
    const-string/jumbo v9, "hideLeftGroup"

    const/4 v10, 0x0

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lorg/telegram/messenger/MessagesController;->hideLeftGroup:Z

    .line 298
    const-string/jumbo v9, "hideJoinedGroup"

    const/4 v10, 0x0

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lorg/telegram/messenger/MessagesController;->hideJoinedGroup:Z

    .line 300
    sget-object v9, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "mainconfig"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lorg/telegram/messenger/ChangeUserHelper;->getUserTag()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 301
    const-string/jumbo v9, "secretWebpage2"

    const/4 v10, 0x2

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lorg/telegram/messenger/MessagesController;->secretWebpagePreview:I

    .line 302
    const-string/jumbo v9, "maxGroupCount"

    const/16 v10, 0xc8

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lorg/telegram/messenger/MessagesController;->maxGroupCount:I

    .line 303
    const-string/jumbo v9, "maxMegagroupCount"

    const/16 v10, 0x3e8

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lorg/telegram/messenger/MessagesController;->maxMegagroupCount:I

    .line 304
    const-string/jumbo v9, "maxRecentGifsCount"

    const/16 v10, 0xc8

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lorg/telegram/messenger/MessagesController;->maxRecentGifsCount:I

    .line 305
    const-string/jumbo v9, "maxRecentStickersCount"

    const/16 v10, 0x1e

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lorg/telegram/messenger/MessagesController;->maxRecentStickersCount:I

    .line 306
    const-string/jumbo v9, "maxEditTime"

    const/16 v10, 0xe10

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lorg/telegram/messenger/MessagesController;->maxEditTime:I

    .line 307
    const-string/jumbo v9, "groupBigSize"

    const/16 v10, 0xa

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lorg/telegram/messenger/MessagesController;->groupBigSize:I

    .line 308
    const-string/jumbo v9, "ratingDecay"

    const v10, 0x24ea00

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lorg/telegram/messenger/MessagesController;->ratingDecay:I

    .line 310
    sget-object v9, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v10, "theme"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    const-string/jumbo v11, "chatTextSize"

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x12

    :goto_0
    invoke-interface {v10, v11, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lorg/telegram/messenger/MessagesController;->fontSize:I

    .line 311
    const-string/jumbo v9, "allowBigEmoji"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lorg/telegram/messenger/MessagesController;->allowBigEmoji:Z

    .line 312
    const-string/jumbo v9, "useSystemEmoji"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lorg/telegram/messenger/MessagesController;->useSystemEmoji:Z

    .line 313
    const-string/jumbo v9, "callsEnabled"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lorg/telegram/messenger/MessagesController;->callsEnabled:Z

    .line 314
    const-string/jumbo v9, "linkPrefix"

    const-string/jumbo v10, "t.me"

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    .line 315
    const-string/jumbo v9, "callReceiveTimeout"

    const/16 v10, 0x4e20

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lorg/telegram/messenger/MessagesController;->callReceiveTimeout:I

    .line 316
    const-string/jumbo v9, "callRingTimeout"

    const v10, 0x15f90

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lorg/telegram/messenger/MessagesController;->callRingTimeout:I

    .line 317
    const-string/jumbo v9, "callConnectTimeout"

    const/16 v10, 0x7530

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lorg/telegram/messenger/MessagesController;->callConnectTimeout:I

    .line 318
    const-string/jumbo v9, "callPacketTimeout"

    const/16 v10, 0x2710

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lorg/telegram/messenger/MessagesController;->callPacketTimeout:I

    .line 319
    const/16 v9, 0xa

    iput v9, p0, Lorg/telegram/messenger/MessagesController;->maxPinnedDialogsCount:I

    .line 321
    const-string/jumbo v9, "disabledFeatures"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 322
    .local v4, "disabledFeaturesString":Ljava/lang/String;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_2

    .line 324
    const/4 v9, 0x0

    :try_start_0
    invoke-static {v4, v9}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 325
    .local v1, "bytes":[B
    if-eqz v1, :cond_2

    .line 326
    new-instance v3, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {v3, v1}, Lorg/telegram/tgnet/SerializedData;-><init>([B)V

    .line 327
    .local v3, "data":Lorg/telegram/tgnet/SerializedData;
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v2

    .line 328
    .local v2, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 329
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v9

    const/4 v10, 0x0

    invoke-static {v3, v9, v10}, Lorg/telegram/tgnet/TLRPC$TL_disabledFeature;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_disabledFeature;

    move-result-object v6

    .line 330
    .local v6, "feature":Lorg/telegram/tgnet/TLRPC$TL_disabledFeature;
    if-eqz v6, :cond_0

    iget-object v9, v6, Lorg/telegram/tgnet/TLRPC$TL_disabledFeature;->feature:Ljava/lang/String;

    if-eqz v9, :cond_0

    iget-object v9, v6, Lorg/telegram/tgnet/TLRPC$TL_disabledFeature;->description:Ljava/lang/String;

    if-eqz v9, :cond_0

    .line 331
    iget-object v9, p0, Lorg/telegram/messenger/MessagesController;->disabledFeatures:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 310
    .end local v0    # "a":I
    .end local v1    # "bytes":[B
    .end local v2    # "count":I
    .end local v3    # "data":Lorg/telegram/tgnet/SerializedData;
    .end local v4    # "disabledFeaturesString":Ljava/lang/String;
    .end local v6    # "feature":Lorg/telegram/tgnet/TLRPC$TL_disabledFeature;
    :cond_1
    const/16 v9, 0x10

    goto/16 :goto_0

    .line 335
    .restart local v4    # "disabledFeaturesString":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 336
    .local v5, "e":Ljava/lang/Exception;
    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 339
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_2
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$Update;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$Update;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MessagesController;->getUpdateType(Lorg/telegram/tgnet/TLRPC$Update;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$Update;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$Update;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MessagesController;->getUpdateChannelId(Lorg/telegram/tgnet/TLRPC$Update;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->createdDialogIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->updatesQueueChannels:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeChannels:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->gettingDifferenceChannels:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->channelsPts:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/telegram/messenger/MessagesController;)Landroid/util/SparseIntArray;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->shortPollChannels:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic access$1600(Lorg/telegram/messenger/MessagesController;)Landroid/util/SparseIntArray;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->needShortPollChannels:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/telegram/messenger/MessagesController;JLorg/telegram/tgnet/TLRPC$PeerNotifySettings;)V
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # J
    .param p3, "x2"    # Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/MessagesController;->applyDialogNotificationsSettings(JLorg/telegram/tgnet/TLRPC$PeerNotifySettings;)V

    return-void
.end method

.method static synthetic access$1800(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->exportedChats:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadingFullChats:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->disabledFeatures:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadedFullChats:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$202(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 55
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController;->disabledFeatures:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$2100(Lorg/telegram/messenger/MessagesController;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/MessagesController;->checkChannelError(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$2200(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->fullUsers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2300(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadingFullUsers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2400(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadedFullUsers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2500(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->reloadingMessages:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2600(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadingPeerSettings:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2900(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->currentDeletingTaskMids:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2902(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 55
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController;->currentDeletingTaskMids:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$300(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->updatesQueueSeq:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3000(Lorg/telegram/messenger/MessagesController;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 55
    iget-boolean v0, p0, Lorg/telegram/messenger/MessagesController;->gettingNewDeleteTask:Z

    return v0
.end method

.method static synthetic access$3002(Lorg/telegram/messenger/MessagesController;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lorg/telegram/messenger/MessagesController;->gettingNewDeleteTask:Z

    return p1
.end method

.method static synthetic access$3100(Lorg/telegram/messenger/MessagesController;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 55
    iget v0, p0, Lorg/telegram/messenger/MessagesController;->currentDeletingTaskTime:I

    return v0
.end method

.method static synthetic access$3102(Lorg/telegram/messenger/MessagesController;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # I

    .prologue
    .line 55
    iput p1, p0, Lorg/telegram/messenger/MessagesController;->currentDeletingTaskTime:I

    return p1
.end method

.method static synthetic access$3200(Lorg/telegram/messenger/MessagesController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->currentDeleteTaskRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3202(Lorg/telegram/messenger/MessagesController;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 55
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController;->currentDeleteTaskRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$3300(Lorg/telegram/messenger/MessagesController;Z)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MessagesController;->checkDeletingTask(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lorg/telegram/messenger/MessagesController;JZII)V
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # J
    .param p3, "x2"    # Z
    .param p4, "x3"    # I
    .param p5, "x4"    # I

    .prologue
    .line 55
    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/MessagesController;->deleteDialog(JZII)V

    return-void
.end method

.method static synthetic access$3500(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadedFullParticipants:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3600(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadingFullParticipants:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3700(Lorg/telegram/messenger/MessagesController;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 55
    iget-wide v0, p0, Lorg/telegram/messenger/MessagesController;->lastStatusUpdateTime:J

    return-wide v0
.end method

.method static synthetic access$3702(Lorg/telegram/messenger/MessagesController;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # J

    .prologue
    .line 55
    iput-wide p1, p0, Lorg/telegram/messenger/MessagesController;->lastStatusUpdateTime:J

    return-wide p1
.end method

.method static synthetic access$3802(Lorg/telegram/messenger/MessagesController;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lorg/telegram/messenger/MessagesController;->offlineSent:Z

    return p1
.end method

.method static synthetic access$3902(Lorg/telegram/messenger/MessagesController;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # I

    .prologue
    .line 55
    iput p1, p0, Lorg/telegram/messenger/MessagesController;->statusSettingState:I

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->updatesQueuePts:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4002(Lorg/telegram/messenger/MessagesController;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # I

    .prologue
    .line 55
    iput p1, p0, Lorg/telegram/messenger/MessagesController;->statusRequest:I

    return p1
.end method

.method static synthetic access$4100(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->reloadingWebpages:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$4200(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->reloadingWebpagesPending:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$4300(Lorg/telegram/messenger/MessagesController;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MessagesController;->getChannelDifference(I)V

    return-void
.end method

.method static synthetic access$4400(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;J)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # J

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/MessagesController;->reloadMessages(Ljava/util/ArrayList;J)V

    return-void
.end method

.method static synthetic access$4502(Lorg/telegram/messenger/MessagesController;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lorg/telegram/messenger/MessagesController;->migratingDialogs:Z

    return p1
.end method

.method static synthetic access$4600(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MessagesController;->applyDialogsNotificationsSettings(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$4700(Lorg/telegram/messenger/MessagesController;IIIIIJ)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # J

    .prologue
    .line 55
    invoke-direct/range {p0 .. p7}, Lorg/telegram/messenger/MessagesController;->migrateDialogs(IIIIIJ)V

    return-void
.end method

.method static synthetic access$4800(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;J)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # J

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/MessagesController;->reloadDialogsReadValue(Ljava/util/ArrayList;J)V

    return-void
.end method

.method static synthetic access$4900(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->checkingLastMessagesDialogs:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->updatesQueueQts:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5000(Lorg/telegram/messenger/MessagesController;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->channelViewsToSend:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$5100(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->joiningToChannels:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5200(Lorg/telegram/messenger/MessagesController;II)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/MessagesController;->processUpdatesQueue(II)V

    return-void
.end method

.method static synthetic access$5300(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$Updates;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$Updates;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MessagesController;->getUpdateSeq(Lorg/telegram/tgnet/TLRPC$Updates;)I

    move-result v0

    return v0
.end method

.method static synthetic access$5400(Lorg/telegram/messenger/MessagesController;II)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/MessagesController;->processChannelsUpdatesQueue(II)V

    return-void
.end method

.method static synthetic access$5500(Lorg/telegram/messenger/MessagesController;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->usersByUsernames:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->gettingUnknownChannels:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$702(Lorg/telegram/messenger/MessagesController;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # J

    .prologue
    .line 55
    iput-wide p1, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeSeq:J

    return-wide p1
.end method

.method static synthetic access$802(Lorg/telegram/messenger/MessagesController;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # J

    .prologue
    .line 55
    iput-wide p1, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimePts:J

    return-wide p1
.end method

.method static synthetic access$902(Lorg/telegram/messenger/MessagesController;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MessagesController;
    .param p1, "x1"    # J

    .prologue
    .line 55
    iput-wide p1, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeQts:J

    return-wide p1
.end method

.method public static addToCustomChats(I)V
    .locals 23
    .param p0, "id"    # I

    .prologue
    .line 8153
    const/4 v11, 0x0

    .line 8154
    .local v11, "currentUser":Lorg/telegram/tgnet/TLRPC$User;
    const/4 v10, 0x0

    .line 8156
    .local v10, "currentChat":Lorg/telegram/tgnet/TLRPC$Chat;
    const/16 v17, 0x0

    .line 8157
    .local v17, "isBroadcast":Z
    move/from16 v3, p0

    .line 8158
    .local v3, "chatId":I
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 v18, v0

    fill-array-data v18, :array_0

    .line 8159
    .local v18, "maxMessageId":[I
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 v19, v0

    fill-array-data v19, :array_1

    .line 8160
    .local v19, "minMessageId":[I
    const/16 v16, 0x0

    .line 8161
    .local v16, "info":Lorg/telegram/tgnet/TLRPC$ChatFull;
    const/16 v22, 0x0

    .line 8162
    .local v22, "userId":I
    const/4 v15, 0x0

    .line 8163
    .local v15, "encId":I
    const-wide/16 v12, 0x0

    .line 8164
    .local v12, "dialog_id":J
    if-eqz v3, :cond_1

    .line 8165
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v10

    .line 8166
    if-nez v10, :cond_0

    .line 8167
    new-instance v21, Ljava/util/concurrent/Semaphore;

    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 8168
    .local v21, "semaphore":Ljava/util/concurrent/Semaphore;
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v2

    new-instance v4, Lorg/telegram/messenger/MessagesController$115;

    move-object/from16 v0, v21

    invoke-direct {v4, v3, v0}, Lorg/telegram/messenger/MessagesController$115;-><init>(ILjava/util/concurrent/Semaphore;)V

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 8176
    :try_start_0
    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8180
    :goto_0
    if-eqz v10, :cond_0

    .line 8181
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v10, v4}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    .line 8184
    .end local v21    # "semaphore":Ljava/util/concurrent/Semaphore;
    :cond_0
    if-lez v3, :cond_4

    .line 8185
    neg-int v2, v3

    int-to-long v12, v2

    .line 8190
    :goto_1
    invoke-static {v10}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8191
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->startShortPoll(IZ)V

    .line 8258
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2, v11, v10}, Lorg/telegram/messenger/MessagesController;->loadPeerSettings(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 8259
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v12, v13, v4}, Lorg/telegram/messenger/MessagesController;->setLastCreatedDialogId(JZ)V

    .line 8261
    if-eqz v10, :cond_3

    .line 8262
    const/16 v21, 0x0

    .line 8263
    .restart local v21    # "semaphore":Ljava/util/concurrent/Semaphore;
    if-eqz v17, :cond_2

    .line 8264
    new-instance v21, Ljava/util/concurrent/Semaphore;

    .end local v21    # "semaphore":Ljava/util/concurrent/Semaphore;
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 8266
    .restart local v21    # "semaphore":Ljava/util/concurrent/Semaphore;
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget v4, v10, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v10}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    move-object/from16 v0, v21

    invoke-virtual {v2, v4, v0, v5}, Lorg/telegram/messenger/MessagesController;->loadChatInfo(ILjava/util/concurrent/Semaphore;Z)V

    .line 8267
    if-eqz v17, :cond_3

    if-eqz v21, :cond_3

    .line 8269
    :try_start_1
    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 8276
    .end local v21    # "semaphore":Ljava/util/concurrent/Semaphore;
    :cond_3
    :goto_2
    move-object/from16 v0, v16

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_chatFull;

    if-eqz v2, :cond_5

    .line 8277
    const/4 v9, 0x0

    .local v9, "a":I
    :goto_3
    move-object/from16 v0, v16

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v9, v2, :cond_5

    .line 8278
    move-object/from16 v0, v16

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 8279
    .local v20, "participant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    move-object/from16 v0, v20

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    .line 8277
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 8177
    .end local v9    # "a":I
    .end local v20    # "participant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    .restart local v21    # "semaphore":Ljava/util/concurrent/Semaphore;
    :catch_0
    move-exception v14

    .line 8178
    .local v14, "e":Ljava/lang/Exception;
    invoke-static {v14}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 8187
    .end local v14    # "e":Ljava/lang/Exception;
    .end local v21    # "semaphore":Ljava/util/concurrent/Semaphore;
    :cond_4
    const/16 v17, 0x1

    .line 8188
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->makeBroadcastId(I)J

    move-result-wide v12

    goto :goto_1

    .line 8270
    .restart local v21    # "semaphore":Ljava/util/concurrent/Semaphore;
    :catch_1
    move-exception v14

    .line 8271
    .restart local v14    # "e":Ljava/lang/Exception;
    invoke-static {v14}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 8283
    .end local v14    # "e":Ljava/lang/Exception;
    .end local v21    # "semaphore":Ljava/util/concurrent/Semaphore;
    :cond_5
    const-string/jumbo v2, "TGM"

    const-string/jumbo v4, "onFragmentCreate:  MessagesController.getInstance().addUserToChat(chatId,UserConfig.getCurrentUser() , null, 0, null, null);"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8284
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lorg/telegram/messenger/MessagesController;->addUserToChat(ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$ChatFull;ILjava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 8285
    return-void

    .line 8158
    nop

    :array_0
    .array-data 4
        0x7fffffff
        0x7fffffff
    .end array-data

    .line 8159
    :array_1
    .array-data 4
        -0x80000000
        -0x80000000
    .end array-data
.end method

.method private applyDialogNotificationsSettings(JLorg/telegram/tgnet/TLRPC$PeerNotifySettings;)V
    .locals 15
    .param p1, "dialog_id"    # J
    .param p3, "notify_settings"    # Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    .prologue
    .line 3451
    sget-object v9, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Notifications"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lorg/telegram/messenger/ChangeUserHelper;->getUserTag()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 3452
    .local v6, "preferences":Landroid/content/SharedPreferences;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "notify2_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, p1

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v6, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 3453
    .local v2, "currentValue":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "notifyuntil_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, p1

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v6, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 3454
    .local v3, "currentValue2":I
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 3455
    .local v5, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v8, 0x0

    .line 3456
    .local v8, "updated":Z
    iget-object v9, p0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 3457
    .local v4, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    if-eqz v4, :cond_0

    .line 3458
    move-object/from16 v0, p3

    iput-object v0, v4, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    .line 3460
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "silent_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, p1

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p3

    iget-boolean v10, v0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->silent:Z

    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3461
    move-object/from16 v0, p3

    iget v9, v0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v10

    if-le v9, v10, :cond_6

    .line 3462
    const/4 v7, 0x0

    .line 3463
    .local v7, "until":I
    move-object/from16 v0, p3

    iget v9, v0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v10

    const v11, 0x1e13380

    add-int/2addr v10, v11

    if-le v9, v10, :cond_3

    .line 3464
    const/4 v9, 0x2

    if-eq v2, v9, :cond_1

    .line 3465
    const/4 v8, 0x1

    .line 3466
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "notify2_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, p1

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3467
    if-eqz v4, :cond_1

    .line 3468
    iget-object v9, v4, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    const v10, 0x7fffffff

    iput v10, v9, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    .line 3482
    :cond_1
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v9

    int-to-long v10, v7

    const/16 v12, 0x20

    shl-long/2addr v10, v12

    const-wide/16 v12, 0x1

    or-long/2addr v10, v12

    move-wide/from16 v0, p1

    invoke-virtual {v9, v0, v1, v10, v11}, Lorg/telegram/messenger/MessagesStorage;->setDialogFlags(JJ)V

    .line 3483
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v9

    move-wide/from16 v0, p1

    invoke-virtual {v9, v0, v1}, Lorg/telegram/messenger/NotificationsController;->removeNotificationsForDialog(J)V

    .line 3494
    .end local v7    # "until":I
    :goto_1
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3495
    if-eqz v8, :cond_2

    .line 3496
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/NotificationCenter;->notificationsSettingsUpdated:I

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v9, v10, v11}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 3498
    :cond_2
    return-void

    .line 3472
    .restart local v7    # "until":I
    :cond_3
    const/4 v9, 0x3

    if-ne v2, v9, :cond_4

    move-object/from16 v0, p3

    iget v9, v0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    if-eq v3, v9, :cond_5

    .line 3473
    :cond_4
    const/4 v8, 0x1

    .line 3474
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "notify2_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, p1

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x3

    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3475
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "notifyuntil_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, p1

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p3

    iget v10, v0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3476
    if-eqz v4, :cond_5

    .line 3477
    iget-object v9, v4, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    iput v7, v9, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    .line 3480
    :cond_5
    move-object/from16 v0, p3

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    goto :goto_0

    .line 3485
    .end local v7    # "until":I
    :cond_6
    if-eqz v2, :cond_8

    const/4 v9, 0x1

    if-eq v2, v9, :cond_8

    .line 3486
    const/4 v8, 0x1

    .line 3487
    if-eqz v4, :cond_7

    .line 3488
    iget-object v9, v4, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    const/4 v10, 0x0

    iput v10, v9, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    .line 3490
    :cond_7
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "notify2_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, p1

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3492
    :cond_8
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v9

    const-wide/16 v10, 0x0

    move-wide/from16 v0, p1

    invoke-virtual {v9, v0, v1, v10, v11}, Lorg/telegram/messenger/MessagesStorage;->setDialogFlags(JJ)V

    goto/16 :goto_1
.end method

.method private applyDialogsNotificationsSettings(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3501
    .local p1, "dialogs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_dialog;>;"
    const/4 v3, 0x0

    .line 3502
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_6

    .line 3503
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 3504
    .local v1, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v5, :cond_1

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;

    if-eqz v5, :cond_1

    .line 3505
    if-nez v3, :cond_0

    .line 3506
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Notifications"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lorg/telegram/messenger/ChangeUserHelper;->getUserTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 3507
    .local v4, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 3510
    .end local v4    # "preferences":Landroid/content/SharedPreferences;
    :cond_0
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    if-eqz v5, :cond_2

    .line 3511
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v5, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    .line 3517
    .local v2, "dialog_id":I
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "silent_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->silent:Z

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3518
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    if-eqz v5, :cond_5

    .line 3519
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v6

    const v7, 0x1e13380

    add-int/2addr v6, v7

    if-le v5, v6, :cond_4

    .line 3520
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "notify2_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3521
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    const v6, 0x7fffffff

    iput v6, v5, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    .line 3502
    .end local v2    # "dialog_id":I
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 3512
    :cond_2
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    if-eqz v5, :cond_3

    .line 3513
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    neg-int v2, v5

    .restart local v2    # "dialog_id":I
    goto :goto_1

    .line 3515
    .end local v2    # "dialog_id":I
    :cond_3
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    neg-int v2, v5

    .restart local v2    # "dialog_id":I
    goto :goto_1

    .line 3523
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "notify2_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3524
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "notifyuntil_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 3527
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "notify2_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 3531
    .end local v1    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v2    # "dialog_id":I
    :cond_6
    if-eqz v3, :cond_7

    .line 3532
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3534
    :cond_7
    return-void
.end method

.method public static checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z
    .locals 9
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 7997
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 8022
    :cond_0
    :goto_0
    return v5

    .line 8000
    :cond_1
    const/4 v3, 0x0

    .line 8001
    .local v3, "user":Lorg/telegram/tgnet/TLRPC$User;
    const/4 v0, 0x0

    .line 8002
    .local v0, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    const-string/jumbo v7, "user_id"

    invoke-virtual {p0, v7, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 8003
    .local v4, "user_id":I
    const-string/jumbo v7, "chat_id"

    invoke-virtual {p0, v7, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 8004
    .local v1, "chat_id":I
    if-eqz v4, :cond_5

    .line 8005
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    .line 8009
    :cond_2
    :goto_1
    if-nez v3, :cond_3

    if-eqz v0, :cond_0

    .line 8012
    :cond_3
    const/4 v2, 0x0

    .line 8013
    .local v2, "reason":Ljava/lang/String;
    if-eqz v0, :cond_6

    .line 8014
    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$Chat;->restriction_reason:Ljava/lang/String;

    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->getRestrictionReason(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 8018
    :cond_4
    :goto_2
    if-eqz v2, :cond_0

    .line 8019
    invoke-static {p1, v2}, Lorg/telegram/messenger/MessagesController;->showCantOpenAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)V

    move v5, v6

    .line 8020
    goto :goto_0

    .line 8006
    .end local v2    # "reason":Ljava/lang/String;
    :cond_5
    if-eqz v1, :cond_2

    .line 8007
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    goto :goto_1

    .line 8015
    .restart local v2    # "reason":Ljava/lang/String;
    :cond_6
    if-eqz v3, :cond_4

    .line 8016
    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$User;->restriction_reason:Ljava/lang/String;

    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->getRestrictionReason(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method

.method private checkChannelError(Ljava/lang/String;I)V
    .locals 7
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "channelId"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 5322
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 5333
    :goto_1
    return-void

    .line 5322
    :sswitch_0
    const-string/jumbo v4, "CHANNEL_PRIVATE"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string/jumbo v4, "CHANNEL_PUBLIC_GROUP_NA"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v2

    goto :goto_0

    :sswitch_2
    const-string/jumbo v4, "USER_BANNED_IN_CHANNEL"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v3

    goto :goto_0

    .line 5324
    :pswitch_0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v4, Lorg/telegram/messenger/NotificationCenter;->chatInfoCantLoad:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-virtual {v0, v4, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_1

    .line 5327
    :pswitch_1
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v4, Lorg/telegram/messenger/NotificationCenter;->chatInfoCantLoad:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-virtual {v0, v4, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_1

    .line 5330
    :pswitch_2
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v4, Lorg/telegram/messenger/NotificationCenter;->chatInfoCantLoad:I

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-virtual {v0, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_1

    .line 5322
    :sswitch_data_0
    .sparse-switch
        -0x6bd947ea -> :sswitch_2
        -0x2f6631f9 -> :sswitch_0
        -0x1c1436b3 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private checkDeletingTask(Z)Z
    .locals 3
    .param p1, "runnable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1579
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v0

    .line 1581
    .local v0, "currentServerTime":I
    iget-object v2, p0, Lorg/telegram/messenger/MessagesController;->currentDeletingTaskMids:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    if-nez p1, :cond_0

    iget v2, p0, Lorg/telegram/messenger/MessagesController;->currentDeletingTaskTime:I

    if-eqz v2, :cond_2

    iget v2, p0, Lorg/telegram/messenger/MessagesController;->currentDeletingTaskTime:I

    if-gt v2, v0, :cond_2

    .line 1582
    :cond_0
    iput v1, p0, Lorg/telegram/messenger/MessagesController;->currentDeletingTaskTime:I

    .line 1583
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->currentDeleteTaskRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    .line 1584
    sget-object v1, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController;->currentDeleteTaskRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    .line 1586
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/messenger/MessagesController;->currentDeleteTaskRunnable:Ljava/lang/Runnable;

    .line 1587
    new-instance v1, Lorg/telegram/messenger/MessagesController$21;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MessagesController$21;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1602
    const/4 v1, 0x1

    .line 1604
    :cond_2
    return v1
.end method

.method private deleteDialog(JZII)V
    .locals 25
    .param p1, "did"    # J
    .param p3, "first"    # Z
    .param p4, "onlyHistory"    # I
    .param p5, "max_id"    # I

    .prologue
    .line 2034
    move-wide/from16 v0, p1

    long-to-int v0, v0

    move/from16 v16, v0

    .line 2035
    .local v16, "lower_part":I
    const/16 v4, 0x20

    shr-long v6, p1, v4

    long-to-int v14, v6

    .line 2036
    .local v14, "high_id":I
    move/from16 v17, p5

    .line 2038
    .local v17, "max_id_delete":I
    const/4 v4, 0x2

    move/from16 v0, p4

    if-ne v0, v4, :cond_1

    .line 2039
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-wide/from16 v0, p1

    move/from16 v2, p4

    invoke-virtual {v4, v0, v1, v2}, Lorg/telegram/messenger/MessagesStorage;->deleteDialog(JI)V

    .line 2172
    :cond_0
    :goto_0
    return-void

    .line 2042
    :cond_1
    if-eqz p4, :cond_2

    const/4 v4, 0x3

    move/from16 v0, p4

    if-ne v0, v4, :cond_3

    .line 2043
    :cond_2
    invoke-static/range {p1 .. p2}, Lorg/telegram/messenger/AndroidUtilities;->uninstallShortcut(J)V

    .line 2046
    :cond_3
    if-eqz p3, :cond_9

    .line 2047
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-wide/from16 v0, p1

    move/from16 v2, p4

    invoke-virtual {v4, v0, v1, v2}, Lorg/telegram/messenger/MessagesStorage;->deleteDialog(JI)V

    .line 2048
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 2049
    .local v13, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    if-eqz v13, :cond_8

    .line 2050
    if-nez v17, :cond_4

    .line 2051
    const/4 v4, 0x0

    iget v6, v13, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 2053
    :cond_4
    if-eqz p4, :cond_5

    const/4 v4, 0x3

    move/from16 v0, p4

    if-ne v0, v4, :cond_a

    .line 2054
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2055
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->dialogsServerOnly:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {v13}, Lorg/telegram/messenger/DialogObject;->isChannel(Lorg/telegram/tgnet/TLRPC$TL_dialog;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2056
    sget-object v4, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v6, Lorg/telegram/messenger/MessagesController$36;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct {v6, v0, v1, v2}, Lorg/telegram/messenger/MessagesController$36;-><init>(Lorg/telegram/messenger/MessagesController;J)V

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 2065
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->dialogsGroupsOnly:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2066
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->dialogsUsers:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2067
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->dialogsGroups:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2068
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->dialogsGroupsAll:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2069
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->dialogsChannels:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2070
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->dialogsMegaGroups:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2071
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->dialogsBots:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2072
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->dialogsFavs:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2073
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2074
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2075
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2076
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/MessagesController;->nextDialogsCacheOffset:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/MessagesController;->nextDialogsCacheOffset:I

    .line 2081
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    iget-wide v6, v13, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/telegram/messenger/MessageObject;

    .line 2082
    .local v21, "object":Lorg/telegram/messenger/MessageObject;
    if-eqz v21, :cond_b

    .line 2083
    invoke-virtual/range {v21 .. v21}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v15

    .line 2084
    .local v15, "lastMessageId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2089
    :goto_2
    if-eqz v21, :cond_7

    move-object/from16 v0, v21

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v6, v4, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-eqz v4, :cond_7

    .line 2090
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByRandomIds:Ljava/util/HashMap;

    move-object/from16 v0, v21

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2092
    :cond_7
    const/4 v4, 0x1

    move/from16 v0, p4

    if-ne v0, v4, :cond_e

    if-eqz v16, :cond_e

    if-lez v15, :cond_e

    .line 2093
    new-instance v18, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    invoke-direct/range {v18 .. v18}, Lorg/telegram/tgnet/TLRPC$TL_messageService;-><init>()V

    .line 2094
    .local v18, "message":Lorg/telegram/tgnet/TLRPC$TL_messageService;
    iget v4, v13, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    move-object/from16 v0, v18

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->id:I

    .line 2095
    const/4 v4, 0x0

    move-object/from16 v0, v18

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->out:Z

    .line 2096
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v4

    move-object/from16 v0, v18

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->from_id:I

    .line 2097
    move-object/from16 v0, v18

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    or-int/lit16 v4, v4, 0x100

    move-object/from16 v0, v18

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    .line 2098
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageActionHistoryClear;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageActionHistoryClear;-><init>()V

    move-object/from16 v0, v18

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    .line 2099
    iget v4, v13, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    move-object/from16 v0, v18

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->date:I

    .line 2100
    if-lez v16, :cond_c

    .line 2101
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    move-object/from16 v0, v18

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 2102
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move/from16 v0, v16

    iput v0, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    .line 2113
    :goto_3
    new-instance v19, Lorg/telegram/messenger/MessageObject;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/MessagesController;->createdDialogIds:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->dialog_id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v4, v6}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V

    .line 2114
    .local v19, "obj":Lorg/telegram/messenger/MessageObject;
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 2115
    .local v20, "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2116
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2117
    .local v5, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2118
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->updateInterfaceWithMessages(JLjava/util/ArrayList;)V

    .line 2119
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZI)V

    .line 2124
    .end local v5    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v15    # "lastMessageId":I
    .end local v18    # "message":Lorg/telegram/tgnet/TLRPC$TL_messageService;
    .end local v19    # "obj":Lorg/telegram/messenger/MessageObject;
    .end local v20    # "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v21    # "object":Lorg/telegram/messenger/MessageObject;
    :cond_8
    :goto_4
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2125
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/NotificationCenter;->removeAllMessagesFromDialog:I

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v4, v6, v7}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2126
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v4

    new-instance v6, Lorg/telegram/messenger/MessagesController$37;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct {v6, v0, v1, v2}, Lorg/telegram/messenger/MessagesController$37;-><init>(Lorg/telegram/messenger/MessagesController;J)V

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 2139
    .end local v13    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    :cond_9
    const/4 v4, 0x1

    if-eq v14, v4, :cond_0

    const/4 v4, 0x3

    move/from16 v0, p4

    if-eq v0, v4, :cond_0

    .line 2143
    if-eqz v16, :cond_11

    .line 2144
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v22

    .line 2145
    .local v22, "peer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    if-eqz v22, :cond_0

    move-object/from16 v0, v22

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    if-nez v4, :cond_0

    .line 2148
    new-instance v23, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteHistory;

    invoke-direct/range {v23 .. v23}, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteHistory;-><init>()V

    .line 2149
    .local v23, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_deleteHistory;
    move-object/from16 v0, v22

    move-object/from16 v1, v23

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteHistory;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 2150
    if-nez p4, :cond_f

    const v4, 0x7fffffff

    :goto_5
    move-object/from16 v0, v23

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteHistory;->max_id:I

    .line 2151
    if-eqz p4, :cond_10

    const/4 v4, 0x1

    :goto_6
    move-object/from16 v0, v23

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteHistory;->just_clear:Z

    .line 2152
    move/from16 v11, v17

    .line 2153
    .local v11, "max_id_delete_final":I
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    new-instance v6, Lorg/telegram/messenger/MessagesController$38;

    move-object/from16 v7, p0

    move-wide/from16 v8, p1

    move/from16 v10, p4

    invoke-direct/range {v6 .. v11}, Lorg/telegram/messenger/MessagesController$38;-><init>(Lorg/telegram/messenger/MessagesController;JII)V

    const/16 v7, 0x40

    move-object/from16 v0, v23

    invoke-virtual {v4, v0, v6, v7}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto/16 :goto_0

    .line 2078
    .end local v11    # "max_id_delete_final":I
    .end local v22    # "peer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    .end local v23    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_deleteHistory;
    .restart local v13    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    :cond_a
    const/4 v4, 0x0

    iput v4, v13, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    goto/16 :goto_1

    .line 2086
    .restart local v21    # "object":Lorg/telegram/messenger/MessageObject;
    :cond_b
    iget v15, v13, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    .line 2087
    .restart local v15    # "lastMessageId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    iget v6, v13, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "object":Lorg/telegram/messenger/MessageObject;
    check-cast v21, Lorg/telegram/messenger/MessageObject;

    .restart local v21    # "object":Lorg/telegram/messenger/MessageObject;
    goto/16 :goto_2

    .line 2104
    .restart local v18    # "message":Lorg/telegram/tgnet/TLRPC$TL_messageService;
    :cond_c
    move/from16 v0, v16

    neg-int v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v12

    .line 2105
    .local v12, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v12}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 2106
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;-><init>()V

    move-object/from16 v0, v18

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 2107
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move/from16 v0, v16

    neg-int v6, v0

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    goto/16 :goto_3

    .line 2109
    :cond_d
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_peerChat;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_peerChat;-><init>()V

    move-object/from16 v0, v18

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 2110
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move/from16 v0, v16

    neg-int v6, v0

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    goto/16 :goto_3

    .line 2121
    .end local v12    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v18    # "message":Lorg/telegram/tgnet/TLRPC$TL_messageService;
    :cond_e
    const/4 v4, 0x0

    iput v4, v13, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    goto/16 :goto_4

    .end local v13    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v15    # "lastMessageId":I
    .end local v21    # "object":Lorg/telegram/messenger/MessageObject;
    .restart local v22    # "peer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    .restart local v23    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_deleteHistory;
    :cond_f
    move/from16 v4, v17

    .line 2150
    goto :goto_5

    .line 2151
    :cond_10
    const/4 v4, 0x0

    goto :goto_6

    .line 2166
    .end local v22    # "peer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    .end local v23    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_deleteHistory;
    :cond_11
    const/4 v4, 0x1

    move/from16 v0, p4

    if-ne v0, v4, :cond_12

    .line 2167
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v4

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Lorg/telegram/messenger/SecretChatHelper;->sendClearHistoryMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V

    goto/16 :goto_0

    .line 2169
    :cond_12
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v4

    invoke-virtual {v4, v14}, Lorg/telegram/messenger/SecretChatHelper;->declineSecretChat(I)V

    goto/16 :goto_0
.end method

.method private getChannelDifference(I)V
    .locals 7
    .param p1, "channelId"    # I

    .prologue
    .line 5046
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/MessagesController;->getChannelDifference(IIJLorg/telegram/tgnet/TLRPC$InputChannel;)V

    .line 5047
    return-void
.end method

.method public static getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;
    .locals 2
    .param p0, "chatId"    # I

    .prologue
    .line 482
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInputChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v0

    return-object v0
.end method

.method public static getInputChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputChannel;
    .locals 4
    .param p0, "chat"    # Lorg/telegram/tgnet/TLRPC$Chat;

    .prologue
    .line 471
    instance-of v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;

    if-nez v1, :cond_0

    instance-of v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;

    if-eqz v1, :cond_1

    .line 472
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputChannel;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputChannel;-><init>()V

    .line 473
    .local v0, "inputChat":Lorg/telegram/tgnet/TLRPC$InputChannel;
    iget v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$InputChannel;->channel_id:I

    .line 474
    iget-wide v2, p0, Lorg/telegram/tgnet/TLRPC$Chat;->access_hash:J

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$InputChannel;->access_hash:J

    .line 477
    .end local v0    # "inputChat":Lorg/telegram/tgnet/TLRPC$InputChannel;
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputChannelEmpty;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputChannelEmpty;-><init>()V

    goto :goto_0
.end method

.method public static getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;
    .locals 6
    .param p0, "id"    # I

    .prologue
    .line 487
    if-gez p0, :cond_2

    .line 488
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    neg-int v4, p0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 489
    .local v0, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 490
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;-><init>()V

    .line 491
    .local v1, "inputPeer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    neg-int v3, p0

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:I

    .line 492
    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->access_hash:J

    iput-wide v4, v1, Lorg/telegram/tgnet/TLRPC$InputPeer;->access_hash:J

    .line 505
    .end local v0    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_0
    :goto_0
    return-object v1

    .line 494
    .end local v1    # "inputPeer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    .restart local v0    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_1
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChat;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChat;-><init>()V

    .line 495
    .restart local v1    # "inputPeer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    neg-int v3, p0

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$InputPeer;->chat_id:I

    goto :goto_0

    .line 498
    .end local v0    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v1    # "inputPeer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    .line 499
    .local v2, "user":Lorg/telegram/tgnet/TLRPC$User;
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerUser;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerUser;-><init>()V

    .line 500
    .restart local v1    # "inputPeer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    iput p0, v1, Lorg/telegram/tgnet/TLRPC$InputPeer;->user_id:I

    .line 501
    if-eqz v2, :cond_0

    .line 502
    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$User;->access_hash:J

    iput-wide v4, v1, Lorg/telegram/tgnet/TLRPC$InputPeer;->access_hash:J

    goto :goto_0
.end method

.method public static getInputUser(I)Lorg/telegram/tgnet/TLRPC$InputUser;
    .locals 3
    .param p0, "user_id"    # I

    .prologue
    .line 466
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 467
    .local v0, "user":Lorg/telegram/tgnet/TLRPC$User;
    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v1

    return-object v1
.end method

.method public static getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;
    .locals 4
    .param p0, "user"    # Lorg/telegram/tgnet/TLRPC$User;

    .prologue
    .line 451
    if-nez p0, :cond_0

    .line 452
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputUserEmpty;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputUserEmpty;-><init>()V

    .line 462
    :goto_0
    return-object v0

    .line 455
    :cond_0
    iget v1, p0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 456
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputUserSelf;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputUserSelf;-><init>()V

    .local v0, "inputUser":Lorg/telegram/tgnet/TLRPC$InputUser;
    goto :goto_0

    .line 458
    .end local v0    # "inputUser":Lorg/telegram/tgnet/TLRPC$InputUser;
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputUser;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputUser;-><init>()V

    .line 459
    .restart local v0    # "inputUser":Lorg/telegram/tgnet/TLRPC$InputUser;
    iget v1, p0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$InputUser;->user_id:I

    .line 460
    iget-wide v2, p0, Lorg/telegram/tgnet/TLRPC$User;->access_hash:J

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$InputUser;->access_hash:J

    goto :goto_0
.end method

.method public static getInstance()Lorg/telegram/messenger/MessagesController;
    .locals 4

    .prologue
    .line 273
    sget-object v0, Lorg/telegram/messenger/MessagesController;->Instance:Lorg/telegram/messenger/MessagesController;

    .line 274
    .local v0, "localInstance":Lorg/telegram/messenger/MessagesController;
    if-nez v0, :cond_1

    .line 275
    const-class v3, Lorg/telegram/messenger/MessagesController;

    monitor-enter v3

    .line 276
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/MessagesController;->Instance:Lorg/telegram/messenger/MessagesController;

    .line 277
    if-nez v0, :cond_0

    .line 278
    new-instance v1, Lorg/telegram/messenger/MessagesController;

    invoke-direct {v1}, Lorg/telegram/messenger/MessagesController;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "localInstance":Lorg/telegram/messenger/MessagesController;
    .local v1, "localInstance":Lorg/telegram/messenger/MessagesController;
    :try_start_1
    sput-object v1, Lorg/telegram/messenger/MessagesController;->Instance:Lorg/telegram/messenger/MessagesController;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 280
    .end local v1    # "localInstance":Lorg/telegram/messenger/MessagesController;
    .restart local v0    # "localInstance":Lorg/telegram/messenger/MessagesController;
    :cond_0
    :try_start_2
    monitor-exit v3

    .line 282
    :cond_1
    return-object v0

    .line 280
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "localInstance":Lorg/telegram/messenger/MessagesController;
    .restart local v1    # "localInstance":Lorg/telegram/messenger/MessagesController;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "localInstance":Lorg/telegram/messenger/MessagesController;
    .restart local v0    # "localInstance":Lorg/telegram/messenger/MessagesController;
    goto :goto_0
.end method

.method public static getPeer(I)Lorg/telegram/tgnet/TLRPC$Peer;
    .locals 5
    .param p0, "id"    # I

    .prologue
    .line 510
    if-gez p0, :cond_2

    .line 511
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    neg-int v4, p0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 512
    .local v0, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_channel;

    if-nez v3, :cond_0

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;

    if-eqz v3, :cond_1

    .line 513
    :cond_0
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;-><init>()V

    .line 514
    .local v1, "inputPeer":Lorg/telegram/tgnet/TLRPC$Peer;
    neg-int v3, p0

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    .line 524
    .end local v0    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :goto_0
    return-object v1

    .line 516
    .end local v1    # "inputPeer":Lorg/telegram/tgnet/TLRPC$Peer;
    .restart local v0    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_1
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_peerChat;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_peerChat;-><init>()V

    .line 517
    .restart local v1    # "inputPeer":Lorg/telegram/tgnet/TLRPC$Peer;
    neg-int v3, p0

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    goto :goto_0

    .line 520
    .end local v0    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v1    # "inputPeer":Lorg/telegram/tgnet/TLRPC$Peer;
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    .line 521
    .local v2, "user":Lorg/telegram/tgnet/TLRPC$User;
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    .line 522
    .restart local v1    # "inputPeer":Lorg/telegram/tgnet/TLRPC$Peer;
    iput p0, v1, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    goto :goto_0
.end method

.method private static getRestrictionReason(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 7972
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 7982
    :cond_0
    :goto_0
    return-object v2

    .line 7975
    :cond_1
    const-string/jumbo v3, ": "

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 7976
    .local v0, "index":I
    if-lez v0, :cond_0

    .line 7977
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 7978
    .local v1, "type":Ljava/lang/String;
    const-string/jumbo v3, "-all"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "-android"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7979
    :cond_2
    add-int/lit8 v2, v0, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getUpdateChannelId(Lorg/telegram/tgnet/TLRPC$Update;)I
    .locals 1
    .param p1, "update"    # Lorg/telegram/tgnet/TLRPC$Update;

    .prologue
    .line 6011
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;

    if-eqz v0, :cond_0

    .line 6012
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;

    .end local p1    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    .line 6016
    :goto_0
    return v0

    .line 6013
    .restart local p1    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    :cond_0
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateEditChannelMessage;

    if-eqz v0, :cond_1

    .line 6014
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_updateEditChannelMessage;

    .end local p1    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateEditChannelMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    goto :goto_0

    .line 6016
    .restart local p1    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    :cond_1
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    goto :goto_0
.end method

.method private getUpdateSeq(Lorg/telegram/tgnet/TLRPC$Updates;)I
    .locals 1
    .param p1, "updates"    # Lorg/telegram/tgnet/TLRPC$Updates;

    .prologue
    .line 4785
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updatesCombined;

    if-eqz v0, :cond_0

    .line 4786
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$Updates;->seq_start:I

    .line 4788
    :goto_0
    return v0

    :cond_0
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$Updates;->seq:I

    goto :goto_0
.end method

.method private getUpdateType(Lorg/telegram/tgnet/TLRPC$Update;)I
    .locals 1
    .param p1, "update"    # Lorg/telegram/tgnet/TLRPC$Update;

    .prologue
    .line 5996
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;

    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateReadMessagesContents;

    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;

    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryOutbox;

    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteMessages;

    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateWebPage;

    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateEditMessage;

    if-eqz v0, :cond_1

    .line 5999
    :cond_0
    const/4 v0, 0x0

    .line 6006
    :goto_0
    return v0

    .line 6000
    :cond_1
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateNewEncryptedMessage;

    if-eqz v0, :cond_2

    .line 6001
    const/4 v0, 0x1

    goto :goto_0

    .line 6002
    :cond_2
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;

    if-nez v0, :cond_3

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteChannelMessages;

    if-nez v0, :cond_3

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateEditChannelMessage;

    if-nez v0, :cond_3

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateChannelWebPage;

    if-eqz v0, :cond_4

    .line 6004
    :cond_3
    const/4 v0, 0x2

    goto :goto_0

    .line 6006
    :cond_4
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private getUserNameForTyping(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;
    .locals 1
    .param p1, "user"    # Lorg/telegram/tgnet/TLRPC$User;

    .prologue
    .line 2448
    if-nez p1, :cond_0

    .line 2449
    const-string/jumbo v0, ""

    .line 2456
    :goto_0
    return-object v0

    .line 2451
    :cond_0
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 2452
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    goto :goto_0

    .line 2453
    :cond_1
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 2454
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    goto :goto_0

    .line 2456
    :cond_2
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static isFeatureEnabled(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)Z
    .locals 5
    .param p0, "feature"    # Ljava/lang/String;
    .param p1, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;

    .prologue
    const/4 v2, 0x1

    .line 412
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->disabledFeatures:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    if-nez p1, :cond_1

    .line 427
    :cond_0
    :goto_0
    return v2

    .line 415
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->disabledFeatures:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_disabledFeature;

    .line 416
    .local v1, "disabledFeature":Lorg/telegram/tgnet/TLRPC$TL_disabledFeature;
    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_disabledFeature;->feature:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 417
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 418
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 419
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v2, "Oops!"

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 420
    const-string/jumbo v2, "OK"

    const v3, 0x7f0703b5

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 421
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_disabledFeature;->description:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 422
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 424
    .end local v0    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isNotifySettingsMuted(Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;)Z
    .locals 2
    .param p1, "settings"    # Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    .prologue
    .line 7731
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;

    if-eqz v0, :cond_0

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidUpdate(Lorg/telegram/tgnet/TLRPC$Updates;I)I
    .locals 6
    .param p1, "updates"    # Lorg/telegram/tgnet/TLRPC$Updates;
    .param p2, "type"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 4814
    if-nez p2, :cond_3

    .line 4815
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MessagesController;->getUpdateSeq(Lorg/telegram/tgnet/TLRPC$Updates;)I

    move-result v0

    .line 4816
    .local v0, "seq":I
    sget v4, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    add-int/lit8 v4, v4, 0x1

    if-eq v4, v0, :cond_0

    sget v4, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    if-ne v4, v0, :cond_2

    :cond_0
    move v1, v3

    .line 4840
    .end local v0    # "seq":I
    :cond_1
    :goto_0
    return v1

    .line 4818
    .restart local v0    # "seq":I
    :cond_2
    sget v3, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    if-lt v3, v0, :cond_1

    move v1, v2

    .line 4821
    goto :goto_0

    .line 4823
    .end local v0    # "seq":I
    :cond_3
    if-ne p2, v1, :cond_5

    .line 4824
    iget v4, p1, Lorg/telegram/tgnet/TLRPC$Updates;->pts:I

    sget v5, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    if-gt v4, v5, :cond_4

    move v1, v2

    .line 4825
    goto :goto_0

    .line 4826
    :cond_4
    sget v2, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    iget v4, p1, Lorg/telegram/tgnet/TLRPC$Updates;->pts_count:I

    add-int/2addr v2, v4

    iget v4, p1, Lorg/telegram/tgnet/TLRPC$Updates;->pts:I

    if-ne v2, v4, :cond_1

    move v1, v3

    .line 4827
    goto :goto_0

    .line 4831
    :cond_5
    if-ne p2, v2, :cond_7

    .line 4832
    iget v4, p1, Lorg/telegram/tgnet/TLRPC$Updates;->pts:I

    sget v5, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    if-gt v4, v5, :cond_6

    move v1, v2

    .line 4833
    goto :goto_0

    .line 4834
    :cond_6
    sget v2, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v2, v4

    iget v4, p1, Lorg/telegram/tgnet/TLRPC$Updates;->pts:I

    if-ne v2, v4, :cond_1

    move v1, v3

    .line 4835
    goto :goto_0

    :cond_7
    move v1, v3

    .line 4840
    goto :goto_0
.end method

.method private migrateDialogs(IIIIIJ)V
    .locals 4
    .param p1, "offset"    # I
    .param p2, "offsetDate"    # I
    .param p3, "offsetUser"    # I
    .param p4, "offsetChat"    # I
    .param p5, "offsetChannel"    # I
    .param p6, "accessPeer"    # J

    .prologue
    .line 2997
    iget-boolean v1, p0, Lorg/telegram/messenger/MessagesController;->migratingDialogs:Z

    if-nez v1, :cond_0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 3159
    :cond_0
    :goto_0
    return-void

    .line 3000
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/messenger/MessagesController;->migratingDialogs:Z

    .line 3002
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;-><init>()V

    .line 3003
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;
    const/16 v1, 0x64

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->limit:I

    .line 3004
    iput p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->offset_id:I

    .line 3005
    iput p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->offset_date:I

    .line 3006
    if-nez p1, :cond_2

    .line 3007
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 3021
    :goto_1
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$55;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesController$55;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0

    .line 3009
    :cond_2
    if-eqz p5, :cond_3

    .line 3010
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 3011
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iput p5, v1, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:I

    .line 3019
    :goto_2
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iput-wide p6, v1, Lorg/telegram/tgnet/TLRPC$InputPeer;->access_hash:J

    goto :goto_1

    .line 3012
    :cond_3
    if-eqz p3, :cond_4

    .line 3013
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerUser;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerUser;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 3014
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iput p3, v1, Lorg/telegram/tgnet/TLRPC$InputPeer;->user_id:I

    goto :goto_2

    .line 3016
    :cond_4
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChat;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChat;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 3017
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iput p4, v1, Lorg/telegram/tgnet/TLRPC$InputPeer;->chat_id:I

    goto :goto_2
.end method

.method public static openByUserName(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;I)V
    .locals 8
    .param p0, "username"    # Ljava/lang/String;
    .param p1, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;
    .param p2, "type"    # I

    .prologue
    const/4 v7, 0x0

    .line 8057
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 8134
    :cond_0
    :goto_0
    return-void

    .line 8060
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-virtual {v5, p0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    .line 8061
    .local v4, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v4, :cond_2

    .line 8062
    const/4 v5, 0x0

    invoke-static {v4, v5, p1, p2, v7}, Lorg/telegram/messenger/MessagesController;->openChatOrProfileWith(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    goto :goto_0

    .line 8064
    :cond_2
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 8067
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v0, v5, v6}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 8068
    .local v0, "progressDialog":Lorg/telegram/ui/ActionBar/AlertDialog;
    const-string/jumbo v5, "Loading"

    const v6, 0x7f0702cc

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 8069
    invoke-virtual {v0, v7}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 8070
    invoke-virtual {v0, v7}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCancelable(Z)V

    .line 8072
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;-><init>()V

    .line 8073
    .local v1, "req":Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;
    iput-object p0, v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;->username:Ljava/lang/String;

    .line 8074
    move-object v3, p0

    .line 8075
    .local v3, "un":Ljava/lang/String;
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    new-instance v6, Lorg/telegram/messenger/MessagesController$113;

    invoke-direct {v6, v0, p1, p2, v3}, Lorg/telegram/messenger/MessagesController$113;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/ui/ActionBar/BaseFragment;ILjava/lang/String;)V

    invoke-virtual {v5, v1, v6}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v2

    .line 8117
    .local v2, "reqId":I
    const/4 v5, -0x2

    const-string/jumbo v6, "Cancel"

    const v7, 0x7f0700de

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lorg/telegram/messenger/MessagesController$114;

    invoke-direct {v7, v2, p1}, Lorg/telegram/messenger/MessagesController$114;-><init>(ILorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v0, v5, v6, v7}, Lorg/telegram/ui/ActionBar/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 8131
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->setVisibleDialog(Landroid/app/Dialog;)V

    .line 8132
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    goto :goto_0
.end method

.method public static openByUserNameCustom(Ljava/lang/String;I)V
    .locals 4
    .param p0, "username"    # Ljava/lang/String;
    .param p1, "type"    # I

    .prologue
    .line 8288
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;-><init>()V

    .line 8289
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;
    iput-object p0, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;->username:Ljava/lang/String;

    .line 8290
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/MessagesController$119;

    invoke-direct {v3}, Lorg/telegram/messenger/MessagesController$119;-><init>()V

    invoke-virtual {v2, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v1

    .line 8311
    .local v1, "reqId":I
    return-void
.end method

.method public static openChatOrProfileWith(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V
    .locals 4
    .param p0, "user"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p1, "chat"    # Lorg/telegram/tgnet/TLRPC$Chat;
    .param p2, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;
    .param p3, "type"    # I
    .param p4, "closeLast"    # Z

    .prologue
    .line 8026
    if-nez p0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-nez p2, :cond_2

    .line 8054
    :cond_1
    :goto_0
    return-void

    .line 8029
    :cond_2
    const/4 v1, 0x0

    .line 8030
    .local v1, "reason":Ljava/lang/String;
    if-eqz p1, :cond_4

    .line 8031
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->restriction_reason:Ljava/lang/String;

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getRestrictionReason(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8039
    :cond_3
    :goto_1
    if-eqz v1, :cond_5

    .line 8040
    invoke-static {p2, v1}, Lorg/telegram/messenger/MessagesController;->showCantOpenAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 8032
    :cond_4
    if-eqz p0, :cond_3

    .line 8033
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$User;->restriction_reason:Ljava/lang/String;

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getRestrictionReason(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8034
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v2, :cond_3

    .line 8035
    const/4 p3, 0x1

    .line 8036
    const/4 p4, 0x1

    goto :goto_1

    .line 8042
    :cond_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 8043
    .local v0, "args":Landroid/os/Bundle;
    if-eqz p1, :cond_6

    .line 8044
    const-string/jumbo v2, "chat_id"

    iget v3, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 8048
    :goto_2
    if-nez p3, :cond_7

    .line 8049
    new-instance v2, Lorg/telegram/ui/ProfileActivity;

    invoke-direct {v2, v0}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p2, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    .line 8046
    :cond_6
    const-string/jumbo v2, "user_id"

    iget v3, p0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    .line 8051
    :cond_7
    new-instance v2, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v2, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p2, v2, p4}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto :goto_0
.end method

.method public static openChatOrProfileWithCustom(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;IZ)V
    .locals 2
    .param p0, "user"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p1, "chat"    # Lorg/telegram/tgnet/TLRPC$Chat;
    .param p2, "type"    # I
    .param p3, "closeLast"    # Z

    .prologue
    .line 8137
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    .line 8150
    :cond_0
    :goto_0
    return-void

    .line 8140
    :cond_1
    const/4 v0, 0x0

    .line 8141
    .local v0, "reason":Ljava/lang/String;
    if-eqz p1, :cond_3

    .line 8142
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->restriction_reason:Ljava/lang/String;

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getRestrictionReason(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8146
    :cond_2
    :goto_1
    if-nez v0, :cond_0

    .line 8148
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->addToCustomChats(I)V

    goto :goto_0

    .line 8143
    :cond_3
    if-eqz p0, :cond_2

    .line 8144
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$User;->restriction_reason:Ljava/lang/String;

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getRestrictionReason(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private processChannelsUpdatesQueue(II)V
    .locals 12
    .param p1, "channelId"    # I
    .param p2, "state"    # I

    .prologue
    const/4 v10, 0x1

    .line 4844
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->updatesQueueChannels:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 4845
    .local v5, "updatesQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Updates;>;"
    if-nez v5, :cond_1

    .line 4901
    :cond_0
    :goto_0
    return-void

    .line 4848
    :cond_1
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->channelsPts:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 4849
    .local v2, "channelPts":Ljava/lang/Integer;
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    if-nez v2, :cond_3

    .line 4850
    :cond_2
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->updatesQueueChannels:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4853
    :cond_3
    new-instance v7, Lorg/telegram/messenger/MessagesController$87;

    invoke-direct {v7, p0}, Lorg/telegram/messenger/MessagesController$87;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-static {v5, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 4859
    const/4 v1, 0x0

    .line 4860
    .local v1, "anyProceed":Z
    const/4 v7, 0x2

    if-ne p2, v7, :cond_4

    .line 4861
    iget-object v8, p0, Lorg/telegram/messenger/MessagesController;->channelsPts:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$Updates;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$Updates;->pts:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4863
    :cond_4
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_b

    .line 4864
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Updates;

    .line 4866
    .local v4, "updates":Lorg/telegram/tgnet/TLRPC$Updates;
    iget v7, v4, Lorg/telegram/tgnet/TLRPC$Updates;->pts:I

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-gt v7, v8, :cond_5

    .line 4867
    const/4 v3, 0x2

    .line 4873
    .local v3, "updateState":I
    :goto_2
    if-nez v3, :cond_7

    .line 4874
    invoke-virtual {p0, v4, v10}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    .line 4875
    const/4 v1, 0x1

    .line 4876
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4877
    add-int/lit8 v0, v0, -0x1

    .line 4863
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4868
    .end local v3    # "updateState":I
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget v8, v4, Lorg/telegram/tgnet/TLRPC$Updates;->pts_count:I

    add-int/2addr v7, v8

    iget v8, v4, Lorg/telegram/tgnet/TLRPC$Updates;->pts:I

    if-ne v7, v8, :cond_6

    .line 4869
    const/4 v3, 0x0

    .restart local v3    # "updateState":I
    goto :goto_2

    .line 4871
    .end local v3    # "updateState":I
    :cond_6
    const/4 v3, 0x1

    .restart local v3    # "updateState":I
    goto :goto_2

    .line 4878
    :cond_7
    if-ne v3, v10, :cond_a

    .line 4879
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeChannels:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 4880
    .local v6, "updatesStartWaitTime":Ljava/lang/Long;
    if-eqz v6, :cond_9

    if-nez v1, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide/16 v10, 0x5dc

    cmp-long v7, v8, v10

    if-gtz v7, :cond_9

    .line 4881
    :cond_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "HOLE IN CHANNEL "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " UPDATES QUEUE - will wait more time"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 4882
    if-eqz v1, :cond_0

    .line 4883
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeChannels:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 4887
    :cond_9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "HOLE IN CHANNEL "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " UPDATES QUEUE - getChannelDifference "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 4888
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeChannels:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4889
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->updatesQueueChannels:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4890
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MessagesController;->getChannelDifference(I)V

    goto/16 :goto_0

    .line 4894
    .end local v6    # "updatesStartWaitTime":Ljava/lang/Long;
    :cond_a
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4895
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_3

    .line 4898
    .end local v3    # "updateState":I
    .end local v4    # "updates":Lorg/telegram/tgnet/TLRPC$Updates;
    :cond_b
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->updatesQueueChannels:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4899
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeChannels:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4900
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "UPDATES CHANNEL "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " QUEUE PROCEED - OK"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private processUpdatesQueue(II)V
    .locals 12
    .param p1, "type"    # I
    .param p2, "state"    # I

    .prologue
    const/4 v7, 0x2

    const-wide/16 v10, 0x0

    const/4 v6, 0x1

    .line 4904
    const/4 v4, 0x0

    .line 4905
    .local v4, "updatesQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Updates;>;"
    if-nez p1, :cond_2

    .line 4906
    iget-object v4, p0, Lorg/telegram/messenger/MessagesController;->updatesQueueSeq:Ljava/util/ArrayList;

    .line 4907
    new-instance v5, Lorg/telegram/messenger/MessagesController$88;

    invoke-direct {v5, p0}, Lorg/telegram/messenger/MessagesController$88;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 4930
    :cond_0
    :goto_0
    if-eqz v4, :cond_c

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_c

    .line 4931
    const/4 v1, 0x0

    .line 4932
    .local v1, "anyProceed":Z
    if-ne p2, v7, :cond_1

    .line 4933
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Updates;

    .line 4934
    .local v3, "updates":Lorg/telegram/tgnet/TLRPC$Updates;
    if-nez p1, :cond_4

    .line 4935
    invoke-direct {p0, v3}, Lorg/telegram/messenger/MessagesController;->getUpdateSeq(Lorg/telegram/tgnet/TLRPC$Updates;)I

    move-result v5

    sput v5, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    .line 4942
    .end local v3    # "updates":Lorg/telegram/tgnet/TLRPC$Updates;
    :cond_1
    :goto_1
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_b

    .line 4943
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Updates;

    .line 4944
    .restart local v3    # "updates":Lorg/telegram/tgnet/TLRPC$Updates;
    invoke-direct {p0, v3, p1}, Lorg/telegram/messenger/MessagesController;->isValidUpdate(Lorg/telegram/tgnet/TLRPC$Updates;I)I

    move-result v2

    .line 4945
    .local v2, "updateState":I
    if-nez v2, :cond_6

    .line 4946
    invoke-virtual {p0, v3, v6}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    .line 4947
    const/4 v1, 0x1

    .line 4948
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4949
    add-int/lit8 v0, v0, -0x1

    .line 4942
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4913
    .end local v0    # "a":I
    .end local v1    # "anyProceed":Z
    .end local v2    # "updateState":I
    .end local v3    # "updates":Lorg/telegram/tgnet/TLRPC$Updates;
    :cond_2
    if-ne p1, v6, :cond_3

    .line 4914
    iget-object v4, p0, Lorg/telegram/messenger/MessagesController;->updatesQueuePts:Ljava/util/ArrayList;

    .line 4915
    new-instance v5, Lorg/telegram/messenger/MessagesController$89;

    invoke-direct {v5, p0}, Lorg/telegram/messenger/MessagesController$89;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 4921
    :cond_3
    if-ne p1, v7, :cond_0

    .line 4922
    iget-object v4, p0, Lorg/telegram/messenger/MessagesController;->updatesQueueQts:Ljava/util/ArrayList;

    .line 4923
    new-instance v5, Lorg/telegram/messenger/MessagesController$90;

    invoke-direct {v5, p0}, Lorg/telegram/messenger/MessagesController$90;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 4936
    .restart local v1    # "anyProceed":Z
    .restart local v3    # "updates":Lorg/telegram/tgnet/TLRPC$Updates;
    :cond_4
    if-ne p1, v6, :cond_5

    .line 4937
    iget v5, v3, Lorg/telegram/tgnet/TLRPC$Updates;->pts:I

    sput v5, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    goto :goto_1

    .line 4939
    :cond_5
    iget v5, v3, Lorg/telegram/tgnet/TLRPC$Updates;->pts:I

    sput v5, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    goto :goto_1

    .line 4950
    .restart local v0    # "a":I
    .restart local v2    # "updateState":I
    :cond_6
    if-ne v2, v6, :cond_a

    .line 4951
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MessagesController;->getUpdatesStartTime(I)J

    move-result-wide v6

    cmp-long v5, v6, v10

    if-eqz v5, :cond_9

    if-nez v1, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MessagesController;->getUpdatesStartTime(I)J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/16 v8, 0x5dc

    cmp-long v5, v6, v8

    if-gtz v5, :cond_9

    .line 4952
    :cond_7
    const-string/jumbo v5, "HOLE IN UPDATES QUEUE - will wait more time"

    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 4953
    if-eqz v1, :cond_8

    .line 4954
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {p0, p1, v6, v7}, Lorg/telegram/messenger/MessagesController;->setUpdatesStartTime(IJ)V

    .line 4973
    .end local v0    # "a":I
    .end local v1    # "anyProceed":Z
    .end local v2    # "updateState":I
    .end local v3    # "updates":Lorg/telegram/tgnet/TLRPC$Updates;
    :cond_8
    :goto_4
    return-void

    .line 4958
    .restart local v0    # "a":I
    .restart local v1    # "anyProceed":Z
    .restart local v2    # "updateState":I
    .restart local v3    # "updates":Lorg/telegram/tgnet/TLRPC$Updates;
    :cond_9
    const-string/jumbo v5, "HOLE IN UPDATES QUEUE - getDifference"

    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 4959
    invoke-direct {p0, p1, v10, v11}, Lorg/telegram/messenger/MessagesController;->setUpdatesStartTime(IJ)V

    .line 4960
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 4961
    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesController;->getDifference()V

    goto :goto_4

    .line 4965
    :cond_a
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4966
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 4969
    .end local v2    # "updateState":I
    .end local v3    # "updates":Lorg/telegram/tgnet/TLRPC$Updates;
    :cond_b
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 4970
    const-string/jumbo v5, "UPDATES QUEUE PROCEED - OK"

    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 4972
    .end local v0    # "a":I
    .end local v1    # "anyProceed":Z
    :cond_c
    invoke-direct {p0, p1, v10, v11}, Lorg/telegram/messenger/MessagesController;->setUpdatesStartTime(IJ)V

    goto :goto_4
.end method

.method private reloadDialogsReadValue(Ljava/util/ArrayList;J)V
    .locals 8
    .param p2, "did"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .local p1, "dialogs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_dialog;>;"
    const-wide/16 v6, 0x0

    .line 971
    cmp-long v3, p2, v6

    if-nez v3, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1061
    :cond_0
    :goto_0
    return-void

    .line 974
    :cond_1
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messages_getPeerDialogs;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messages_getPeerDialogs;-><init>()V

    .line 975
    .local v2, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getPeerDialogs;
    if-eqz p1, :cond_3

    .line 976
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 977
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    long-to-int v3, v4

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    .line 978
    .local v1, "inputPeer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    if-eqz v3, :cond_2

    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$InputPeer;->access_hash:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    .line 976
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 981
    :cond_2
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_getPeerDialogs;->peers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 984
    .end local v0    # "a":I
    .end local v1    # "inputPeer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    :cond_3
    long-to-int v3, p2

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    .line 985
    .restart local v1    # "inputPeer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    if-eqz v3, :cond_4

    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$InputPeer;->access_hash:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 988
    :cond_4
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_getPeerDialogs;->peers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 990
    .end local v1    # "inputPeer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    :cond_5
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_getPeerDialogs;->peers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 993
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/MessagesController$9;

    invoke-direct {v4, p0}, Lorg/telegram/messenger/MessagesController$9;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v3, v2, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0
.end method

.method private reloadMessages(Ljava/util/ArrayList;J)V
    .locals 12
    .param p2, "dialog_id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 1213
    .local p1, "mids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1321
    :cond_0
    :goto_0
    return-void

    .line 1217
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1218
    .local v5, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p2, p3}, Lorg/telegram/messenger/ChatObject;->getChatByDialog(J)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v4

    .line 1219
    .local v4, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v4}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1220
    new-instance v9, Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;

    invoke-direct {v9}, Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;-><init>()V

    .line 1221
    .local v9, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;
    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInputChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v0

    iput-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 1222
    iput-object v5, v9, Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;->id:Ljava/util/ArrayList;

    .line 1223
    move-object v10, v9

    .line 1229
    .end local v9    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;
    .local v10, "request":Lorg/telegram/tgnet/TLObject;
    :goto_1
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->reloadingMessages:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 1230
    .local v7, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    .local v6, "a":I
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_4

    .line 1231
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 1232
    .local v8, "mid":Ljava/lang/Integer;
    if-eqz v7, :cond_3

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1230
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1225
    .end local v6    # "a":I
    .end local v7    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v8    # "mid":Ljava/lang/Integer;
    .end local v10    # "request":Lorg/telegram/tgnet/TLObject;
    :cond_2
    new-instance v9, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessages;

    invoke-direct {v9}, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessages;-><init>()V

    .line 1226
    .local v9, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getMessages;
    iput-object v5, v9, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessages;->id:Ljava/util/ArrayList;

    .line 1227
    move-object v10, v9

    .restart local v10    # "request":Lorg/telegram/tgnet/TLObject;
    goto :goto_1

    .line 1235
    .end local v9    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getMessages;
    .restart local v6    # "a":I
    .restart local v7    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v8    # "mid":Ljava/lang/Integer;
    :cond_3
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1237
    .end local v8    # "mid":Ljava/lang/Integer;
    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1240
    if-nez v7, :cond_5

    .line 1241
    new-instance v7, Ljava/util/ArrayList;

    .end local v7    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1242
    .restart local v7    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->reloadingMessages:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1244
    :cond_5
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1245
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v11

    new-instance v0, Lorg/telegram/messenger/MessagesController$12;

    move-object v1, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/MessagesController$12;-><init>(Lorg/telegram/messenger/MessagesController;JLorg/telegram/tgnet/TLRPC$Chat;Ljava/util/ArrayList;)V

    invoke-virtual {v11, v10, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0
.end method

.method private setUpdatesStartTime(IJ)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "time"    # J

    .prologue
    .line 4793
    if-nez p1, :cond_1

    .line 4794
    iput-wide p2, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeSeq:J

    .line 4800
    :cond_0
    :goto_0
    return-void

    .line 4795
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 4796
    iput-wide p2, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimePts:J

    goto :goto_0

    .line 4797
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 4798
    iput-wide p2, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeQts:J

    goto :goto_0
.end method

.method private static showCantOpenAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)V
    .locals 3
    .param p0, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 7986
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 7994
    :cond_0
    :goto_0
    return-void

    .line 7989
    :cond_1
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 7990
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v1, "AppName"

    const v2, 0x7f070072

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 7991
    const-string/jumbo v1, "OK"

    const v2, 0x7f0703b5

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 7992
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 7993
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0
.end method

.method private updatePrintingStrings()V
    .locals 21

    .prologue
    .line 2460
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 2461
    .local v10, "newPrintingStrings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/CharSequence;>;"
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 2463
    .local v11, "newPrintingStringsTypes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    new-instance v5, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v14}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-direct {v5, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2464
    .local v5, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v14}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_0
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_18

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 2465
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 2466
    .local v6, "key":J
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 2468
    .local v2, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;"
    long-to-int v9, v6

    .line 2470
    .local v9, "lower_id":I
    if-gtz v9, :cond_1

    if-eqz v9, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v14, v0, :cond_11

    .line 2471
    :cond_1
    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/messenger/MessagesController$PrintingUser;

    .line 2472
    .local v12, "pu":Lorg/telegram/messenger/MessagesController$PrintingUser;
    iget v14, v12, Lorg/telegram/messenger/MessagesController$PrintingUser;->userId:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v13

    .line 2473
    .local v13, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-nez v13, :cond_2

    .line 2569
    .end local v2    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;"
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;>;"
    .end local v6    # "key":J
    .end local v9    # "lower_id":I
    .end local v12    # "pu":Lorg/telegram/messenger/MessagesController$PrintingUser;
    .end local v13    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :goto_1
    return-void

    .line 2476
    .restart local v2    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;"
    .restart local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;>;"
    .restart local v6    # "key":J
    .restart local v9    # "lower_id":I
    .restart local v12    # "pu":Lorg/telegram/messenger/MessagesController$PrintingUser;
    .restart local v13    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_2
    iget-object v14, v12, Lorg/telegram/messenger/MessagesController$PrintingUser;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    instance-of v14, v14, Lorg/telegram/tgnet/TLRPC$TL_sendMessageRecordAudioAction;

    if-eqz v14, :cond_4

    .line 2477
    if-gez v9, :cond_3

    .line 2478
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-string/jumbo v16, "IsRecordingAudio"

    const v17, 0x7f070287

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/telegram/messenger/MessagesController;->getUserNameForTyping(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v16 .. v18}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2482
    :goto_2
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2480
    :cond_3
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-string/jumbo v16, "RecordingAudio"

    const v17, 0x7f070458

    invoke-static/range {v16 .. v17}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 2483
    :cond_4
    iget-object v14, v12, Lorg/telegram/messenger/MessagesController$PrintingUser;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    instance-of v14, v14, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadAudioAction;

    if-eqz v14, :cond_6

    .line 2484
    if-gez v9, :cond_5

    .line 2485
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-string/jumbo v16, "IsSendingAudio"

    const v17, 0x7f070288

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/telegram/messenger/MessagesController;->getUserNameForTyping(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v16 .. v18}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2489
    :goto_3
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const/16 v16, 0x2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 2487
    :cond_5
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-string/jumbo v16, "SendingAudio"

    const v17, 0x7f0704c3

    invoke-static/range {v16 .. v17}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 2490
    :cond_6
    iget-object v14, v12, Lorg/telegram/messenger/MessagesController$PrintingUser;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    instance-of v14, v14, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadVideoAction;

    if-nez v14, :cond_7

    iget-object v14, v12, Lorg/telegram/messenger/MessagesController$PrintingUser;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    instance-of v14, v14, Lorg/telegram/tgnet/TLRPC$TL_sendMessageRecordVideoAction;

    if-eqz v14, :cond_9

    .line 2491
    :cond_7
    if-gez v9, :cond_8

    .line 2492
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-string/jumbo v16, "IsSendingVideo"

    const v17, 0x7f07028c

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/telegram/messenger/MessagesController;->getUserNameForTyping(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v16 .. v18}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2496
    :goto_4
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const/16 v16, 0x2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 2494
    :cond_8
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-string/jumbo v16, "SendingVideoStatus"

    const v17, 0x7f0704c9

    invoke-static/range {v16 .. v17}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 2497
    :cond_9
    iget-object v14, v12, Lorg/telegram/messenger/MessagesController$PrintingUser;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    instance-of v14, v14, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadDocumentAction;

    if-eqz v14, :cond_b

    .line 2498
    if-gez v9, :cond_a

    .line 2499
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-string/jumbo v16, "IsSendingFile"

    const v17, 0x7f070289

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/telegram/messenger/MessagesController;->getUserNameForTyping(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v16 .. v18}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2503
    :goto_5
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const/16 v16, 0x2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 2501
    :cond_a
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-string/jumbo v16, "SendingFile"

    const v17, 0x7f0704c4

    invoke-static/range {v16 .. v17}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 2504
    :cond_b
    iget-object v14, v12, Lorg/telegram/messenger/MessagesController$PrintingUser;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    instance-of v14, v14, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadPhotoAction;

    if-eqz v14, :cond_d

    .line 2505
    if-gez v9, :cond_c

    .line 2506
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-string/jumbo v16, "IsSendingPhoto"

    const v17, 0x7f07028b

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/telegram/messenger/MessagesController;->getUserNameForTyping(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v16 .. v18}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2510
    :goto_6
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const/16 v16, 0x2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 2508
    :cond_c
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-string/jumbo v16, "SendingPhoto"

    const v17, 0x7f0704c7

    invoke-static/range {v16 .. v17}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 2511
    :cond_d
    iget-object v14, v12, Lorg/telegram/messenger/MessagesController$PrintingUser;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    instance-of v14, v14, Lorg/telegram/tgnet/TLRPC$TL_sendMessageGamePlayAction;

    if-eqz v14, :cond_f

    .line 2512
    if-gez v9, :cond_e

    .line 2513
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-string/jumbo v16, "IsSendingGame"

    const v17, 0x7f07028a

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/telegram/messenger/MessagesController;->getUserNameForTyping(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v16 .. v18}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2517
    :goto_7
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const/16 v16, 0x3

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 2515
    :cond_e
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-string/jumbo v16, "SendingGame"

    const v17, 0x7f0704c5

    invoke-static/range {v16 .. v17}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 2519
    :cond_f
    if-gez v9, :cond_10

    .line 2520
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-string/jumbo v16, "%s %s"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/telegram/messenger/MessagesController;->getUserNameForTyping(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    const-string/jumbo v19, "IsTyping"

    const v20, 0x7f07028d

    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2524
    :goto_8
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 2522
    :cond_10
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-string/jumbo v16, "Typing"

    const v17, 0x7f07052d

    invoke-static/range {v16 .. v17}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 2527
    .end local v12    # "pu":Lorg/telegram/messenger/MessagesController$PrintingUser;
    .end local v13    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_11
    const/4 v3, 0x0

    .line 2528
    .local v3, "count":I
    const-string/jumbo v8, ""

    .line 2529
    .local v8, "label":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_12
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_15

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/messenger/MessagesController$PrintingUser;

    .line 2530
    .restart local v12    # "pu":Lorg/telegram/messenger/MessagesController$PrintingUser;
    iget v0, v12, Lorg/telegram/messenger/MessagesController$PrintingUser;->userId:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v13

    .line 2531
    .restart local v13    # "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v13, :cond_14

    .line 2532
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v16

    if-eqz v16, :cond_13

    .line 2533
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ", "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2535
    :cond_13
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/telegram/messenger/MessagesController;->getUserNameForTyping(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2536
    add-int/lit8 v3, v3, 0x1

    .line 2538
    :cond_14
    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v3, v0, :cond_12

    .line 2542
    .end local v12    # "pu":Lorg/telegram/messenger/MessagesController$PrintingUser;
    .end local v13    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_15
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_0

    .line 2543
    const/4 v14, 0x1

    if-ne v3, v14, :cond_16

    .line 2544
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-string/jumbo v16, "%s %s"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v8, v17, v18

    const/16 v18, 0x1

    const-string/jumbo v19, "IsTyping"

    const v20, 0x7f07028d

    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2552
    :goto_9
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 2546
    :cond_16
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/16 v16, 0x2

    move/from16 v0, v16

    if-le v14, v0, :cond_17

    .line 2547
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-string/jumbo v16, "%s %s"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v8, v17, v18

    const/16 v18, 0x1

    const-string/jumbo v19, "AndMoreTyping"

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v20

    add-int/lit8 v20, v20, -0x2

    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 2549
    :cond_17
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-string/jumbo v16, "%s %s"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v8, v17, v18

    const/16 v18, 0x1

    const-string/jumbo v19, "AreTyping"

    const v20, 0x7f070081

    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 2557
    .end local v2    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;"
    .end local v3    # "count":I
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;>;"
    .end local v6    # "key":J
    .end local v8    # "label":Ljava/lang/String;
    .end local v9    # "lower_id":I
    :cond_18
    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lorg/telegram/messenger/MessagesController;->lastPrintingStringCount:I

    .line 2559
    new-instance v14, Lorg/telegram/messenger/MessagesController$48;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v10, v11}, Lorg/telegram/messenger/MessagesController$48;-><init>(Lorg/telegram/messenger/MessagesController;Ljava/util/HashMap;Ljava/util/HashMap;)V

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1
.end method

.method private updatePrintingUsersWithNewMessages(JLjava/util/ArrayList;)Z
    .locals 11
    .param p1, "uid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p3, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    const-wide/16 v8, 0x0

    const/4 v6, 0x1

    .line 7749
    cmp-long v7, p1, v8

    if-lez v7, :cond_1

    .line 7750
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 7751
    .local v1, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;"
    if-eqz v1, :cond_7

    .line 7752
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7782
    .end local v1    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;"
    :cond_0
    :goto_0
    return v6

    .line 7755
    :cond_1
    cmp-long v7, p1, v8

    if-gez v7, :cond_7

    .line 7756
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 7757
    .local v4, "messagesUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    .line 7758
    .local v3, "message":Lorg/telegram/messenger/MessageObject;
    iget-object v8, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 7759
    iget-object v8, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 7763
    .end local v3    # "message":Lorg/telegram/messenger/MessageObject;
    :cond_3
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 7764
    .restart local v1    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;"
    const/4 v2, 0x0

    .line 7765
    .local v2, "changed":Z
    if-eqz v1, :cond_6

    .line 7766
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_6

    .line 7767
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessagesController$PrintingUser;

    .line 7768
    .local v5, "user":Lorg/telegram/messenger/MessagesController$PrintingUser;
    iget v7, v5, Lorg/telegram/messenger/MessagesController$PrintingUser;->userId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 7769
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 7770
    add-int/lit8 v0, v0, -0x1

    .line 7771
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 7772
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7774
    :cond_4
    const/4 v2, 0x1

    .line 7766
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 7778
    .end local v0    # "a":I
    .end local v5    # "user":Lorg/telegram/messenger/MessagesController$PrintingUser;
    :cond_6
    if-nez v2, :cond_0

    .line 7782
    .end local v1    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;"
    .end local v2    # "changed":Z
    .end local v4    # "messagesUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_7
    const/4 v6, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addSupportUser()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 431
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;-><init>()V

    .line 432
    .local v0, "user":Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;
    const-string/jumbo v1, "333"

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;->phone:Ljava/lang/String;

    .line 433
    const v1, 0x514c8

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;->id:I

    .line 434
    const-string/jumbo v1, "Telegram"

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;->first_name:Ljava/lang/String;

    .line 435
    const-string/jumbo v1, ""

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;->last_name:Ljava/lang/String;

    .line 436
    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    .line 437
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_userProfilePhotoEmpty;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_userProfilePhotoEmpty;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    .line 438
    invoke-virtual {p0, v0, v2}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 440
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;

    .end local v0    # "user":Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;-><init>()V

    .line 441
    .restart local v0    # "user":Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;
    const-string/jumbo v1, "42777"

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;->phone:Ljava/lang/String;

    .line 442
    const v1, 0xbdb28

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;->id:I

    .line 443
    const-string/jumbo v1, "Telegram"

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;->first_name:Ljava/lang/String;

    .line 444
    const-string/jumbo v1, "Notifications"

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;->last_name:Ljava/lang/String;

    .line 445
    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    .line 446
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_userProfilePhotoEmpty;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_userProfilePhotoEmpty;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    .line 447
    invoke-virtual {p0, v0, v2}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 448
    return-void
.end method

.method public addToViewsQueue(Lorg/telegram/tgnet/TLRPC$Message;Z)V
    .locals 6
    .param p1, "message"    # Lorg/telegram/tgnet/TLRPC$Message;
    .param p2, "reload"    # Z

    .prologue
    .line 3798
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3799
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    int-to-long v2, v1

    .line 3800
    .local v2, "messageId":J
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v1, :cond_0

    .line 3801
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    int-to-long v4, v1

    const/16 v1, 0x20

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    .line 3803
    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3804
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MessagesStorage;->markMessagesContentAsRead(Ljava/util/ArrayList;)V

    .line 3805
    sget-object v1, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v4, Lorg/telegram/messenger/MessagesController$60;

    invoke-direct {v4, p0, p1}, Lorg/telegram/messenger/MessagesController$60;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$Message;)V

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 3827
    return-void
.end method

.method public addUserToChat(ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$ChatFull;ILjava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 16
    .param p1, "chat_id"    # I
    .param p2, "user"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p3, "info"    # Lorg/telegram/tgnet/TLRPC$ChatFull;
    .param p4, "count_fwd"    # I
    .param p5, "botHash"    # Ljava/lang/String;
    .param p6, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;

    .prologue
    .line 4357
    if-nez p2, :cond_1

    .line 4484
    :cond_0
    :goto_0
    return-void

    .line 4361
    :cond_1
    if-lez p1, :cond_9

    .line 4364
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/ChatObject;->isChannel(I)Z

    move-result v4

    .line 4365
    .local v4, "isChannel":Z
    if-eqz v4, :cond_3

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v2, :cond_3

    const/4 v9, 0x1

    .line 4366
    .local v9, "isMegagroup":Z
    :goto_1
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v5

    .line 4367
    .local v5, "inputUser":Lorg/telegram/tgnet/TLRPC$InputUser;
    if-eqz p5, :cond_2

    if-eqz v4, :cond_7

    if-nez v9, :cond_7

    .line 4368
    :cond_2
    if-eqz v4, :cond_6

    .line 4369
    instance-of v2, v5, Lorg/telegram/tgnet/TLRPC$TL_inputUserSelf;

    if-eqz v2, :cond_4

    .line 4370
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController;->joiningToChannels:Ljava/util/ArrayList;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4373
    new-instance v14, Lorg/telegram/tgnet/TLRPC$TL_channels_joinChannel;

    invoke-direct {v14}, Lorg/telegram/tgnet/TLRPC$TL_channels_joinChannel;-><init>()V

    .line 4374
    .local v14, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_joinChannel;
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v2

    iput-object v2, v14, Lorg/telegram/tgnet/TLRPC$TL_channels_joinChannel;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 4375
    move-object v8, v14

    .line 4376
    .local v8, "request":Lorg/telegram/tgnet/TLObject;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController;->joiningToChannels:Ljava/util/ArrayList;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4412
    .end local v14    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_joinChannel;
    :goto_2
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v15

    new-instance v2, Lorg/telegram/messenger/MessagesController$78;

    move-object/from16 v3, p0

    move/from16 v6, p1

    move-object/from16 v7, p6

    invoke-direct/range {v2 .. v9}, Lorg/telegram/messenger/MessagesController$78;-><init>(Lorg/telegram/messenger/MessagesController;ZLorg/telegram/tgnet/TLRPC$InputUser;ILorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;Z)V

    invoke-virtual {v15, v8, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0

    .line 4365
    .end local v5    # "inputUser":Lorg/telegram/tgnet/TLRPC$InputUser;
    .end local v8    # "request":Lorg/telegram/tgnet/TLObject;
    .end local v9    # "isMegagroup":Z
    :cond_3
    const/4 v9, 0x0

    goto :goto_1

    .line 4378
    .restart local v5    # "inputUser":Lorg/telegram/tgnet/TLRPC$InputUser;
    .restart local v9    # "isMegagroup":Z
    :cond_4
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v2, :cond_5

    if-nez v9, :cond_5

    .line 4379
    new-instance v14, Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;

    invoke-direct {v14}, Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;-><init>()V

    .line 4380
    .local v14, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v2

    iput-object v2, v14, Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 4381
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v2

    iput-object v2, v14, Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 4382
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_channelRoleEditor;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_channelRoleEditor;-><init>()V

    iput-object v2, v14, Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;->role:Lorg/telegram/tgnet/TLRPC$ChannelParticipantRole;

    .line 4383
    move-object v8, v14

    .line 4384
    .restart local v8    # "request":Lorg/telegram/tgnet/TLObject;
    goto :goto_2

    .line 4385
    .end local v8    # "request":Lorg/telegram/tgnet/TLObject;
    .end local v14    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;
    :cond_5
    new-instance v14, Lorg/telegram/tgnet/TLRPC$TL_channels_inviteToChannel;

    invoke-direct {v14}, Lorg/telegram/tgnet/TLRPC$TL_channels_inviteToChannel;-><init>()V

    .line 4386
    .local v14, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_inviteToChannel;
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v2

    iput-object v2, v14, Lorg/telegram/tgnet/TLRPC$TL_channels_inviteToChannel;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 4387
    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$TL_channels_inviteToChannel;->users:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4388
    move-object v8, v14

    .line 4389
    .restart local v8    # "request":Lorg/telegram/tgnet/TLObject;
    goto :goto_2

    .line 4392
    .end local v8    # "request":Lorg/telegram/tgnet/TLObject;
    .end local v14    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_inviteToChannel;
    :cond_6
    new-instance v14, Lorg/telegram/tgnet/TLRPC$TL_messages_addChatUser;

    invoke-direct {v14}, Lorg/telegram/tgnet/TLRPC$TL_messages_addChatUser;-><init>()V

    .line 4393
    .local v14, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_addChatUser;
    move/from16 v0, p1

    iput v0, v14, Lorg/telegram/tgnet/TLRPC$TL_messages_addChatUser;->chat_id:I

    .line 4394
    move/from16 v0, p4

    iput v0, v14, Lorg/telegram/tgnet/TLRPC$TL_messages_addChatUser;->fwd_limit:I

    .line 4395
    iput-object v5, v14, Lorg/telegram/tgnet/TLRPC$TL_messages_addChatUser;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 4396
    move-object v8, v14

    .line 4397
    .restart local v8    # "request":Lorg/telegram/tgnet/TLObject;
    goto :goto_2

    .line 4399
    .end local v8    # "request":Lorg/telegram/tgnet/TLObject;
    .end local v14    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_addChatUser;
    :cond_7
    new-instance v14, Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;

    invoke-direct {v14}, Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;-><init>()V

    .line 4400
    .local v14, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;
    iput-object v5, v14, Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 4401
    if-eqz v4, :cond_8

    .line 4402
    move/from16 v0, p1

    neg-int v2, v0

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    iput-object v2, v14, Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 4407
    :goto_3
    move-object/from16 v0, p5

    iput-object v0, v14, Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;->start_param:Ljava/lang/String;

    .line 4408
    sget-object v2, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v2

    iput-wide v2, v14, Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;->random_id:J

    .line 4409
    move-object v8, v14

    .restart local v8    # "request":Lorg/telegram/tgnet/TLObject;
    goto :goto_2

    .line 4404
    .end local v8    # "request":Lorg/telegram/tgnet/TLObject;
    :cond_8
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChat;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChat;-><init>()V

    iput-object v2, v14, Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 4405
    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    move/from16 v0, p1

    iput v0, v2, Lorg/telegram/tgnet/TLRPC$InputPeer;->chat_id:I

    goto :goto_3

    .line 4461
    .end local v4    # "isChannel":Z
    .end local v5    # "inputUser":Lorg/telegram/tgnet/TLRPC$InputUser;
    .end local v9    # "isMegagroup":Z
    .end local v14    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;
    :cond_9
    move-object/from16 v0, p3

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_chatFull;

    if-eqz v2, :cond_0

    .line 4462
    const/4 v10, 0x0

    .local v10, "a":I
    :goto_4
    move-object/from16 v0, p3

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v10, v2, :cond_a

    .line 4463
    move-object/from16 v0, p3

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    move-object/from16 v0, p2

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    if-eq v2, v3, :cond_0

    .line 4462
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 4468
    :cond_a
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v11

    .line 4469
    .local v11, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    iget v2, v11, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v11, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    .line 4470
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 4471
    .local v12, "chatArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Chat;>;"
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4472
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual {v2, v3, v12, v6, v7}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 4474
    new-instance v13, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;

    invoke-direct {v13}, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;-><init>()V

    .line 4475
    .local v13, "newPart":Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;
    move-object/from16 v0, p2

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    iput v2, v13, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;->user_id:I

    .line 4476
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v2

    iput v2, v13, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;->inviter_id:I

    .line 4477
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v2

    iput v2, v13, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;->date:I

    .line 4478
    move-object/from16 v0, p3

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4479
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/MessagesStorage;->updateChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;Z)V

    .line 4480
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoaded:I

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p3, v6, v7

    const/4 v7, 0x1

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v6, v7

    const/4 v7, 0x2

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    aput-object v15, v6, v7

    const/4 v7, 0x3

    const/4 v15, 0x0

    aput-object v15, v6, v7

    invoke-virtual {v2, v3, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 4481
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/16 v15, 0x20

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v6, v7

    invoke-virtual {v2, v3, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public addUsersToChannel(ILjava/util/ArrayList;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 3
    .param p1, "chat_id"    # I
    .param p3, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$InputUser;",
            ">;",
            "Lorg/telegram/ui/ActionBar/BaseFragment;",
            ")V"
        }
    .end annotation

    .prologue
    .line 4198
    .local p2, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputUser;>;"
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4219
    :cond_0
    :goto_0
    return-void

    .line 4201
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_inviteToChannel;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_inviteToChannel;-><init>()V

    .line 4202
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_inviteToChannel;
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_inviteToChannel;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 4203
    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_inviteToChannel;->users:Ljava/util/ArrayList;

    .line 4204
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$70;

    invoke-direct {v2, p0, p3, v0}, Lorg/telegram/messenger/MessagesController$70;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$TL_channels_inviteToChannel;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0
.end method

.method public blockUser(I)V
    .locals 5
    .param p1, "user_id"    # I

    .prologue
    .line 1696
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    .line 1697
    .local v1, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController;->blockedUsers:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1719
    :cond_0
    :goto_0
    return-void

    .line 1700
    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/MessagesController;->blockedUsers:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1701
    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v2, :cond_2

    .line 1702
    invoke-static {p1}, Lorg/telegram/messenger/query/SearchQuery;->removeInline(I)V

    .line 1706
    :goto_1
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->blockedUsersDidLoaded:I

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1707
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_block;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contacts_block;-><init>()V

    .line 1708
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_contacts_block;
    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_block;->id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 1709
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/MessagesController$25;

    invoke-direct {v3, p0, v1}, Lorg/telegram/messenger/MessagesController$25;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {v2, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0

    .line 1704
    .end local v0    # "req":Lorg/telegram/tgnet/TLRPC$TL_contacts_block;
    :cond_2
    invoke-static {p1}, Lorg/telegram/messenger/query/SearchQuery;->removePeer(I)V

    goto :goto_1
.end method

.method public canPinDialog(Z)Z
    .locals 6
    .param p1, "secret"    # Z

    .prologue
    .line 5573
    const/4 v1, 0x0

    .line 5574
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v4, p0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 5575
    iget-object v4, p0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 5576
    .local v2, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    long-to-int v3, v4

    .line 5577
    .local v3, "lower_id":I
    if-eqz p1, :cond_0

    if-nez v3, :cond_1

    :cond_0
    if-nez p1, :cond_2

    if-nez v3, :cond_2

    .line 5574
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5580
    :cond_2
    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    if-eqz v4, :cond_1

    .line 5581
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5584
    .end local v2    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v3    # "lower_id":I
    :cond_3
    iget v4, p0, Lorg/telegram/messenger/MessagesController;->maxPinnedDialogsCount:I

    if-ge v1, v4, :cond_4

    const/4 v4, 0x1

    :goto_2
    return v4

    :cond_4
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public cancelLoadFullChat(I)V
    .locals 2
    .param p1, "cid"    # I

    .prologue
    .line 962
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadingFullChats:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 963
    return-void
.end method

.method public cancelLoadFullUser(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 958
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadingFullUsers:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 959
    return-void
.end method

.method public cancelTyping(IJ)V
    .locals 4
    .param p1, "action"    # I
    .param p2, "dialog_id"    # J

    .prologue
    .line 2572
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->sendingTypings:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 2573
    .local v0, "typings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    if-eqz v0, :cond_0

    .line 2574
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2576
    :cond_0
    return-void
.end method

.method public changeChatAvatar(ILorg/telegram/tgnet/TLRPC$InputFile;)V
    .locals 5
    .param p1, "chat_id"    # I
    .param p2, "uploadedAvatar"    # Lorg/telegram/tgnet/TLRPC$InputFile;

    .prologue
    .line 4607
    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->isChannel(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4608
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editPhoto;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_editPhoto;-><init>()V

    .line 4609
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_editPhoto;
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editPhoto;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 4610
    if-eqz p2, :cond_0

    .line 4611
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputChatUploadedPhoto;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputChatUploadedPhoto;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editPhoto;->photo:Lorg/telegram/tgnet/TLRPC$InputChatPhoto;

    .line 4612
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editPhoto;->photo:Lorg/telegram/tgnet/TLRPC$InputChatPhoto;

    iput-object p2, v2, Lorg/telegram/tgnet/TLRPC$InputChatPhoto;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 4616
    :goto_0
    move-object v1, v0

    .line 4628
    .end local v0    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_editPhoto;
    .local v1, "request":Lorg/telegram/tgnet/TLObject;
    :goto_1
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/MessagesController$81;

    invoke-direct {v3, p0}, Lorg/telegram/messenger/MessagesController$81;-><init>(Lorg/telegram/messenger/MessagesController;)V

    const/16 v4, 0x40

    invoke-virtual {v2, v1, v3, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    .line 4637
    return-void

    .line 4614
    .end local v1    # "request":Lorg/telegram/tgnet/TLObject;
    .restart local v0    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_editPhoto;
    :cond_0
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputChatPhotoEmpty;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputChatPhotoEmpty;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editPhoto;->photo:Lorg/telegram/tgnet/TLRPC$InputChatPhoto;

    goto :goto_0

    .line 4618
    .end local v0    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_editPhoto;
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editChatPhoto;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_editChatPhoto;-><init>()V

    .line 4619
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_editChatPhoto;
    iput p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editChatPhoto;->chat_id:I

    .line 4620
    if-eqz p2, :cond_2

    .line 4621
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputChatUploadedPhoto;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputChatUploadedPhoto;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editChatPhoto;->photo:Lorg/telegram/tgnet/TLRPC$InputChatPhoto;

    .line 4622
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editChatPhoto;->photo:Lorg/telegram/tgnet/TLRPC$InputChatPhoto;

    iput-object p2, v2, Lorg/telegram/tgnet/TLRPC$InputChatPhoto;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 4626
    :goto_2
    move-object v1, v0

    .restart local v1    # "request":Lorg/telegram/tgnet/TLObject;
    goto :goto_1

    .line 4624
    .end local v1    # "request":Lorg/telegram/tgnet/TLObject;
    :cond_2
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputChatPhotoEmpty;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputChatPhotoEmpty;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editChatPhoto;->photo:Lorg/telegram/tgnet/TLRPC$InputChatPhoto;

    goto :goto_2
.end method

.method public changeChatTitle(ILjava/lang/String;)V
    .locals 9
    .param p1, "chat_id"    # I
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 4572
    if-lez p1, :cond_1

    .line 4574
    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->isChannel(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4575
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_channels_editTitle;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_channels_editTitle;-><init>()V

    .line 4576
    .local v2, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_editTitle;
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v4

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_channels_editTitle;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 4577
    iput-object p2, v2, Lorg/telegram/tgnet/TLRPC$TL_channels_editTitle;->title:Ljava/lang/String;

    .line 4578
    move-object v3, v2

    .line 4585
    .end local v2    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_editTitle;
    .local v3, "request":Lorg/telegram/tgnet/TLObject;
    :goto_0
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    new-instance v5, Lorg/telegram/messenger/MessagesController$80;

    invoke-direct {v5, p0}, Lorg/telegram/messenger/MessagesController$80;-><init>(Lorg/telegram/messenger/MessagesController;)V

    const/16 v6, 0x40

    invoke-virtual {v4, v3, v5, v6}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    .line 4603
    .end local v3    # "request":Lorg/telegram/tgnet/TLObject;
    :goto_1
    return-void

    .line 4580
    :cond_0
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messages_editChatTitle;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messages_editChatTitle;-><init>()V

    .line 4581
    .local v2, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_editChatTitle;
    iput p1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_editChatTitle;->chat_id:I

    .line 4582
    iput-object p2, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_editChatTitle;->title:Ljava/lang/String;

    .line 4583
    move-object v3, v2

    .restart local v3    # "request":Lorg/telegram/tgnet/TLObject;
    goto :goto_0

    .line 4595
    .end local v2    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_editChatTitle;
    .end local v3    # "request":Lorg/telegram/tgnet/TLObject;
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 4596
    .local v0, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 4597
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4598
    .local v1, "chatArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Chat;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4599
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v1, v7, v7}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 4600
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 4601
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    new-array v6, v7, [Ljava/lang/Object;

    const/16 v7, 0x10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public checkChannelInviter(I)V
    .locals 1
    .param p1, "chat_id"    # I

    .prologue
    .line 5911
    new-instance v0, Lorg/telegram/messenger/MessagesController$99;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/MessagesController$99;-><init>(Lorg/telegram/messenger/MessagesController;I)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 5993
    return-void
.end method

.method protected checkLastDialogMessage(Lorg/telegram/tgnet/TLRPC$TL_dialog;Lorg/telegram/tgnet/TLRPC$InputPeer;J)V
    .locals 11
    .param p1, "dialog"    # Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .param p2, "peer"    # Lorg/telegram/tgnet/TLRPC$InputPeer;
    .param p3, "taskId"    # J

    .prologue
    const/4 v10, 0x1

    .line 3553
    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    long-to-int v6, v2

    .line 3554
    .local v6, "lower_id":I
    if-eqz v6, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->checkingLastMessagesDialogs:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3640
    :cond_0
    :goto_0
    return-void

    .line 3557
    :cond_1
    new-instance v9, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;

    invoke-direct {v9}, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;-><init>()V

    .line 3558
    .local v9, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;
    if-nez p2, :cond_2

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    :goto_1
    iput-object v1, v9, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 3559
    iget-object v1, v9, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-eqz v1, :cond_0

    .line 3562
    iput v10, v9, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;->limit:I

    .line 3563
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->checkingLastMessagesDialogs:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3566
    const-wide/16 v2, 0x0

    cmp-long v1, p3, v2

    if-nez v1, :cond_3

    .line 3567
    const/4 v0, 0x0

    .line 3569
    .local v0, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :try_start_0
    new-instance v7, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {p2}, Lorg/telegram/tgnet/TLRPC$InputPeer;->getObjectSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x30

    invoke-direct {v7, v1}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3570
    .end local v0    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .local v7, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    const/4 v1, 0x5

    :try_start_1
    invoke-virtual {v7, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    .line 3571
    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-virtual {v7, v2, v3}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt64(J)V

    .line 3572
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    invoke-virtual {v7, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    .line 3573
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_inbox_max_id:I

    invoke-virtual {v7, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    .line 3574
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_outbox_max_id:I

    invoke-virtual {v7, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    .line 3575
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    invoke-virtual {v7, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    .line 3576
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    invoke-virtual {v7, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    .line 3577
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pts:I

    invoke-virtual {v7, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    .line 3578
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->flags:I

    invoke-virtual {v7, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    .line 3579
    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    invoke-virtual {v7, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->writeBool(Z)V

    .line 3580
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    invoke-virtual {v7, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    .line 3581
    invoke-virtual {p2, v7}, Lorg/telegram/tgnet/TLRPC$InputPeer;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v7

    .line 3585
    .end local v7    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v0    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :goto_2
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MessagesStorage;->createPendingTask(Lorg/telegram/tgnet/NativeByteBuffer;)J

    move-result-wide v4

    .line 3590
    .end local v0    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .local v4, "newTaskId":J
    :goto_3
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v10

    new-instance v1, Lorg/telegram/messenger/MessagesController$58;

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/MessagesController$58;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$TL_dialog;JI)V

    invoke-virtual {v10, v9, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_0

    .end local v4    # "newTaskId":J
    :cond_2
    move-object v1, p2

    .line 3558
    goto :goto_1

    .line 3582
    .restart local v0    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :catch_0
    move-exception v8

    .line 3583
    .local v8, "e":Ljava/lang/Exception;
    :goto_4
    invoke-static {v8}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 3587
    .end local v0    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_3
    move-wide v4, p3

    .restart local v4    # "newTaskId":J
    goto :goto_3

    .line 3582
    .end local v4    # "newTaskId":J
    .restart local v7    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :catch_1
    move-exception v8

    move-object v0, v7

    .end local v7    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v0    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    goto :goto_4
.end method

.method public cleanup()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 612
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ContactsController;->cleanup()V

    .line 613
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->cleanup()V

    .line 614
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/NotificationsController;->cleanup()V

    .line 615
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/SendMessagesHelper;->cleanup()V

    .line 616
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/SecretChatHelper;->cleanup()V

    .line 617
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->cleanup()V

    .line 618
    invoke-static {}, Lorg/telegram/messenger/query/SearchQuery;->cleanup()V

    .line 619
    invoke-static {}, Lorg/telegram/messenger/query/DraftQuery;->cleanup()V

    .line 620
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogsUsers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 621
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogsGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 622
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogsGroupsAll:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 623
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogsChannels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 624
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogsMegaGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 625
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogsBots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 626
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogsFavs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 627
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->reloadingWebpages:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 628
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->reloadingWebpagesPending:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 629
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 630
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 631
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 632
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->exportedChats:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 633
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->fullUsers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 634
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 635
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->joiningToChannels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 636
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->channelViewsToSend:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 637
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->channelViewsToReload:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 638
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogsServerOnly:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 639
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogsGroupsOnly:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 640
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 641
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByRandomIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 642
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->users:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 643
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->usersByUsernames:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 644
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->chats:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 645
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 646
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 647
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->printingStrings:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 648
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->printingStringsTypes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 649
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->onlinePrivacy:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 650
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadingPeerSettings:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 651
    iput v2, p0, Lorg/telegram/messenger/MessagesController;->lastPrintingStringCount:I

    .line 652
    iput v2, p0, Lorg/telegram/messenger/MessagesController;->nextDialogsCacheOffset:I

    .line 653
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesController$5;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MessagesController$5;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 667
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->blockedUsers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 668
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->sendingTypings:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 669
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadingFullUsers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 670
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadedFullUsers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 671
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->reloadingMessages:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 672
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadingFullChats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 673
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadingFullParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 674
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadedFullParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 675
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadedFullChats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 677
    iput v2, p0, Lorg/telegram/messenger/MessagesController;->currentDeletingTaskTime:I

    .line 678
    iput-object v3, p0, Lorg/telegram/messenger/MessagesController;->currentDeletingTaskMids:Ljava/util/ArrayList;

    .line 679
    iput-boolean v2, p0, Lorg/telegram/messenger/MessagesController;->gettingNewDeleteTask:Z

    .line 680
    iput-boolean v2, p0, Lorg/telegram/messenger/MessagesController;->loadingDialogs:Z

    .line 681
    iput-boolean v2, p0, Lorg/telegram/messenger/MessagesController;->dialogsEndReached:Z

    .line 682
    iput-boolean v2, p0, Lorg/telegram/messenger/MessagesController;->serverDialogsEndReached:Z

    .line 683
    iput-boolean v2, p0, Lorg/telegram/messenger/MessagesController;->loadingBlockedUsers:Z

    .line 684
    iput-boolean v2, p0, Lorg/telegram/messenger/MessagesController;->firstGettingTask:Z

    .line 685
    iput-boolean v2, p0, Lorg/telegram/messenger/MessagesController;->updatingState:Z

    .line 686
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/messenger/MessagesController;->lastStatusUpdateTime:J

    .line 687
    iput-boolean v2, p0, Lorg/telegram/messenger/MessagesController;->offlineSent:Z

    .line 688
    iput-boolean v2, p0, Lorg/telegram/messenger/MessagesController;->registeringForPush:Z

    .line 689
    iput-object v3, p0, Lorg/telegram/messenger/MessagesController;->uploadingAvatar:Ljava/lang/String;

    .line 690
    iput v2, p0, Lorg/telegram/messenger/MessagesController;->statusRequest:I

    .line 691
    iput v2, p0, Lorg/telegram/messenger/MessagesController;->statusSettingState:I

    .line 693
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesController$6;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MessagesController$6;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 706
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->currentDeleteTaskRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 707
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->currentDeleteTaskRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    .line 708
    iput-object v3, p0, Lorg/telegram/messenger/MessagesController;->currentDeleteTaskRunnable:Ljava/lang/Runnable;

    .line 711
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesController;->addSupportUser()V

    .line 712
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 713
    return-void
.end method

.method protected clearFullUsers()V
    .locals 1

    .prologue
    .line 966
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadedFullUsers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 967
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadedFullChats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 968
    return-void
.end method

.method public convertGroup()V
    .locals 0

    .prologue
    .line 5908
    return-void
.end method

.method public convertToMegaGroup(Landroid/content/Context;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "chat_id"    # I

    .prologue
    const/4 v5, 0x0

    .line 4134
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messages_migrateChat;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messages_migrateChat;-><init>()V

    .line 4135
    .local v1, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_migrateChat;
    iput p2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_migrateChat;->chat_id:I

    .line 4136
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v3, 0x1

    invoke-direct {v0, p1, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 4137
    .local v0, "progressDialog":Lorg/telegram/ui/ActionBar/AlertDialog;
    const-string/jumbo v3, "Loading"

    const v4, 0x7f0702cc

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 4138
    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 4139
    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCancelable(Z)V

    .line 4140
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/MessagesController$68;

    invoke-direct {v4, p0, p1, v0}, Lorg/telegram/messenger/MessagesController$68;-><init>(Lorg/telegram/messenger/MessagesController;Landroid/content/Context;Lorg/telegram/ui/ActionBar/AlertDialog;)V

    invoke-virtual {v3, v1, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v2

    .line 4179
    .local v2, "reqId":I
    const/4 v3, -0x2

    const-string/jumbo v4, "Cancel"

    const v5, 0x7f0700de

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/telegram/messenger/MessagesController$69;

    invoke-direct {v5, p0, v2}, Lorg/telegram/messenger/MessagesController$69;-><init>(Lorg/telegram/messenger/MessagesController;I)V

    invoke-virtual {v0, v3, v4, v5}, Lorg/telegram/ui/ActionBar/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 4191
    :try_start_0
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4195
    :goto_0
    return-void

    .line 4192
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public createChat(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;ILorg/telegram/ui/ActionBar/BaseFragment;)I
    .locals 20
    .param p1, "title"    # Ljava/lang/String;
    .param p3, "about"    # Ljava/lang/String;
    .param p4, "type"    # I
    .param p5, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Lorg/telegram/ui/ActionBar/BaseFragment;",
            ")I"
        }
    .end annotation

    .prologue
    .line 3996
    .local p2, "selectedContacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v4, 0x1

    move/from16 v0, p4

    if-ne v0, v4, :cond_1

    .line 3997
    new-instance v11, Lorg/telegram/tgnet/TLRPC$TL_chat;

    invoke-direct {v11}, Lorg/telegram/tgnet/TLRPC$TL_chat;-><init>()V

    .line 3998
    .local v11, "chat":Lorg/telegram/tgnet/TLRPC$TL_chat;
    sget v4, Lorg/telegram/messenger/UserConfig;->lastBroadcastId:I

    iput v4, v11, Lorg/telegram/tgnet/TLRPC$TL_chat;->id:I

    .line 3999
    move-object/from16 v0, p1

    iput-object v0, v11, Lorg/telegram/tgnet/TLRPC$TL_chat;->title:Ljava/lang/String;

    .line 4000
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_chatPhotoEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_chatPhotoEmpty;-><init>()V

    iput-object v4, v11, Lorg/telegram/tgnet/TLRPC$TL_chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    .line 4001
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    iput v4, v11, Lorg/telegram/tgnet/TLRPC$TL_chat;->participants_count:I

    .line 4002
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v4, v6

    iput v4, v11, Lorg/telegram/tgnet/TLRPC$TL_chat;->date:I

    .line 4003
    const/4 v4, 0x1

    iput v4, v11, Lorg/telegram/tgnet/TLRPC$TL_chat;->version:I

    .line 4004
    sget v4, Lorg/telegram/messenger/UserConfig;->lastBroadcastId:I

    add-int/lit8 v4, v4, -0x1

    sput v4, Lorg/telegram/messenger/UserConfig;->lastBroadcastId:I

    .line 4005
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v4}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    .line 4006
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 4007
    .local v13, "chatsArrays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Chat;>;"
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4008
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual {v4, v6, v13, v7, v8}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 4010
    new-instance v12, Lorg/telegram/tgnet/TLRPC$TL_chatFull;

    invoke-direct {v12}, Lorg/telegram/tgnet/TLRPC$TL_chatFull;-><init>()V

    .line 4011
    .local v12, "chatFull":Lorg/telegram/tgnet/TLRPC$TL_chatFull;
    iget v4, v11, Lorg/telegram/tgnet/TLRPC$TL_chat;->id:I

    iput v4, v12, Lorg/telegram/tgnet/TLRPC$TL_chatFull;->id:I

    .line 4012
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_photoEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_photoEmpty;-><init>()V

    iput-object v4, v12, Lorg/telegram/tgnet/TLRPC$TL_chatFull;->chat_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 4013
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettingsEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettingsEmpty;-><init>()V

    iput-object v4, v12, Lorg/telegram/tgnet/TLRPC$TL_chatFull;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    .line 4014
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_chatInviteEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_chatInviteEmpty;-><init>()V

    iput-object v4, v12, Lorg/telegram/tgnet/TLRPC$TL_chatFull;->exported_invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    .line 4015
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_chatParticipants;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_chatParticipants;-><init>()V

    iput-object v4, v12, Lorg/telegram/tgnet/TLRPC$TL_chatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    .line 4016
    iget-object v4, v12, Lorg/telegram/tgnet/TLRPC$TL_chatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget v6, v11, Lorg/telegram/tgnet/TLRPC$TL_chat;->id:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->chat_id:I

    .line 4017
    iget-object v4, v12, Lorg/telegram/tgnet/TLRPC$TL_chatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v6

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->admin_id:I

    .line 4018
    iget-object v4, v12, Lorg/telegram/tgnet/TLRPC$TL_chatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    const/4 v6, 0x1

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->version:I

    .line 4019
    const/4 v10, 0x0

    .local v10, "a":I
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v10, v4, :cond_0

    .line 4020
    new-instance v17, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;

    invoke-direct/range {v17 .. v17}, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;-><init>()V

    .line 4021
    .local v17, "participant":Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, v17

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;->user_id:I

    .line 4022
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v4

    move-object/from16 v0, v17

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;->inviter_id:I

    .line 4023
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v4, v6

    move-object/from16 v0, v17

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;->date:I

    .line 4024
    iget-object v4, v12, Lorg/telegram/tgnet/TLRPC$TL_chatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4019
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 4026
    .end local v17    # "participant":Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v12, v6}, Lorg/telegram/messenger/MessagesStorage;->updateChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;Z)V

    .line 4028
    new-instance v14, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    invoke-direct {v14}, Lorg/telegram/tgnet/TLRPC$TL_messageService;-><init>()V

    .line 4029
    .local v14, "newMsg":Lorg/telegram/tgnet/TLRPC$TL_messageService;
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageActionCreatedBroadcastList;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageActionCreatedBroadcastList;-><init>()V

    iput-object v4, v14, Lorg/telegram/tgnet/TLRPC$TL_messageService;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    .line 4030
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getNewMessageId()I

    move-result v4

    iput v4, v14, Lorg/telegram/tgnet/TLRPC$TL_messageService;->id:I

    iput v4, v14, Lorg/telegram/tgnet/TLRPC$TL_messageService;->local_id:I

    .line 4031
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v4

    iput v4, v14, Lorg/telegram/tgnet/TLRPC$TL_messageService;->from_id:I

    .line 4032
    iget v4, v11, Lorg/telegram/tgnet/TLRPC$TL_chat;->id:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->makeBroadcastId(I)J

    move-result-wide v6

    iput-wide v6, v14, Lorg/telegram/tgnet/TLRPC$TL_messageService;->dialog_id:J

    .line 4033
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_peerChat;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_peerChat;-><init>()V

    iput-object v4, v14, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 4034
    iget-object v4, v14, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v6, v11, Lorg/telegram/tgnet/TLRPC$TL_chat;->id:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    .line 4035
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v4

    iput v4, v14, Lorg/telegram/tgnet/TLRPC$TL_messageService;->date:I

    .line 4036
    const-wide/16 v6, 0x0

    iput-wide v6, v14, Lorg/telegram/tgnet/TLRPC$TL_messageService;->random_id:J

    .line 4037
    iget v4, v14, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    or-int/lit16 v4, v4, 0x100

    iput v4, v14, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    .line 4038
    const/4 v4, 0x0

    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 4039
    new-instance v15, Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->users:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v6, 0x1

    invoke-direct {v15, v14, v4, v6}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V

    .line 4040
    .local v15, "newMsgObj":Lorg/telegram/messenger/MessageObject;
    iget-object v4, v15, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v6, 0x0

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 4042
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 4043
    .local v16, "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4044
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 4045
    .local v5, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4046
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZI)V

    .line 4047
    iget-wide v6, v14, Lorg/telegram/tgnet/TLRPC$TL_messageService;->dialog_id:J

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v6, v7, v1}, Lorg/telegram/messenger/MessagesController;->updateInterfaceWithMessages(JLjava/util/ArrayList;)V

    .line 4048
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 4049
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/NotificationCenter;->chatDidCreated:I

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, v11, Lorg/telegram/tgnet/TLRPC$TL_chat;->id:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v4, v6, v7}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 4051
    const/4 v4, 0x0

    .line 4130
    .end local v5    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v10    # "a":I
    .end local v11    # "chat":Lorg/telegram/tgnet/TLRPC$TL_chat;
    .end local v12    # "chatFull":Lorg/telegram/tgnet/TLRPC$TL_chatFull;
    .end local v13    # "chatsArrays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Chat;>;"
    .end local v14    # "newMsg":Lorg/telegram/tgnet/TLRPC$TL_messageService;
    .end local v15    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .end local v16    # "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :goto_1
    return v4

    .line 4052
    :cond_1
    if-nez p4, :cond_4

    .line 4053
    new-instance v18, Lorg/telegram/tgnet/TLRPC$TL_messages_createChat;

    invoke-direct/range {v18 .. v18}, Lorg/telegram/tgnet/TLRPC$TL_messages_createChat;-><init>()V

    .line 4054
    .local v18, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_createChat;
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_createChat;->title:Ljava/lang/String;

    .line 4055
    const/4 v10, 0x0

    .restart local v10    # "a":I
    :goto_2
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v10, v4, :cond_3

    .line 4056
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v19

    .line 4057
    .local v19, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-nez v19, :cond_2

    .line 4055
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 4060
    :cond_2
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_createChat;->users:Ljava/util/ArrayList;

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 4062
    .end local v19    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_3
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    new-instance v6, Lorg/telegram/messenger/MessagesController$66;

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, v18

    invoke-direct {v6, v0, v1, v2}, Lorg/telegram/messenger/MessagesController$66;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$TL_messages_createChat;)V

    const/4 v7, 0x2

    move-object/from16 v0, v18

    invoke-virtual {v4, v0, v6, v7}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result v4

    goto :goto_1

    .line 4091
    .end local v10    # "a":I
    .end local v18    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_createChat;
    :cond_4
    const/4 v4, 0x2

    move/from16 v0, p4

    if-eq v0, v4, :cond_5

    const/4 v4, 0x4

    move/from16 v0, p4

    if-ne v0, v4, :cond_7

    .line 4092
    :cond_5
    new-instance v18, Lorg/telegram/tgnet/TLRPC$TL_channels_createChannel;

    invoke-direct/range {v18 .. v18}, Lorg/telegram/tgnet/TLRPC$TL_channels_createChannel;-><init>()V

    .line 4093
    .local v18, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_createChannel;
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_createChannel;->title:Ljava/lang/String;

    .line 4094
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_createChannel;->about:Ljava/lang/String;

    .line 4095
    const/4 v4, 0x4

    move/from16 v0, p4

    if-ne v0, v4, :cond_6

    .line 4096
    const/4 v4, 0x1

    move-object/from16 v0, v18

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_createChannel;->megagroup:Z

    .line 4100
    :goto_4
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    new-instance v6, Lorg/telegram/messenger/MessagesController$67;

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, v18

    invoke-direct {v6, v0, v1, v2}, Lorg/telegram/messenger/MessagesController$67;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$TL_channels_createChannel;)V

    const/4 v7, 0x2

    move-object/from16 v0, v18

    invoke-virtual {v4, v0, v6, v7}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result v4

    goto/16 :goto_1

    .line 4098
    :cond_6
    const/4 v4, 0x1

    move-object/from16 v0, v18

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_createChannel;->broadcast:Z

    goto :goto_4

    .line 4130
    .end local v18    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_createChannel;
    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_1
.end method

.method public deleteDialog(JI)V
    .locals 7
    .param p1, "did"    # J
    .param p3, "onlyHistory"    # I

    .prologue
    .line 2030
    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/MessagesController;->deleteDialog(JZII)V

    .line 2031
    return-void
.end method

.method public deleteMessages(Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$EncryptedChat;IZ)V
    .locals 9
    .param p3, "encryptedChat"    # Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .param p4, "channelId"    # I
    .param p5, "forAll"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lorg/telegram/tgnet/TLRPC$EncryptedChat;",
            "IZ)V"
        }
    .end annotation

    .prologue
    .line 1885
    .local p1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, "randoms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v8}, Lorg/telegram/messenger/MessagesController;->deleteMessages(Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$EncryptedChat;IZJLorg/telegram/tgnet/TLObject;)V

    .line 1886
    return-void
.end method

.method public deleteMessages(Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$EncryptedChat;IZJLorg/telegram/tgnet/TLObject;)V
    .locals 20
    .param p3, "encryptedChat"    # Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .param p4, "channelId"    # I
    .param p5, "forAll"    # Z
    .param p6, "taskId"    # J
    .param p8, "taskRequest"    # Lorg/telegram/tgnet/TLObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lorg/telegram/tgnet/TLRPC$EncryptedChat;",
            "IZJ",
            "Lorg/telegram/tgnet/TLObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1889
    .local p1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, "randoms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_1

    :cond_0
    if-nez p8, :cond_1

    .line 1990
    :goto_0
    return-void

    .line 1892
    :cond_1
    const/4 v14, 0x0

    .line 1893
    .local v14, "toSend":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-wide/16 v16, 0x0

    cmp-long v15, p6, v16

    if-nez v15, :cond_7

    .line 1894
    if-nez p4, :cond_3

    .line 1895
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v4, v15, :cond_4

    .line 1896
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 1897
    .local v8, "id":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    invoke-virtual {v15, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/messenger/MessageObject;

    .line 1898
    .local v12, "obj":Lorg/telegram/messenger/MessageObject;
    if-eqz v12, :cond_2

    .line 1899
    const/4 v15, 0x1

    iput-boolean v15, v12, Lorg/telegram/messenger/MessageObject;->deleted:Z

    .line 1895
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1903
    .end local v4    # "a":I
    .end local v8    # "id":Ljava/lang/Integer;
    .end local v12    # "obj":Lorg/telegram/messenger/MessageObject;
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->markChannelDialogMessageAsDeleted(Ljava/util/ArrayList;I)V

    .line 1905
    :cond_4
    new-instance v14, Ljava/util/ArrayList;

    .end local v14    # "toSend":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1906
    .restart local v14    # "toSend":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .restart local v4    # "a":I
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v4, v15, :cond_6

    .line 1907
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 1908
    .local v9, "mid":Ljava/lang/Integer;
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-lez v15, :cond_5

    .line 1909
    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1906
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1912
    .end local v9    # "mid":Ljava/lang/Integer;
    :cond_6
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v15

    const/16 v16, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, p4

    invoke-virtual {v15, v0, v1, v2}, Lorg/telegram/messenger/MessagesStorage;->markMessagesAsDeleted(Ljava/util/ArrayList;ZI)Ljava/util/ArrayList;

    .line 1913
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, p4

    invoke-virtual {v15, v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesStorage;->updateDialogsWithDeletedMessages(Ljava/util/ArrayList;Ljava/util/ArrayList;ZI)V

    .line 1914
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v15

    sget v16, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object p1, v17, v18

    const/16 v18, 0x1

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-virtual/range {v15 .. v17}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1918
    .end local v4    # "a":I
    :cond_7
    if-eqz p4, :cond_9

    .line 1920
    if-eqz p8, :cond_8

    move-object/from16 v13, p8

    .line 1921
    check-cast v13, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteMessages;

    .line 1922
    .local v13, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_deleteMessages;
    move-wide/from16 v10, p6

    .line 1940
    .local v10, "newTaskId":J
    :goto_3
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v15

    new-instance v16, Lorg/telegram/messenger/MessagesController$32;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move/from16 v2, p4

    invoke-direct {v0, v1, v2, v10, v11}, Lorg/telegram/messenger/MessagesController$32;-><init>(Lorg/telegram/messenger/MessagesController;IJ)V

    move-object/from16 v0, v16

    invoke-virtual {v15, v13, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_0

    .line 1924
    .end local v10    # "newTaskId":J
    .end local v13    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_deleteMessages;
    :cond_8
    new-instance v13, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteMessages;

    invoke-direct {v13}, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteMessages;-><init>()V

    .line 1925
    .restart local v13    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_deleteMessages;
    iput-object v14, v13, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteMessages;->id:Ljava/util/ArrayList;

    .line 1926
    invoke-static/range {p4 .. p4}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v15

    iput-object v15, v13, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteMessages;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 1928
    const/4 v5, 0x0

    .line 1930
    .local v5, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :try_start_0
    new-instance v6, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {v13}, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteMessages;->getObjectSize()I

    move-result v15

    add-int/lit8 v15, v15, 0x8

    invoke-direct {v6, v15}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1931
    .end local v5    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .local v6, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    const/4 v15, 0x7

    :try_start_1
    invoke-virtual {v6, v15}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    .line 1932
    move/from16 v0, p4

    invoke-virtual {v6, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    .line 1933
    invoke-virtual {v13, v6}, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteMessages;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-object v5, v6

    .line 1937
    .end local v6    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v5    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :goto_4
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v15

    invoke-virtual {v15, v5}, Lorg/telegram/messenger/MessagesStorage;->createPendingTask(Lorg/telegram/tgnet/NativeByteBuffer;)J

    move-result-wide v10

    .restart local v10    # "newTaskId":J
    goto :goto_3

    .line 1934
    .end local v10    # "newTaskId":J
    :catch_0
    move-exception v7

    .line 1935
    .local v7, "e":Ljava/lang/Exception;
    :goto_5
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 1953
    .end local v5    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v13    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_deleteMessages;
    :cond_9
    if-eqz p2, :cond_a

    if-eqz p3, :cond_a

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_a

    .line 1954
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    move-object/from16 v2, v16

    invoke-virtual {v15, v0, v1, v2}, Lorg/telegram/messenger/SecretChatHelper;->sendMessagesDeleteMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 1957
    :cond_a
    if-eqz p8, :cond_b

    move-object/from16 v13, p8

    .line 1958
    check-cast v13, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteMessages;

    .line 1959
    .local v13, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_deleteMessages;
    move-wide/from16 v10, p6

    .line 1977
    .restart local v10    # "newTaskId":J
    :goto_6
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v15

    new-instance v16, Lorg/telegram/messenger/MessagesController$33;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v10, v11}, Lorg/telegram/messenger/MessagesController$33;-><init>(Lorg/telegram/messenger/MessagesController;J)V

    move-object/from16 v0, v16

    invoke-virtual {v15, v13, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_0

    .line 1961
    .end local v10    # "newTaskId":J
    .end local v13    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_deleteMessages;
    :cond_b
    new-instance v13, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteMessages;

    invoke-direct {v13}, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteMessages;-><init>()V

    .line 1962
    .restart local v13    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_deleteMessages;
    iput-object v14, v13, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteMessages;->id:Ljava/util/ArrayList;

    .line 1963
    move/from16 v0, p5

    iput-boolean v0, v13, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteMessages;->revoke:Z

    .line 1965
    const/4 v5, 0x0

    .line 1967
    .restart local v5    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :try_start_2
    new-instance v6, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {v13}, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteMessages;->getObjectSize()I

    move-result v15

    add-int/lit8 v15, v15, 0x8

    invoke-direct {v6, v15}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1968
    .end local v5    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v6    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    const/4 v15, 0x7

    :try_start_3
    invoke-virtual {v6, v15}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    .line 1969
    move/from16 v0, p4

    invoke-virtual {v6, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    .line 1970
    invoke-virtual {v13, v6}, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteMessages;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object v5, v6

    .line 1974
    .end local v6    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v5    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :goto_7
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v15

    invoke-virtual {v15, v5}, Lorg/telegram/messenger/MessagesStorage;->createPendingTask(Lorg/telegram/tgnet/NativeByteBuffer;)J

    move-result-wide v10

    .restart local v10    # "newTaskId":J
    goto :goto_6

    .line 1971
    .end local v10    # "newTaskId":J
    :catch_1
    move-exception v7

    .line 1972
    .restart local v7    # "e":Ljava/lang/Exception;
    :goto_8
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_7

    .line 1971
    .end local v5    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v6    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :catch_2
    move-exception v7

    move-object v5, v6

    .end local v6    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v5    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    goto :goto_8

    .line 1934
    .end local v5    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v6    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .local v13, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_deleteMessages;
    :catch_3
    move-exception v7

    move-object v5, v6

    .end local v6    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v5    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    goto :goto_5
.end method

.method public deleteUserChannelHistory(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$User;I)V
    .locals 4
    .param p1, "chat"    # Lorg/telegram/tgnet/TLRPC$Chat;
    .param p2, "user"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p3, "offset"    # I

    .prologue
    .line 2009
    if-nez p3, :cond_0

    .line 2010
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    iget v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    iget v3, p2, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesStorage;->deleteUserChannelHistory(II)V

    .line 2012
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteUserHistory;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteUserHistory;-><init>()V

    .line 2013
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_deleteUserHistory;
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteUserHistory;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 2014
    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteUserHistory;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 2015
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$35;

    invoke-direct {v2, p0, p1, p2}, Lorg/telegram/messenger/MessagesController$35;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 2027
    return-void
.end method

.method public deleteUserFromChat(ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$ChatFull;)V
    .locals 15
    .param p1, "chat_id"    # I
    .param p2, "user"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p3, "info"    # Lorg/telegram/tgnet/TLRPC$ChatFull;

    .prologue
    .line 4487
    if-nez p2, :cond_1

    .line 4569
    :cond_0
    :goto_0
    return-void

    .line 4490
    :cond_1
    if-lez p1, :cond_5

    .line 4491
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v6

    .line 4493
    .local v6, "inputUser":Lorg/telegram/tgnet/TLRPC$InputUser;
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v9

    .line 4494
    .local v9, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v9}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    .line 4495
    .local v5, "isChannel":Z
    if-eqz v5, :cond_4

    .line 4496
    instance-of v1, v6, Lorg/telegram/tgnet/TLRPC$TL_inputUserSelf;

    if-eqz v1, :cond_3

    .line 4497
    iget-boolean v1, v9, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v1, :cond_2

    .line 4498
    new-instance v12, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteChannel;

    invoke-direct {v12}, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteChannel;-><init>()V

    .line 4499
    .local v12, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_deleteChannel;
    invoke-static {v9}, Lorg/telegram/messenger/MessagesController;->getInputChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v12, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteChannel;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 4500
    move-object v13, v12

    .line 4519
    .end local v12    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_deleteChannel;
    .local v13, "request":Lorg/telegram/tgnet/TLObject;
    :goto_1
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v14

    new-instance v1, Lorg/telegram/messenger/MessagesController$79;

    move-object v2, p0

    move-object/from16 v3, p2

    move/from16 v4, p1

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/MessagesController$79;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$User;IZLorg/telegram/tgnet/TLRPC$InputUser;)V

    const/16 v2, 0x40

    invoke-virtual {v14, v13, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto :goto_0

    .line 4502
    .end local v13    # "request":Lorg/telegram/tgnet/TLObject;
    :cond_2
    new-instance v12, Lorg/telegram/tgnet/TLRPC$TL_channels_leaveChannel;

    invoke-direct {v12}, Lorg/telegram/tgnet/TLRPC$TL_channels_leaveChannel;-><init>()V

    .line 4503
    .local v12, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_leaveChannel;
    invoke-static {v9}, Lorg/telegram/messenger/MessagesController;->getInputChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v12, Lorg/telegram/tgnet/TLRPC$TL_channels_leaveChannel;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 4504
    move-object v13, v12

    .line 4505
    .restart local v13    # "request":Lorg/telegram/tgnet/TLObject;
    goto :goto_1

    .line 4507
    .end local v12    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_leaveChannel;
    .end local v13    # "request":Lorg/telegram/tgnet/TLObject;
    :cond_3
    new-instance v12, Lorg/telegram/tgnet/TLRPC$TL_channels_kickFromChannel;

    invoke-direct {v12}, Lorg/telegram/tgnet/TLRPC$TL_channels_kickFromChannel;-><init>()V

    .line 4508
    .local v12, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_kickFromChannel;
    invoke-static {v9}, Lorg/telegram/messenger/MessagesController;->getInputChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v12, Lorg/telegram/tgnet/TLRPC$TL_channels_kickFromChannel;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 4509
    iput-object v6, v12, Lorg/telegram/tgnet/TLRPC$TL_channels_kickFromChannel;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 4510
    const/4 v1, 0x1

    iput-boolean v1, v12, Lorg/telegram/tgnet/TLRPC$TL_channels_kickFromChannel;->kicked:Z

    .line 4511
    move-object v13, v12

    .line 4512
    .restart local v13    # "request":Lorg/telegram/tgnet/TLObject;
    goto :goto_1

    .line 4514
    .end local v12    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_kickFromChannel;
    .end local v13    # "request":Lorg/telegram/tgnet/TLObject;
    :cond_4
    new-instance v12, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteChatUser;

    invoke-direct {v12}, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteChatUser;-><init>()V

    .line 4515
    .local v12, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_deleteChatUser;
    move/from16 v0, p1

    iput v0, v12, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteChatUser;->chat_id:I

    .line 4516
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v1

    iput-object v1, v12, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteChatUser;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 4517
    move-object v13, v12

    .restart local v13    # "request":Lorg/telegram/tgnet/TLObject;
    goto :goto_1

    .line 4546
    .end local v5    # "isChannel":Z
    .end local v6    # "inputUser":Lorg/telegram/tgnet/TLRPC$InputUser;
    .end local v9    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v12    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_deleteChatUser;
    .end local v13    # "request":Lorg/telegram/tgnet/TLObject;
    :cond_5
    move-object/from16 v0, p3

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatFull;

    if-eqz v1, :cond_0

    .line 4547
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v9

    .line 4548
    .restart local v9    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    iget v1, v9, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v9, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    .line 4549
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 4550
    .local v10, "chatArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Chat;>;"
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4551
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v10, v3, v4}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 4553
    const/4 v8, 0x0

    .line 4554
    .local v8, "changed":Z
    const/4 v7, 0x0

    .local v7, "a":I
    :goto_2
    move-object/from16 v0, p3

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v7, v1, :cond_6

    .line 4555
    move-object/from16 v0, p3

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 4556
    .local v11, "p":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    iget v1, v11, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    move-object/from16 v0, p2

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    if-ne v1, v2, :cond_8

    .line 4557
    move-object/from16 v0, p3

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4558
    const/4 v8, 0x1

    .line 4562
    .end local v11    # "p":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    :cond_6
    if-eqz v8, :cond_7

    .line 4563
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/MessagesStorage;->updateChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;Z)V

    .line 4564
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoaded:I

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    const/4 v4, 0x1

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v3, v4

    const/4 v4, 0x2

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v3, v4

    const/4 v4, 0x3

    const/4 v14, 0x0

    aput-object v14, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 4566
    :cond_7
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/16 v14, 0x20

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 4554
    .restart local v11    # "p":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_2
.end method

.method public deleteUserPhoto(Lorg/telegram/tgnet/TLRPC$InputPhoto;)V
    .locals 7
    .param p1, "photo"    # Lorg/telegram/tgnet/TLRPC$InputPhoto;

    .prologue
    const/4 v6, 0x0

    .line 1791
    if-nez p1, :cond_2

    .line 1792
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_photos_updateProfilePhoto;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_photos_updateProfilePhoto;-><init>()V

    .line 1793
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_photos_updateProfilePhoto;
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputPhotoEmpty;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputPhotoEmpty;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_photos_updateProfilePhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    .line 1794
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_userProfilePhotoEmpty;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_userProfilePhotoEmpty;-><init>()V

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    .line 1795
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    .line 1796
    .local v1, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-nez v1, :cond_0

    .line 1797
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    .line 1799
    :cond_0
    if-nez v1, :cond_1

    .line 1845
    .end local v0    # "req":Lorg/telegram/tgnet/TLRPC$TL_photos_updateProfilePhoto;
    .end local v1    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :goto_0
    return-void

    .line 1802
    .restart local v0    # "req":Lorg/telegram/tgnet/TLRPC$TL_photos_updateProfilePhoto;
    .restart local v1    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    .line 1803
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1804
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/16 v5, 0x5ff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1805
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/MessagesController$29;

    invoke-direct {v3, p0}, Lorg/telegram/messenger/MessagesController$29;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v2, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0

    .line 1836
    .end local v0    # "req":Lorg/telegram/tgnet/TLRPC$TL_photos_updateProfilePhoto;
    .end local v1    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_photos_deletePhotos;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_photos_deletePhotos;-><init>()V

    .line 1837
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_photos_deletePhotos;
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_photos_deletePhotos;->id:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1838
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/MessagesController$30;

    invoke-direct {v3, p0}, Lorg/telegram/messenger/MessagesController$30;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v2, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0
.end method

.method public didAddedNewTask(ILandroid/util/SparseArray;)V
    .locals 2
    .param p1, "minDate"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1552
    .local p2, "mids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesController$18;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesController$18;-><init>(Lorg/telegram/messenger/MessagesController;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1560
    new-instance v0, Lorg/telegram/messenger/MessagesController$19;

    invoke-direct {v0, p0, p2}, Lorg/telegram/messenger/MessagesController$19;-><init>(Lorg/telegram/messenger/MessagesController;Landroid/util/SparseArray;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1566
    return-void
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 11
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 529
    sget v8, Lorg/telegram/messenger/NotificationCenter;->FileDidUpload:I

    if-ne p1, v8, :cond_1

    .line 530
    aget-object v3, p2, v10

    check-cast v3, Ljava/lang/String;

    .line 531
    .local v3, "location":Ljava/lang/String;
    aget-object v2, p2, v9

    check-cast v2, Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 533
    .local v2, "file":Lorg/telegram/tgnet/TLRPC$InputFile;
    iget-object v8, p0, Lorg/telegram/messenger/MessagesController;->uploadingAvatar:Ljava/lang/String;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController;->uploadingAvatar:Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 534
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;-><init>()V

    .line 535
    .local v7, "req":Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;
    iput-object v2, v7, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 536
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v8

    new-instance v9, Lorg/telegram/messenger/MessagesController$4;

    invoke-direct {v9, p0}, Lorg/telegram/messenger/MessagesController$4;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v8, v7, v9}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 605
    .end local v2    # "file":Lorg/telegram/tgnet/TLRPC$InputFile;
    .end local v3    # "location":Ljava/lang/String;
    .end local v7    # "req":Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;
    :cond_0
    :goto_0
    return-void

    .line 579
    :cond_1
    sget v8, Lorg/telegram/messenger/NotificationCenter;->FileDidFailUpload:I

    if-ne p1, v8, :cond_2

    .line 580
    aget-object v3, p2, v10

    check-cast v3, Ljava/lang/String;

    .line 581
    .restart local v3    # "location":Ljava/lang/String;
    iget-object v8, p0, Lorg/telegram/messenger/MessagesController;->uploadingAvatar:Ljava/lang/String;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController;->uploadingAvatar:Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 582
    const/4 v8, 0x0

    iput-object v8, p0, Lorg/telegram/messenger/MessagesController;->uploadingAvatar:Ljava/lang/String;

    goto :goto_0

    .line 584
    .end local v3    # "location":Ljava/lang/String;
    :cond_2
    sget v8, Lorg/telegram/messenger/NotificationCenter;->messageReceivedByServer:I

    if-ne p1, v8, :cond_0

    .line 585
    aget-object v4, p2, v10

    check-cast v4, Ljava/lang/Integer;

    .line 586
    .local v4, "msgId":Ljava/lang/Integer;
    aget-object v5, p2, v9

    check-cast v5, Ljava/lang/Integer;

    .line 587
    .local v5, "newMsgId":Ljava/lang/Integer;
    const/4 v8, 0x3

    aget-object v1, p2, v8

    check-cast v1, Ljava/lang/Long;

    .line 588
    .local v1, "did":Ljava/lang/Long;
    iget-object v8, p0, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    invoke-virtual {v8, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject;

    .line 589
    .local v6, "obj":Lorg/telegram/messenger/MessageObject;
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v8

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v8, v9, :cond_4

    .line 590
    iget-object v8, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v8, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 591
    iget-object v8, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iput v10, v8, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 592
    iget-object v8, p0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 593
    .local v0, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    if-eqz v0, :cond_3

    .line 594
    iget v8, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v8, v9, :cond_3

    .line 595
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    .line 598
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v8, v9, v10}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 600
    .end local v0    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    :cond_4
    iget-object v8, p0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    invoke-virtual {v8, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "obj":Lorg/telegram/messenger/MessageObject;
    check-cast v6, Lorg/telegram/messenger/MessageObject;

    .line 601
    .restart local v6    # "obj":Lorg/telegram/messenger/MessageObject;
    if-eqz v6, :cond_0

    .line 602
    iget-object v8, p0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    invoke-virtual {v8, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public generateJoinMessage(IZ)V
    .locals 12
    .param p1, "chat_id"    # I
    .param p2, "ignoreLeft"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 5856
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v6

    .line 5857
    .local v6, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v6, :cond_1

    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->isChannel(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, v6, Lorg/telegram/tgnet/TLRPC$Chat;->left:Z

    if-nez v0, :cond_0

    iget-boolean v0, v6, Lorg/telegram/tgnet/TLRPC$Chat;->kicked:Z

    if-eqz v0, :cond_2

    :cond_0
    if-nez p2, :cond_2

    .line 5904
    :cond_1
    :goto_0
    return-void

    .line 5861
    :cond_2
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messageService;-><init>()V

    .line 5862
    .local v7, "message":Lorg/telegram/tgnet/TLRPC$TL_messageService;
    const/16 v0, 0x100

    iput v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    .line 5863
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getNewMessageId()I

    move-result v0

    iput v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->id:I

    iput v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->local_id:I

    .line 5864
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v0

    iput v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->date:I

    .line 5865
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v0

    iput v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->from_id:I

    .line 5866
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;-><init>()V

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 5867
    iget-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iput p1, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    .line 5868
    neg-int v0, p1

    int-to-long v10, v0

    iput-wide v10, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->dialog_id:J

    .line 5869
    iput-boolean v2, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->post:Z

    .line 5870
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatAddUser;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatAddUser;-><init>()V

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    .line 5871
    iget-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->users:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5872
    iget-boolean v0, v6, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v0, :cond_3

    .line 5873
    iget v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    const/high16 v3, -0x80000000

    or-int/2addr v0, v3

    iput v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    .line 5875
    :cond_3
    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 5877
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 5878
    .local v9, "pushMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5880
    .local v1, "messagesArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5881
    new-instance v8, Lorg/telegram/messenger/MessageObject;

    const/4 v0, 0x0

    invoke-direct {v8, v7, v0, v2}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V

    .line 5882
    .local v8, "obj":Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5884
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v3, Lorg/telegram/messenger/MessagesController$97;

    invoke-direct {v3, p0, v9}, Lorg/telegram/messenger/MessagesController$97;-><init>(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 5895
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MediaController;->getAutodownloadMask()I

    move-result v5

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZI)V

    .line 5897
    new-instance v0, Lorg/telegram/messenger/MessagesController$98;

    invoke-direct {v0, p0, p1, v9}, Lorg/telegram/messenger/MessagesController$98;-><init>(Lorg/telegram/messenger/MessagesController;ILjava/util/ArrayList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method public generateUpdateMessage()V
    .locals 3

    .prologue
    .line 4695
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-nez v1, :cond_0

    sget-object v1, Lorg/telegram/messenger/UserConfig;->lastUpdateVersion:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lorg/telegram/messenger/UserConfig;->lastUpdateVersion:Ljava/lang/String;

    sget-object v2, Lorg/telegram/messenger/BuildVars;->BUILD_VERSION_STRING:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4723
    :cond_0
    :goto_0
    return-void

    .line 4698
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_help_getAppChangelog;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_help_getAppChangelog;-><init>()V

    .line 4699
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_help_getAppChangelog;
    sget-object v1, Lorg/telegram/messenger/UserConfig;->lastUpdateVersion:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_help_getAppChangelog;->prev_app_version:Ljava/lang/String;

    .line 4700
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$84;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesController$84;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0
.end method

.method public getBlockedUsers(Z)V
    .locals 3
    .param p1, "cache"    # Z

    .prologue
    .line 1739
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/telegram/messenger/MessagesController;->loadingBlockedUsers:Z

    if-eqz v1, :cond_1

    .line 1767
    :cond_0
    :goto_0
    return-void

    .line 1742
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/messenger/MessagesController;->loadingBlockedUsers:Z

    .line 1743
    if-eqz p1, :cond_2

    .line 1744
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesStorage;->getBlockedUsers()V

    goto :goto_0

    .line 1746
    :cond_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getBlocked;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contacts_getBlocked;-><init>()V

    .line 1747
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_contacts_getBlocked;
    const/4 v1, 0x0

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getBlocked;->offset:I

    .line 1748
    const/16 v1, 0xc8

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getBlocked;->limit:I

    .line 1749
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$27;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesController$27;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0
.end method

.method protected getChannelDifference(IIJLorg/telegram/tgnet/TLRPC$InputChannel;)V
    .locals 17
    .param p1, "channelId"    # I
    .param p2, "newDialogType"    # I
    .param p3, "taskId"    # J
    .param p5, "inputChannel"    # Lorg/telegram/tgnet/TLRPC$InputChannel;

    .prologue
    .line 5050
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController;->gettingDifferenceChannels:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    .line 5051
    .local v12, "gettingDifferenceChannel":Ljava/lang/Boolean;
    if-nez v12, :cond_0

    .line 5052
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    .line 5054
    :cond_0
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5319
    :cond_1
    :goto_0
    return-void

    .line 5057
    :cond_2
    const/16 v13, 0x64

    .line 5059
    .local v13, "limit":I
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_6

    .line 5060
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController;->channelsPts:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 5061
    .local v8, "channelPts":Ljava/lang/Integer;
    if-nez v8, :cond_1

    .line 5064
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 5065
    const/4 v13, 0x1

    .line 5082
    :cond_3
    if-nez p5, :cond_4

    .line 5083
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object p5

    .line 5085
    :cond_4
    if-eqz p5, :cond_5

    move-object/from16 v0, p5

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$InputChannel;->access_hash:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_9

    .line 5086
    :cond_5
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-eqz v2, :cond_1

    .line 5087
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    move-wide/from16 v0, p3

    invoke-virtual {v2, v0, v1}, Lorg/telegram/messenger/MessagesStorage;->removePendingTask(J)V

    goto :goto_0

    .line 5067
    .end local v8    # "channelPts":Ljava/lang/Integer;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController;->channelsPts:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 5068
    .restart local v8    # "channelPts":Ljava/lang/Integer;
    if-nez v8, :cond_8

    .line 5069
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MessagesStorage;->getChannelPtsSync(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 5070
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_7

    .line 5071
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController;->channelsPts:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5073
    :cond_7
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_8

    const/4 v2, 0x2

    move/from16 v0, p2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    move/from16 v0, p2

    if-eq v0, v2, :cond_1

    .line 5077
    :cond_8
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_0

    .line 5092
    :cond_9
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-nez v2, :cond_a

    .line 5093
    const/4 v9, 0x0

    .line 5095
    .local v9, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :try_start_0
    new-instance v10, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual/range {p5 .. p5}, Lorg/telegram/tgnet/TLRPC$InputChannel;->getObjectSize()I

    move-result v2

    add-int/lit8 v2, v2, 0xc

    invoke-direct {v10, v2}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5096
    .end local v9    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .local v10, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    const/4 v2, 0x6

    :try_start_1
    invoke-virtual {v10, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    .line 5097
    move/from16 v0, p1

    invoke-virtual {v10, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    .line 5098
    move/from16 v0, p2

    invoke-virtual {v10, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    .line 5099
    move-object/from16 v0, p5

    invoke-virtual {v0, v10}, Lorg/telegram/tgnet/TLRPC$InputChannel;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v9, v10

    .line 5103
    .end local v10    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v9    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :goto_1
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2, v9}, Lorg/telegram/messenger/MessagesStorage;->createPendingTask(Lorg/telegram/tgnet/NativeByteBuffer;)J

    move-result-wide v6

    .line 5108
    .end local v9    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .local v6, "newTaskId":J
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController;->gettingDifferenceChannels:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5109
    new-instance v14, Lorg/telegram/tgnet/TLRPC$TL_updates_getChannelDifference;

    invoke-direct {v14}, Lorg/telegram/tgnet/TLRPC$TL_updates_getChannelDifference;-><init>()V

    .line 5110
    .local v14, "req":Lorg/telegram/tgnet/TLRPC$TL_updates_getChannelDifference;
    move-object/from16 v0, p5

    iput-object v0, v14, Lorg/telegram/tgnet/TLRPC$TL_updates_getChannelDifference;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 5111
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_channelMessagesFilterEmpty;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_channelMessagesFilterEmpty;-><init>()V

    iput-object v2, v14, Lorg/telegram/tgnet/TLRPC$TL_updates_getChannelDifference;->filter:Lorg/telegram/tgnet/TLRPC$ChannelMessagesFilter;

    .line 5112
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v14, Lorg/telegram/tgnet/TLRPC$TL_updates_getChannelDifference;->pts:I

    .line 5113
    iput v13, v14, Lorg/telegram/tgnet/TLRPC$TL_updates_getChannelDifference;->limit:I

    .line 5114
    const/4 v2, 0x3

    move/from16 v0, p2

    if-eq v0, v2, :cond_b

    const/4 v2, 0x1

    :goto_3
    iput-boolean v2, v14, Lorg/telegram/tgnet/TLRPC$TL_updates_getChannelDifference;->force:Z

    .line 5115
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start getChannelDifference with pts = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " channelId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 5116
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v15

    new-instance v2, Lorg/telegram/messenger/MessagesController$93;

    move-object/from16 v3, p0

    move/from16 v4, p1

    move/from16 v5, p2

    invoke-direct/range {v2 .. v7}, Lorg/telegram/messenger/MessagesController$93;-><init>(Lorg/telegram/messenger/MessagesController;IIJ)V

    invoke-virtual {v15, v14, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_0

    .line 5100
    .end local v6    # "newTaskId":J
    .end local v14    # "req":Lorg/telegram/tgnet/TLRPC$TL_updates_getChannelDifference;
    .restart local v9    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :catch_0
    move-exception v11

    .line 5101
    .local v11, "e":Ljava/lang/Exception;
    :goto_4
    invoke-static {v11}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 5105
    .end local v9    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_a
    move-wide/from16 v6, p3

    .restart local v6    # "newTaskId":J
    goto :goto_2

    .line 5114
    .restart local v14    # "req":Lorg/telegram/tgnet/TLRPC$TL_updates_getChannelDifference;
    :cond_b
    const/4 v2, 0x0

    goto :goto_3

    .line 5100
    .end local v6    # "newTaskId":J
    .end local v14    # "req":Lorg/telegram/tgnet/TLRPC$TL_updates_getChannelDifference;
    .restart local v10    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :catch_1
    move-exception v11

    move-object v9, v10

    .end local v10    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v9    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    goto :goto_4
.end method

.method public getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 1
    .param p1, "id"    # Ljava/lang/Integer;

    .prologue
    .line 731
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->chats:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    return-object v0
.end method

.method public getDifference()V
    .locals 4

    .prologue
    .line 5336
    sget v0, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    sget v1, Lorg/telegram/messenger/MessagesStorage;->lastDateValue:I

    sget v2, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getDifference(IIIZ)V

    .line 5337
    return-void
.end method

.method public getDifference(IIIZ)V
    .locals 4
    .param p1, "pts"    # I
    .param p2, "date"    # I
    .param p3, "qts"    # I
    .param p4, "slice"    # Z

    .prologue
    const/4 v3, 0x1

    .line 5340
    sget-object v1, Lorg/telegram/messenger/UserConfig;->pushString:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/MessagesController;->registerForPush(Ljava/lang/String;)V

    .line 5341
    sget v1, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    if-nez v1, :cond_1

    .line 5342
    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesController;->loadCurrentState()V

    .line 5570
    :cond_0
    :goto_0
    return-void

    .line 5345
    :cond_1
    if-nez p4, :cond_2

    iget-boolean v1, p0, Lorg/telegram/messenger/MessagesController;->gettingDifference:Z

    if-nez v1, :cond_0

    .line 5348
    :cond_2
    iput-boolean v3, p0, Lorg/telegram/messenger/MessagesController;->gettingDifference:Z

    .line 5349
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updates_getDifference;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updates_getDifference;-><init>()V

    .line 5350
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_updates_getDifference;
    iput p1, v0, Lorg/telegram/tgnet/TLRPC$TL_updates_getDifference;->pts:I

    .line 5351
    iput p2, v0, Lorg/telegram/tgnet/TLRPC$TL_updates_getDifference;->date:I

    .line 5352
    iput p3, v0, Lorg/telegram/tgnet/TLRPC$TL_updates_getDifference;->qts:I

    .line 5353
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$TL_updates_getDifference;->date:I

    if-nez v1, :cond_3

    .line 5354
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_updates_getDifference;->date:I

    .line 5356
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start getDifference with date = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/MessagesStorage;->lastDateValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " pts = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " seq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 5357
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/telegram/tgnet/ConnectionsManager;->setIsUpdating(Z)V

    .line 5358
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$94;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesController$94;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0
.end method

.method public getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .locals 1
    .param p1, "id"    # Ljava/lang/Integer;

    .prologue
    .line 735
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->encryptedChats:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    return-object v0
.end method

.method public getEncryptedChatDB(IZ)Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .locals 9
    .param p1, "chat_id"    # I
    .param p2, "created"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 739
    iget-object v5, p0, Lorg/telegram/messenger/MessagesController;->encryptedChats:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 740
    .local v0, "chat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    instance-of v5, v0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatWaiting;

    if-nez v5, :cond_0

    instance-of v5, v0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatRequested;

    if-eqz v5, :cond_1

    .line 741
    :cond_0
    new-instance v3, Ljava/util/concurrent/Semaphore;

    invoke-direct {v3, v7}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 742
    .local v3, "semaphore":Ljava/util/concurrent/Semaphore;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 743
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLObject;>;"
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    invoke-virtual {v5, p1, v3, v2}, Lorg/telegram/messenger/MessagesStorage;->getEncryptedChat(ILjava/util/concurrent/Semaphore;Ljava/util/ArrayList;)V

    .line 745
    :try_start_0
    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 749
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 750
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "chat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    check-cast v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 751
    .restart local v0    # "chat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$User;

    .line 752
    .local v4, "user":Lorg/telegram/tgnet/TLRPC$User;
    invoke-virtual {p0, v0, v7}, Lorg/telegram/messenger/MessagesController;->putEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Z)V

    .line 753
    invoke-virtual {p0, v4, v8}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 756
    .end local v2    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLObject;>;"
    .end local v3    # "semaphore":Ljava/util/concurrent/Semaphore;
    .end local v4    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_1
    return-object v0

    .line 746
    .restart local v2    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLObject;>;"
    .restart local v3    # "semaphore":Ljava/util/concurrent/Semaphore;
    :catch_0
    move-exception v1

    .line 747
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getExportedInvite(I)Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;
    .locals 2
    .param p1, "chat_id"    # I

    .prologue
    .line 773
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->exportedChats:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    return-object v0
.end method

.method public getNewDeleteTask(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1569
    .local p1, "oldTask":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesController$20;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesController$20;-><init>(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1576
    return-void
.end method

.method public getUpdatesStartTime(I)J
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 4803
    if-nez p1, :cond_0

    .line 4804
    iget-wide v0, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeSeq:J

    .line 4810
    :goto_0
    return-wide v0

    .line 4805
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 4806
    iget-wide v0, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimePts:J

    goto :goto_0

    .line 4807
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 4808
    iget-wide v0, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeQts:J

    goto :goto_0

    .line 4810
    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;
    .locals 1
    .param p1, "id"    # Ljava/lang/Integer;

    .prologue
    .line 716
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->users:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    return-object v0
.end method

.method public getUser(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$User;
    .locals 2
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 720
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 721
    :cond_0
    const/4 v0, 0x0

    .line 723
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->usersByUsernames:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    goto :goto_0
.end method

.method public getUserAbout(I)Ljava/lang/String;
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 608
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MessagesController;->getUserFull(I)Lorg/telegram/tgnet/TLRPC$TL_userFull;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MessagesController;->getUserFull(I)Lorg/telegram/tgnet/TLRPC$TL_userFull;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->about:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getUserFull(I)Lorg/telegram/tgnet/TLRPC$TL_userFull;
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 954
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->fullUsers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_userFull;

    return-object v0
.end method

.method public getUsers()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 727
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->users:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public hideReportSpam(JLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 7
    .param p1, "dialogId"    # J
    .param p3, "currentUser"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p4, "currentChat"    # Lorg/telegram/tgnet/TLRPC$Chat;

    .prologue
    .line 1324
    if-nez p3, :cond_1

    if-nez p4, :cond_1

    .line 1345
    :cond_0
    :goto_0
    return-void

    .line 1327
    :cond_1
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Notifications"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lorg/telegram/messenger/ChangeUserHelper;->getUserTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1328
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1329
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "spam3_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1330
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1331
    long-to-int v3, p1

    if-eqz v3, :cond_0

    .line 1332
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messages_hideReportSpam;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messages_hideReportSpam;-><init>()V

    .line 1333
    .local v2, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_hideReportSpam;
    if-eqz p3, :cond_3

    .line 1334
    iget v3, p3, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_hideReportSpam;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1338
    :cond_2
    :goto_1
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/MessagesController$13;

    invoke-direct {v4, p0}, Lorg/telegram/messenger/MessagesController$13;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v3, v2, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0

    .line 1335
    :cond_3
    if-eqz p4, :cond_2

    .line 1336
    iget v3, p4, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    neg-int v3, v3

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_hideReportSpam;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto :goto_1
.end method

.method public isDialogMuted(J)Z
    .locals 9
    .param p1, "dialog_id"    # J

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 7735
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Notifications"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lorg/telegram/messenger/ChangeUserHelper;->getUserTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 7736
    .local v2, "preferences":Landroid/content/SharedPreferences;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "notify2_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 7737
    .local v0, "mute_type":I
    const/4 v5, 0x2

    if-ne v0, v5, :cond_1

    .line 7745
    :cond_0
    :goto_0
    return v3

    .line 7739
    :cond_1
    const/4 v5, 0x3

    if-ne v0, v5, :cond_2

    .line 7740
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "notifyuntil_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 7741
    .local v1, "mute_until":I
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v5

    if-ge v1, v5, :cond_0

    .end local v1    # "mute_until":I
    :cond_2
    move v3, v4

    .line 7745
    goto :goto_0
.end method

.method public loadChannelParticipants(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "chat_id"    # Ljava/lang/Integer;

    .prologue
    .line 2204
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->loadingFullParticipants:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->loadedFullParticipants:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2232
    :cond_0
    :goto_0
    return-void

    .line 2207
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->loadingFullParticipants:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2209
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;-><init>()V

    .line 2210
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 2211
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsRecent;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsRecent;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->filter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    .line 2212
    const/4 v1, 0x0

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->offset:I

    .line 2213
    const/16 v1, 0x20

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->limit:I

    .line 2214
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$41;

    invoke-direct {v2, p0, p1}, Lorg/telegram/messenger/MessagesController$41;-><init>(Lorg/telegram/messenger/MessagesController;Ljava/lang/Integer;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0
.end method

.method public loadChatInfo(ILjava/util/concurrent/Semaphore;Z)V
    .locals 2
    .param p1, "chat_id"    # I
    .param p2, "semaphore"    # Ljava/util/concurrent/Semaphore;
    .param p3, "force"    # Z

    .prologue
    .line 2235
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lorg/telegram/messenger/MessagesStorage;->loadChatInfo(ILjava/util/concurrent/Semaphore;ZZ)V

    .line 2236
    return-void
.end method

.method public loadCurrentState()V
    .locals 3

    .prologue
    .line 4756
    iget-boolean v1, p0, Lorg/telegram/messenger/MessagesController;->updatingState:Z

    if-eqz v1, :cond_0

    .line 4782
    :goto_0
    return-void

    .line 4759
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/messenger/MessagesController;->updatingState:Z

    .line 4760
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updates_getState;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updates_getState;-><init>()V

    .line 4761
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_updates_getState;
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$86;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesController$86;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0
.end method

.method public loadDialogPhotos(IIIJZI)V
    .locals 14
    .param p1, "did"    # I
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "max_id"    # J
    .param p6, "fromCache"    # Z
    .param p7, "classGuid"    # I

    .prologue
    .line 1640
    if-eqz p6, :cond_1

    .line 1641
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    move v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-wide/from16 v6, p4

    move/from16 v8, p7

    invoke-virtual/range {v2 .. v8}, Lorg/telegram/messenger/MessagesStorage;->getDialogPhotos(IIIJI)V

    .line 1693
    :cond_0
    :goto_0
    return-void

    .line 1643
    :cond_1
    if-lez p1, :cond_2

    .line 1644
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v13

    .line 1645
    .local v13, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v13, :cond_0

    .line 1648
    new-instance v11, Lorg/telegram/tgnet/TLRPC$TL_photos_getUserPhotos;

    invoke-direct {v11}, Lorg/telegram/tgnet/TLRPC$TL_photos_getUserPhotos;-><init>()V

    .line 1649
    .local v11, "req":Lorg/telegram/tgnet/TLRPC$TL_photos_getUserPhotos;
    move/from16 v0, p3

    iput v0, v11, Lorg/telegram/tgnet/TLRPC$TL_photos_getUserPhotos;->limit:I

    .line 1650
    move/from16 v0, p2

    iput v0, v11, Lorg/telegram/tgnet/TLRPC$TL_photos_getUserPhotos;->offset:I

    .line 1651
    move-wide/from16 v0, p4

    long-to-int v2, v0

    int-to-long v2, v2

    iput-wide v2, v11, Lorg/telegram/tgnet/TLRPC$TL_photos_getUserPhotos;->max_id:J

    .line 1652
    invoke-static {v13}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v2

    iput-object v2, v11, Lorg/telegram/tgnet/TLRPC$TL_photos_getUserPhotos;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 1653
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/MessagesController$23;

    move-object v4, p0

    move v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move-wide/from16 v8, p4

    move/from16 v10, p7

    invoke-direct/range {v3 .. v10}, Lorg/telegram/messenger/MessagesController$23;-><init>(Lorg/telegram/messenger/MessagesController;IIIJI)V

    invoke-virtual {v2, v11, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v12

    .line 1662
    .local v12, "reqId":I
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {v2, v12, v0}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    goto :goto_0

    .line 1663
    .end local v11    # "req":Lorg/telegram/tgnet/TLRPC$TL_photos_getUserPhotos;
    .end local v12    # "reqId":I
    .end local v13    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_2
    if-gez p1, :cond_0

    .line 1664
    new-instance v11, Lorg/telegram/tgnet/TLRPC$TL_messages_search;

    invoke-direct {v11}, Lorg/telegram/tgnet/TLRPC$TL_messages_search;-><init>()V

    .line 1665
    .local v11, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_search;
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterChatPhotos;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterChatPhotos;-><init>()V

    iput-object v2, v11, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    .line 1666
    move/from16 v0, p3

    iput v0, v11, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->limit:I

    .line 1667
    move/from16 v0, p2

    iput v0, v11, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->offset:I

    .line 1668
    move-wide/from16 v0, p4

    long-to-int v2, v0

    iput v2, v11, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->max_id:I

    .line 1669
    const-string/jumbo v2, ""

    iput-object v2, v11, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->q:Ljava/lang/String;

    .line 1670
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    iput-object v2, v11, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1671
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/MessagesController$24;

    move-object v4, p0

    move v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move-wide/from16 v8, p4

    move/from16 v10, p7

    invoke-direct/range {v3 .. v10}, Lorg/telegram/messenger/MessagesController$24;-><init>(Lorg/telegram/messenger/MessagesController;IIIJI)V

    invoke-virtual {v2, v11, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v12

    .line 1690
    .restart local v12    # "reqId":I
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {v2, v12, v0}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    goto/16 :goto_0
.end method

.method public loadDialogs(IIZ)V
    .locals 12
    .param p1, "offset"    # I
    .param p2, "count"    # I
    .param p3, "fromCache"    # Z

    .prologue
    .line 2942
    iget-boolean v8, p0, Lorg/telegram/messenger/MessagesController;->loadingDialogs:Z

    if-eqz v8, :cond_0

    .line 2994
    :goto_0
    return-void

    .line 2945
    :cond_0
    const/4 v8, 0x1

    iput-boolean v8, p0, Lorg/telegram/messenger/MessagesController;->loadingDialogs:Z

    .line 2946
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v8, v9, v10}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2947
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "load cacheOffset = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " count = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " cache = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 2948
    if-eqz p3, :cond_2

    .line 2949
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v9

    if-nez p1, :cond_1

    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v9, v8, p2}, Lorg/telegram/messenger/MessagesStorage;->getDialogs(II)V

    goto :goto_0

    :cond_1
    iget v8, p0, Lorg/telegram/messenger/MessagesController;->nextDialogsCacheOffset:I

    goto :goto_1

    .line 2951
    :cond_2
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;-><init>()V

    .line 2952
    .local v7, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;
    iput p2, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->limit:I

    .line 2953
    const/4 v8, 0x1

    iput-boolean v8, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->exclude_pinned:Z

    .line 2954
    const/4 v2, 0x0

    .line 2955
    .local v2, "found":Z
    iget-object v8, p0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v0, v8, -0x1

    .local v0, "a":I
    :goto_2
    if-ltz v0, :cond_5

    .line 2956
    iget-object v8, p0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 2957
    .local v1, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    iget-boolean v8, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    if-eqz v8, :cond_4

    .line 2955
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 2960
    :cond_4
    iget-wide v8, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    long-to-int v5, v8

    .line 2961
    .local v5, "lower_id":I
    iget-wide v8, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    const/16 v10, 0x20

    shr-long/2addr v8, v10

    long-to-int v3, v8

    .line 2962
    .local v3, "high_id":I
    if-eqz v5, :cond_3

    const/4 v8, 0x1

    if-eq v3, v8, :cond_3

    iget v8, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    if-lez v8, :cond_3

    .line 2963
    iget-object v8, p0, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    iget-wide v10, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject;

    .line 2964
    .local v6, "message":Lorg/telegram/messenger/MessageObject;
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v8

    if-lez v8, :cond_3

    .line 2965
    iget-object v8, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iput v8, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->offset_date:I

    .line 2966
    iget-object v8, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iput v8, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->offset_id:I

    .line 2968
    iget-object v8, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v8, :cond_7

    .line 2969
    iget-object v8, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    neg-int v4, v8

    .line 2975
    .local v4, "id":I
    :goto_3
    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v8

    iput-object v8, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 2976
    const/4 v2, 0x1

    .line 2981
    .end local v1    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v3    # "high_id":I
    .end local v4    # "id":I
    .end local v5    # "lower_id":I
    .end local v6    # "message":Lorg/telegram/messenger/MessageObject;
    :cond_5
    if-nez v2, :cond_6

    .line 2982
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V

    iput-object v8, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 2984
    :cond_6
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v8

    new-instance v9, Lorg/telegram/messenger/MessagesController$54;

    invoke-direct {v9, p0, p2}, Lorg/telegram/messenger/MessagesController$54;-><init>(Lorg/telegram/messenger/MessagesController;I)V

    invoke-virtual {v8, v7, v9}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_0

    .line 2970
    .restart local v1    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .restart local v3    # "high_id":I
    .restart local v5    # "lower_id":I
    .restart local v6    # "message":Lorg/telegram/messenger/MessageObject;
    :cond_7
    iget-object v8, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    if-eqz v8, :cond_8

    .line 2971
    iget-object v8, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    neg-int v4, v8

    .restart local v4    # "id":I
    goto :goto_3

    .line 2973
    .end local v4    # "id":I
    :cond_8
    iget-object v8, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v8, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    .restart local v4    # "id":I
    goto :goto_3
.end method

.method public loadFullChat(IIZ)V
    .locals 11
    .param p1, "chat_id"    # I
    .param p2, "classGuid"    # I
    .param p3, "force"    # Z

    .prologue
    .line 1064
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->loadingFullChats:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p3, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->loadedFullChats:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1157
    :cond_0
    :goto_0
    return-void

    .line 1067
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->loadingFullChats:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1069
    neg-int v1, p1

    int-to-long v4, v1

    .line 1070
    .local v4, "dialog_id":J
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    .line 1071
    .local v3, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->isChannel(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1072
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getFullChannel;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_getFullChannel;-><init>()V

    .line 1073
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_getFullChannel;
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getFullChannel;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 1074
    move-object v9, v0

    .line 1083
    .end local v0    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_getFullChannel;
    .local v9, "request":Lorg/telegram/tgnet/TLObject;
    :cond_2
    :goto_1
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v10

    new-instance v1, Lorg/telegram/messenger/MessagesController$10;

    move-object v2, p0

    move v6, p1

    move v7, p2

    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/MessagesController$10;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$Chat;JII)V

    invoke-virtual {v10, v9, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v8

    .line 1154
    .local v8, "reqId":I
    if-eqz p2, :cond_0

    .line 1155
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1, v8, p2}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    goto :goto_0

    .line 1076
    .end local v8    # "reqId":I
    .end local v9    # "request":Lorg/telegram/tgnet/TLObject;
    :cond_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getFullChat;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getFullChat;-><init>()V

    .line 1077
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getFullChat;
    iput p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getFullChat;->chat_id:I

    .line 1078
    move-object v9, v0

    .line 1079
    .restart local v9    # "request":Lorg/telegram/tgnet/TLObject;
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1080
    :cond_4
    const/4 v1, 0x0

    invoke-direct {p0, v1, v4, v5}, Lorg/telegram/messenger/MessagesController;->reloadDialogsReadValue(Ljava/util/ArrayList;J)V

    goto :goto_1
.end method

.method public loadFullUser(Lorg/telegram/tgnet/TLRPC$User;IZ)V
    .locals 6
    .param p1, "user"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p2, "classGuid"    # I
    .param p3, "force"    # Z

    .prologue
    .line 1160
    if-eqz p1, :cond_0

    iget-object v4, p0, Lorg/telegram/messenger/MessagesController;->loadingFullUsers:Ljava/util/ArrayList;

    iget v5, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    if-nez p3, :cond_1

    iget-object v4, p0, Lorg/telegram/messenger/MessagesController;->loadedFullUsers:Ljava/util/ArrayList;

    iget v5, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1210
    :cond_0
    :goto_0
    return-void

    .line 1163
    :cond_1
    iget-object v4, p0, Lorg/telegram/messenger/MessagesController;->loadingFullUsers:Ljava/util/ArrayList;

    iget v5, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1164
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_users_getFullUser;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_users_getFullUser;-><init>()V

    .line 1165
    .local v2, "req":Lorg/telegram/tgnet/TLRPC$TL_users_getFullUser;
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v4

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_users_getFullUser;->id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 1166
    iget v4, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    int-to-long v0, v4

    .line 1167
    .local v0, "dialog_id":J
    iget-object v4, p0, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3

    .line 1168
    :cond_2
    const/4 v4, 0x0

    invoke-direct {p0, v4, v0, v1}, Lorg/telegram/messenger/MessagesController;->reloadDialogsReadValue(Ljava/util/ArrayList;J)V

    .line 1170
    :cond_3
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    new-instance v5, Lorg/telegram/messenger/MessagesController$11;

    invoke-direct {v5, p0, p1, p2}, Lorg/telegram/messenger/MessagesController$11;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$User;I)V

    invoke-virtual {v4, v2, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v3

    .line 1209
    .local v3, "reqId":I
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4, v3, p2}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    goto :goto_0
.end method

.method public loadMessages(JIIIZIIIIZI)V
    .locals 19
    .param p1, "dialog_id"    # J
    .param p3, "count"    # I
    .param p4, "max_id"    # I
    .param p5, "offset_date"    # I
    .param p6, "fromCache"    # Z
    .param p7, "midDate"    # I
    .param p8, "classGuid"    # I
    .param p9, "load_type"    # I
    .param p10, "last_message_id"    # I
    .param p11, "isChannel"    # Z
    .param p12, "loadIndex"    # I

    .prologue
    .line 2675
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    invoke-virtual/range {v1 .. v17}, Lorg/telegram/messenger/MessagesController;->loadMessages(JIIIZIIIIZIIIIZ)V

    .line 2676
    return-void
.end method

.method public loadMessages(JIIIZIIIIZIIIIZ)V
    .locals 23
    .param p1, "dialog_id"    # J
    .param p3, "count"    # I
    .param p4, "max_id"    # I
    .param p5, "offset_date"    # I
    .param p6, "fromCache"    # Z
    .param p7, "midDate"    # I
    .param p8, "classGuid"    # I
    .param p9, "load_type"    # I
    .param p10, "last_message_id"    # I
    .param p11, "isChannel"    # Z
    .param p12, "loadIndex"    # I
    .param p13, "first_unread"    # I
    .param p14, "unread_count"    # I
    .param p15, "last_date"    # I
    .param p16, "queryFromServer"    # Z

    .prologue
    .line 2679
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "load messages in chat "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " max_id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " cache "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mindate = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " guid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " load_type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p9

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " last_message_id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p10

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p12

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " firstUnread "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p13

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " underad count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p14

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " last_date "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p15

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " queryFromServer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 2680
    move-wide/from16 v0, p1

    long-to-int v0, v0

    move/from16 v19, v0

    .line 2681
    .local v19, "lower_part":I
    if-nez p6, :cond_0

    if-nez v19, :cond_1

    .line 2682
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p11

    move/from16 v13, p12

    invoke-virtual/range {v3 .. v13}, Lorg/telegram/messenger/MessagesStorage;->getMessages(JIIIIIIZI)V

    .line 2731
    :goto_0
    return-void

    .line 2684
    :cond_1
    new-instance v20, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;

    invoke-direct/range {v20 .. v20}, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;-><init>()V

    .line 2685
    .local v20, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v3

    move-object/from16 v0, v20

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 2686
    const/4 v3, 0x4

    move/from16 v0, p9

    if-ne v0, v3, :cond_3

    .line 2687
    move/from16 v0, p3

    neg-int v3, v0

    add-int/lit8 v3, v3, 0x5

    move-object/from16 v0, v20

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;->add_offset:I

    .line 2703
    :cond_2
    :goto_1
    move/from16 v0, p3

    move-object/from16 v1, v20

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;->limit:I

    .line 2704
    move/from16 v0, p4

    move-object/from16 v1, v20

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;->offset_id:I

    .line 2705
    move/from16 v0, p5

    move-object/from16 v1, v20

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;->offset_date:I

    .line 2706
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v22

    new-instance v3, Lorg/telegram/messenger/MessagesController$51;

    move-object/from16 v4, p0

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-wide/from16 v8, p1

    move/from16 v10, p8

    move/from16 v11, p13

    move/from16 v12, p10

    move/from16 v13, p14

    move/from16 v14, p15

    move/from16 v15, p9

    move/from16 v16, p11

    move/from16 v17, p12

    move/from16 v18, p16

    invoke-direct/range {v3 .. v18}, Lorg/telegram/messenger/MessagesController$51;-><init>(Lorg/telegram/messenger/MessagesController;IIIJIIIIIIZIZ)V

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v21

    .line 2729
    .local v21, "reqId":I
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    move/from16 v0, v21

    move/from16 v1, p8

    invoke-virtual {v3, v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    goto :goto_0

    .line 2688
    .end local v21    # "reqId":I
    :cond_3
    const/4 v3, 0x3

    move/from16 v0, p9

    if-ne v0, v3, :cond_4

    .line 2689
    move/from16 v0, p3

    neg-int v3, v0

    div-int/lit8 v3, v3, 0x2

    move-object/from16 v0, v20

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;->add_offset:I

    goto :goto_1

    .line 2690
    :cond_4
    const/4 v3, 0x1

    move/from16 v0, p9

    if-ne v0, v3, :cond_5

    .line 2691
    move/from16 v0, p3

    neg-int v3, v0

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v20

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;->add_offset:I

    goto :goto_1

    .line 2692
    :cond_5
    const/4 v3, 0x2

    move/from16 v0, p9

    if-ne v0, v3, :cond_6

    if-eqz p4, :cond_6

    .line 2693
    move/from16 v0, p3

    neg-int v3, v0

    add-int/lit8 v3, v3, 0x6

    move-object/from16 v0, v20

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;->add_offset:I

    goto :goto_1

    .line 2695
    :cond_6
    if-gez v19, :cond_2

    if-eqz p4, :cond_2

    .line 2696
    move/from16 v0, v19

    neg-int v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    .line 2697
    .local v2, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2698
    const/4 v3, -0x1

    move-object/from16 v0, v20

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;->add_offset:I

    .line 2699
    move-object/from16 v0, v20

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;->limit:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v20

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;->limit:I

    goto/16 :goto_1
.end method

.method public loadPeerSettings(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 10
    .param p1, "currentUser"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p2, "currentChat"    # Lorg/telegram/tgnet/TLRPC$Chat;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1386
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 1458
    :cond_0
    :goto_0
    return-void

    .line 1390
    :cond_1
    if-eqz p1, :cond_3

    .line 1391
    iget v5, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    int-to-long v0, v5

    .line 1395
    .local v0, "dialogId":J
    :goto_1
    iget-object v5, p0, Lorg/telegram/messenger/MessagesController;->loadingPeerSettings:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1398
    iget-object v5, p0, Lorg/telegram/messenger/MessagesController;->loadingPeerSettings:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1399
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Notifications"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lorg/telegram/messenger/ChangeUserHelper;->getUserTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1400
    .local v3, "preferences":Landroid/content/SharedPreferences;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "spam3_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-eq v5, v9, :cond_0

    .line 1403
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "spam_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 1404
    .local v2, "hidden":Z
    if-eqz v2, :cond_5

    .line 1405
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messages_hideReportSpam;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messages_hideReportSpam;-><init>()V

    .line 1406
    .local v4, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_hideReportSpam;
    if-eqz p1, :cond_4

    .line 1407
    iget v5, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_hideReportSpam;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1411
    :cond_2
    :goto_2
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    new-instance v6, Lorg/telegram/messenger/MessagesController$16;

    invoke-direct {v6, p0, v0, v1}, Lorg/telegram/messenger/MessagesController$16;-><init>(Lorg/telegram/messenger/MessagesController;J)V

    invoke-virtual {v5, v4, v6}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_0

    .line 1393
    .end local v0    # "dialogId":J
    .end local v2    # "hidden":Z
    .end local v3    # "preferences":Landroid/content/SharedPreferences;
    .end local v4    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_hideReportSpam;
    :cond_3
    iget v5, p2, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    neg-int v5, v5

    int-to-long v0, v5

    .restart local v0    # "dialogId":J
    goto/16 :goto_1

    .line 1408
    .restart local v2    # "hidden":Z
    .restart local v3    # "preferences":Landroid/content/SharedPreferences;
    .restart local v4    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_hideReportSpam;
    :cond_4
    if-eqz p2, :cond_2

    .line 1409
    iget v5, p2, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    neg-int v5, v5

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_hideReportSpam;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto :goto_2

    .line 1429
    .end local v4    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_hideReportSpam;
    :cond_5
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messages_getPeerSettings;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messages_getPeerSettings;-><init>()V

    .line 1430
    .local v4, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getPeerSettings;
    if-eqz p1, :cond_7

    .line 1431
    iget v5, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_getPeerSettings;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1435
    :cond_6
    :goto_3
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    new-instance v6, Lorg/telegram/messenger/MessagesController$17;

    invoke-direct {v6, p0, v0, v1}, Lorg/telegram/messenger/MessagesController$17;-><init>(Lorg/telegram/messenger/MessagesController;J)V

    invoke-virtual {v5, v4, v6}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_0

    .line 1432
    :cond_7
    if-eqz p2, :cond_6

    .line 1433
    iget v5, p2, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    neg-int v5, v5

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_getPeerSettings;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto :goto_3
.end method

.method public loadPinnedDialogs(JLjava/util/ArrayList;)V
    .locals 3
    .param p1, "newDialogId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5656
    .local p3, "order":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-boolean v1, Lorg/telegram/messenger/UserConfig;->pinnedDialogsLoaded:Z

    if-eqz v1, :cond_0

    .line 5853
    :goto_0
    return-void

    .line 5659
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getPinnedDialogs;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getPinnedDialogs;-><init>()V

    .line 5660
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getPinnedDialogs;
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$96;

    invoke-direct {v2, p0, p3, p1, p2}, Lorg/telegram/messenger/MessagesController$96;-><init>(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;J)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0
.end method

.method protected loadUnknownChannel(Lorg/telegram/tgnet/TLRPC$Chat;J)V
    .locals 12
    .param p1, "channel"    # Lorg/telegram/tgnet/TLRPC$Chat;
    .param p2, "taskId"    # J

    .prologue
    const-wide/16 v10, 0x0

    .line 4976
    instance-of v7, p1, Lorg/telegram/tgnet/TLRPC$TL_channel;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->gettingUnknownChannels:Ljava/util/HashMap;

    iget v8, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 5027
    :cond_0
    :goto_0
    return-void

    .line 4979
    :cond_1
    iget-wide v8, p1, Lorg/telegram/tgnet/TLRPC$Chat;->access_hash:J

    cmp-long v7, v8, v10

    if-nez v7, :cond_2

    .line 4980
    cmp-long v7, p2, v10

    if-eqz v7, :cond_0

    .line 4981
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v7

    invoke-virtual {v7, p2, p3}, Lorg/telegram/messenger/MessagesStorage;->removePendingTask(J)V

    goto :goto_0

    .line 4985
    :cond_2
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;-><init>()V

    .line 4986
    .local v3, "inputPeer":Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;
    iget v7, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    iput v7, v3, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;->channel_id:I

    .line 4987
    iget-wide v8, p1, Lorg/telegram/tgnet/TLRPC$Chat;->access_hash:J

    iput-wide v8, v3, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;->access_hash:J

    .line 4989
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->gettingUnknownChannels:Ljava/util/HashMap;

    iget v8, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4991
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_messages_getPeerDialogs;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_messages_getPeerDialogs;-><init>()V

    .line 4992
    .local v6, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getPeerDialogs;
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$TL_messages_getPeerDialogs;->peers:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4994
    cmp-long v7, p2, v10

    if-nez v7, :cond_3

    .line 4995
    const/4 v0, 0x0

    .line 4997
    .local v0, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :try_start_0
    new-instance v1, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {p1}, Lorg/telegram/tgnet/TLRPC$Chat;->getObjectSize()I

    move-result v7

    add-int/lit8 v7, v7, 0x4

    invoke-direct {v1, v7}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4998
    .end local v0    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .local v1, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {v1, v7}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    .line 4999
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/TLRPC$Chat;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 5003
    .end local v1    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v0    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :goto_1
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v7

    invoke-virtual {v7, v0}, Lorg/telegram/messenger/MessagesStorage;->createPendingTask(Lorg/telegram/tgnet/NativeByteBuffer;)J

    move-result-wide v4

    .line 5007
    .end local v0    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .local v4, "newTaskId":J
    :goto_2
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v7

    new-instance v8, Lorg/telegram/messenger/MessagesController$91;

    invoke-direct {v8, p0, v4, v5, p1}, Lorg/telegram/messenger/MessagesController$91;-><init>(Lorg/telegram/messenger/MessagesController;JLorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-virtual {v7, v6, v8}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0

    .line 5000
    .end local v4    # "newTaskId":J
    .restart local v0    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :catch_0
    move-exception v2

    .line 5001
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 5005
    .end local v0    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    move-wide v4, p2

    .restart local v4    # "newTaskId":J
    goto :goto_2

    .line 5000
    .end local v4    # "newTaskId":J
    .restart local v1    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v0    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    goto :goto_3
.end method

.method public markChannelDialogMessageAsDeleted(Ljava/util/ArrayList;I)V
    .locals 6
    .param p2, "channelId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1872
    .local p1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    neg-int v4, p2

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    .line 1873
    .local v2, "obj":Lorg/telegram/messenger/MessageObject;
    if-eqz v2, :cond_0

    .line 1874
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 1875
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1876
    .local v1, "id":Ljava/lang/Integer;
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 1877
    const/4 v3, 0x1

    iput-boolean v3, v2, Lorg/telegram/messenger/MessageObject;->deleted:Z

    .line 1882
    .end local v0    # "a":I
    .end local v1    # "id":Ljava/lang/Integer;
    :cond_0
    return-void

    .line 1874
    .restart local v0    # "a":I
    .restart local v1    # "id":Ljava/lang/Integer;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public markDialogAsRead(JIIIZZ)V
    .locals 21
    .param p1, "dialog_id"    # J
    .param p3, "max_id"    # I
    .param p4, "max_positive_id"    # I
    .param p5, "max_date"    # I
    .param p6, "was"    # Z
    .param p7, "popup"    # Z

    .prologue
    .line 3878
    move-wide/from16 v0, p1

    long-to-int v0, v0

    move/from16 v17, v0

    .line 3879
    .local v17, "lower_part":I
    const/16 v3, 0x20

    shr-long v4, p1, v3

    long-to-int v15, v4

    .line 3881
    .local v15, "high_id":I
    if-eqz v17, :cond_4

    .line 3882
    if-eqz p4, :cond_0

    const/4 v3, 0x1

    if-ne v15, v3, :cond_1

    .line 3993
    :cond_0
    :goto_0
    return-void

    .line 3885
    :cond_1
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v16

    .line 3887
    .local v16, "inputPeer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    move/from16 v0, p4

    int-to-long v6, v0

    .line 3888
    .local v6, "messageId":J
    move-object/from16 v0, v16

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    if-eqz v3, :cond_3

    .line 3889
    new-instance v19, Lorg/telegram/tgnet/TLRPC$TL_channels_readHistory;

    invoke-direct/range {v19 .. v19}, Lorg/telegram/tgnet/TLRPC$TL_channels_readHistory;-><init>()V

    .line 3890
    .local v19, "request":Lorg/telegram/tgnet/TLRPC$TL_channels_readHistory;
    move/from16 v0, v17

    neg-int v3, v0

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v3

    move-object/from16 v0, v19

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_readHistory;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 3891
    move/from16 v0, p4

    move-object/from16 v1, v19

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_readHistory;->max_id:I

    .line 3892
    move-object/from16 v18, v19

    .line 3893
    .local v18, "req":Lorg/telegram/tgnet/TLObject;
    move/from16 v0, v17

    neg-int v3, v0

    int-to-long v4, v3

    const/16 v3, 0x20

    shl-long/2addr v4, v3

    or-long/2addr v6, v4

    .line 3900
    .end local v19    # "request":Lorg/telegram/tgnet/TLRPC$TL_channels_readHistory;
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    .line 3901
    .local v20, "value":Ljava/lang/Integer;
    if-nez v20, :cond_2

    .line 3902
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    .line 3904
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move/from16 v0, p4

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3906
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    move-wide/from16 v4, p1

    move/from16 v8, p5

    invoke-virtual/range {v3 .. v8}, Lorg/telegram/messenger/MessagesStorage;->processPendingRead(JJI)V

    .line 3907
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v3

    new-instance v8, Lorg/telegram/messenger/MessagesController$62;

    move-object/from16 v9, p0

    move-wide/from16 v10, p1

    move/from16 v12, p7

    move/from16 v13, p4

    invoke-direct/range {v8 .. v13}, Lorg/telegram/messenger/MessagesController$62;-><init>(Lorg/telegram/messenger/MessagesController;JZI)V

    invoke-virtual {v3, v8}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 3934
    const v3, 0x7fffffff

    move/from16 v0, p4

    if-eq v0, v3, :cond_0

    .line 3935
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/MessagesController$63;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/messenger/MessagesController$63;-><init>(Lorg/telegram/messenger/MessagesController;)V

    move-object/from16 v0, v18

    invoke-virtual {v3, v0, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_0

    .line 3895
    .end local v18    # "req":Lorg/telegram/tgnet/TLObject;
    .end local v20    # "value":Ljava/lang/Integer;
    :cond_3
    new-instance v19, Lorg/telegram/tgnet/TLRPC$TL_messages_readHistory;

    invoke-direct/range {v19 .. v19}, Lorg/telegram/tgnet/TLRPC$TL_messages_readHistory;-><init>()V

    .line 3896
    .local v19, "request":Lorg/telegram/tgnet/TLRPC$TL_messages_readHistory;
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_readHistory;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 3897
    move/from16 v0, p4

    move-object/from16 v1, v19

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_readHistory;->max_id:I

    .line 3898
    move-object/from16 v18, v19

    .restart local v18    # "req":Lorg/telegram/tgnet/TLObject;
    goto :goto_1

    .line 3948
    .end local v6    # "messageId":J
    .end local v16    # "inputPeer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    .end local v18    # "req":Lorg/telegram/tgnet/TLObject;
    .end local v19    # "request":Lorg/telegram/tgnet/TLRPC$TL_messages_readHistory;
    :cond_4
    if-eqz p5, :cond_0

    .line 3951
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v2

    .line 3952
    .local v2, "chat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    if-eqz v3, :cond_5

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    array-length v3, v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_5

    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    if-eqz v3, :cond_5

    .line 3953
    new-instance v18, Lorg/telegram/tgnet/TLRPC$TL_messages_readEncryptedHistory;

    invoke-direct/range {v18 .. v18}, Lorg/telegram/tgnet/TLRPC$TL_messages_readEncryptedHistory;-><init>()V

    .line 3954
    .local v18, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_readEncryptedHistory;
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;-><init>()V

    move-object/from16 v0, v18

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_readEncryptedHistory;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    .line 3955
    move-object/from16 v0, v18

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_readEncryptedHistory;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    iget v4, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    iput v4, v3, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;->chat_id:I

    .line 3956
    move-object/from16 v0, v18

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_readEncryptedHistory;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->access_hash:J

    iput-wide v4, v3, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;->access_hash:J

    .line 3957
    move/from16 v0, p5

    move-object/from16 v1, v18

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_readEncryptedHistory;->max_date:I

    .line 3959
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/MessagesController$64;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/messenger/MessagesController$64;-><init>(Lorg/telegram/messenger/MessagesController;)V

    move-object/from16 v0, v18

    invoke-virtual {v3, v0, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 3966
    .end local v18    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_readEncryptedHistory;
    :cond_5
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v9

    move/from16 v0, p3

    int-to-long v12, v0

    move-wide/from16 v10, p1

    move/from16 v14, p5

    invoke-virtual/range {v9 .. v14}, Lorg/telegram/messenger/MessagesStorage;->processPendingRead(JJI)V

    .line 3968
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v3

    new-instance v8, Lorg/telegram/messenger/MessagesController$65;

    move-object/from16 v9, p0

    move-wide/from16 v10, p1

    move/from16 v12, p5

    move/from16 v13, p7

    invoke-direct/range {v8 .. v13}, Lorg/telegram/messenger/MessagesController$65;-><init>(Lorg/telegram/messenger/MessagesController;JIZ)V

    invoke-virtual {v3, v8}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 3988
    iget v3, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    if-lez v3, :cond_0

    if-eqz p6, :cond_0

    .line 3989
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v3

    move/from16 v0, p5

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 3990
    .local v10, "serverTime":I
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v8

    iget v9, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    move v11, v10

    invoke-virtual/range {v8 .. v13}, Lorg/telegram/messenger/MessagesStorage;->createTaskForSecretChat(IIIILjava/util/ArrayList;)V

    goto/16 :goto_0
.end method

.method public markMessageAsRead(JJI)V
    .locals 9
    .param p1, "dialog_id"    # J
    .param p3, "random_id"    # J
    .param p5, "ttl"    # I

    .prologue
    .line 3856
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    if-gtz p5, :cond_1

    const/high16 v0, -0x80000000

    if-eq p5, v0, :cond_1

    .line 3875
    :cond_0
    :goto_0
    return-void

    .line 3859
    :cond_1
    long-to-int v8, p1

    .line 3860
    .local v8, "lower_part":I
    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v7, v0

    .line 3861
    .local v7, "high_id":I
    if-nez v8, :cond_0

    .line 3864
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v6

    .line 3865
    .local v6, "chat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    if-eqz v6, :cond_0

    .line 3868
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3869
    .local v5, "random_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3870
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v6, v5, v1}, Lorg/telegram/messenger/SecretChatHelper;->sendMessagesReadMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 3871
    if-lez p5, :cond_0

    .line 3872
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v2

    .line 3873
    .local v2, "time":I
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget v1, v6, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    const/4 v4, 0x0

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/MessagesStorage;->createTaskForSecretChat(IIIILjava/util/ArrayList;)V

    goto :goto_0
.end method

.method public markMessageContentAsRead(Lorg/telegram/messenger/MessageObject;)V
    .locals 10
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 3830
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3831
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    int-to-long v8, v1

    .line 3832
    .local v8, "messageId":J
    iget-object v1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v1, :cond_0

    .line 3833
    iget-object v1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    int-to-long v2, v1

    const/16 v1, 0x20

    shl-long/2addr v2, v1

    or-long/2addr v8, v2

    .line 3835
    :cond_0
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3836
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MessagesStorage;->markMessagesContentAsRead(Ljava/util/ArrayList;)V

    .line 3837
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagesReadContent:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 3838
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    if-gez v1, :cond_1

    .line 3839
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    iget-object v1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    const/high16 v6, -0x80000000

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/MessagesController;->markMessageAsRead(JJI)V

    .line 3853
    :goto_0
    return-void

    .line 3841
    :cond_1
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messages_readMessageContents;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messages_readMessageContents;-><init>()V

    .line 3842
    .local v7, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_readMessageContents;
    iget-object v1, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_readMessageContents;->id:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3843
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$61;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesController$61;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v1, v7, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0
.end method

.method public performLogout(Z)V
    .locals 8
    .param p1, "byUser"    # Z

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    .line 4654
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Notifications"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lorg/telegram/messenger/ChangeUserHelper;->getUserTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4655
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4656
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "emoji"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lorg/telegram/messenger/ChangeUserHelper;->getUserTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4657
    const-string/jumbo v2, "lastGifLoadTime"

    invoke-interface {v0, v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "lastStickersLoadTime"

    invoke-interface {v2, v3, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4658
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mainconfig"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lorg/telegram/messenger/ChangeUserHelper;->getUserTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4659
    const-string/jumbo v2, "gifhint"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4661
    if-eqz p1, :cond_0

    .line 4662
    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesController;->unregistedPush()V

    .line 4663
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_auth_logOut;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_auth_logOut;-><init>()V

    .line 4664
    .local v1, "req":Lorg/telegram/tgnet/TLRPC$TL_auth_logOut;
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/MessagesController$83;

    invoke-direct {v3, p0}, Lorg/telegram/messenger/MessagesController$83;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v2, v1, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 4673
    .end local v1    # "req":Lorg/telegram/tgnet/TLRPC$TL_auth_logOut;
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->clearConfig()V

    .line 4674
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->appDidLogout:I

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 4675
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2, v5}, Lorg/telegram/messenger/MessagesStorage;->cleanup(Z)V

    .line 4676
    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesController;->cleanup()V

    .line 4677
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/ContactsController;->deleteAllAppAccounts()V

    .line 4678
    return-void

    .line 4671
    :cond_0
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->cleanup()V

    goto :goto_0
.end method

.method public pinChannelMessage(Lorg/telegram/tgnet/TLRPC$Chat;IZ)V
    .locals 3
    .param p1, "chat"    # Lorg/telegram/tgnet/TLRPC$Chat;
    .param p2, "id"    # I
    .param p3, "notify"    # Z

    .prologue
    .line 1993
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_updatePinnedMessage;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_updatePinnedMessage;-><init>()V

    .line 1994
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_updatePinnedMessage;
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_updatePinnedMessage;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 1995
    iput p2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_updatePinnedMessage;->id:I

    .line 1996
    if-nez p3, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_updatePinnedMessage;->silent:Z

    .line 1997
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$34;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesController$34;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 2006
    return-void

    .line 1996
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public pinDialog(JZLorg/telegram/tgnet/TLRPC$InputPeer;J)Z
    .locals 17
    .param p1, "did"    # J
    .param p3, "pin"    # Z
    .param p4, "peer"    # Lorg/telegram/tgnet/TLRPC$InputPeer;
    .param p5, "taskId"    # J

    .prologue
    .line 5588
    move-wide/from16 v0, p1

    long-to-int v8, v0

    .line 5589
    .local v8, "lower_id":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 5590
    .local v6, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    if-eqz v6, :cond_0

    iget-boolean v13, v6, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    move/from16 v0, p3

    if-ne v13, v0, :cond_2

    .line 5591
    :cond_0
    if-eqz v6, :cond_1

    const/4 v13, 0x1

    .line 5652
    :goto_0
    return v13

    .line 5591
    :cond_1
    const/4 v13, 0x0

    goto :goto_0

    .line 5593
    :cond_2
    move/from16 v0, p3

    iput-boolean v0, v6, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    .line 5594
    if-eqz p3, :cond_7

    .line 5595
    const/4 v9, 0x0

    .line 5596
    .local v9, "maxPinnedNum":I
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v2, v13, :cond_3

    .line 5597
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 5598
    .local v3, "d":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    iget-boolean v13, v3, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    if-nez v13, :cond_6

    .line 5603
    .end local v3    # "d":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    :cond_3
    add-int/lit8 v13, v9, 0x1

    iput v13, v6, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    .line 5607
    .end local v2    # "a":I
    .end local v9    # "maxPinnedNum":I
    :goto_2
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/telegram/messenger/MessagesController;->sortDialogs(Ljava/util/HashMap;)V

    .line 5608
    if-nez p3, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v6, :cond_4

    .line 5609
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5611
    :cond_4
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v13

    sget v14, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-virtual {v13, v14, v15}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 5612
    if-eqz v8, :cond_9

    .line 5613
    const-wide/16 v14, -0x1

    cmp-long v13, p5, v14

    if-eqz v13, :cond_9

    .line 5614
    new-instance v12, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleDialogPin;

    invoke-direct {v12}, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleDialogPin;-><init>()V

    .line 5615
    .local v12, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_toggleDialogPin;
    move/from16 v0, p3

    iput-boolean v0, v12, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleDialogPin;->pinned:Z

    .line 5616
    if-nez p4, :cond_5

    .line 5617
    invoke-static {v8}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p4

    .line 5619
    :cond_5
    move-object/from16 v0, p4

    instance-of v13, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    if-eqz v13, :cond_8

    .line 5620
    const/4 v13, 0x0

    goto :goto_0

    .line 5601
    .end local v12    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_toggleDialogPin;
    .restart local v2    # "a":I
    .restart local v3    # "d":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .restart local v9    # "maxPinnedNum":I
    :cond_6
    iget v13, v3, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    invoke-static {v13, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 5596
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 5605
    .end local v2    # "a":I
    .end local v3    # "d":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v9    # "maxPinnedNum":I
    :cond_7
    const/4 v13, 0x0

    iput v13, v6, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    goto :goto_2

    .line 5622
    .restart local v12    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_toggleDialogPin;
    :cond_8
    move-object/from16 v0, p4

    iput-object v0, v12, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleDialogPin;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 5625
    const-wide/16 v14, 0x0

    cmp-long v13, p5, v14

    if-nez v13, :cond_a

    .line 5626
    const/4 v4, 0x0

    .line 5628
    .local v4, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :try_start_0
    new-instance v5, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual/range {p4 .. p4}, Lorg/telegram/tgnet/TLRPC$InputPeer;->getObjectSize()I

    move-result v13

    add-int/lit8 v13, v13, 0x10

    invoke-direct {v5, v13}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5629
    .end local v4    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .local v5, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    const/4 v13, 0x1

    :try_start_1
    invoke-virtual {v5, v13}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    .line 5630
    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt64(J)V

    .line 5631
    move/from16 v0, p3

    invoke-virtual {v5, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->writeBool(Z)V

    .line 5632
    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Lorg/telegram/tgnet/TLRPC$InputPeer;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v5

    .line 5636
    .end local v5    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v4    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :goto_3
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v13

    invoke-virtual {v13, v4}, Lorg/telegram/messenger/MessagesStorage;->createPendingTask(Lorg/telegram/tgnet/NativeByteBuffer;)J

    move-result-wide v10

    .line 5641
    .end local v4    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .local v10, "newTaskId":J
    :goto_4
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v13

    new-instance v14, Lorg/telegram/messenger/MessagesController$95;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v10, v11}, Lorg/telegram/messenger/MessagesController$95;-><init>(Lorg/telegram/messenger/MessagesController;J)V

    invoke-virtual {v13, v12, v14}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 5651
    .end local v10    # "newTaskId":J
    .end local v12    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_toggleDialogPin;
    :cond_9
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v13

    iget v14, v6, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    move-wide/from16 v0, p1

    invoke-virtual {v13, v0, v1, v14}, Lorg/telegram/messenger/MessagesStorage;->setDialogPinned(JI)V

    .line 5652
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 5633
    .restart local v4    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v12    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_toggleDialogPin;
    :catch_0
    move-exception v7

    .line 5634
    .local v7, "e":Ljava/lang/Exception;
    :goto_5
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 5638
    .end local v4    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_a
    move-wide/from16 v10, p5

    .restart local v10    # "newTaskId":J
    goto :goto_4

    .line 5633
    .end local v10    # "newTaskId":J
    .restart local v5    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :catch_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v4    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    goto :goto_5
.end method

.method public processChatInfo(ILorg/telegram/tgnet/TLRPC$ChatFull;Ljava/util/ArrayList;ZZZLorg/telegram/messenger/MessageObject;)V
    .locals 7
    .param p1, "chat_id"    # I
    .param p2, "info"    # Lorg/telegram/tgnet/TLRPC$ChatFull;
    .param p4, "fromCache"    # Z
    .param p5, "force"    # Z
    .param p6, "byChannelUsers"    # Z
    .param p7, "pinnedMessageObject"    # Lorg/telegram/messenger/MessageObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/telegram/tgnet/TLRPC$ChatFull;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;ZZZ",
            "Lorg/telegram/messenger/MessageObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2239
    .local p3, "usersArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    if-eqz p4, :cond_0

    if-lez p1, :cond_0

    if-nez p6, :cond_0

    .line 2240
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p5}, Lorg/telegram/messenger/MessagesController;->loadFullChat(IIZ)V

    .line 2242
    :cond_0
    if-eqz p2, :cond_1

    .line 2243
    new-instance v0, Lorg/telegram/messenger/MessagesController$42;

    move-object v1, p0

    move-object v2, p3

    move v3, p4

    move-object v4, p2

    move v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/MessagesController$42;-><init>(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;ZLorg/telegram/tgnet/TLRPC$ChatFull;ZLorg/telegram/messenger/MessageObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2251
    :cond_1
    return-void
.end method

.method public processDialogsUpdate(Lorg/telegram/tgnet/TLRPC$messages_Dialogs;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "dialogsRes"    # Lorg/telegram/tgnet/TLRPC$messages_Dialogs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$messages_Dialogs;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$EncryptedChat;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3643
    .local p2, "encChats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$EncryptedChat;>;"
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesController$59;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesController$59;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$messages_Dialogs;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 3795
    return-void
.end method

.method public processDialogsUpdateRead(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3537
    .local p1, "dialogsToUpdate":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    new-instance v0, Lorg/telegram/messenger/MessagesController$57;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/MessagesController$57;-><init>(Lorg/telegram/messenger/MessagesController;Ljava/util/HashMap;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 3550
    return-void
.end method

.method public processLoadedBlockedUsers(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 1
    .param p3, "cache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1770
    .local p1, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    new-instance v0, Lorg/telegram/messenger/MessagesController$28;

    invoke-direct {v0, p0, p2, p3, p1}, Lorg/telegram/messenger/MessagesController$28;-><init>(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;ZLjava/util/ArrayList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1788
    return-void
.end method

.method public processLoadedDeleteTask(ILjava/util/ArrayList;)V
    .locals 2
    .param p1, "taskTime"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1608
    .local p2, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesController$22;

    invoke-direct {v1, p0, p2, p1}, Lorg/telegram/messenger/MessagesController$22;-><init>(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1637
    return-void
.end method

.method public processLoadedDialogs(Lorg/telegram/tgnet/TLRPC$messages_Dialogs;Ljava/util/ArrayList;IIIZZZ)V
    .locals 11
    .param p1, "dialogsRes"    # Lorg/telegram/tgnet/TLRPC$messages_Dialogs;
    .param p3, "offset"    # I
    .param p4, "count"    # I
    .param p5, "loadType"    # I
    .param p6, "resetEnd"    # Z
    .param p7, "migrate"    # Z
    .param p8, "fromCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$messages_Dialogs;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$EncryptedChat;",
            ">;IIIZZZ)V"
        }
    .end annotation

    .prologue
    .line 3162
    .local p2, "encChats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$EncryptedChat;>;"
    sget-object v10, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/MessagesController$56;

    move-object v1, p0

    move/from16 v2, p5

    move-object v3, p1

    move/from16 v4, p6

    move v5, p4

    move v6, p3

    move-object v7, p2

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lorg/telegram/messenger/MessagesController$56;-><init>(Lorg/telegram/messenger/MessagesController;ILorg/telegram/tgnet/TLRPC$messages_Dialogs;ZIILjava/util/ArrayList;ZZ)V

    invoke-virtual {v10, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 3448
    return-void
.end method

.method public processLoadedMessages(Lorg/telegram/tgnet/TLRPC$messages_Messages;JIIIZIIIIIIZZIZ)V
    .locals 22
    .param p1, "messagesRes"    # Lorg/telegram/tgnet/TLRPC$messages_Messages;
    .param p2, "dialog_id"    # J
    .param p4, "count"    # I
    .param p5, "max_id"    # I
    .param p6, "offset_date"    # I
    .param p7, "isCache"    # Z
    .param p8, "classGuid"    # I
    .param p9, "first_unread"    # I
    .param p10, "last_message_id"    # I
    .param p11, "unread_count"    # I
    .param p12, "last_date"    # I
    .param p13, "load_type"    # I
    .param p14, "isChannel"    # Z
    .param p15, "isEnd"    # Z
    .param p16, "loadIndex"    # I
    .param p17, "queryFromServer"    # Z

    .prologue
    .line 2788
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processLoadedMessages size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " in chat "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " max_id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " cache "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " guid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " load_type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p13

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " last_message_id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p10

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " isChannel "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p14

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " firstUnread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p9

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " underad count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p11

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " last_date "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p12

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " queryFromServer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 2789
    sget-object v2, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/messenger/MessagesController$53;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-wide/from16 v6, p2

    move/from16 v8, p7

    move/from16 v9, p4

    move/from16 v10, p13

    move/from16 v11, p17

    move/from16 v12, p9

    move/from16 v13, p5

    move/from16 v14, p6

    move/from16 v15, p8

    move/from16 v16, p10

    move/from16 v17, p14

    move/from16 v18, p16

    move/from16 v19, p11

    move/from16 v20, p12

    move/from16 v21, p15

    invoke-direct/range {v3 .. v21}, Lorg/telegram/messenger/MessagesController$53;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$messages_Messages;JZIIZIIIIIZIIIZ)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 2939
    return-void
.end method

.method public processLoadedUserPhotos(Lorg/telegram/tgnet/TLRPC$photos_Photos;IIIJZI)V
    .locals 9
    .param p1, "res"    # Lorg/telegram/tgnet/TLRPC$photos_Photos;
    .param p2, "did"    # I
    .param p3, "offset"    # I
    .param p4, "count"    # I
    .param p5, "max_id"    # J
    .param p7, "fromCache"    # Z
    .param p8, "classGuid"    # I

    .prologue
    .line 1848
    if-nez p7, :cond_1

    .line 1849
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$photos_Photos;->users:Ljava/util/ArrayList;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 1850
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lorg/telegram/messenger/MessagesStorage;->putDialogPhotos(ILorg/telegram/tgnet/TLRPC$photos_Photos;)V

    .line 1855
    :cond_0
    new-instance v0, Lorg/telegram/messenger/MessagesController$31;

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p7

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/MessagesController$31;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$photos_Photos;ZIIII)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1862
    :goto_0
    return-void

    .line 1851
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$photos_Photos;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1852
    :cond_2
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move-wide v4, p5

    move/from16 v7, p8

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/messenger/MessagesController;->loadDialogPhotos(IIIJZI)V

    goto :goto_0
.end method

.method protected processNewChannelDifferenceParams(III)V
    .locals 10
    .param p1, "pts"    # I
    .param p2, "pts_count"    # I
    .param p3, "channelId"    # I

    .prologue
    .line 1461
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "processNewChannelDifferenceParams pts = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " pts_count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " channeldId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1462
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    neg-int v7, p3

    int-to-long v8, v7

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 1463
    .local v2, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    invoke-static {v2}, Lorg/telegram/messenger/DialogObject;->isChannel(Lorg/telegram/tgnet/TLRPC$TL_dialog;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1503
    :cond_0
    :goto_0
    return-void

    .line 1466
    :cond_1
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->channelsPts:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1467
    .local v1, "channelPts":Ljava/lang/Integer;
    if-nez v1, :cond_3

    .line 1468
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v6

    invoke-virtual {v6, p3}, Lorg/telegram/messenger/MessagesStorage;->getChannelPtsSync(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1469
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_2

    .line 1470
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1472
    :cond_2
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->channelsPts:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1474
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v6, p2

    if-ne v6, p1, :cond_4

    .line 1475
    const-string/jumbo v6, "APPLY CHANNEL PTS"

    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1476
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->channelsPts:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1477
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v6

    invoke-virtual {v6, p3, p1}, Lorg/telegram/messenger/MessagesStorage;->saveChannelPts(II)V

    goto :goto_0

    .line 1478
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v6, p1, :cond_0

    .line 1479
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeChannels:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 1480
    .local v5, "updatesStartWaitTime":Ljava/lang/Long;
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->gettingDifferenceChannels:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 1481
    .local v3, "gettingDifferenceChannel":Ljava/lang/Boolean;
    if-nez v3, :cond_5

    .line 1482
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 1484
    :cond_5
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_6

    if-eqz v5, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/16 v8, 0x5dc

    cmp-long v6, v6, v8

    if-gtz v6, :cond_9

    .line 1485
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ADD CHANNEL UPDATE TO QUEUE pts = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " pts_count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1486
    if-nez v5, :cond_7

    .line 1487
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeChannels:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1489
    :cond_7
    new-instance v4, Lorg/telegram/messenger/MessagesController$UserActionUpdatesPts;

    const/4 v6, 0x0

    invoke-direct {v4, p0, v6}, Lorg/telegram/messenger/MessagesController$UserActionUpdatesPts;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/messenger/MessagesController$1;)V

    .line 1490
    .local v4, "updates":Lorg/telegram/messenger/MessagesController$UserActionUpdatesPts;
    iput p1, v4, Lorg/telegram/messenger/MessagesController$UserActionUpdatesPts;->pts:I

    .line 1491
    iput p2, v4, Lorg/telegram/messenger/MessagesController$UserActionUpdatesPts;->pts_count:I

    .line 1492
    iput p3, v4, Lorg/telegram/messenger/MessagesController$UserActionUpdatesPts;->chat_id:I

    .line 1493
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->updatesQueueChannels:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1494
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Updates;>;"
    if-nez v0, :cond_8

    .line 1495
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Updates;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1496
    .restart local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Updates;>;"
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->updatesQueueChannels:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1498
    :cond_8
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1500
    .end local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Updates;>;"
    .end local v4    # "updates":Lorg/telegram/messenger/MessagesController$UserActionUpdatesPts;
    :cond_9
    invoke-direct {p0, p3}, Lorg/telegram/messenger/MessagesController;->getChannelDifference(I)V

    goto/16 :goto_0
.end method

.method protected processNewDifferenceParams(IIII)V
    .locals 6
    .param p1, "seq"    # I
    .param p2, "pts"    # I
    .param p3, "date"    # I
    .param p4, "pts_count"    # I

    .prologue
    .line 1506
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processNewDifferenceParams seq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " pts = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " date = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " pts_count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1507
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    .line 1508
    sget v1, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    add-int/2addr v1, p4

    if-ne v1, p2, :cond_3

    .line 1509
    const-string/jumbo v1, "APPLY PTS"

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1510
    sput p2, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    .line 1511
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    sget v3, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    sget v4, Lorg/telegram/messenger/MessagesStorage;->lastDateValue:I

    sget v5, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/telegram/messenger/MessagesStorage;->saveDiffParams(IIII)V

    .line 1527
    :cond_0
    :goto_0
    const/4 v1, -0x1

    if-eq p1, v1, :cond_2

    .line 1528
    sget v1, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    add-int/lit8 v1, v1, 0x1

    if-ne v1, p1, :cond_7

    .line 1529
    const-string/jumbo v1, "APPLY SEQ"

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1530
    sput p1, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    .line 1531
    const/4 v1, -0x1

    if-eq p3, v1, :cond_1

    .line 1532
    sput p3, Lorg/telegram/messenger/MessagesStorage;->lastDateValue:I

    .line 1534
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    sget v3, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    sget v4, Lorg/telegram/messenger/MessagesStorage;->lastDateValue:I

    sget v5, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/telegram/messenger/MessagesStorage;->saveDiffParams(IIII)V

    .line 1549
    :cond_2
    :goto_1
    return-void

    .line 1512
    :cond_3
    sget v1, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    if-eq v1, p2, :cond_0

    .line 1513
    iget-boolean v1, p0, Lorg/telegram/messenger/MessagesController;->gettingDifference:Z

    if-nez v1, :cond_4

    iget-wide v2, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimePts:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimePts:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x5dc

    cmp-long v1, v2, v4

    if-gtz v1, :cond_6

    .line 1514
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ADD UPDATE TO QUEUE pts = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " pts_count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1515
    iget-wide v2, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimePts:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_5

    .line 1516
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimePts:J

    .line 1518
    :cond_5
    new-instance v0, Lorg/telegram/messenger/MessagesController$UserActionUpdatesPts;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/messenger/MessagesController$UserActionUpdatesPts;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/messenger/MessagesController$1;)V

    .line 1519
    .local v0, "updates":Lorg/telegram/messenger/MessagesController$UserActionUpdatesPts;
    iput p2, v0, Lorg/telegram/messenger/MessagesController$UserActionUpdatesPts;->pts:I

    .line 1520
    iput p4, v0, Lorg/telegram/messenger/MessagesController$UserActionUpdatesPts;->pts_count:I

    .line 1521
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->updatesQueuePts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1523
    .end local v0    # "updates":Lorg/telegram/messenger/MessagesController$UserActionUpdatesPts;
    :cond_6
    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesController;->getDifference()V

    goto/16 :goto_0

    .line 1535
    :cond_7
    sget v1, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    if-eq v1, p1, :cond_2

    .line 1536
    iget-boolean v1, p0, Lorg/telegram/messenger/MessagesController;->gettingDifference:Z

    if-nez v1, :cond_8

    iget-wide v2, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeSeq:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeSeq:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x5dc

    cmp-long v1, v2, v4

    if-gtz v1, :cond_a

    .line 1537
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ADD UPDATE TO QUEUE seq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1538
    iget-wide v2, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeSeq:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_9

    .line 1539
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeSeq:J

    .line 1541
    :cond_9
    new-instance v0, Lorg/telegram/messenger/MessagesController$UserActionUpdatesSeq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/messenger/MessagesController$UserActionUpdatesSeq;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/messenger/MessagesController$1;)V

    .line 1542
    .local v0, "updates":Lorg/telegram/messenger/MessagesController$UserActionUpdatesSeq;
    iput p1, v0, Lorg/telegram/messenger/MessagesController$UserActionUpdatesSeq;->seq:I

    .line 1543
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->updatesQueueSeq:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1545
    .end local v0    # "updates":Lorg/telegram/messenger/MessagesController$UserActionUpdatesSeq;
    :cond_a
    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesController;->getDifference()V

    goto/16 :goto_1
.end method

.method public processUpdateArray(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)Z
    .locals 90
    .param p4, "fromGetDifference"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Update;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 6503
    .local p1, "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Update;>;"
    .local p2, "usersArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    .local p3, "chatsArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Chat;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 6504
    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    .line 6505
    :cond_0
    new-instance v4, Lorg/telegram/messenger/MessagesController$105;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v4, v0, v1, v2}, Lorg/telegram/messenger/MessagesController$105;-><init>(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 6513
    :cond_1
    const/4 v4, 0x1

    .line 7727
    :goto_0
    return v4

    .line 6515
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v46

    .line 6517
    .local v46, "currentTime":J
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 6518
    .local v11, "messages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;>;"
    new-instance v89, Ljava/util/HashMap;

    invoke-direct/range {v89 .. v89}, Ljava/util/HashMap;-><init>()V

    .line 6519
    .local v89, "webPages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$WebPage;>;"
    new-instance v74, Ljava/util/ArrayList;

    invoke-direct/range {v74 .. v74}, Ljava/util/ArrayList;-><init>()V

    .line 6520
    .local v74, "pushMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    new-instance v63, Ljava/util/ArrayList;

    invoke-direct/range {v63 .. v63}, Ljava/util/ArrayList;-><init>()V

    .line 6521
    .local v63, "messagesArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 6522
    .local v12, "editingMessages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;>;"
    new-instance v16, Landroid/util/SparseArray;

    invoke-direct/range {v16 .. v16}, Landroid/util/SparseArray;-><init>()V

    .line 6523
    .local v16, "channelViews":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    new-instance v19, Landroid/util/SparseArray;

    invoke-direct/range {v19 .. v19}, Landroid/util/SparseArray;-><init>()V

    .line 6524
    .local v19, "markAsReadMessagesInbox":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    new-instance v20, Landroid/util/SparseArray;

    invoke-direct/range {v20 .. v20}, Landroid/util/SparseArray;-><init>()V

    .line 6525
    .local v20, "markAsReadMessagesOutbox":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 6526
    .local v22, "markAsReadMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    .line 6527
    .local v21, "markAsReadEncrypted":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    new-instance v23, Landroid/util/SparseArray;

    invoke-direct/range {v23 .. v23}, Landroid/util/SparseArray;-><init>()V

    .line 6528
    .local v23, "deletedMessages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    const/16 v72, 0x0

    .line 6529
    .local v72, "printChanged":Z
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 6530
    .local v15, "chatInfoToUpdate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$ChatParticipants;>;"
    new-instance v83, Ljava/util/ArrayList;

    invoke-direct/range {v83 .. v83}, Ljava/util/ArrayList;-><init>()V

    .line 6531
    .local v83, "updatesOnMainThread":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Update;>;"
    new-instance v76, Ljava/util/ArrayList;

    invoke-direct/range {v76 .. v76}, Ljava/util/ArrayList;-><init>()V

    .line 6532
    .local v76, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_updateEncryptedMessagesRead;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 6534
    .local v14, "contactsIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v41, 0x1

    .line 6537
    .local v41, "checkForUsers":Z
    if-eqz p2, :cond_3

    .line 6538
    new-instance v86, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct/range {v86 .. v86}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 6539
    .local v86, "usersDict":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$User;>;"
    const/16 v30, 0x0

    .local v30, "a":I
    :goto_1
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v30

    if-ge v0, v4, :cond_4

    .line 6540
    move-object/from16 v0, p2

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v84

    check-cast v84, Lorg/telegram/tgnet/TLRPC$User;

    .line 6541
    .local v84, "user":Lorg/telegram/tgnet/TLRPC$User;
    move-object/from16 v0, v84

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v86

    move-object/from16 v1, v84

    invoke-virtual {v0, v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6539
    add-int/lit8 v30, v30, 0x1

    goto :goto_1

    .line 6544
    .end local v30    # "a":I
    .end local v84    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .end local v86    # "usersDict":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$User;>;"
    :cond_3
    const/16 v41, 0x0

    .line 6545
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->users:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v86, v0

    .line 6547
    .restart local v86    # "usersDict":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$User;>;"
    :cond_4
    if-eqz p3, :cond_5

    .line 6548
    new-instance v40, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct/range {v40 .. v40}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 6549
    .local v40, "chatsDict":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$Chat;>;"
    const/16 v30, 0x0

    .restart local v30    # "a":I
    :goto_2
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v30

    if-ge v0, v4, :cond_6

    .line 6550
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 6551
    .local v38, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    move-object/from16 v0, v38

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v40

    move-object/from16 v1, v38

    invoke-virtual {v0, v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6549
    add-int/lit8 v30, v30, 0x1

    goto :goto_2

    .line 6554
    .end local v30    # "a":I
    .end local v38    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v40    # "chatsDict":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$Chat;>;"
    :cond_5
    const/16 v41, 0x0

    .line 6555
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->chats:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v40, v0

    .line 6557
    .restart local v40    # "chatsDict":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$Chat;>;"
    :cond_6
    if-eqz p4, :cond_7

    .line 6558
    const/16 v41, 0x0

    .line 6561
    :cond_7
    if-nez p2, :cond_8

    if-eqz p3, :cond_9

    .line 6562
    :cond_8
    new-instance v4, Lorg/telegram/messenger/MessagesController$106;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v4, v0, v1, v2}, Lorg/telegram/messenger/MessagesController$106;-><init>(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 6571
    :cond_9
    const/16 v58, 0x0

    .line 6573
    .local v58, "interfaceUpdateMask":I
    const/16 v36, 0x0

    .local v36, "c":I
    :goto_3
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v36

    if-ge v0, v4, :cond_a3

    .line 6574
    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v80

    check-cast v80, Lorg/telegram/tgnet/TLRPC$Update;

    .line 6575
    .local v80, "update":Lorg/telegram/tgnet/TLRPC$Update;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "process update "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v80

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 6576
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;

    if-nez v4, :cond_a

    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;

    if-eqz v4, :cond_31

    .line 6578
    :cond_a
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;

    if-eqz v4, :cond_f

    .line 6579
    check-cast v80, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;

    .end local v80    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    move-object/from16 v0, v80

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v61, v0

    .line 6589
    .local v61, "message":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_b
    :goto_4
    const/16 v38, 0x0

    .line 6590
    .restart local v38    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    const/16 v39, 0x0

    .line 6591
    .local v39, "chat_id":I
    const/16 v85, 0x0

    .line 6592
    .local v85, "user_id":I
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v4, :cond_11

    .line 6593
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v39, v0

    .line 6599
    :cond_c
    :goto_5
    if-eqz v39, :cond_e

    .line 6600
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    .end local v38    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    check-cast v38, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 6601
    .restart local v38    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-nez v38, :cond_d

    .line 6602
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v38

    .line 6604
    :cond_d
    if-nez v38, :cond_e

    .line 6605
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move/from16 v0, v39

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesStorage;->getChatSync(I)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v38

    .line 6606
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1, v4}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    .line 6609
    :cond_e
    if-eqz v41, :cond_20

    .line 6610
    if-eqz v39, :cond_13

    .line 6611
    if-nez v38, :cond_13

    .line 6612
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "not found chat "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 6613
    const/4 v4, 0x0

    goto/16 :goto_0

    .end local v38    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v39    # "chat_id":I
    .end local v61    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v85    # "user_id":I
    .restart local v80    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    :cond_f
    move-object/from16 v4, v80

    .line 6581
    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;

    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v61, v0

    .line 6582
    .restart local v61    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    sget-boolean v4, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v4, :cond_10

    .line 6583
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v80

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " channelId = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v61

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 6585
    :cond_10
    move-object/from16 v0, v61

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    if-nez v4, :cond_b

    move-object/from16 v0, v61

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v6

    if-ne v4, v6, :cond_b

    .line 6586
    const/4 v4, 0x1

    move-object/from16 v0, v61

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    goto/16 :goto_4

    .line 6594
    .end local v80    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    .restart local v38    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .restart local v39    # "chat_id":I
    .restart local v85    # "user_id":I
    :cond_11
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    if-eqz v4, :cond_12

    .line 6595
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v4, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    move/from16 v39, v0

    goto/16 :goto_5

    .line 6596
    :cond_12
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    if-eqz v4, :cond_c

    .line 6597
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    move/from16 v85, v0

    goto/16 :goto_5

    .line 6617
    :cond_13
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v44, v4, 0x3

    .line 6618
    .local v44, "count":I
    const/16 v30, 0x0

    .restart local v30    # "a":I
    :goto_6
    move/from16 v0, v30

    move/from16 v1, v44

    if-ge v0, v1, :cond_20

    .line 6619
    const/16 v31, 0x0

    .line 6620
    .local v31, "allowMin":Z
    if-eqz v30, :cond_14

    .line 6621
    const/4 v4, 0x1

    move/from16 v0, v30

    if-ne v0, v4, :cond_1a

    .line 6622
    move-object/from16 v0, v61

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    move/from16 v85, v0

    .line 6623
    move-object/from16 v0, v61

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->post:Z

    if-eqz v4, :cond_14

    .line 6624
    const/16 v31, 0x1

    .line 6633
    :cond_14
    :goto_7
    if-lez v85, :cond_1f

    .line 6634
    invoke-static/range {v85 .. v85}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v86

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v84

    check-cast v84, Lorg/telegram/tgnet/TLRPC$User;

    .line 6635
    .restart local v84    # "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v84, :cond_15

    if-nez v31, :cond_16

    move-object/from16 v0, v84

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$User;->min:Z

    if-eqz v4, :cond_16

    .line 6636
    :cond_15
    invoke-static/range {v85 .. v85}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v84

    .line 6638
    :cond_16
    if-eqz v84, :cond_17

    if-nez v31, :cond_19

    move-object/from16 v0, v84

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$User;->min:Z

    if-eqz v4, :cond_19

    .line 6639
    :cond_17
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move/from16 v0, v85

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesStorage;->getUserSync(I)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v84

    .line 6640
    if-eqz v84, :cond_18

    if-nez v31, :cond_18

    move-object/from16 v0, v84

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$User;->min:Z

    if-eqz v4, :cond_18

    .line 6641
    const/16 v84, 0x0

    .line 6643
    :cond_18
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v84

    invoke-virtual {v0, v1, v4}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 6645
    :cond_19
    if-nez v84, :cond_1e

    .line 6646
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "not found user "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v85

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 6647
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 6626
    .end local v84    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_1a
    const/4 v4, 0x2

    move/from16 v0, v30

    if-ne v0, v4, :cond_1c

    .line 6627
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    if-eqz v4, :cond_1b

    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v0, v4, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->from_id:I

    move/from16 v85, v0

    :goto_8
    goto :goto_7

    :cond_1b
    const/16 v85, 0x0

    goto :goto_8

    .line 6629
    :cond_1c
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    add-int/lit8 v6, v30, -0x3

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    .line 6630
    .local v51, "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    move-object/from16 v0, v51

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;

    if-eqz v4, :cond_1d

    check-cast v51, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;

    .end local v51    # "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    move-object/from16 v0, v51

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;->user_id:I

    move/from16 v85, v0

    :goto_9
    goto/16 :goto_7

    .restart local v51    # "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_1d
    const/16 v85, 0x0

    goto :goto_9

    .line 6649
    .end local v51    # "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    .restart local v84    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_1e
    const/4 v4, 0x1

    move/from16 v0, v30

    if-ne v0, v4, :cond_1f

    move-object/from16 v0, v84

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v4, :cond_1f

    move-object/from16 v0, v84

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    if-gtz v4, :cond_1f

    .line 6650
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->onlinePrivacy:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {v85 .. v85}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6651
    or-int/lit8 v58, v58, 0x4

    .line 6618
    .end local v84    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_1f
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_6

    .line 6656
    .end local v30    # "a":I
    .end local v31    # "allowMin":Z
    .end local v44    # "count":I
    :cond_20
    if-eqz v38, :cond_21

    move-object/from16 v0, v38

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v4, :cond_21

    .line 6657
    move-object/from16 v0, v61

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/high16 v6, -0x80000000

    or-int/2addr v4, v6

    move-object/from16 v0, v61

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 6660
    :cond_21
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatDeleteUser;

    if-eqz v4, :cond_23

    .line 6661
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/MessagesController;->hideLeftGroup:Z

    if-eqz v4, :cond_22

    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$MessageAction;->user_id:I

    move-object/from16 v0, v61

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    if-eq v4, v6, :cond_23

    .line 6662
    :cond_22
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$MessageAction;->user_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v86

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v84

    check-cast v84, Lorg/telegram/tgnet/TLRPC$User;

    .line 6663
    .restart local v84    # "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v84, :cond_2a

    move-object/from16 v0, v84

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v4, :cond_2a

    .line 6664
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardHide;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardHide;-><init>()V

    move-object/from16 v0, v61

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    .line 6670
    .end local v84    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_23
    :goto_a
    move-object/from16 v0, v63

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6671
    invoke-static/range {v61 .. v61}, Lorg/telegram/messenger/ImageLoader;->saveMessageThumbs(Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 6672
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v43

    .line 6673
    .local v43, "clientUserId":I
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    if-eqz v4, :cond_2b

    .line 6674
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    neg-int v4, v4

    int-to-long v6, v4

    move-object/from16 v0, v61

    iput-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 6684
    :goto_b
    move-object/from16 v0, v61

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    if-eqz v4, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v75, v0

    .line 6685
    .local v75, "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    :goto_c
    move-object/from16 v0, v61

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v75

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v87

    check-cast v87, Ljava/lang/Integer;

    .line 6686
    .local v87, "value":Ljava/lang/Integer;
    if-nez v87, :cond_24

    .line 6687
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v61

    iget-boolean v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    move-object/from16 v0, v61

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-virtual {v4, v6, v8, v9}, Lorg/telegram/messenger/MessagesStorage;->getDialogReadMax(ZJ)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v87

    .line 6688
    move-object/from16 v0, v61

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v75

    move-object/from16 v1, v87

    invoke-virtual {v0, v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6690
    :cond_24
    invoke-virtual/range {v87 .. v87}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, v61

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-ge v4, v6, :cond_2f

    if-eqz v38, :cond_25

    invoke-static/range {v38 .. v38}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v4

    if-nez v4, :cond_2f

    :cond_25
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatMigrateTo;

    if-nez v4, :cond_2f

    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageActionChannelCreate;

    if-nez v4, :cond_2f

    const/4 v4, 0x1

    :goto_d
    move-object/from16 v0, v61

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    .line 6691
    move-object/from16 v0, v61

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move/from16 v0, v43

    int-to-long v8, v0

    cmp-long v4, v6, v8

    if-nez v4, :cond_26

    .line 6692
    const/4 v4, 0x0

    move-object/from16 v0, v61

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    .line 6693
    const/4 v4, 0x0

    move-object/from16 v0, v61

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media_unread:Z

    .line 6694
    const/4 v4, 0x1

    move-object/from16 v0, v61

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 6697
    :cond_26
    new-instance v69, Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->createdDialogIds:Ljava/util/ArrayList;

    move-object/from16 v0, v61

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    move-object/from16 v0, v69

    move-object/from16 v1, v61

    move-object/from16 v2, v86

    move-object/from16 v3, v40

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Ljava/util/AbstractMap;Z)V

    .line 6698
    .local v69, "obj":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, v69

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v6, 0xb

    if-ne v4, v6, :cond_30

    .line 6699
    or-int/lit8 v58, v58, 0x8

    .line 6703
    :cond_27
    :goto_e
    move-object/from16 v0, v61

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/util/ArrayList;

    .line 6704
    .local v32, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    if-nez v32, :cond_28

    .line 6705
    new-instance v32, Ljava/util/ArrayList;

    .end local v32    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 6706
    .restart local v32    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    move-object/from16 v0, v61

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v11, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6708
    :cond_28
    move-object/from16 v0, v32

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6709
    invoke-virtual/range {v69 .. v69}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v4

    if-nez v4, :cond_29

    invoke-virtual/range {v69 .. v69}, Lorg/telegram/messenger/MessageObject;->isUnread()Z

    move-result v4

    if-eqz v4, :cond_29

    .line 6710
    move-object/from16 v0, v74

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6573
    .end local v32    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v38    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v39    # "chat_id":I
    .end local v43    # "clientUserId":I
    .end local v61    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v69    # "obj":Lorg/telegram/messenger/MessageObject;
    .end local v75    # "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v85    # "user_id":I
    .end local v87    # "value":Ljava/lang/Integer;
    :cond_29
    :goto_f
    add-int/lit8 v36, v36, 0x1

    goto/16 :goto_3

    .line 6665
    .restart local v38    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .restart local v39    # "chat_id":I
    .restart local v61    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v84    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .restart local v85    # "user_id":I
    :cond_2a
    move-object/from16 v0, v61

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v6

    if-ne v4, v6, :cond_23

    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$MessageAction;->user_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v6

    if-ne v4, v6, :cond_23

    goto/16 :goto_a

    .line 6675
    .end local v84    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .restart local v43    # "clientUserId":I
    :cond_2b
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v4, :cond_2c

    .line 6676
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    neg-int v4, v4

    int-to-long v6, v4

    move-object/from16 v0, v61

    iput-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    goto/16 :goto_b

    .line 6678
    :cond_2c
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    move/from16 v0, v43

    if-ne v4, v0, :cond_2d

    .line 6679
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v0, v61

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    .line 6681
    :cond_2d
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    int-to-long v6, v4

    move-object/from16 v0, v61

    iput-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    goto/16 :goto_b

    .line 6684
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v75, v0

    goto/16 :goto_c

    .line 6690
    .restart local v75    # "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .restart local v87    # "value":Ljava/lang/Integer;
    :cond_2f
    const/4 v4, 0x0

    goto/16 :goto_d

    .line 6700
    .restart local v69    # "obj":Lorg/telegram/messenger/MessageObject;
    :cond_30
    move-object/from16 v0, v69

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v6, 0xa

    if-ne v4, v6, :cond_27

    .line 6701
    or-int/lit8 v58, v58, 0x10

    goto/16 :goto_e

    .line 6712
    .end local v38    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v39    # "chat_id":I
    .end local v43    # "clientUserId":I
    .end local v61    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v69    # "obj":Lorg/telegram/messenger/MessageObject;
    .end local v75    # "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v85    # "user_id":I
    .end local v87    # "value":Ljava/lang/Integer;
    .restart local v80    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    :cond_31
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadMessagesContents;

    if-eqz v4, :cond_32

    .line 6713
    const/16 v30, 0x0

    .restart local v30    # "a":I
    :goto_10
    move-object/from16 v0, v80

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v30

    if-ge v0, v4, :cond_29

    .line 6714
    move-object/from16 v0, v80

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->messages:Ljava/util/ArrayList;

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v54, v0

    .line 6715
    .local v54, "id":J
    invoke-static/range {v54 .. v55}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6713
    add-int/lit8 v30, v30, 0x1

    goto :goto_10

    .line 6717
    .end local v30    # "a":I
    .end local v54    # "id":J
    :cond_32
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;

    if-nez v4, :cond_33

    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryOutbox;

    if-eqz v4, :cond_38

    .line 6720
    :cond_33
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;

    if-eqz v4, :cond_36

    move-object/from16 v4, v80

    .line 6721
    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;

    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v71, v0

    .line 6722
    .local v71, "peer":Lorg/telegram/tgnet/TLRPC$Peer;
    move-object/from16 v0, v71

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    if-eqz v4, :cond_35

    .line 6723
    move-object/from16 v0, v71

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    neg-int v4, v4

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->max_id:I

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6724
    move-object/from16 v0, v71

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    neg-int v4, v4

    int-to-long v0, v4

    move-wide/from16 v48, v0

    .line 6729
    .local v48, "dialog_id":J
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v75, v0

    .line 6741
    .restart local v75    # "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    :goto_12
    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v75

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v87

    check-cast v87, Ljava/lang/Integer;

    .line 6742
    .restart local v87    # "value":Ljava/lang/Integer;
    if-nez v87, :cond_34

    .line 6743
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v80

    instance-of v6, v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryOutbox;

    move-wide/from16 v0, v48

    invoke-virtual {v4, v6, v0, v1}, Lorg/telegram/messenger/MessagesStorage;->getDialogReadMax(ZJ)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v87

    .line 6745
    :cond_34
    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual/range {v87 .. v87}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v0, v80

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$Update;->max_id:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v75

    invoke-virtual {v0, v4, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_f

    .line 6726
    .end local v48    # "dialog_id":J
    .end local v75    # "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v87    # "value":Ljava/lang/Integer;
    :cond_35
    move-object/from16 v0, v71

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->max_id:I

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6727
    move-object/from16 v0, v71

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    int-to-long v0, v4

    move-wide/from16 v48, v0

    .restart local v48    # "dialog_id":J
    goto :goto_11

    .end local v48    # "dialog_id":J
    .end local v71    # "peer":Lorg/telegram/tgnet/TLRPC$Peer;
    :cond_36
    move-object/from16 v4, v80

    .line 6731
    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryOutbox;

    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryOutbox;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v71, v0

    .line 6732
    .restart local v71    # "peer":Lorg/telegram/tgnet/TLRPC$Peer;
    move-object/from16 v0, v71

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    if-eqz v4, :cond_37

    .line 6733
    move-object/from16 v0, v71

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    neg-int v4, v4

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->max_id:I

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6734
    move-object/from16 v0, v71

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    neg-int v4, v4

    int-to-long v0, v4

    move-wide/from16 v48, v0

    .line 6739
    .restart local v48    # "dialog_id":J
    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v75, v0

    .restart local v75    # "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    goto/16 :goto_12

    .line 6736
    .end local v48    # "dialog_id":J
    .end local v75    # "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    :cond_37
    move-object/from16 v0, v71

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->max_id:I

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6737
    move-object/from16 v0, v71

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    int-to-long v0, v4

    move-wide/from16 v48, v0

    .restart local v48    # "dialog_id":J
    goto :goto_13

    .line 6746
    .end local v48    # "dialog_id":J
    .end local v71    # "peer":Lorg/telegram/tgnet/TLRPC$Peer;
    :cond_38
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteMessages;

    if-eqz v4, :cond_3a

    .line 6747
    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/util/ArrayList;

    .line 6748
    .local v35, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez v35, :cond_39

    .line 6749
    new-instance v35, Ljava/util/ArrayList;

    .end local v35    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    .line 6750
    .restart local v35    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6752
    :cond_39
    move-object/from16 v0, v80

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->messages:Ljava/util/ArrayList;

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_f

    .line 6753
    .end local v35    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_3a
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserTyping;

    if-nez v4, :cond_3b

    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateChatUserTyping;

    if-eqz v4, :cond_45

    .line 6754
    :cond_3b
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v6

    if-eq v4, v6, :cond_29

    .line 6755
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->chat_id:I

    neg-int v4, v4

    int-to-long v0, v4

    move-wide/from16 v78, v0

    .line 6756
    .local v78, "uid":J
    const-wide/16 v6, 0x0

    cmp-long v4, v78, v6

    if-nez v4, :cond_3c

    .line 6757
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    int-to-long v0, v4

    move-wide/from16 v78, v0

    .line 6759
    :cond_3c
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {v78 .. v79}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/util/ArrayList;

    .line 6760
    .local v33, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;"
    move-object/from16 v0, v80

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_sendMessageCancelAction;

    if-eqz v4, :cond_40

    .line 6761
    if-eqz v33, :cond_3e

    .line 6762
    const/16 v30, 0x0

    .restart local v30    # "a":I
    :goto_14
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v30

    if-ge v0, v4, :cond_3d

    .line 6763
    move-object/from16 v0, v33

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v73

    check-cast v73, Lorg/telegram/messenger/MessagesController$PrintingUser;

    .line 6764
    .local v73, "pu":Lorg/telegram/messenger/MessagesController$PrintingUser;
    move-object/from16 v0, v73

    iget v4, v0, Lorg/telegram/messenger/MessagesController$PrintingUser;->userId:I

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    if-ne v4, v6, :cond_3f

    .line 6765
    move-object/from16 v0, v33

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6766
    const/16 v72, 0x1

    .line 6770
    .end local v73    # "pu":Lorg/telegram/messenger/MessagesController$PrintingUser;
    :cond_3d
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 6771
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {v78 .. v79}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6800
    .end local v30    # "a":I
    :cond_3e
    :goto_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->onlinePrivacy:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_f

    .line 6762
    .restart local v30    # "a":I
    .restart local v73    # "pu":Lorg/telegram/messenger/MessagesController$PrintingUser;
    :cond_3f
    add-int/lit8 v30, v30, 0x1

    goto :goto_14

    .line 6775
    .end local v30    # "a":I
    .end local v73    # "pu":Lorg/telegram/messenger/MessagesController$PrintingUser;
    :cond_40
    if-nez v33, :cond_41

    .line 6776
    new-instance v33, Ljava/util/ArrayList;

    .end local v33    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;"
    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 6777
    .restart local v33    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {v78 .. v79}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v33

    invoke-virtual {v4, v6, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6779
    :cond_41
    const/16 v52, 0x0

    .line 6780
    .local v52, "exist":Z
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_42
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_44

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v77

    check-cast v77, Lorg/telegram/messenger/MessagesController$PrintingUser;

    .line 6781
    .local v77, "u":Lorg/telegram/messenger/MessagesController$PrintingUser;
    move-object/from16 v0, v77

    iget v6, v0, Lorg/telegram/messenger/MessagesController$PrintingUser;->userId:I

    move-object/from16 v0, v80

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    if-ne v6, v7, :cond_42

    .line 6782
    const/16 v52, 0x1

    .line 6783
    move-wide/from16 v0, v46

    move-object/from16 v2, v77

    iput-wide v0, v2, Lorg/telegram/messenger/MessagesController$PrintingUser;->lastTime:J

    .line 6784
    move-object/from16 v0, v77

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController$PrintingUser;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    move-object/from16 v0, v80

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    if-eq v4, v6, :cond_43

    .line 6785
    const/16 v72, 0x1

    .line 6787
    :cond_43
    move-object/from16 v0, v80

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    move-object/from16 v0, v77

    iput-object v4, v0, Lorg/telegram/messenger/MessagesController$PrintingUser;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    .line 6791
    .end local v77    # "u":Lorg/telegram/messenger/MessagesController$PrintingUser;
    :cond_44
    if-nez v52, :cond_3e

    .line 6792
    new-instance v67, Lorg/telegram/messenger/MessagesController$PrintingUser;

    invoke-direct/range {v67 .. v67}, Lorg/telegram/messenger/MessagesController$PrintingUser;-><init>()V

    .line 6793
    .local v67, "newUser":Lorg/telegram/messenger/MessagesController$PrintingUser;
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    move-object/from16 v0, v67

    iput v4, v0, Lorg/telegram/messenger/MessagesController$PrintingUser;->userId:I

    .line 6794
    move-wide/from16 v0, v46

    move-object/from16 v2, v67

    iput-wide v0, v2, Lorg/telegram/messenger/MessagesController$PrintingUser;->lastTime:J

    .line 6795
    move-object/from16 v0, v80

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    move-object/from16 v0, v67

    iput-object v4, v0, Lorg/telegram/messenger/MessagesController$PrintingUser;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    .line 6796
    move-object/from16 v0, v33

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6797
    const/16 v72, 0x1

    goto/16 :goto_15

    .line 6802
    .end local v33    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;"
    .end local v52    # "exist":Z
    .end local v67    # "newUser":Lorg/telegram/messenger/MessagesController$PrintingUser;
    .end local v78    # "uid":J
    :cond_45
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateChatParticipants;

    if-eqz v4, :cond_46

    .line 6803
    or-int/lit8 v58, v58, 0x20

    .line 6804
    move-object/from16 v0, v80

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    .line 6805
    :cond_46
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserStatus;

    if-eqz v4, :cond_47

    .line 6806
    or-int/lit8 v58, v58, 0x4

    .line 6807
    move-object/from16 v0, v83

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    .line 6808
    :cond_47
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserName;

    if-eqz v4, :cond_48

    .line 6809
    or-int/lit8 v58, v58, 0x1

    .line 6810
    move-object/from16 v0, v83

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    .line 6811
    :cond_48
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserPhoto;

    if-eqz v4, :cond_49

    .line 6812
    or-int/lit8 v58, v58, 0x2

    .line 6813
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesStorage;->clearUserPhotos(I)V

    .line 6814
    move-object/from16 v0, v83

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    .line 6815
    :cond_49
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserPhone;

    if-eqz v4, :cond_4a

    .line 6816
    move/from16 v0, v58

    or-int/lit16 v0, v0, 0x400

    move/from16 v58, v0

    .line 6817
    move-object/from16 v0, v83

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    .line 6818
    :cond_4a
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateContactRegistered;

    if-eqz v4, :cond_4c

    .line 6819
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/MessagesController;->enableJoined:Z

    if-eqz v4, :cond_29

    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v86

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    int-to-long v6, v6

    invoke-virtual {v4, v6, v7}, Lorg/telegram/messenger/MessagesStorage;->isDialogHasMessages(J)Z

    move-result v4

    if-nez v4, :cond_29

    .line 6820
    new-instance v66, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    invoke-direct/range {v66 .. v66}, Lorg/telegram/tgnet/TLRPC$TL_messageService;-><init>()V

    .line 6821
    .local v66, "newMessage":Lorg/telegram/tgnet/TLRPC$TL_messageService;
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageActionUserJoined;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageActionUserJoined;-><init>()V

    move-object/from16 v0, v66

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    .line 6822
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getNewMessageId()I

    move-result v4

    move-object/from16 v0, v66

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->id:I

    move-object/from16 v0, v66

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->local_id:I

    .line 6823
    const/4 v4, 0x0

    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 6824
    const/4 v4, 0x0

    move-object/from16 v0, v66

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->unread:Z

    .line 6825
    const/16 v4, 0x100

    move-object/from16 v0, v66

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    .line 6826
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->date:I

    move-object/from16 v0, v66

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->date:I

    .line 6827
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    move-object/from16 v0, v66

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->from_id:I

    .line 6828
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    move-object/from16 v0, v66

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 6829
    move-object/from16 v0, v66

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v6

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    .line 6830
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    int-to-long v6, v4

    move-object/from16 v0, v66

    iput-wide v6, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->dialog_id:J

    .line 6832
    move-object/from16 v0, v63

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6833
    new-instance v69, Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->createdDialogIds:Ljava/util/ArrayList;

    move-object/from16 v0, v66

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    move-object/from16 v0, v69

    move-object/from16 v1, v66

    move-object/from16 v2, v86

    move-object/from16 v3, v40

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Ljava/util/AbstractMap;Z)V

    .line 6834
    .restart local v69    # "obj":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, v66

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/util/ArrayList;

    .line 6835
    .restart local v32    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    if-nez v32, :cond_4b

    .line 6836
    new-instance v32, Ljava/util/ArrayList;

    .end local v32    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 6837
    .restart local v32    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    move-object/from16 v0, v66

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v11, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6839
    :cond_4b
    move-object/from16 v0, v32

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    .line 6841
    .end local v32    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v66    # "newMessage":Lorg/telegram/tgnet/TLRPC$TL_messageService;
    .end local v69    # "obj":Lorg/telegram/messenger/MessageObject;
    :cond_4c
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateContactLink;

    if-eqz v4, :cond_50

    .line 6842
    move-object/from16 v0, v80

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->my_link:Lorg/telegram/tgnet/TLRPC$ContactLink;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_contactLinkContact;

    if-eqz v4, :cond_4e

    .line 6843
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    neg-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v57

    .line 6844
    .local v57, "idx":I
    const/4 v4, -0x1

    move/from16 v0, v57

    if-eq v0, v4, :cond_4d

    .line 6845
    move/from16 v0, v57

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6847
    :cond_4d
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_29

    .line 6848
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    .line 6851
    .end local v57    # "idx":I
    :cond_4e
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v57

    .line 6852
    .restart local v57    # "idx":I
    const/4 v4, -0x1

    move/from16 v0, v57

    if-eq v0, v4, :cond_4f

    .line 6853
    move/from16 v0, v57

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6855
    :cond_4f
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_29

    .line 6856
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    neg-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    .line 6859
    .end local v57    # "idx":I
    :cond_50
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewGeoChatMessage;

    if-nez v4, :cond_29

    .line 6861
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewEncryptedMessage;

    if-eqz v4, :cond_52

    .line 6862
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v6

    move-object/from16 v4, v80

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_updateNewEncryptedMessage;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_updateNewEncryptedMessage;->message:Lorg/telegram/tgnet/TLRPC$EncryptedMessage;

    invoke-virtual {v6, v4}, Lorg/telegram/messenger/SecretChatHelper;->decryptMessage(Lorg/telegram/tgnet/TLRPC$EncryptedMessage;)Ljava/util/ArrayList;

    move-result-object v45

    .line 6863
    .local v45, "decryptedMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    if-eqz v45, :cond_29

    invoke-virtual/range {v45 .. v45}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_29

    .line 6864
    check-cast v80, Lorg/telegram/tgnet/TLRPC$TL_updateNewEncryptedMessage;

    .end local v80    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    move-object/from16 v0, v80

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewEncryptedMessage;->message:Lorg/telegram/tgnet/TLRPC$EncryptedMessage;

    iget v0, v4, Lorg/telegram/tgnet/TLRPC$EncryptedMessage;->chat_id:I

    move/from16 v42, v0

    .line 6865
    .local v42, "cid":I
    move/from16 v0, v42

    int-to-long v6, v0

    const/16 v4, 0x20

    shl-long v78, v6, v4

    .line 6866
    .restart local v78    # "uid":J
    invoke-static/range {v78 .. v79}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/util/ArrayList;

    .line 6867
    .restart local v32    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    if-nez v32, :cond_51

    .line 6868
    new-instance v32, Ljava/util/ArrayList;

    .end local v32    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 6869
    .restart local v32    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    invoke-static/range {v78 .. v79}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v11, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6871
    :cond_51
    const/16 v30, 0x0

    .restart local v30    # "a":I
    :goto_16
    invoke-virtual/range {v45 .. v45}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v30

    if-ge v0, v4, :cond_29

    .line 6872
    move-object/from16 v0, v45

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Lorg/telegram/tgnet/TLRPC$Message;

    .line 6873
    .restart local v61    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-static/range {v61 .. v61}, Lorg/telegram/messenger/ImageLoader;->saveMessageThumbs(Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 6874
    move-object/from16 v0, v63

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6875
    new-instance v69, Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->createdDialogIds:Ljava/util/ArrayList;

    invoke-static/range {v78 .. v79}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    move-object/from16 v0, v69

    move-object/from16 v1, v61

    move-object/from16 v2, v86

    move-object/from16 v3, v40

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Ljava/util/AbstractMap;Z)V

    .line 6876
    .restart local v69    # "obj":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, v32

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6877
    move-object/from16 v0, v74

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6871
    add-int/lit8 v30, v30, 0x1

    goto :goto_16

    .line 6880
    .end local v30    # "a":I
    .end local v32    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v42    # "cid":I
    .end local v45    # "decryptedMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v61    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v69    # "obj":Lorg/telegram/messenger/MessageObject;
    .end local v78    # "uid":J
    .restart local v80    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    :cond_52
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateEncryptedChatTyping;

    if-eqz v4, :cond_57

    .line 6881
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->chat_id:I

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Lorg/telegram/messenger/MessagesController;->getEncryptedChatDB(IZ)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v50

    .line 6882
    .local v50, "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    if-eqz v50, :cond_29

    .line 6883
    move-object/from16 v0, v50

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:I

    move-object/from16 v0, v80

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    .line 6884
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->chat_id:I

    int-to-long v6, v4

    const/16 v4, 0x20

    shl-long v78, v6, v4

    .line 6885
    .restart local v78    # "uid":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {v78 .. v79}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/util/ArrayList;

    .line 6886
    .restart local v33    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;"
    if-nez v33, :cond_53

    .line 6887
    new-instance v33, Ljava/util/ArrayList;

    .end local v33    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;"
    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 6888
    .restart local v33    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {v78 .. v79}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v33

    invoke-virtual {v4, v6, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6890
    :cond_53
    const/16 v52, 0x0

    .line 6891
    .restart local v52    # "exist":Z
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_54
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_55

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v77

    check-cast v77, Lorg/telegram/messenger/MessagesController$PrintingUser;

    .line 6892
    .restart local v77    # "u":Lorg/telegram/messenger/MessagesController$PrintingUser;
    move-object/from16 v0, v77

    iget v6, v0, Lorg/telegram/messenger/MessagesController$PrintingUser;->userId:I

    move-object/from16 v0, v80

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    if-ne v6, v7, :cond_54

    .line 6893
    const/16 v52, 0x1

    .line 6894
    move-wide/from16 v0, v46

    move-object/from16 v2, v77

    iput-wide v0, v2, Lorg/telegram/messenger/MessagesController$PrintingUser;->lastTime:J

    .line 6895
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_sendMessageTypingAction;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageTypingAction;-><init>()V

    move-object/from16 v0, v77

    iput-object v4, v0, Lorg/telegram/messenger/MessagesController$PrintingUser;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    .line 6899
    .end local v77    # "u":Lorg/telegram/messenger/MessagesController$PrintingUser;
    :cond_55
    if-nez v52, :cond_56

    .line 6900
    new-instance v67, Lorg/telegram/messenger/MessagesController$PrintingUser;

    invoke-direct/range {v67 .. v67}, Lorg/telegram/messenger/MessagesController$PrintingUser;-><init>()V

    .line 6901
    .restart local v67    # "newUser":Lorg/telegram/messenger/MessagesController$PrintingUser;
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    move-object/from16 v0, v67

    iput v4, v0, Lorg/telegram/messenger/MessagesController$PrintingUser;->userId:I

    .line 6902
    move-wide/from16 v0, v46

    move-object/from16 v2, v67

    iput-wide v0, v2, Lorg/telegram/messenger/MessagesController$PrintingUser;->lastTime:J

    .line 6903
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_sendMessageTypingAction;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageTypingAction;-><init>()V

    move-object/from16 v0, v67

    iput-object v4, v0, Lorg/telegram/messenger/MessagesController$PrintingUser;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    .line 6904
    move-object/from16 v0, v33

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6905
    const/16 v72, 0x1

    .line 6907
    .end local v67    # "newUser":Lorg/telegram/messenger/MessagesController$PrintingUser;
    :cond_56
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->onlinePrivacy:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_f

    .line 6909
    .end local v33    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;"
    .end local v50    # "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .end local v52    # "exist":Z
    .end local v78    # "uid":J
    :cond_57
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateEncryptedMessagesRead;

    if-eqz v4, :cond_58

    .line 6910
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->chat_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->max_date:I

    move-object/from16 v0, v80

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$Update;->date:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6911
    check-cast v80, Lorg/telegram/tgnet/TLRPC$TL_updateEncryptedMessagesRead;

    .end local v80    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    move-object/from16 v0, v76

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    .line 6912
    .restart local v80    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    :cond_58
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateChatParticipantAdd;

    if-eqz v4, :cond_59

    .line 6913
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v80

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$Update;->chat_id:I

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    const/4 v7, 0x0

    move-object/from16 v0, v80

    iget v8, v0, Lorg/telegram/tgnet/TLRPC$Update;->inviter_id:I

    move-object/from16 v0, v80

    iget v9, v0, Lorg/telegram/tgnet/TLRPC$Update;->version:I

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/messenger/MessagesStorage;->updateChatInfo(IIIII)V

    goto/16 :goto_f

    .line 6914
    :cond_59
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateChatParticipantDelete;

    if-eqz v4, :cond_5a

    .line 6915
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v80

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$Update;->chat_id:I

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v0, v80

    iget v9, v0, Lorg/telegram/tgnet/TLRPC$Update;->version:I

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/messenger/MessagesStorage;->updateChatInfo(IIIII)V

    goto/16 :goto_f

    .line 6916
    :cond_5a
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateDcOptions;

    if-nez v4, :cond_5b

    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateConfig;

    if-eqz v4, :cond_5c

    .line 6917
    :cond_5b
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/ConnectionsManager;->updateDcSettings()V

    goto/16 :goto_f

    .line 6918
    :cond_5c
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateEncryption;

    if-eqz v4, :cond_5d

    .line 6919
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v4

    check-cast v80, Lorg/telegram/tgnet/TLRPC$TL_updateEncryption;

    .end local v80    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    move-object/from16 v0, v80

    move-object/from16 v1, v86

    invoke-virtual {v4, v0, v1}, Lorg/telegram/messenger/SecretChatHelper;->processUpdateEncryption(Lorg/telegram/tgnet/TLRPC$TL_updateEncryption;Ljava/util/concurrent/ConcurrentHashMap;)V

    goto/16 :goto_f

    .line 6920
    .restart local v80    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    :cond_5d
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserBlocked;

    if-eqz v4, :cond_5f

    move-object/from16 v53, v80

    .line 6921
    check-cast v53, Lorg/telegram/tgnet/TLRPC$TL_updateUserBlocked;

    .line 6922
    .local v53, "finalUpdate":Lorg/telegram/tgnet/TLRPC$TL_updateUserBlocked;
    move-object/from16 v0, v53

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserBlocked;->blocked:Z

    if-eqz v4, :cond_5e

    .line 6923
    new-instance v56, Ljava/util/ArrayList;

    invoke-direct/range {v56 .. v56}, Ljava/util/ArrayList;-><init>()V

    .line 6924
    .local v56, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, v53

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserBlocked;->user_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v56

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6925
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    const/4 v6, 0x0

    move-object/from16 v0, v56

    invoke-virtual {v4, v0, v6}, Lorg/telegram/messenger/MessagesStorage;->putBlockedUsers(Ljava/util/ArrayList;Z)V

    .line 6929
    .end local v56    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_17
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v4

    new-instance v6, Lorg/telegram/messenger/MessagesController$107;

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-direct {v6, v0, v1}, Lorg/telegram/messenger/MessagesController$107;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$TL_updateUserBlocked;)V

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto/16 :goto_f

    .line 6927
    :cond_5e
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v53

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserBlocked;->user_id:I

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesStorage;->deleteBlockedUser(I)V

    goto :goto_17

    .line 6947
    .end local v53    # "finalUpdate":Lorg/telegram/tgnet/TLRPC$TL_updateUserBlocked;
    :cond_5f
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNotifySettings;

    if-eqz v4, :cond_60

    .line 6948
    move-object/from16 v0, v83

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    .line 6949
    :cond_60
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;

    if-eqz v4, :cond_65

    move-object/from16 v68, v80

    .line 6950
    check-cast v68, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;

    .line 6951
    .local v68, "notification":Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;
    move-object/from16 v0, v68

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;->popup:Z

    if-eqz v4, :cond_61

    move-object/from16 v0, v68

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;->message:Ljava/lang/String;

    if-eqz v4, :cond_61

    move-object/from16 v0, v68

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;->message:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_61

    .line 6952
    new-instance v4, Lorg/telegram/messenger/MessagesController$108;

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v4, v0, v1}, Lorg/telegram/messenger/MessagesController$108;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 6959
    :cond_61
    move-object/from16 v0, v68

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_29

    .line 6960
    new-instance v66, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct/range {v66 .. v66}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 6961
    .local v66, "newMessage":Lorg/telegram/tgnet/TLRPC$TL_message;
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getNewMessageId()I

    move-result v4

    move-object/from16 v0, v66

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->id:I

    move-object/from16 v0, v66

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->local_id:I

    .line 6962
    const/4 v4, 0x0

    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 6963
    const/4 v4, 0x1

    move-object/from16 v0, v66

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->unread:Z

    .line 6964
    const/16 v4, 0x100

    move-object/from16 v0, v66

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    .line 6965
    move-object/from16 v0, v68

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;->inbox_date:I

    move-object/from16 v0, v66

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->date:I

    .line 6966
    const v4, 0xbdb28

    move-object/from16 v0, v66

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->from_id:I

    .line 6967
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    move-object/from16 v0, v66

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 6968
    move-object/from16 v0, v66

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v6

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    .line 6969
    const-wide/32 v6, 0xbdb28

    move-object/from16 v0, v66

    iput-wide v6, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->dialog_id:J

    .line 6970
    move-object/from16 v0, v80

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v4, :cond_62

    .line 6971
    move-object/from16 v0, v80

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, v66

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 6972
    move-object/from16 v0, v66

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    or-int/lit16 v4, v4, 0x200

    move-object/from16 v0, v66

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    .line 6974
    :cond_62
    move-object/from16 v0, v68

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;->message:Ljava/lang/String;

    move-object/from16 v0, v66

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->message:Ljava/lang/String;

    .line 6975
    move-object/from16 v0, v68

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;->entities:Ljava/util/ArrayList;

    if-eqz v4, :cond_63

    .line 6976
    move-object/from16 v0, v68

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;->entities:Ljava/util/ArrayList;

    move-object/from16 v0, v66

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->entities:Ljava/util/ArrayList;

    .line 6979
    :cond_63
    move-object/from16 v0, v63

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6980
    new-instance v69, Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->createdDialogIds:Ljava/util/ArrayList;

    move-object/from16 v0, v66

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    move-object/from16 v0, v69

    move-object/from16 v1, v66

    move-object/from16 v2, v86

    move-object/from16 v3, v40

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Ljava/util/AbstractMap;Z)V

    .line 6981
    .restart local v69    # "obj":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, v66

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/util/ArrayList;

    .line 6982
    .restart local v32    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    if-nez v32, :cond_64

    .line 6983
    new-instance v32, Ljava/util/ArrayList;

    .end local v32    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 6984
    .restart local v32    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    move-object/from16 v0, v66

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v11, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6986
    :cond_64
    move-object/from16 v0, v32

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6987
    move-object/from16 v0, v74

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    .line 6989
    .end local v32    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v66    # "newMessage":Lorg/telegram/tgnet/TLRPC$TL_message;
    .end local v68    # "notification":Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;
    .end local v69    # "obj":Lorg/telegram/messenger/MessageObject;
    :cond_65
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateDialogPinned;

    if-eqz v4, :cond_66

    .line 6990
    move-object/from16 v0, v83

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    .line 6991
    :cond_66
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedDialogs;

    if-eqz v4, :cond_67

    .line 6992
    move-object/from16 v0, v83

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    .line 6993
    :cond_67
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updatePrivacy;

    if-eqz v4, :cond_68

    .line 6994
    move-object/from16 v0, v83

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    .line 6995
    :cond_68
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateWebPage;

    if-eqz v4, :cond_69

    .line 6996
    move-object/from16 v0, v80

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-wide v6, v4, Lorg/telegram/tgnet/TLRPC$WebPage;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v80

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    move-object/from16 v0, v89

    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_f

    .line 6997
    :cond_69
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelWebPage;

    if-eqz v4, :cond_6a

    .line 6998
    move-object/from16 v0, v80

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-wide v6, v4, Lorg/telegram/tgnet/TLRPC$WebPage;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v80

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    move-object/from16 v0, v89

    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_f

    .line 6999
    :cond_6a
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelTooLong;

    if-eqz v4, :cond_73

    .line 7000
    sget-boolean v4, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v4, :cond_6b

    .line 7001
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v80

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " channelId = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 7003
    :cond_6b
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->channelsPts:Ljava/util/HashMap;

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/lang/Integer;

    .line 7004
    .local v37, "channelPts":Ljava/lang/Integer;
    if-nez v37, :cond_70

    .line 7005
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesStorage;->getChannelPtsSync(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    .line 7006
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_71

    .line 7007
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 7008
    .restart local v38    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v38, :cond_6c

    move-object/from16 v0, v38

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->min:Z

    if-eqz v4, :cond_6d

    .line 7009
    :cond_6c
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v38

    .line 7011
    :cond_6d
    if-eqz v38, :cond_6e

    move-object/from16 v0, v38

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->min:Z

    if-eqz v4, :cond_6f

    .line 7012
    :cond_6e
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesStorage;->getChatSync(I)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v38

    .line 7013
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1, v4}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    .line 7015
    :cond_6f
    if-eqz v38, :cond_70

    move-object/from16 v0, v38

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->min:Z

    if-nez v4, :cond_70

    .line 7016
    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1, v6, v7}, Lorg/telegram/messenger/MessagesController;->loadUnknownChannel(Lorg/telegram/tgnet/TLRPC$Chat;J)V

    .line 7022
    .end local v38    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_70
    :goto_18
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_29

    .line 7023
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_72

    .line 7024
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->pts:I

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-le v4, v6, :cond_29

    .line 7025
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/telegram/messenger/MessagesController;->getChannelDifference(I)V

    goto/16 :goto_f

    .line 7019
    :cond_71
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->channelsPts:Ljava/util/HashMap;

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v37

    invoke-virtual {v4, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18

    .line 7028
    :cond_72
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/telegram/messenger/MessagesController;->getChannelDifference(I)V

    goto/16 :goto_f

    .line 7031
    .end local v37    # "channelPts":Ljava/lang/Integer;
    :cond_73
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelInbox;

    if-nez v4, :cond_74

    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelOutbox;

    if-eqz v4, :cond_77

    .line 7032
    :cond_74
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->max_id:I

    int-to-long v0, v4

    move-wide/from16 v64, v0

    .line 7033
    .local v64, "message_id":J
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    int-to-long v6, v4

    const/16 v4, 0x20

    shl-long/2addr v6, v4

    or-long v64, v64, v6

    .line 7034
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    neg-int v4, v4

    int-to-long v0, v4

    move-wide/from16 v48, v0

    .line 7037
    .restart local v48    # "dialog_id":J
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelInbox;

    if-eqz v4, :cond_76

    .line 7038
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v75, v0

    .line 7039
    .restart local v75    # "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    neg-int v4, v4

    invoke-static/range {v64 .. v65}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7045
    :goto_19
    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v75

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v87

    check-cast v87, Ljava/lang/Integer;

    .line 7046
    .restart local v87    # "value":Ljava/lang/Integer;
    if-nez v87, :cond_75

    .line 7047
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v80

    instance-of v6, v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelOutbox;

    move-wide/from16 v0, v48

    invoke-virtual {v4, v6, v0, v1}, Lorg/telegram/messenger/MessagesStorage;->getDialogReadMax(ZJ)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v87

    .line 7049
    :cond_75
    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual/range {v87 .. v87}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v0, v80

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$Update;->max_id:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v75

    invoke-virtual {v0, v4, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_f

    .line 7041
    .end local v75    # "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v87    # "value":Ljava/lang/Integer;
    :cond_76
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v75, v0

    .line 7042
    .restart local v75    # "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    neg-int v4, v4

    invoke-static/range {v64 .. v65}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_19

    .line 7050
    .end local v48    # "dialog_id":J
    .end local v64    # "message_id":J
    .end local v75    # "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    :cond_77
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteChannelMessages;

    if-eqz v4, :cond_7a

    .line 7051
    sget-boolean v4, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v4, :cond_78

    .line 7052
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v80

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " channelId = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 7054
    :cond_78
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/util/ArrayList;

    .line 7055
    .restart local v35    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez v35, :cond_79

    .line 7056
    new-instance v35, Ljava/util/ArrayList;

    .end local v35    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    .line 7057
    .restart local v35    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7059
    :cond_79
    move-object/from16 v0, v80

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->messages:Ljava/util/ArrayList;

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_f

    .line 7060
    .end local v35    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_7a
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateChannel;

    if-eqz v4, :cond_7c

    .line 7061
    sget-boolean v4, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v4, :cond_7b

    .line 7062
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v80

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " channelId = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 7064
    :cond_7b
    move-object/from16 v0, v83

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    .line 7065
    :cond_7c
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelMessageViews;

    if-eqz v4, :cond_7f

    .line 7066
    sget-boolean v4, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v4, :cond_7d

    .line 7067
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v80

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " channelId = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_7d
    move-object/from16 v81, v80

    .line 7069
    check-cast v81, Lorg/telegram/tgnet/TLRPC$TL_updateChannelMessageViews;

    .line 7070
    .local v81, "updateChannelMessageViews":Lorg/telegram/tgnet/TLRPC$TL_updateChannelMessageViews;
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/util/SparseIntArray;

    .line 7071
    .local v34, "array":Landroid/util/SparseIntArray;
    if-nez v34, :cond_7e

    .line 7072
    new-instance v34, Landroid/util/SparseIntArray;

    .end local v34    # "array":Landroid/util/SparseIntArray;
    invoke-direct/range {v34 .. v34}, Landroid/util/SparseIntArray;-><init>()V

    .line 7073
    .restart local v34    # "array":Landroid/util/SparseIntArray;
    move-object/from16 v0, v80

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    move-object/from16 v0, v16

    move-object/from16 v1, v34

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7075
    :cond_7e
    move-object/from16 v0, v81

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelMessageViews;->id:I

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->views:I

    move-object/from16 v0, v34

    invoke-virtual {v0, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    goto/16 :goto_f

    .line 7076
    .end local v34    # "array":Landroid/util/SparseIntArray;
    .end local v81    # "updateChannelMessageViews":Lorg/telegram/tgnet/TLRPC$TL_updateChannelMessageViews;
    :cond_7f
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateChatParticipantAdmin;

    if-eqz v4, :cond_81

    .line 7077
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v80

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$Update;->chat_id:I

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    const/4 v7, 0x2

    move-object/from16 v0, v80

    iget-boolean v8, v0, Lorg/telegram/tgnet/TLRPC$Update;->is_admin:Z

    if-eqz v8, :cond_80

    const/4 v8, 0x1

    :goto_1a
    move-object/from16 v0, v80

    iget v9, v0, Lorg/telegram/tgnet/TLRPC$Update;->version:I

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/messenger/MessagesStorage;->updateChatInfo(IIIII)V

    goto/16 :goto_f

    :cond_80
    const/4 v8, 0x0

    goto :goto_1a

    .line 7078
    :cond_81
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateChatAdmins;

    if-eqz v4, :cond_82

    .line 7079
    move-object/from16 v0, v83

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    .line 7080
    :cond_82
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateStickerSets;

    if-eqz v4, :cond_83

    .line 7081
    move-object/from16 v0, v83

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    .line 7082
    :cond_83
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateStickerSetsOrder;

    if-eqz v4, :cond_84

    .line 7083
    move-object/from16 v0, v83

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    .line 7084
    :cond_84
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewStickerSet;

    if-eqz v4, :cond_85

    .line 7085
    move-object/from16 v0, v83

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    .line 7086
    :cond_85
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateDraftMessage;

    if-eqz v4, :cond_86

    .line 7087
    move-object/from16 v0, v83

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    .line 7088
    :cond_86
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateSavedGifs;

    if-eqz v4, :cond_87

    .line 7089
    move-object/from16 v0, v83

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    .line 7090
    :cond_87
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateEditChannelMessage;

    if-nez v4, :cond_88

    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateEditMessage;

    if-eqz v4, :cond_9f

    .line 7092
    :cond_88
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v43

    .line 7093
    .restart local v43    # "clientUserId":I
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateEditChannelMessage;

    if-eqz v4, :cond_92

    .line 7094
    check-cast v80, Lorg/telegram/tgnet/TLRPC$TL_updateEditChannelMessage;

    .end local v80    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    move-object/from16 v0, v80

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_updateEditChannelMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v61, v0

    .line 7095
    .restart local v61    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 7096
    .restart local v38    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-nez v38, :cond_89

    .line 7097
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v38

    .line 7099
    :cond_89
    if-nez v38, :cond_8a

    .line 7100
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v61

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesStorage;->getChatSync(I)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v38

    .line 7101
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1, v4}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    .line 7103
    :cond_8a
    if-eqz v38, :cond_8b

    move-object/from16 v0, v38

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v4, :cond_8b

    .line 7104
    move-object/from16 v0, v61

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/high16 v6, -0x80000000

    or-int/2addr v4, v6

    move-object/from16 v0, v61

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 7114
    .end local v38    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_8b
    :goto_1b
    move-object/from16 v0, v61

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    if-nez v4, :cond_8c

    move-object/from16 v0, v61

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v6

    if-ne v4, v6, :cond_8c

    .line 7115
    const/4 v4, 0x1

    move-object/from16 v0, v61

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 7117
    :cond_8c
    if-nez p4, :cond_94

    .line 7118
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v44

    .line 7119
    .restart local v44    # "count":I
    const/16 v30, 0x0

    .restart local v30    # "a":I
    :goto_1c
    move/from16 v0, v30

    move/from16 v1, v44

    if-ge v0, v1, :cond_94

    .line 7120
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    .line 7121
    .restart local v51    # "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    move-object/from16 v0, v51

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;

    if-eqz v4, :cond_93

    .line 7122
    check-cast v51, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;

    .end local v51    # "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    move-object/from16 v0, v51

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;->user_id:I

    move/from16 v85, v0

    .line 7123
    .restart local v85    # "user_id":I
    invoke-static/range {v85 .. v85}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v86

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v84

    check-cast v84, Lorg/telegram/tgnet/TLRPC$User;

    .line 7124
    .restart local v84    # "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v84, :cond_8d

    move-object/from16 v0, v84

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$User;->min:Z

    if-eqz v4, :cond_8e

    .line 7125
    :cond_8d
    invoke-static/range {v85 .. v85}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v84

    .line 7127
    :cond_8e
    if-eqz v84, :cond_8f

    move-object/from16 v0, v84

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$User;->min:Z

    if-eqz v4, :cond_91

    .line 7128
    :cond_8f
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move/from16 v0, v85

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesStorage;->getUserSync(I)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v84

    .line 7129
    if-eqz v84, :cond_90

    move-object/from16 v0, v84

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$User;->min:Z

    if-eqz v4, :cond_90

    .line 7130
    const/16 v84, 0x0

    .line 7132
    :cond_90
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v84

    invoke-virtual {v0, v1, v4}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 7134
    :cond_91
    if-nez v84, :cond_93

    .line 7135
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 7107
    .end local v30    # "a":I
    .end local v44    # "count":I
    .end local v61    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v84    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .end local v85    # "user_id":I
    .restart local v80    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    :cond_92
    check-cast v80, Lorg/telegram/tgnet/TLRPC$TL_updateEditMessage;

    .end local v80    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    move-object/from16 v0, v80

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_updateEditMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v61, v0

    .line 7108
    .restart local v61    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v0, v61

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move/from16 v0, v43

    int-to-long v8, v0

    cmp-long v4, v6, v8

    if-nez v4, :cond_8b

    .line 7109
    const/4 v4, 0x0

    move-object/from16 v0, v61

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    .line 7110
    const/4 v4, 0x0

    move-object/from16 v0, v61

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media_unread:Z

    .line 7111
    const/4 v4, 0x1

    move-object/from16 v0, v61

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    goto/16 :goto_1b

    .line 7119
    .restart local v30    # "a":I
    .restart local v44    # "count":I
    :cond_93
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_1c

    .line 7141
    .end local v30    # "a":I
    .end local v44    # "count":I
    :cond_94
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    if-eqz v4, :cond_9a

    .line 7142
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    neg-int v4, v4

    int-to-long v6, v4

    move-object/from16 v0, v61

    iput-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 7152
    :goto_1d
    move-object/from16 v0, v61

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    if-eqz v4, :cond_9d

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v75, v0

    .line 7153
    .restart local v75    # "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    :goto_1e
    move-object/from16 v0, v61

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v75

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v87

    check-cast v87, Ljava/lang/Integer;

    .line 7154
    .restart local v87    # "value":Ljava/lang/Integer;
    if-nez v87, :cond_95

    .line 7155
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v61

    iget-boolean v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    move-object/from16 v0, v61

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-virtual {v4, v6, v8, v9}, Lorg/telegram/messenger/MessagesStorage;->getDialogReadMax(ZJ)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v87

    .line 7156
    move-object/from16 v0, v61

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v75

    move-object/from16 v1, v87

    invoke-virtual {v0, v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7158
    :cond_95
    invoke-virtual/range {v87 .. v87}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, v61

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-ge v4, v6, :cond_9e

    const/4 v4, 0x1

    :goto_1f
    move-object/from16 v0, v61

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    .line 7159
    move-object/from16 v0, v61

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move/from16 v0, v43

    int-to-long v8, v0

    cmp-long v4, v6, v8

    if-nez v4, :cond_96

    .line 7160
    const/4 v4, 0x1

    move-object/from16 v0, v61

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 7161
    const/4 v4, 0x0

    move-object/from16 v0, v61

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    .line 7162
    const/4 v4, 0x0

    move-object/from16 v0, v61

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media_unread:Z

    .line 7164
    :cond_96
    move-object/from16 v0, v61

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    if-eqz v4, :cond_98

    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    if-eqz v4, :cond_97

    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_98

    .line 7165
    :cond_97
    const-string/jumbo v4, "-1"

    move-object/from16 v0, v61

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 7166
    const-string/jumbo v4, ""

    move-object/from16 v0, v61

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 7169
    :cond_98
    invoke-static/range {v61 .. v61}, Lorg/telegram/messenger/ImageLoader;->saveMessageThumbs(Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 7171
    new-instance v69, Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->createdDialogIds:Ljava/util/ArrayList;

    move-object/from16 v0, v61

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    move-object/from16 v0, v69

    move-object/from16 v1, v61

    move-object/from16 v2, v86

    move-object/from16 v3, v40

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Ljava/util/AbstractMap;Z)V

    .line 7173
    .restart local v69    # "obj":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, v61

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/util/ArrayList;

    .line 7174
    .restart local v32    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    if-nez v32, :cond_99

    .line 7175
    new-instance v32, Ljava/util/ArrayList;

    .end local v32    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 7176
    .restart local v32    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    move-object/from16 v0, v61

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v12, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7178
    :cond_99
    move-object/from16 v0, v32

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    .line 7143
    .end local v32    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v69    # "obj":Lorg/telegram/messenger/MessageObject;
    .end local v75    # "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v87    # "value":Ljava/lang/Integer;
    :cond_9a
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v4, :cond_9b

    .line 7144
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    neg-int v4, v4

    int-to-long v6, v4

    move-object/from16 v0, v61

    iput-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    goto/16 :goto_1d

    .line 7146
    :cond_9b
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v6

    if-ne v4, v6, :cond_9c

    .line 7147
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v0, v61

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    .line 7149
    :cond_9c
    move-object/from16 v0, v61

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    int-to-long v6, v4

    move-object/from16 v0, v61

    iput-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    goto/16 :goto_1d

    .line 7152
    :cond_9d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v75, v0

    goto/16 :goto_1e

    .line 7158
    .restart local v75    # "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .restart local v87    # "value":Ljava/lang/Integer;
    :cond_9e
    const/4 v4, 0x0

    goto/16 :goto_1f

    .line 7179
    .end local v43    # "clientUserId":I
    .end local v61    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v75    # "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v87    # "value":Ljava/lang/Integer;
    .restart local v80    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    :cond_9f
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelPinnedMessage;

    if-eqz v4, :cond_a1

    .line 7180
    sget-boolean v4, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v4, :cond_a0

    .line 7181
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v80

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " channelId = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_a0
    move-object/from16 v82, v80

    .line 7183
    check-cast v82, Lorg/telegram/tgnet/TLRPC$TL_updateChannelPinnedMessage;

    .line 7184
    .local v82, "updateChannelPinnedMessage":Lorg/telegram/tgnet/TLRPC$TL_updateChannelPinnedMessage;
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v80

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    move-object/from16 v0, v82

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelPinnedMessage;->id:I

    invoke-virtual {v4, v6, v7}, Lorg/telegram/messenger/MessagesStorage;->updateChannelPinnedMessage(II)V

    goto/16 :goto_f

    .line 7185
    .end local v82    # "updateChannelPinnedMessage":Lorg/telegram/tgnet/TLRPC$TL_updateChannelPinnedMessage;
    :cond_a1
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadFeaturedStickers;

    if-eqz v4, :cond_a2

    .line 7186
    move-object/from16 v0, v83

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    .line 7187
    :cond_a2
    move-object/from16 v0, v80

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updatePhoneCall;

    if-eqz v4, :cond_29

    .line 7188
    move-object/from16 v0, v83

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    .line 7191
    .end local v80    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    :cond_a3
    invoke-virtual {v11}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a5

    .line 7192
    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_a4
    :goto_20
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v70

    check-cast v70, Ljava/util/Map$Entry;

    .line 7193
    .local v70, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;>;"
    invoke-interface/range {v70 .. v70}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Ljava/lang/Long;

    .line 7194
    .local v60, "key":Ljava/lang/Long;
    invoke-interface/range {v70 .. v70}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v88

    check-cast v88, Ljava/util/ArrayList;

    .line 7195
    .local v88, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    invoke-virtual/range {v60 .. v60}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-direct {v0, v6, v7, v1}, Lorg/telegram/messenger/MessagesController;->updatePrintingUsersWithNewMessages(JLjava/util/ArrayList;)Z

    move-result v6

    if-eqz v6, :cond_a4

    .line 7196
    const/16 v72, 0x1

    goto :goto_20

    .line 7201
    .end local v60    # "key":Ljava/lang/Long;
    .end local v70    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;>;"
    .end local v88    # "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :cond_a5
    if-eqz v72, :cond_a6

    .line 7202
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MessagesController;->updatePrintingStrings()V

    .line 7205
    :cond_a6
    move/from16 v59, v58

    .line 7206
    .local v59, "interfaceUpdateMaskFinal":I
    move/from16 v13, v72

    .line 7208
    .local v13, "printChangedArg":Z
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a7

    .line 7209
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v4

    move-object/from16 v0, v86

    invoke-virtual {v4, v14, v0}, Lorg/telegram/messenger/ContactsController;->processContactsUpdates(Ljava/util/ArrayList;Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 7212
    :cond_a7
    invoke-virtual/range {v74 .. v74}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a8

    .line 7213
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v4

    new-instance v6, Lorg/telegram/messenger/MessagesController$109;

    move-object/from16 v0, p0

    move-object/from16 v1, v74

    invoke-direct {v6, v0, v1}, Lorg/telegram/messenger/MessagesController$109;-><init>(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;)V

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 7226
    :cond_a8
    invoke-virtual/range {v63 .. v63}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a9

    .line 7227
    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v4

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentNetworkType()I

    move-result v6

    const/4 v7, 0x1

    invoke-virtual/range {v63 .. v63}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v4, v6, v7, v8}, Lorg/telegram/messenger/StatsController;->incrementReceivedItemsCount(III)V

    .line 7228
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/messenger/MediaController;->getAutodownloadMask()I

    move-result v9

    move-object/from16 v5, v63

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZI)V

    .line 7230
    :cond_a9
    invoke-virtual {v12}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_ab

    .line 7231
    invoke-virtual {v12}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_21
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_ab

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v70

    check-cast v70, Ljava/util/Map$Entry;

    .line 7232
    .restart local v70    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;>;"
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;-><init>()V

    .line 7233
    .local v5, "messagesRes":Lorg/telegram/tgnet/TLRPC$TL_messages_messages;
    invoke-interface/range {v70 .. v70}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Ljava/util/ArrayList;

    .line 7234
    .local v62, "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    const/16 v30, 0x0

    .restart local v30    # "a":I
    :goto_22
    invoke-virtual/range {v62 .. v62}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v30

    if-ge v0, v4, :cond_aa

    .line 7235
    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;->messages:Ljava/util/ArrayList;

    move-object/from16 v0, v62

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7234
    add-int/lit8 v30, v30, 0x1

    goto :goto_22

    .line 7237
    :cond_aa
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-interface/range {v70 .. v70}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 v8, -0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Lorg/telegram/tgnet/TLRPC$messages_Messages;JIIZ)V

    goto :goto_21

    .line 7241
    .end local v5    # "messagesRes":Lorg/telegram/tgnet/TLRPC$TL_messages_messages;
    .end local v30    # "a":I
    .end local v62    # "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v70    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;>;"
    :cond_ab
    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-eqz v4, :cond_ac

    .line 7242
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    const/4 v6, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v4, v0, v6}, Lorg/telegram/messenger/MessagesStorage;->putChannelViews(Landroid/util/SparseArray;Z)V

    .line 7245
    :cond_ac
    new-instance v6, Lorg/telegram/messenger/MessagesController$110;

    move-object/from16 v7, p0

    move/from16 v8, v59

    move-object/from16 v9, v83

    move-object/from16 v10, v89

    invoke-direct/range {v6 .. v16}, Lorg/telegram/messenger/MessagesController$110;-><init>(Lorg/telegram/messenger/MessagesController;ILjava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;ZLjava/util/ArrayList;Ljava/util/ArrayList;Landroid/util/SparseArray;)V

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 7605
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v4

    new-instance v17, Lorg/telegram/messenger/MessagesController$111;

    move-object/from16 v18, p0

    invoke-direct/range {v17 .. v23}, Lorg/telegram/messenger/MessagesController$111;-><init>(Lorg/telegram/messenger/MessagesController;Landroid/util/SparseArray;Landroid/util/SparseArray;Ljava/util/HashMap;Ljava/util/ArrayList;Landroid/util/SparseArray;)V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 7695
    invoke-virtual/range {v89 .. v89}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_ad

    .line 7696
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v89

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesStorage;->putWebPages(Ljava/util/HashMap;)V

    .line 7698
    :cond_ad
    invoke-virtual/range {v19 .. v19}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-nez v4, :cond_ae

    invoke-virtual/range {v20 .. v20}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-nez v4, :cond_ae

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b0

    .line 7699
    :cond_ae
    invoke-virtual/range {v19 .. v19}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-eqz v4, :cond_af

    .line 7700
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    const/4 v6, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1, v6}, Lorg/telegram/messenger/MessagesStorage;->updateDialogsWithReadMessages(Landroid/util/SparseArray;Landroid/util/SparseArray;Z)V

    .line 7702
    :cond_af
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    const/4 v6, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v4, v0, v1, v2, v6}, Lorg/telegram/messenger/MessagesStorage;->markMessagesAsRead(Landroid/util/SparseArray;Landroid/util/SparseArray;Ljava/util/HashMap;Z)V

    .line 7704
    :cond_b0
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b1

    .line 7705
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesStorage;->markMessagesContentAsRead(Ljava/util/ArrayList;)V

    .line 7707
    :cond_b1
    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-eqz v4, :cond_b2

    .line 7708
    const/16 v30, 0x0

    .restart local v30    # "a":I
    :goto_23
    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseArray;->size()I

    move-result v4

    move/from16 v0, v30

    if-ge v0, v4, :cond_b2

    .line 7709
    move-object/from16 v0, v23

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v60

    .line 7710
    .local v60, "key":I
    move-object/from16 v0, v23

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/util/ArrayList;

    .line 7711
    .restart local v35    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v4

    new-instance v6, Lorg/telegram/messenger/MessagesController$112;

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move/from16 v2, v60

    invoke-direct {v6, v0, v1, v2}, Lorg/telegram/messenger/MessagesController$112;-><init>(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;I)V

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 7708
    add-int/lit8 v30, v30, 0x1

    goto :goto_23

    .line 7720
    .end local v30    # "a":I
    .end local v35    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v60    # "key":I
    :cond_b2
    invoke-virtual/range {v76 .. v76}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b3

    .line 7721
    const/16 v30, 0x0

    .restart local v30    # "a":I
    :goto_24
    invoke-virtual/range {v76 .. v76}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v30

    if-ge v0, v4, :cond_b3

    .line 7722
    move-object/from16 v0, v76

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v80

    check-cast v80, Lorg/telegram/tgnet/TLRPC$TL_updateEncryptedMessagesRead;

    .line 7723
    .local v80, "update":Lorg/telegram/tgnet/TLRPC$TL_updateEncryptedMessagesRead;
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v24

    move-object/from16 v0, v80

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_updateEncryptedMessagesRead;->chat_id:I

    move/from16 v25, v0

    move-object/from16 v0, v80

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_updateEncryptedMessagesRead;->max_date:I

    move/from16 v26, v0

    move-object/from16 v0, v80

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_updateEncryptedMessagesRead;->date:I

    move/from16 v27, v0

    const/16 v28, 0x1

    const/16 v29, 0x0

    invoke-virtual/range {v24 .. v29}, Lorg/telegram/messenger/MessagesStorage;->createTaskForSecretChat(IIIILjava/util/ArrayList;)V

    .line 7721
    add-int/lit8 v30, v30, 0x1

    goto :goto_24

    .line 7727
    .end local v30    # "a":I
    .end local v80    # "update":Lorg/telegram/tgnet/TLRPC$TL_updateEncryptedMessagesRead;
    :cond_b3
    const/4 v4, 0x1

    goto/16 :goto_0
.end method

.method public processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V
    .locals 53
    .param p1, "updates"    # Lorg/telegram/tgnet/TLRPC$Updates;
    .param p2, "fromQueue"    # Z

    .prologue
    .line 6021
    const/16 v32, 0x0

    .line 6022
    .local v32, "needGetChannelsDiff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v33, 0x0

    .line 6023
    .local v33, "needGetDiff":Z
    const/16 v34, 0x0

    .line 6024
    .local v34, "needReceivedQueue":Z
    const/16 v45, 0x0

    .line 6025
    .local v45, "updateStatus":Z
    move-object/from16 v0, p1

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateShort;

    if-eqz v4, :cond_1

    .line 6026
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 6027
    .local v11, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Update;>;"
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->update:Lorg/telegram/tgnet/TLRPC$Update;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6028
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v4, v6, v7}, Lorg/telegram/messenger/MessagesController;->processUpdateArray(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)Z

    .line 6462
    .end local v11    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Update;>;"
    :cond_0
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/SecretChatHelper;->processPendingEncMessages()V

    .line 6463
    if-nez p2, :cond_65

    .line 6464
    new-instance v26, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->updatesQueueChannels:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6465
    .local v26, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v10, 0x0

    .local v10, "a":I
    :goto_1
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v10, v4, :cond_64

    .line 6466
    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    .line 6467
    .local v25, "key":Ljava/lang/Integer;
    if-eqz v32, :cond_63

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_63

    .line 6468
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/telegram/messenger/MessagesController;->getChannelDifference(I)V

    .line 6465
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 6029
    .end local v10    # "a":I
    .end local v25    # "key":Ljava/lang/Integer;
    .end local v26    # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    move-object/from16 v0, p1

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateShortChatMessage;

    if-nez v4, :cond_2

    move-object/from16 v0, p1

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateShortMessage;

    if-eqz v4, :cond_2b

    .line 6030
    :cond_2
    move-object/from16 v0, p1

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateShortChatMessage;

    if-eqz v4, :cond_12

    move-object/from16 v0, p1

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Updates;->from_id:I

    move/from16 v51, v0

    .line 6031
    .local v51, "user_id":I
    :goto_3
    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v48

    .line 6032
    .local v48, "user":Lorg/telegram/tgnet/TLRPC$User;
    const/16 v49, 0x0

    .line 6033
    .local v49, "user2":Lorg/telegram/tgnet/TLRPC$User;
    const/16 v50, 0x0

    .line 6034
    .local v50, "user3":Lorg/telegram/tgnet/TLRPC$User;
    const/16 v16, 0x0

    .line 6036
    .local v16, "channel":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v48, :cond_3

    move-object/from16 v0, v48

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$User;->min:Z

    if-eqz v4, :cond_5

    .line 6037
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move/from16 v0, v51

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesStorage;->getUserSync(I)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v48

    .line 6038
    if-eqz v48, :cond_4

    move-object/from16 v0, v48

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$User;->min:Z

    if-eqz v4, :cond_4

    .line 6039
    const/16 v48, 0x0

    .line 6041
    :cond_4
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1, v4}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 6044
    :cond_5
    const/16 v31, 0x0

    .line 6045
    .local v31, "needFwdUser":Z
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    if-eqz v4, :cond_9

    .line 6046
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->from_id:I

    if-eqz v4, :cond_7

    .line 6047
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->from_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v49

    .line 6048
    if-nez v49, :cond_6

    .line 6049
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->from_id:I

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesStorage;->getUserSync(I)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v49

    .line 6050
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1, v4}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 6052
    :cond_6
    const/16 v31, 0x1

    .line 6054
    :cond_7
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->channel_id:I

    if-eqz v4, :cond_9

    .line 6055
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->channel_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v16

    .line 6056
    if-nez v16, :cond_8

    .line 6057
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->channel_id:I

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesStorage;->getChatSync(I)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v16

    .line 6058
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v4}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    .line 6060
    :cond_8
    const/16 v31, 0x1

    .line 6064
    :cond_9
    const/16 v30, 0x0

    .line 6065
    .local v30, "needBotUser":Z
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->via_bot_id:I

    if-eqz v4, :cond_b

    .line 6066
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->via_bot_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v50

    .line 6067
    if-nez v50, :cond_a

    .line 6068
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, p1

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->via_bot_id:I

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesStorage;->getUserSync(I)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v50

    .line 6069
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1, v4}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 6071
    :cond_a
    const/16 v30, 0x1

    .line 6075
    :cond_b
    move-object/from16 v0, p1

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateShortMessage;

    if-eqz v4, :cond_14

    .line 6076
    if-eqz v48, :cond_d

    if-eqz v31, :cond_c

    if-nez v49, :cond_c

    if-eqz v16, :cond_d

    :cond_c
    if-eqz v30, :cond_13

    if-nez v50, :cond_13

    :cond_d
    const/16 v29, 0x1

    .line 6085
    .local v29, "missingData":Z
    :goto_4
    if-nez v29, :cond_10

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->entities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_10

    .line 6086
    const/4 v10, 0x0

    .restart local v10    # "a":I
    :goto_5
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->entities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v10, v4, :cond_10

    .line 6087
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->entities:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    .line 6088
    .local v21, "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    move-object/from16 v0, v21

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;

    if-eqz v4, :cond_1a

    .line 6089
    check-cast v21, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;

    .end local v21    # "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    move-object/from16 v0, v21

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;->user_id:I

    move/from16 v42, v0

    .line 6090
    .local v42, "uid":I
    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v22

    .line 6091
    .local v22, "entityUser":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v22, :cond_e

    move-object/from16 v0, v22

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$User;->min:Z

    if-eqz v4, :cond_1a

    .line 6092
    :cond_e
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move/from16 v0, v42

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesStorage;->getUserSync(I)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v22

    .line 6093
    if-eqz v22, :cond_f

    move-object/from16 v0, v22

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$User;->min:Z

    if-eqz v4, :cond_f

    .line 6094
    const/16 v22, 0x0

    .line 6096
    :cond_f
    if-nez v22, :cond_19

    .line 6097
    const/16 v29, 0x1

    .line 6105
    .end local v10    # "a":I
    .end local v22    # "entityUser":Lorg/telegram/tgnet/TLRPC$User;
    .end local v42    # "uid":I
    :cond_10
    if-eqz v48, :cond_11

    move-object/from16 v0, v48

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v4, :cond_11

    move-object/from16 v0, v48

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    if-gtz v4, :cond_11

    .line 6106
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->onlinePrivacy:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, v48

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6107
    const/16 v45, 0x1

    .line 6110
    :cond_11
    if-eqz v29, :cond_1b

    .line 6111
    const/16 v33, 0x1

    goto/16 :goto_0

    .line 6030
    .end local v16    # "channel":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v29    # "missingData":Z
    .end local v30    # "needBotUser":Z
    .end local v31    # "needFwdUser":Z
    .end local v48    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .end local v49    # "user2":Lorg/telegram/tgnet/TLRPC$User;
    .end local v50    # "user3":Lorg/telegram/tgnet/TLRPC$User;
    .end local v51    # "user_id":I
    :cond_12
    move-object/from16 v0, p1

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Updates;->user_id:I

    move/from16 v51, v0

    goto/16 :goto_3

    .line 6076
    .restart local v16    # "channel":Lorg/telegram/tgnet/TLRPC$Chat;
    .restart local v30    # "needBotUser":Z
    .restart local v31    # "needFwdUser":Z
    .restart local v48    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .restart local v49    # "user2":Lorg/telegram/tgnet/TLRPC$User;
    .restart local v50    # "user3":Lorg/telegram/tgnet/TLRPC$User;
    .restart local v51    # "user_id":I
    :cond_13
    const/16 v29, 0x0

    goto/16 :goto_4

    .line 6078
    :cond_14
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chat_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v19

    .line 6079
    .local v19, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-nez v19, :cond_15

    .line 6080
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, p1

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chat_id:I

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesStorage;->getChatSync(I)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v19

    .line 6081
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v4}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    .line 6083
    :cond_15
    if-eqz v19, :cond_17

    if-eqz v48, :cond_17

    if-eqz v31, :cond_16

    if-nez v49, :cond_16

    if-eqz v16, :cond_17

    :cond_16
    if-eqz v30, :cond_18

    if-nez v50, :cond_18

    :cond_17
    const/16 v29, 0x1

    .restart local v29    # "missingData":Z
    :goto_6
    goto/16 :goto_4

    .end local v29    # "missingData":Z
    :cond_18
    const/16 v29, 0x0

    goto :goto_6

    .line 6100
    .end local v19    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .restart local v10    # "a":I
    .restart local v22    # "entityUser":Lorg/telegram/tgnet/TLRPC$User;
    .restart local v29    # "missingData":Z
    .restart local v42    # "uid":I
    :cond_19
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1, v4}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 6086
    .end local v22    # "entityUser":Lorg/telegram/tgnet/TLRPC$User;
    .end local v42    # "uid":I
    :cond_1a
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_5

    .line 6113
    .end local v10    # "a":I
    :cond_1b
    sget v4, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    move-object/from16 v0, p1

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->pts_count:I

    add-int/2addr v4, v6

    move-object/from16 v0, p1

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->pts:I

    if-ne v4, v6, :cond_27

    .line 6114
    new-instance v27, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct/range {v27 .. v27}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 6115
    .local v27, "message":Lorg/telegram/tgnet/TLRPC$TL_message;
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->id:I

    move-object/from16 v0, v27

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->id:I

    .line 6116
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v20

    .line 6117
    .local v20, "clientUserId":I
    move-object/from16 v0, p1

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateShortMessage;

    if-eqz v4, :cond_21

    .line 6118
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->out:Z

    if-eqz v4, :cond_20

    .line 6119
    move/from16 v0, v20

    move-object/from16 v1, v27

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->from_id:I

    .line 6123
    :goto_7
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    move-object/from16 v0, v27

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 6124
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move/from16 v0, v51

    iput v0, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    .line 6125
    move/from16 v0, v51

    int-to-long v6, v0

    move-object/from16 v0, v27

    iput-wide v6, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->dialog_id:J

    .line 6133
    :goto_8
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    move-object/from16 v0, v27

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    .line 6134
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->silent:Z

    move-object/from16 v0, v27

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->silent:Z

    .line 6135
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->out:Z

    move-object/from16 v0, v27

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->out:Z

    .line 6136
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->mentioned:Z

    move-object/from16 v0, v27

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->mentioned:Z

    .line 6137
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->media_unread:Z

    move-object/from16 v0, v27

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media_unread:Z

    .line 6138
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->entities:Ljava/util/ArrayList;

    move-object/from16 v0, v27

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->entities:Ljava/util/ArrayList;

    .line 6139
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->message:Ljava/lang/String;

    move-object/from16 v0, v27

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->message:Ljava/lang/String;

    .line 6140
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->date:I

    move-object/from16 v0, v27

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->date:I

    .line 6141
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->via_bot_id:I

    move-object/from16 v0, v27

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->via_bot_id:I

    .line 6142
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->flags:I

    or-int/lit16 v4, v4, 0x100

    move-object/from16 v0, v27

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    .line 6143
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->reply_to_msg_id:I

    move-object/from16 v0, v27

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->reply_to_msg_id:I

    .line 6144
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    move-object/from16 v0, v27

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 6146
    move-object/from16 v0, v27

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->out:Z

    if-eqz v4, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v39, v0

    .line 6147
    .local v39, "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    :goto_9
    move-object/from16 v0, v27

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Ljava/lang/Integer;

    .line 6148
    .local v52, "value":Ljava/lang/Integer;
    if-nez v52, :cond_1c

    .line 6149
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v27

    iget-boolean v6, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->out:Z

    move-object/from16 v0, v27

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->dialog_id:J

    invoke-virtual {v4, v6, v8, v9}, Lorg/telegram/messenger/MessagesStorage;->getDialogReadMax(ZJ)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v52

    .line 6150
    move-object/from16 v0, v27

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v39

    move-object/from16 v1, v52

    invoke-virtual {v0, v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6152
    :cond_1c
    invoke-virtual/range {v52 .. v52}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, v27

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->id:I

    if-ge v4, v6, :cond_23

    const/4 v4, 0x1

    :goto_a
    move-object/from16 v0, v27

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->unread:Z

    .line 6154
    move-object/from16 v0, v27

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->dialog_id:J

    move/from16 v0, v20

    int-to-long v8, v0

    cmp-long v4, v6, v8

    if-nez v4, :cond_1d

    .line 6155
    const/4 v4, 0x0

    move-object/from16 v0, v27

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->unread:Z

    .line 6156
    const/4 v4, 0x0

    move-object/from16 v0, v27

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media_unread:Z

    .line 6157
    const/4 v4, 0x1

    move-object/from16 v0, v27

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->out:Z

    .line 6160
    :cond_1d
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->pts:I

    sput v4, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    .line 6161
    new-instance v35, Lorg/telegram/messenger/MessageObject;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/MessagesController;->createdDialogIds:Ljava/util/ArrayList;

    move-object/from16 v0, v27

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->dialog_id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    move-object/from16 v0, v35

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v4, v6}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V

    .line 6162
    .local v35, "obj":Lorg/telegram/messenger/MessageObject;
    new-instance v36, Ljava/util/ArrayList;

    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    .line 6163
    .local v36, "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    move-object/from16 v0, v36

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6164
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 6165
    .local v5, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6166
    move-object/from16 v0, p1

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateShortMessage;

    if-eqz v4, :cond_25

    .line 6167
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->out:Z

    if-nez v4, :cond_24

    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->user_id:I

    int-to-long v6, v4

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v6, v7, v1}, Lorg/telegram/messenger/MessagesController;->updatePrintingUsersWithNewMessages(JLjava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_24

    const/16 v37, 0x1

    .line 6168
    .local v37, "printUpdate":Z
    :goto_b
    if-eqz v37, :cond_1e

    .line 6169
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MessagesController;->updatePrintingStrings()V

    .line 6171
    :cond_1e
    new-instance v4, Lorg/telegram/messenger/MessagesController$100;

    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v51

    move-object/from16 v3, v36

    invoke-direct {v4, v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesController$100;-><init>(Lorg/telegram/messenger/MessagesController;ZILjava/util/ArrayList;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 6198
    :goto_c
    invoke-virtual/range {v35 .. v35}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v4

    if-nez v4, :cond_1f

    .line 6199
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v4

    new-instance v6, Lorg/telegram/messenger/MessagesController$102;

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v6, v0, v1}, Lorg/telegram/messenger/MessagesController$102;-><init>(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;)V

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 6211
    :cond_1f
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZI)V

    goto/16 :goto_0

    .line 6121
    .end local v5    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v35    # "obj":Lorg/telegram/messenger/MessageObject;
    .end local v36    # "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v37    # "printUpdate":Z
    .end local v39    # "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v52    # "value":Ljava/lang/Integer;
    :cond_20
    move/from16 v0, v51

    move-object/from16 v1, v27

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->from_id:I

    goto/16 :goto_7

    .line 6127
    :cond_21
    move/from16 v0, v51

    move-object/from16 v1, v27

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->from_id:I

    .line 6128
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_peerChat;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_peerChat;-><init>()V

    move-object/from16 v0, v27

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 6129
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v0, p1

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chat_id:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    .line 6130
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chat_id:I

    neg-int v4, v4

    int-to-long v6, v4

    move-object/from16 v0, v27

    iput-wide v6, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->dialog_id:J

    goto/16 :goto_8

    .line 6146
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v39, v0

    goto/16 :goto_9

    .line 6152
    .restart local v39    # "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .restart local v52    # "value":Ljava/lang/Integer;
    :cond_23
    const/4 v4, 0x0

    goto/16 :goto_a

    .line 6167
    .restart local v5    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .restart local v35    # "obj":Lorg/telegram/messenger/MessageObject;
    .restart local v36    # "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :cond_24
    const/16 v37, 0x0

    goto :goto_b

    .line 6182
    :cond_25
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chat_id:I

    neg-int v4, v4

    int-to-long v6, v4

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v6, v7, v1}, Lorg/telegram/messenger/MessagesController;->updatePrintingUsersWithNewMessages(JLjava/util/ArrayList;)Z

    move-result v37

    .line 6183
    .restart local v37    # "printUpdate":Z
    if-eqz v37, :cond_26

    .line 6184
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MessagesController;->updatePrintingStrings()V

    .line 6186
    :cond_26
    new-instance v4, Lorg/telegram/messenger/MessagesController$101;

    move-object/from16 v0, p0

    move/from16 v1, v37

    move-object/from16 v2, p1

    move-object/from16 v3, v36

    invoke-direct {v4, v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesController$101;-><init>(Lorg/telegram/messenger/MessagesController;ZLorg/telegram/tgnet/TLRPC$Updates;Ljava/util/ArrayList;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_c

    .line 6212
    .end local v5    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v20    # "clientUserId":I
    .end local v27    # "message":Lorg/telegram/tgnet/TLRPC$TL_message;
    .end local v35    # "obj":Lorg/telegram/messenger/MessageObject;
    .end local v36    # "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v37    # "printUpdate":Z
    .end local v39    # "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v52    # "value":Ljava/lang/Integer;
    :cond_27
    sget v4, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    move-object/from16 v0, p1

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->pts:I

    if-eq v4, v6, :cond_0

    .line 6213
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "need get diff short message, pts: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->pts:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " count = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->pts_count:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 6214
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/MessagesController;->gettingDifference:Z

    if-nez v4, :cond_28

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimePts:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-eqz v4, :cond_28

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimePts:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/16 v8, 0x5dc

    cmp-long v4, v6, v8

    if-gtz v4, :cond_2a

    .line 6215
    :cond_28
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimePts:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-nez v4, :cond_29

    .line 6216
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimePts:J

    .line 6218
    :cond_29
    const-string/jumbo v4, "add to queue"

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 6219
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->updatesQueuePts:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 6221
    :cond_2a
    const/16 v33, 0x1

    goto/16 :goto_0

    .line 6225
    .end local v16    # "channel":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v29    # "missingData":Z
    .end local v30    # "needBotUser":Z
    .end local v31    # "needFwdUser":Z
    .end local v48    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .end local v49    # "user2":Lorg/telegram/tgnet/TLRPC$User;
    .end local v50    # "user3":Lorg/telegram/tgnet/TLRPC$User;
    .end local v51    # "user_id":I
    :cond_2b
    move-object/from16 v0, p1

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updatesCombined;

    if-nez v4, :cond_2c

    move-object/from16 v0, p1

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;

    if-eqz v4, :cond_5f

    .line 6226
    :cond_2c
    const/16 v28, 0x0

    .line 6227
    .local v28, "minChannels":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$Chat;>;"
    const/4 v10, 0x0

    .restart local v10    # "a":I
    :goto_d
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v10, v4, :cond_33

    .line 6228
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 6229
    .restart local v19    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    move-object/from16 v0, v19

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_channel;

    if-eqz v4, :cond_32

    .line 6230
    move-object/from16 v0, v19

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->min:Z

    if-eqz v4, :cond_32

    .line 6231
    move-object/from16 v0, v19

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v23

    .line 6232
    .local v23, "existChat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v23, :cond_2d

    move-object/from16 v0, v23

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->min:Z

    if-eqz v4, :cond_2f

    .line 6233
    :cond_2d
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, p1

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chat_id:I

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesStorage;->getChatSync(I)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v15

    .line 6234
    .local v15, "cacheChat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-nez v23, :cond_2e

    .line 6235
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v4}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    .line 6237
    :cond_2e
    move-object/from16 v23, v15

    .line 6239
    .end local v15    # "cacheChat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_2f
    if-eqz v23, :cond_30

    move-object/from16 v0, v23

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->min:Z

    if-eqz v4, :cond_32

    .line 6240
    :cond_30
    if-nez v28, :cond_31

    .line 6241
    new-instance v28, Ljava/util/HashMap;

    .end local v28    # "minChannels":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$Chat;>;"
    invoke-direct/range {v28 .. v28}, Ljava/util/HashMap;-><init>()V

    .line 6243
    .restart local v28    # "minChannels":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$Chat;>;"
    :cond_31
    move-object/from16 v0, v19

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6227
    .end local v23    # "existChat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_32
    add-int/lit8 v10, v10, 0x1

    goto :goto_d

    .line 6248
    .end local v19    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_33
    if-eqz v28, :cond_34

    .line 6249
    const/4 v10, 0x0

    :goto_e
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v10, v4, :cond_34

    .line 6250
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lorg/telegram/tgnet/TLRPC$Update;

    .line 6251
    .local v43, "update":Lorg/telegram/tgnet/TLRPC$Update;
    move-object/from16 v0, v43

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;

    if-eqz v4, :cond_35

    .line 6252
    check-cast v43, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;

    .end local v43    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    move-object/from16 v0, v43

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v17, v0

    .line 6253
    .local v17, "channelId":I
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 6254
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "need get diff because of min channel "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 6255
    const/16 v33, 0x1

    .line 6261
    .end local v17    # "channelId":I
    :cond_34
    if-nez v33, :cond_0

    .line 6262
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->users:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {v4, v6, v7, v8, v9}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 6263
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/MessagesController;->updatesComparator:Ljava/util/Comparator;

    invoke-static {v4, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 6264
    const/4 v10, 0x0

    :goto_f
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_53

    .line 6265
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lorg/telegram/tgnet/TLRPC$Update;

    .line 6266
    .restart local v43    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUpdateType(Lorg/telegram/tgnet/TLRPC$Update;)I

    move-result v4

    if-nez v4, :cond_3d

    .line 6267
    new-instance v46, Lorg/telegram/tgnet/TLRPC$TL_updates;

    invoke-direct/range {v46 .. v46}, Lorg/telegram/tgnet/TLRPC$TL_updates;-><init>()V

    .line 6268
    .local v46, "updatesNew":Lorg/telegram/tgnet/TLRPC$TL_updates;
    move-object/from16 v0, v46

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->updates:Ljava/util/ArrayList;

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6269
    move-object/from16 v0, v43

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->pts:I

    move-object/from16 v0, v46

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    .line 6270
    move-object/from16 v0, v43

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->pts_count:I

    move-object/from16 v0, v46

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts_count:I

    .line 6271
    add-int/lit8 v13, v10, 0x1

    .local v13, "b":I
    :goto_10
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v13, v4, :cond_36

    .line 6272
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lorg/telegram/tgnet/TLRPC$Update;

    .line 6273
    .local v44, "update2":Lorg/telegram/tgnet/TLRPC$Update;
    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUpdateType(Lorg/telegram/tgnet/TLRPC$Update;)I

    move-result v4

    if-nez v4, :cond_36

    move-object/from16 v0, v46

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    move-object/from16 v0, v44

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->pts_count:I

    add-int/2addr v4, v6

    move-object/from16 v0, v44

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->pts:I

    if-ne v4, v6, :cond_36

    .line 6274
    move-object/from16 v0, v46

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->updates:Ljava/util/ArrayList;

    move-object/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6275
    move-object/from16 v0, v44

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->pts:I

    move-object/from16 v0, v46

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    .line 6276
    move-object/from16 v0, v46

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts_count:I

    move-object/from16 v0, v44

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->pts_count:I

    add-int/2addr v4, v6

    move-object/from16 v0, v46

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts_count:I

    .line 6277
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6278
    add-int/lit8 v13, v13, -0x1

    .line 6271
    add-int/lit8 v13, v13, 0x1

    goto :goto_10

    .line 6249
    .end local v13    # "b":I
    .end local v43    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    .end local v44    # "update2":Lorg/telegram/tgnet/TLRPC$Update;
    .end local v46    # "updatesNew":Lorg/telegram/tgnet/TLRPC$TL_updates;
    :cond_35
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_e

    .line 6283
    .restart local v13    # "b":I
    .restart local v43    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    .restart local v46    # "updatesNew":Lorg/telegram/tgnet/TLRPC$TL_updates;
    :cond_36
    sget v4, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    move-object/from16 v0, v46

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts_count:I

    add-int/2addr v4, v6

    move-object/from16 v0, v46

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    if-ne v4, v6, :cond_39

    .line 6284
    move-object/from16 v0, v46

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->updates:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->users:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v7, v8}, Lorg/telegram/messenger/MessagesController;->processUpdateArray(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)Z

    move-result v4

    if-nez v4, :cond_38

    .line 6285
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "need get diff inner TL_updates, seq: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->seq:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 6286
    const/16 v33, 0x1

    .line 6413
    :cond_37
    :goto_11
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6414
    add-int/lit8 v10, v10, -0x1

    .line 6264
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_f

    .line 6288
    :cond_38
    move-object/from16 v0, v46

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    sput v4, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    goto :goto_11

    .line 6290
    :cond_39
    sget v4, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    move-object/from16 v0, v46

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    if-eq v4, v6, :cond_37

    .line 6291
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " need get diff, pts: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v46

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " count = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v46

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts_count:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 6292
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/MessagesController;->gettingDifference:Z

    if-nez v4, :cond_3a

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimePts:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-eqz v4, :cond_3a

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimePts:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-eqz v4, :cond_3c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimePts:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/16 v8, 0x5dc

    cmp-long v4, v6, v8

    if-gtz v4, :cond_3c

    .line 6293
    :cond_3a
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimePts:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-nez v4, :cond_3b

    .line 6294
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimePts:J

    .line 6296
    :cond_3b
    const-string/jumbo v4, "add to queue"

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 6297
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->updatesQueuePts:Ljava/util/ArrayList;

    move-object/from16 v0, v46

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_11

    .line 6299
    :cond_3c
    const/16 v33, 0x1

    goto/16 :goto_11

    .line 6302
    .end local v13    # "b":I
    .end local v46    # "updatesNew":Lorg/telegram/tgnet/TLRPC$TL_updates;
    :cond_3d
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUpdateType(Lorg/telegram/tgnet/TLRPC$Update;)I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_44

    .line 6303
    new-instance v46, Lorg/telegram/tgnet/TLRPC$TL_updates;

    invoke-direct/range {v46 .. v46}, Lorg/telegram/tgnet/TLRPC$TL_updates;-><init>()V

    .line 6304
    .restart local v46    # "updatesNew":Lorg/telegram/tgnet/TLRPC$TL_updates;
    move-object/from16 v0, v46

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->updates:Ljava/util/ArrayList;

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6305
    move-object/from16 v0, v43

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->qts:I

    move-object/from16 v0, v46

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    .line 6306
    add-int/lit8 v13, v10, 0x1

    .restart local v13    # "b":I
    :goto_12
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v13, v4, :cond_3e

    .line 6307
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lorg/telegram/tgnet/TLRPC$Update;

    .line 6308
    .restart local v44    # "update2":Lorg/telegram/tgnet/TLRPC$Update;
    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUpdateType(Lorg/telegram/tgnet/TLRPC$Update;)I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_3e

    move-object/from16 v0, v46

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v44

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->qts:I

    if-ne v4, v6, :cond_3e

    .line 6309
    move-object/from16 v0, v46

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->updates:Ljava/util/ArrayList;

    move-object/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6310
    move-object/from16 v0, v44

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->qts:I

    move-object/from16 v0, v46

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    .line 6311
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6312
    add-int/lit8 v13, v13, -0x1

    .line 6306
    add-int/lit8 v13, v13, 0x1

    goto :goto_12

    .line 6317
    .end local v44    # "update2":Lorg/telegram/tgnet/TLRPC$Update;
    :cond_3e
    sget v4, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    if-eqz v4, :cond_3f

    sget v4, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    move-object/from16 v0, v46

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v4, v6

    move-object/from16 v0, v46

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    if-ne v4, v6, :cond_40

    .line 6318
    :cond_3f
    move-object/from16 v0, v46

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->updates:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->users:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v7, v8}, Lorg/telegram/messenger/MessagesController;->processUpdateArray(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)Z

    .line 6319
    move-object/from16 v0, v46

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    sput v4, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    .line 6320
    const/16 v34, 0x1

    goto/16 :goto_11

    .line 6321
    :cond_40
    sget v4, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    move-object/from16 v0, v46

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    if-eq v4, v6, :cond_37

    .line 6322
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " need get diff, qts: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v46

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 6323
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/MessagesController;->gettingDifference:Z

    if-nez v4, :cond_41

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeQts:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-eqz v4, :cond_41

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeQts:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-eqz v4, :cond_43

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeQts:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/16 v8, 0x5dc

    cmp-long v4, v6, v8

    if-gtz v4, :cond_43

    .line 6324
    :cond_41
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeQts:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-nez v4, :cond_42

    .line 6325
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeQts:J

    .line 6327
    :cond_42
    const-string/jumbo v4, "add to queue"

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 6328
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->updatesQueueQts:Ljava/util/ArrayList;

    move-object/from16 v0, v46

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_11

    .line 6330
    :cond_43
    const/16 v33, 0x1

    goto/16 :goto_11

    .line 6333
    .end local v13    # "b":I
    .end local v46    # "updatesNew":Lorg/telegram/tgnet/TLRPC$TL_updates;
    :cond_44
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUpdateType(Lorg/telegram/tgnet/TLRPC$Update;)I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_53

    .line 6334
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUpdateChannelId(Lorg/telegram/tgnet/TLRPC$Update;)I

    move-result v17

    .line 6335
    .restart local v17    # "channelId":I
    const/16 v41, 0x0

    .line 6336
    .local v41, "skipUpdate":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->channelsPts:Ljava/util/HashMap;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    .line 6337
    .local v18, "channelPts":Ljava/lang/Integer;
    if-nez v18, :cond_45

    .line 6338
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesStorage;->getChannelPtsSync(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    .line 6339
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_47

    .line 6340
    const/4 v14, 0x0

    .local v14, "c":I
    :goto_13
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v14, v4, :cond_45

    .line 6341
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 6342
    .restart local v19    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    move-object/from16 v0, v19

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    move/from16 v0, v17

    if-ne v4, v0, :cond_46

    .line 6343
    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v6, v7}, Lorg/telegram/messenger/MessagesController;->loadUnknownChannel(Lorg/telegram/tgnet/TLRPC$Chat;J)V

    .line 6344
    const/16 v41, 0x1

    .line 6352
    .end local v14    # "c":I
    .end local v19    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_45
    :goto_14
    new-instance v46, Lorg/telegram/tgnet/TLRPC$TL_updates;

    invoke-direct/range {v46 .. v46}, Lorg/telegram/tgnet/TLRPC$TL_updates;-><init>()V

    .line 6353
    .restart local v46    # "updatesNew":Lorg/telegram/tgnet/TLRPC$TL_updates;
    move-object/from16 v0, v46

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->updates:Ljava/util/ArrayList;

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6354
    move-object/from16 v0, v43

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->pts:I

    move-object/from16 v0, v46

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    .line 6355
    move-object/from16 v0, v43

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->pts_count:I

    move-object/from16 v0, v46

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts_count:I

    .line 6356
    add-int/lit8 v13, v10, 0x1

    .restart local v13    # "b":I
    :goto_15
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v13, v4, :cond_48

    .line 6357
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lorg/telegram/tgnet/TLRPC$Update;

    .line 6358
    .restart local v44    # "update2":Lorg/telegram/tgnet/TLRPC$Update;
    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUpdateType(Lorg/telegram/tgnet/TLRPC$Update;)I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_48

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUpdateChannelId(Lorg/telegram/tgnet/TLRPC$Update;)I

    move-result v4

    move/from16 v0, v17

    if-ne v0, v4, :cond_48

    move-object/from16 v0, v46

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    move-object/from16 v0, v44

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->pts_count:I

    add-int/2addr v4, v6

    move-object/from16 v0, v44

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->pts:I

    if-ne v4, v6, :cond_48

    .line 6359
    move-object/from16 v0, v46

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->updates:Ljava/util/ArrayList;

    move-object/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6360
    move-object/from16 v0, v44

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->pts:I

    move-object/from16 v0, v46

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    .line 6361
    move-object/from16 v0, v46

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts_count:I

    move-object/from16 v0, v44

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->pts_count:I

    add-int/2addr v4, v6

    move-object/from16 v0, v46

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts_count:I

    .line 6362
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6363
    add-int/lit8 v13, v13, -0x1

    .line 6356
    add-int/lit8 v13, v13, 0x1

    goto :goto_15

    .line 6340
    .end local v13    # "b":I
    .end local v44    # "update2":Lorg/telegram/tgnet/TLRPC$Update;
    .end local v46    # "updatesNew":Lorg/telegram/tgnet/TLRPC$TL_updates;
    .restart local v14    # "c":I
    .restart local v19    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_46
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_13

    .line 6349
    .end local v14    # "c":I
    .end local v19    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_47
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->channelsPts:Ljava/util/HashMap;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v4, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_14

    .line 6368
    .restart local v13    # "b":I
    .restart local v46    # "updatesNew":Lorg/telegram/tgnet/TLRPC$TL_updates;
    :cond_48
    if-nez v41, :cond_52

    .line 6369
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, v46

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts_count:I

    add-int/2addr v4, v6

    move-object/from16 v0, v46

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    if-ne v4, v6, :cond_4b

    .line 6370
    move-object/from16 v0, v46

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->updates:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->users:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v7, v8}, Lorg/telegram/messenger/MessagesController;->processUpdateArray(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)Z

    move-result v4

    if-nez v4, :cond_4a

    .line 6371
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "need get channel diff inner TL_updates, channel_id = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 6372
    if-nez v32, :cond_49

    .line 6373
    new-instance v32, Ljava/util/ArrayList;

    .end local v32    # "needGetChannelsDiff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .restart local v32    # "needGetChannelsDiff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    goto/16 :goto_11

    .line 6374
    :cond_49
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_37

    .line 6375
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_11

    .line 6378
    :cond_4a
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->channelsPts:Ljava/util/HashMap;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v46

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6379
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v46

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    move/from16 v0, v17

    invoke-virtual {v4, v0, v6}, Lorg/telegram/messenger/MessagesStorage;->saveChannelPts(II)V

    goto/16 :goto_11

    .line 6381
    :cond_4b
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, v46

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    if-eq v4, v6, :cond_37

    .line 6382
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " need get channel diff, pts: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v46

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " count = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v46

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts_count:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " channelId = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 6383
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeChannels:Ljava/util/HashMap;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Ljava/lang/Long;

    .line 6384
    .local v47, "updatesStartWaitTime":Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->gettingDifferenceChannels:Ljava/util/HashMap;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Boolean;

    .line 6385
    .local v24, "gettingDifferenceChannel":Ljava/lang/Boolean;
    if-nez v24, :cond_4c

    .line 6386
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    .line 6388
    :cond_4c
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_4d

    if-eqz v47, :cond_4d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual/range {v47 .. v47}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/16 v8, 0x5dc

    cmp-long v4, v6, v8

    if-gtz v4, :cond_50

    .line 6389
    :cond_4d
    if-nez v47, :cond_4e

    .line 6390
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeChannels:Ljava/util/HashMap;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6392
    :cond_4e
    const-string/jumbo v4, "add to queue"

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 6393
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->updatesQueueChannels:Ljava/util/HashMap;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    .line 6394
    .local v12, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Updates;>;"
    if-nez v12, :cond_4f

    .line 6395
    new-instance v12, Ljava/util/ArrayList;

    .end local v12    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Updates;>;"
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 6396
    .restart local v12    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Updates;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->updatesQueueChannels:Ljava/util/HashMap;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6398
    :cond_4f
    move-object/from16 v0, v46

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_11

    .line 6400
    .end local v12    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Updates;>;"
    :cond_50
    if-nez v32, :cond_51

    .line 6401
    new-instance v32, Ljava/util/ArrayList;

    .end local v32    # "needGetChannelsDiff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .restart local v32    # "needGetChannelsDiff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    goto/16 :goto_11

    .line 6402
    :cond_51
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_37

    .line 6403
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_11

    .line 6408
    .end local v24    # "gettingDifferenceChannel":Ljava/lang/Boolean;
    .end local v47    # "updatesStartWaitTime":Ljava/lang/Long;
    :cond_52
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "need load unknown channel = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 6418
    .end local v13    # "b":I
    .end local v17    # "channelId":I
    .end local v18    # "channelPts":Ljava/lang/Integer;
    .end local v41    # "skipUpdate":Z
    .end local v43    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    .end local v46    # "updatesNew":Lorg/telegram/tgnet/TLRPC$TL_updates;
    :cond_53
    move-object/from16 v0, p1

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updatesCombined;

    if-eqz v4, :cond_57

    .line 6419
    sget v4, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p1

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->seq_start:I

    if-eq v4, v6, :cond_54

    sget v4, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    move-object/from16 v0, p1

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->seq_start:I

    if-ne v4, v6, :cond_56

    :cond_54
    const/16 v38, 0x1

    .line 6423
    .local v38, "processUpdate":Z
    :goto_16
    if-eqz v38, :cond_5a

    .line 6424
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->users:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v7, v8}, Lorg/telegram/messenger/MessagesController;->processUpdateArray(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)Z

    .line 6425
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->date:I

    if-eqz v4, :cond_55

    .line 6426
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->date:I

    sput v4, Lorg/telegram/messenger/MessagesStorage;->lastDateValue:I

    .line 6428
    :cond_55
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->seq:I

    if-eqz v4, :cond_0

    .line 6429
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->seq:I

    sput v4, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    goto/16 :goto_0

    .line 6419
    .end local v38    # "processUpdate":Z
    :cond_56
    const/16 v38, 0x0

    goto :goto_16

    .line 6421
    :cond_57
    sget v4, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p1

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->seq:I

    if-eq v4, v6, :cond_58

    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->seq:I

    if-eqz v4, :cond_58

    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->seq:I

    sget v6, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    if-ne v4, v6, :cond_59

    :cond_58
    const/16 v38, 0x1

    .restart local v38    # "processUpdate":Z
    :goto_17
    goto :goto_16

    .end local v38    # "processUpdate":Z
    :cond_59
    const/16 v38, 0x0

    goto :goto_17

    .line 6432
    .restart local v38    # "processUpdate":Z
    :cond_5a
    move-object/from16 v0, p1

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updatesCombined;

    if-eqz v4, :cond_5d

    .line 6433
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "need get diff TL_updatesCombined, seq: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->seq_start:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 6438
    :goto_18
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/MessagesController;->gettingDifference:Z

    if-nez v4, :cond_5b

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeSeq:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-eqz v4, :cond_5b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeSeq:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/16 v8, 0x5dc

    cmp-long v4, v6, v8

    if-gtz v4, :cond_5e

    .line 6439
    :cond_5b
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeSeq:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-nez v4, :cond_5c

    .line 6440
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeSeq:J

    .line 6442
    :cond_5c
    const-string/jumbo v4, "add TL_updates/Combined to queue"

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 6443
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->updatesQueueSeq:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 6435
    :cond_5d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "need get diff TL_updates, seq: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->seq:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_18

    .line 6445
    :cond_5e
    const/16 v33, 0x1

    goto/16 :goto_0

    .line 6449
    .end local v10    # "a":I
    .end local v28    # "minChannels":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$Chat;>;"
    .end local v38    # "processUpdate":Z
    :cond_5f
    move-object/from16 v0, p1

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updatesTooLong;

    if-eqz v4, :cond_60

    .line 6450
    const-string/jumbo v4, "need get diff TL_updatesTooLong"

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 6451
    const/16 v33, 0x1

    goto/16 :goto_0

    .line 6452
    :cond_60
    move-object/from16 v0, p1

    instance-of v4, v0, Lorg/telegram/messenger/MessagesController$UserActionUpdatesSeq;

    if-eqz v4, :cond_61

    .line 6453
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->seq:I

    sput v4, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    goto/16 :goto_0

    .line 6454
    :cond_61
    move-object/from16 v0, p1

    instance-of v4, v0, Lorg/telegram/messenger/MessagesController$UserActionUpdatesPts;

    if-eqz v4, :cond_0

    .line 6455
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chat_id:I

    if-eqz v4, :cond_62

    .line 6456
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->channelsPts:Ljava/util/HashMap;

    move-object/from16 v0, p1

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chat_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, p1

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$Updates;->pts:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6457
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, p1

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chat_id:I

    move-object/from16 v0, p1

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$Updates;->pts:I

    invoke-virtual {v4, v6, v7}, Lorg/telegram/messenger/MessagesStorage;->saveChannelPts(II)V

    goto/16 :goto_0

    .line 6459
    :cond_62
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->pts:I

    sput v4, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    goto/16 :goto_0

    .line 6470
    .restart local v10    # "a":I
    .restart local v25    # "key":Ljava/lang/Integer;
    .restart local v26    # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_63
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6}, Lorg/telegram/messenger/MessagesController;->processChannelsUpdatesQueue(II)V

    goto/16 :goto_2

    .line 6473
    .end local v25    # "key":Ljava/lang/Integer;
    :cond_64
    if-eqz v33, :cond_68

    .line 6474
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessagesController;->getDifference()V

    .line 6481
    .end local v10    # "a":I
    .end local v26    # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_65
    if-eqz v34, :cond_66

    .line 6482
    new-instance v40, Lorg/telegram/tgnet/TLRPC$TL_messages_receivedQueue;

    invoke-direct/range {v40 .. v40}, Lorg/telegram/tgnet/TLRPC$TL_messages_receivedQueue;-><init>()V

    .line 6483
    .local v40, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_receivedQueue;
    sget v4, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    move-object/from16 v0, v40

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_receivedQueue;->max_qts:I

    .line 6484
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    new-instance v6, Lorg/telegram/messenger/MessagesController$103;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lorg/telegram/messenger/MessagesController$103;-><init>(Lorg/telegram/messenger/MessagesController;)V

    move-object/from16 v0, v40

    invoke-virtual {v4, v0, v6}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 6491
    .end local v40    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_receivedQueue;
    :cond_66
    if-eqz v45, :cond_67

    .line 6492
    new-instance v4, Lorg/telegram/messenger/MessagesController$104;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/messenger/MessagesController$104;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 6499
    :cond_67
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    sget v7, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    sget v8, Lorg/telegram/messenger/MessagesStorage;->lastDateValue:I

    sget v9, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    invoke-virtual {v4, v6, v7, v8, v9}, Lorg/telegram/messenger/MessagesStorage;->saveDiffParams(IIII)V

    .line 6500
    return-void

    .line 6476
    .restart local v10    # "a":I
    .restart local v26    # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_68
    const/4 v10, 0x0

    :goto_19
    const/4 v4, 0x3

    if-ge v10, v4, :cond_65

    .line 6477
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v4}, Lorg/telegram/messenger/MessagesController;->processUpdatesQueue(II)V

    .line 6476
    add-int/lit8 v10, v10, 0x1

    goto :goto_19
.end method

.method public putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V
    .locals 4
    .param p1, "chat"    # Lorg/telegram/tgnet/TLRPC$Chat;
    .param p2, "fromCache"    # Z

    .prologue
    const/4 v3, 0x0

    .line 866
    if-nez p1, :cond_1

    .line 917
    :cond_0
    :goto_0
    return-void

    .line 869
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->chats:Ljava/util/concurrent/ConcurrentHashMap;

    iget v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 871
    .local v0, "oldChat":Lorg/telegram/tgnet/TLRPC$Chat;
    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->min:Z

    if-eqz v1, :cond_4

    .line 872
    if-eqz v0, :cond_3

    .line 873
    if-nez p2, :cond_0

    .line 874
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 875
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    .line 876
    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->broadcast:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->broadcast:Z

    .line 877
    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->verified:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->verified:Z

    .line 878
    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    .line 879
    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->democracy:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->democracy:Z

    .line 880
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 881
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    .line 882
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    or-int/lit8 v1, v1, 0x40

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    goto :goto_0

    .line 884
    :cond_2
    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    .line 885
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    and-int/lit8 v1, v1, -0x41

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    goto :goto_0

    .line 889
    :cond_3
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->chats:Ljava/util/concurrent/ConcurrentHashMap;

    iget v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 892
    :cond_4
    if-nez p2, :cond_6

    .line 893
    if-eqz v0, :cond_5

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->version:I

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Chat;->version:I

    if-eq v1, v2, :cond_5

    .line 894
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->loadedFullChats:Ljava/util/ArrayList;

    iget v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 896
    :cond_5
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->chats:Ljava/util/concurrent/ConcurrentHashMap;

    iget v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 897
    :cond_6
    if-nez v0, :cond_7

    .line 898
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->chats:Ljava/util/concurrent/ConcurrentHashMap;

    iget v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 899
    :cond_7
    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->min:Z

    if-eqz v1, :cond_0

    .line 900
    const/4 v1, 0x0

    iput-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->min:Z

    .line 901
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    iput-object v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 902
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iput-object v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    .line 903
    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->broadcast:Z

    iput-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->broadcast:Z

    .line 904
    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->verified:Z

    iput-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->verified:Z

    .line 905
    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    iput-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    .line 906
    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->democracy:Z

    iput-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->democracy:Z

    .line 907
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 908
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    iput-object v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    .line 909
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    .line 914
    :goto_1
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->chats:Ljava/util/concurrent/ConcurrentHashMap;

    iget v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 911
    :cond_8
    iput-object v3, p1, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    .line 912
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    and-int/lit8 v1, v1, -0x41

    iput v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    goto :goto_1
.end method

.method public putChats(Ljava/util/ArrayList;Z)V
    .locals 4
    .param p2, "fromCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 920
    .local p1, "chats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Chat;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 929
    :cond_0
    return-void

    .line 923
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 924
    .local v2, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 925
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 927
    .local v1, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-virtual {p0, v1, p2}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    .line 924
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public putEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Z)V
    .locals 2
    .param p1, "encryptedChat"    # Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .param p2, "fromCache"    # Z

    .prologue
    .line 932
    if-nez p1, :cond_0

    .line 940
    :goto_0
    return-void

    .line 935
    :cond_0
    if-eqz p2, :cond_1

    .line 936
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->encryptedChats:Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 938
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->encryptedChats:Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public putEncryptedChats(Ljava/util/ArrayList;Z)V
    .locals 4
    .param p2, "fromCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$EncryptedChat;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 943
    .local p1, "encryptedChats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$EncryptedChat;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 951
    :cond_0
    return-void

    .line 946
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 947
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 948
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 949
    .local v2, "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    invoke-virtual {p0, v2, p2}, Lorg/telegram/messenger/MessagesController;->putEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Z)V

    .line 947
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z
    .locals 6
    .param p1, "user"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p2, "fromCache"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 777
    if-nez p1, :cond_1

    .line 840
    :cond_0
    :goto_0
    return v2

    .line 780
    :cond_1
    if-eqz p2, :cond_4

    iget v3, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    div-int/lit16 v3, v3, 0x3e8

    const/16 v4, 0x14d

    if-eq v3, v4, :cond_4

    iget v3, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    const v4, 0xbdb28

    if-eq v3, v4, :cond_4

    move p2, v1

    .line 781
    :goto_1
    iget-object v3, p0, Lorg/telegram/messenger/MessagesController;->users:Ljava/util/concurrent/ConcurrentHashMap;

    iget v4, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    .line 782
    .local v0, "oldUser":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v0, :cond_2

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 783
    iget-object v3, p0, Lorg/telegram/messenger/MessagesController;->usersByUsernames:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 785
    :cond_2
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 786
    iget-object v3, p0, Lorg/telegram/messenger/MessagesController;->usersByUsernames:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 788
    :cond_3
    iget-boolean v3, p1, Lorg/telegram/tgnet/TLRPC$User;->min:Z

    if-eqz v3, :cond_8

    .line 789
    if-eqz v0, :cond_7

    .line 790
    if-nez p2, :cond_0

    .line 791
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 792
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    .line 793
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    .line 798
    :goto_2
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v1, :cond_6

    .line 799
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    .line 800
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    goto :goto_0

    .end local v0    # "oldUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_4
    move p2, v2

    .line 780
    goto :goto_1

    .line 795
    .restart local v0    # "oldUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_5
    iput-object v5, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    .line 796
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/lit8 v1, v1, -0x9

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    goto :goto_2

    .line 802
    :cond_6
    iput-object v5, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    .line 803
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/lit8 v1, v1, -0x21

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    goto/16 :goto_0

    .line 807
    :cond_7
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->users:Ljava/util/concurrent/ConcurrentHashMap;

    iget v3, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 810
    :cond_8
    if-nez p2, :cond_a

    .line 811
    iget-object v3, p0, Lorg/telegram/messenger/MessagesController;->users:Ljava/util/concurrent/ConcurrentHashMap;

    iget v4, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 812
    iget v3, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v4

    if-ne v3, v4, :cond_9

    .line 813
    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->setCurrentUser(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 814
    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 816
    :cond_9
    if-eqz v0, :cond_0

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v3, :cond_0

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    if-eq v3, v4, :cond_0

    move v2, v1

    .line 817
    goto/16 :goto_0

    .line 819
    :cond_a
    if-nez v0, :cond_b

    .line 820
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->users:Ljava/util/concurrent/ConcurrentHashMap;

    iget v3, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 821
    :cond_b
    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$User;->min:Z

    if-eqz v1, :cond_0

    .line 822
    iput-boolean v2, p1, Lorg/telegram/tgnet/TLRPC$User;->min:Z

    .line 823
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 824
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    iput-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    .line 825
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p1, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    .line 830
    :goto_3
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v1, :cond_d

    .line 831
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iput-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    .line 832
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p1, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    .line 837
    :goto_4
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->users:Ljava/util/concurrent/ConcurrentHashMap;

    iget v3, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 827
    :cond_c
    iput-object v5, p1, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    .line 828
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p1, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    goto :goto_3

    .line 834
    :cond_d
    iput-object v5, p1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    .line 835
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p1, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    goto :goto_4
.end method

.method public putUsers(Ljava/util/ArrayList;Z)V
    .locals 5
    .param p2, "fromCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 844
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 863
    :cond_0
    :goto_0
    return-void

    .line 847
    :cond_1
    const/4 v2, 0x0

    .line 848
    .local v2, "updateStatus":Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 849
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 850
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$User;

    .line 851
    .local v3, "user":Lorg/telegram/tgnet/TLRPC$User;
    invoke-virtual {p0, v3, p2}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 852
    const/4 v2, 0x1

    .line 849
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 855
    .end local v3    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_3
    if-eqz v2, :cond_0

    .line 856
    new-instance v4, Lorg/telegram/messenger/MessagesController$8;

    invoke-direct {v4, p0}, Lorg/telegram/messenger/MessagesController$8;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public registerForPush(Ljava/lang/String;)V
    .locals 3
    .param p1, "regid"    # Ljava/lang/String;

    .prologue
    .line 4726
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/telegram/messenger/MessagesController;->registeringForPush:Z

    if-nez v1, :cond_0

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v1

    if-nez v1, :cond_1

    .line 4753
    :cond_0
    :goto_0
    return-void

    .line 4729
    :cond_1
    sget-boolean v1, Lorg/telegram/messenger/UserConfig;->registeredForPush:Z

    if-eqz v1, :cond_2

    sget-object v1, Lorg/telegram/messenger/UserConfig;->pushString:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4732
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/messenger/MessagesController;->registeringForPush:Z

    .line 4733
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_account_registerDevice;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_account_registerDevice;-><init>()V

    .line 4734
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_account_registerDevice;
    const/4 v1, 0x2

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_account_registerDevice;->token_type:I

    .line 4735
    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_account_registerDevice;->token:Ljava/lang/String;

    .line 4736
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$85;

    invoke-direct {v2, p0, p1}, Lorg/telegram/messenger/MessagesController$85;-><init>(Lorg/telegram/messenger/MessagesController;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0
.end method

.method public reloadWebPages(JLjava/util/HashMap;)V
    .locals 9
    .param p1, "dialog_id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 2734
    .local p3, "webpagesToReload":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;>;"
    invoke-virtual {p3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2735
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2736
    .local v4, "url":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 2737
    .local v2, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->reloadingWebpages:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2738
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    if-nez v0, :cond_0

    .line 2739
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2740
    .restart local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->reloadingWebpages:Ljava/util/HashMap;

    invoke-virtual {v6, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2742
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2743
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPagePreview;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPagePreview;-><init>()V

    .line 2744
    .local v3, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPagePreview;
    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPagePreview;->message:Ljava/lang/String;

    .line 2745
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v6

    new-instance v7, Lorg/telegram/messenger/MessagesController$52;

    invoke-direct {v7, p0, v4, p1, p2}, Lorg/telegram/messenger/MessagesController$52;-><init>(Lorg/telegram/messenger/MessagesController;Ljava/lang/String;J)V

    invoke-virtual {v6, v3, v7}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0

    .line 2784
    .end local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;>;"
    .end local v2    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v3    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPagePreview;
    .end local v4    # "url":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public reportSpam(JLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V
    .locals 9
    .param p1, "dialogId"    # J
    .param p3, "currentUser"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p4, "currentChat"    # Lorg/telegram/tgnet/TLRPC$Chat;
    .param p5, "currentEncryptedChat"    # Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .prologue
    const/4 v8, 0x2

    .line 1348
    if-nez p3, :cond_1

    if-nez p4, :cond_1

    if-nez p5, :cond_1

    .line 1383
    :cond_0
    :goto_0
    return-void

    .line 1351
    :cond_1
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Notifications"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lorg/telegram/messenger/ChangeUserHelper;->getUserTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1352
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1353
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "spam3_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1354
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1355
    long-to-int v3, p1

    if-nez v3, :cond_2

    .line 1356
    if-eqz p5, :cond_0

    iget-wide v4, p5, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->access_hash:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 1359
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messages_reportEncryptedSpam;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messages_reportEncryptedSpam;-><init>()V

    .line 1360
    .local v2, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_reportEncryptedSpam;
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;-><init>()V

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_reportEncryptedSpam;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    .line 1361
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_reportEncryptedSpam;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    iget v4, p5, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    iput v4, v3, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;->chat_id:I

    .line 1362
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_reportEncryptedSpam;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    iget-wide v4, p5, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->access_hash:J

    iput-wide v4, v3, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;->access_hash:J

    .line 1363
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/MessagesController$14;

    invoke-direct {v4, p0}, Lorg/telegram/messenger/MessagesController$14;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v3, v2, v4, v8}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto :goto_0

    .line 1370
    .end local v2    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_reportEncryptedSpam;
    :cond_2
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messages_reportSpam;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messages_reportSpam;-><init>()V

    .line 1371
    .local v2, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_reportSpam;
    if-eqz p4, :cond_4

    .line 1372
    iget v3, p4, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    neg-int v3, v3

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_reportSpam;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1376
    :cond_3
    :goto_1
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/MessagesController$15;

    invoke-direct {v4, p0}, Lorg/telegram/messenger/MessagesController$15;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v3, v2, v4, v8}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto/16 :goto_0

    .line 1373
    :cond_4
    if-eqz p3, :cond_3

    .line 1374
    iget v3, p3, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_reportSpam;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto :goto_1
.end method

.method public saveGif(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 4
    .param p1, "document"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    .line 2175
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;-><init>()V

    .line 2176
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    .line 2177
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    .line 2178
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$InputDocument;->access_hash:J

    .line 2179
    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;->unsave:Z

    .line 2180
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$39;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesController$39;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 2186
    return-void
.end method

.method public saveRecentSticker(Lorg/telegram/tgnet/TLRPC$Document;Z)V
    .locals 4
    .param p1, "document"    # Lorg/telegram/tgnet/TLRPC$Document;
    .param p2, "asMask"    # Z

    .prologue
    .line 2189
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveRecentSticker;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_saveRecentSticker;-><init>()V

    .line 2190
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_saveRecentSticker;
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveRecentSticker;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    .line 2191
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveRecentSticker;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    .line 2192
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveRecentSticker;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$InputDocument;->access_hash:J

    .line 2193
    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveRecentSticker;->unsave:Z

    .line 2194
    iput-boolean p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveRecentSticker;->attached:Z

    .line 2195
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$40;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesController$40;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 2201
    return-void
.end method

.method public sendBotStart(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;)V
    .locals 4
    .param p1, "user"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p2, "botHash"    # Ljava/lang/String;

    .prologue
    .line 4309
    if-nez p1, :cond_0

    .line 4326
    :goto_0
    return-void

    .line 4312
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;-><init>()V

    .line 4313
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 4314
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 4315
    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;->start_param:Ljava/lang/String;

    .line 4316
    sget-object v1, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v2

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;->random_id:J

    .line 4317
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$75;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesController$75;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0
.end method

.method public sendTyping(JII)V
    .locals 11
    .param p1, "dialog_id"    # J
    .param p3, "action"    # I
    .param p4, "classGuid"    # I

    .prologue
    .line 2579
    const-wide/16 v6, 0x0

    cmp-long v6, p1, v6

    if-nez v6, :cond_1

    .line 2672
    :cond_0
    :goto_0
    return-void

    .line 2582
    :cond_1
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->sendingTypings:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    .line 2583
    .local v5, "typings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    if-eqz v5, :cond_2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_0

    .line 2586
    :cond_2
    if-nez v5, :cond_3

    .line 2587
    new-instance v5, Ljava/util/HashMap;

    .end local v5    # "typings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 2588
    .restart local v5    # "typings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->sendingTypings:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2590
    :cond_3
    long-to-int v2, p1

    .line 2591
    .local v2, "lower_part":I
    const/16 v6, 0x20

    shr-long v6, p1, v6

    long-to-int v1, v6

    .line 2592
    .local v1, "high_id":I
    if-eqz v2, :cond_c

    .line 2593
    const/4 v6, 0x1

    if-eq v1, v6, :cond_0

    .line 2597
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;-><init>()V

    .line 2598
    .local v3, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;
    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v6

    iput-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 2599
    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    instance-of v6, v6, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    if-eqz v6, :cond_4

    .line 2600
    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 2601
    .local v0, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v0, :cond_0

    iget-boolean v6, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v6, :cond_0

    .line 2605
    .end local v0    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_4
    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-eqz v6, :cond_0

    .line 2608
    if-nez p3, :cond_6

    .line 2609
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_sendMessageTypingAction;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageTypingAction;-><init>()V

    iput-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    .line 2623
    :cond_5
    :goto_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2624
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v6

    new-instance v7, Lorg/telegram/messenger/MessagesController$49;

    invoke-direct {v7, p0, p3, p1, p2}, Lorg/telegram/messenger/MessagesController$49;-><init>(Lorg/telegram/messenger/MessagesController;IJ)V

    const/4 v8, 0x2

    invoke-virtual {v6, v3, v7, v8}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result v4

    .line 2638
    .local v4, "reqId":I
    if-eqz p4, :cond_0

    .line 2639
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v6

    invoke-virtual {v6, v4, p4}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    goto/16 :goto_0

    .line 2610
    .end local v4    # "reqId":I
    :cond_6
    const/4 v6, 0x1

    if-ne p3, v6, :cond_7

    .line 2611
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_sendMessageRecordAudioAction;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageRecordAudioAction;-><init>()V

    iput-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    goto :goto_1

    .line 2612
    :cond_7
    const/4 v6, 0x2

    if-ne p3, v6, :cond_8

    .line 2613
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_sendMessageCancelAction;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageCancelAction;-><init>()V

    iput-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    goto :goto_1

    .line 2614
    :cond_8
    const/4 v6, 0x3

    if-ne p3, v6, :cond_9

    .line 2615
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadDocumentAction;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadDocumentAction;-><init>()V

    iput-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    goto :goto_1

    .line 2616
    :cond_9
    const/4 v6, 0x4

    if-ne p3, v6, :cond_a

    .line 2617
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadPhotoAction;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadPhotoAction;-><init>()V

    iput-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    goto :goto_1

    .line 2618
    :cond_a
    const/4 v6, 0x5

    if-ne p3, v6, :cond_b

    .line 2619
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadVideoAction;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadVideoAction;-><init>()V

    iput-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    goto :goto_1

    .line 2620
    :cond_b
    const/4 v6, 0x6

    if-ne p3, v6, :cond_5

    .line 2621
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_sendMessageGamePlayAction;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageGamePlayAction;-><init>()V

    iput-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    goto :goto_1

    .line 2642
    .end local v3    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;
    :cond_c
    if-nez p3, :cond_0

    .line 2645
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v0

    .line 2646
    .local v0, "chat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    if-eqz v6, :cond_0

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    array-length v6, v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_0

    instance-of v6, v0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    if-eqz v6, :cond_0

    .line 2647
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messages_setEncryptedTyping;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messages_setEncryptedTyping;-><init>()V

    .line 2648
    .local v3, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_setEncryptedTyping;
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;-><init>()V

    iput-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_setEncryptedTyping;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    .line 2649
    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_setEncryptedTyping;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    iput v7, v6, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;->chat_id:I

    .line 2650
    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_setEncryptedTyping;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->access_hash:J

    iput-wide v8, v6, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;->access_hash:J

    .line 2651
    const/4 v6, 0x1

    iput-boolean v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_setEncryptedTyping;->typing:Z

    .line 2652
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2653
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v6

    new-instance v7, Lorg/telegram/messenger/MessagesController$50;

    invoke-direct {v7, p0, p3, p1, p2}, Lorg/telegram/messenger/MessagesController$50;-><init>(Lorg/telegram/messenger/MessagesController;IJ)V

    const/4 v8, 0x2

    invoke-virtual {v6, v3, v7, v8}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result v4

    .line 2667
    .restart local v4    # "reqId":I
    if-eqz p4, :cond_0

    .line 2668
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v6

    invoke-virtual {v6, v4, p4}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    goto/16 :goto_0
.end method

.method public setLastCreatedDialogId(JZ)V
    .locals 3
    .param p1, "dialog_id"    # J
    .param p3, "set"    # Z

    .prologue
    .line 760
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesController$7;

    invoke-direct {v1, p0, p3, p1, p2}, Lorg/telegram/messenger/MessagesController$7;-><init>(Lorg/telegram/messenger/MessagesController;ZJ)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 770
    return-void
.end method

.method public sortDialogs(Ljava/util/HashMap;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 7911
    .local p1, "chatsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$Chat;>;"
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->dialogsServerOnly:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 7912
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->dialogsGroupsOnly:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 7913
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->dialogsUsers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 7914
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->dialogsGroups:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 7915
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->dialogsGroupsAll:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 7916
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->dialogsChannels:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 7917
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->dialogsMegaGroups:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 7918
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->dialogsBots:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 7919
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->dialogsFavs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 7920
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    iget-object v7, p0, Lorg/telegram/messenger/MessagesController;->dialogComparator:Ljava/util/Comparator;

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 7921
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_b

    .line 7922
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 7923
    .local v2, "d":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    const/16 v8, 0x20

    shr-long/2addr v6, v8

    long-to-int v3, v6

    .line 7924
    .local v3, "high_id":I
    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    long-to-int v4, v6

    .line 7925
    .local v4, "lower_id":I
    if-eqz v4, :cond_a

    const/4 v6, 0x1

    if-eq v3, v6, :cond_a

    .line 7926
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->dialogsServerOnly:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7927
    invoke-static {v2}, Lorg/telegram/messenger/DialogObject;->isChannel(Lorg/telegram/tgnet/TLRPC$TL_dialog;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 7928
    neg-int v6, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    .line 7929
    .local v1, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v1, :cond_2

    iget-boolean v6, v1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v6, :cond_0

    iget-boolean v6, v1, Lorg/telegram/tgnet/TLRPC$Chat;->editor:Z

    if-nez v6, :cond_1

    :cond_0
    iget-boolean v6, v1, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v6, :cond_2

    .line 7930
    :cond_1
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->dialogsGroupsOnly:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7932
    :cond_2
    if-eqz v1, :cond_3

    .line 7933
    iget-boolean v6, v1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v6, :cond_5

    .line 7934
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->dialogsMegaGroups:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7935
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->dialogsGroupsAll:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7965
    .end local v1    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_3
    :goto_1
    invoke-static {}, Lorg/telegram/ui/Components/Favorite;->getInstance()Lorg/telegram/ui/Components/Favorite;

    move-result-object v6

    iget-wide v8, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/Favorite;->isFavorite(Ljava/lang/Long;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 7966
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->dialogsFavs:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7921
    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7937
    .restart local v1    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_5
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->dialogsChannels:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 7940
    .end local v1    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_6
    if-gez v4, :cond_8

    .line 7941
    if-eqz p1, :cond_7

    .line 7942
    neg-int v6, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 7943
    .restart local v1    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v1, :cond_7

    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    if-eqz v6, :cond_7

    .line 7944
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 7945
    add-int/lit8 v0, v0, -0x1

    .line 7946
    goto :goto_2

    .line 7949
    .end local v1    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_7
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->dialogsGroupsOnly:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7950
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->dialogsGroups:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7951
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->dialogsGroupsAll:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 7953
    :cond_8
    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    long-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    .line 7954
    .local v5, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v5, :cond_3

    .line 7955
    iget-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v6, :cond_9

    .line 7956
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->dialogsBots:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 7958
    :cond_9
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->dialogsUsers:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 7962
    .end local v5    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_a
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 7963
    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->dialogsUsers:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 7969
    .end local v2    # "d":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v3    # "high_id":I
    .end local v4    # "lower_id":I
    :cond_b
    return-void
.end method

.method public startShortPoll(IZ)V
    .locals 2
    .param p1, "channelId"    # I
    .param p2, "stop"    # Z

    .prologue
    .line 5030
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesController$92;

    invoke-direct {v1, p0, p2, p1}, Lorg/telegram/messenger/MessagesController$92;-><init>(Lorg/telegram/messenger/MessagesController;ZI)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 5043
    return-void
.end method

.method public toggleAdminMode(IZ)V
    .locals 3
    .param p1, "chat_id"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 4329
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleChatAdmins;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleChatAdmins;-><init>()V

    .line 4330
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_toggleChatAdmins;
    iput p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleChatAdmins;->chat_id:I

    .line 4331
    iput-boolean p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleChatAdmins;->enabled:Z

    .line 4332
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$76;

    invoke-direct {v2, p0, p1}, Lorg/telegram/messenger/MessagesController$76;-><init>(Lorg/telegram/messenger/MessagesController;I)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 4341
    return-void
.end method

.method public toggleUserAdmin(IIZ)V
    .locals 3
    .param p1, "chat_id"    # I
    .param p2, "user_id"    # I
    .param p3, "admin"    # Z

    .prologue
    .line 4344
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editChatAdmin;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_editChatAdmin;-><init>()V

    .line 4345
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_editChatAdmin;
    iput p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editChatAdmin;->chat_id:I

    .line 4346
    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInputUser(I)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editChatAdmin;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 4347
    iput-boolean p3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editChatAdmin;->is_admin:Z

    .line 4348
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$77;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesController$77;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 4354
    return-void
.end method

.method public toogleChannelInvites(IZ)V
    .locals 4
    .param p1, "chat_id"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 4222
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_toggleInvites;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_toggleInvites;-><init>()V

    .line 4223
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_toggleInvites;
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_toggleInvites;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 4224
    iput-boolean p2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_toggleInvites;->enabled:Z

    .line 4225
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$71;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesController$71;-><init>(Lorg/telegram/messenger/MessagesController;)V

    const/16 v3, 0x40

    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    .line 4233
    return-void
.end method

.method public toogleChannelSignatures(IZ)V
    .locals 4
    .param p1, "chat_id"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 4236
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_toggleSignatures;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_toggleSignatures;-><init>()V

    .line 4237
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_toggleSignatures;
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_toggleSignatures;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 4238
    iput-boolean p2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_toggleSignatures;->enabled:Z

    .line 4239
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$72;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesController$72;-><init>(Lorg/telegram/messenger/MessagesController;)V

    const/16 v3, 0x40

    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    .line 4253
    return-void
.end method

.method public unblockUser(I)V
    .locals 5
    .param p1, "user_id"    # I

    .prologue
    .line 1722
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_unblock;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contacts_unblock;-><init>()V

    .line 1723
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_contacts_unblock;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    .line 1724
    .local v1, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-nez v1, :cond_0

    .line 1736
    :goto_0
    return-void

    .line 1727
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/MessagesController;->blockedUsers:Ljava/util/ArrayList;

    iget v3, v1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1728
    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_unblock;->id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 1729
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->blockedUsersDidLoaded:I

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1730
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/MessagesController$26;

    invoke-direct {v3, p0, v1}, Lorg/telegram/messenger/MessagesController$26;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {v2, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0
.end method

.method public unregistedPush()V
    .locals 3

    .prologue
    .line 4640
    sget-boolean v1, Lorg/telegram/messenger/UserConfig;->registeredForPush:Z

    if-eqz v1, :cond_0

    sget-object v1, Lorg/telegram/messenger/UserConfig;->pushString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 4641
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_account_unregisterDevice;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_account_unregisterDevice;-><init>()V

    .line 4642
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_account_unregisterDevice;
    sget-object v1, Lorg/telegram/messenger/UserConfig;->pushString:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_account_unregisterDevice;->token:Ljava/lang/String;

    .line 4643
    const/4 v1, 0x2

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_account_unregisterDevice;->token_type:I

    .line 4644
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$82;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesController$82;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 4651
    .end local v0    # "req":Lorg/telegram/tgnet/TLRPC$TL_account_unregisterDevice;
    :cond_0
    return-void
.end method

.method public updateChannelAbout(ILjava/lang/String;Lorg/telegram/tgnet/TLRPC$ChatFull;)V
    .locals 4
    .param p1, "chat_id"    # I
    .param p2, "about"    # Ljava/lang/String;
    .param p3, "info"    # Lorg/telegram/tgnet/TLRPC$ChatFull;

    .prologue
    .line 4256
    if-nez p3, :cond_0

    .line 4277
    :goto_0
    return-void

    .line 4259
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editAbout;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_editAbout;-><init>()V

    .line 4260
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_editAbout;
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editAbout;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 4261
    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editAbout;->about:Ljava/lang/String;

    .line 4262
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$73;

    invoke-direct {v2, p0, p3, p2}, Lorg/telegram/messenger/MessagesController$73;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$ChatFull;Ljava/lang/String;)V

    const/16 v3, 0x40

    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto :goto_0
.end method

.method public updateChannelUserName(ILjava/lang/String;)V
    .locals 4
    .param p1, "chat_id"    # I
    .param p2, "userName"    # Ljava/lang/String;

    .prologue
    .line 4280
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_updateUsername;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_updateUsername;-><init>()V

    .line 4281
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_updateUsername;
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_updateUsername;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 4282
    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_updateUsername;->username:Ljava/lang/String;

    .line 4283
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$74;

    invoke-direct {v2, p0, p1, p2}, Lorg/telegram/messenger/MessagesController$74;-><init>(Lorg/telegram/messenger/MessagesController;ILjava/lang/String;)V

    const/16 v3, 0x40

    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    .line 4306
    return-void
.end method

.method public updateConfig(Lorg/telegram/tgnet/TLRPC$TL_config;)V
    .locals 1
    .param p1, "config"    # Lorg/telegram/tgnet/TLRPC$TL_config;

    .prologue
    .line 342
    new-instance v0, Lorg/telegram/messenger/MessagesController$3;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/MessagesController$3;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$TL_config;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 409
    return-void
.end method

.method protected updateInterfaceWithMessages(JLjava/util/ArrayList;)V
    .locals 1
    .param p1, "uid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 7786
    .local p3, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/telegram/messenger/MessagesController;->updateInterfaceWithMessages(JLjava/util/ArrayList;Z)V

    .line 7787
    return-void
.end method

.method protected updateInterfaceWithMessages(JLjava/util/ArrayList;Z)V
    .locals 19
    .param p1, "uid"    # J
    .param p4, "isBroadcast"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 7790
    .local p3, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 7908
    :cond_0
    :goto_0
    return-void

    .line 7794
    :cond_1
    move-wide/from16 v0, p1

    long-to-int v14, v0

    if-nez v14, :cond_9

    const/4 v9, 0x1

    .line 7795
    .local v9, "isEncryptedChat":Z
    :goto_1
    const/4 v10, 0x0

    .line 7796
    .local v10, "lastMessage":Lorg/telegram/messenger/MessageObject;
    const/4 v6, 0x0

    .line 7797
    .local v6, "channelId":I
    const/4 v13, 0x0

    .line 7798
    .local v13, "updateRating":Z
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_2
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v4, v14, :cond_b

    .line 7799
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/messenger/MessageObject;

    .line 7800
    .local v11, "message":Lorg/telegram/messenger/MessageObject;
    if-eqz v10, :cond_5

    if-nez v9, :cond_2

    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v14

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v15

    if-gt v14, v15, :cond_5

    :cond_2
    if-nez v9, :cond_3

    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v14

    if-gez v14, :cond_4

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v14

    if-gez v14, :cond_4

    :cond_3
    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v14

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v15

    if-lt v14, v15, :cond_5

    :cond_4
    iget-object v14, v11, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v14, v14, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iget-object v15, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v15, v15, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    if-le v14, v15, :cond_6

    .line 7801
    :cond_5
    move-object v10, v11

    .line 7802
    iget-object v14, v11, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v14, v14, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v14, :cond_6

    .line 7803
    iget-object v14, v11, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v6, v14, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    .line 7806
    :cond_6
    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->isSending()Z

    move-result v14

    if-nez v14, :cond_7

    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->isForwarded()Z

    move-result v14

    if-nez v14, :cond_7

    .line 7807
    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->isNewGif()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 7808
    iget-object v14, v11, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v15, v11, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v15, v15, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    invoke-static {v14, v15}, Lorg/telegram/messenger/query/StickersQuery;->addRecentGif(Lorg/telegram/tgnet/TLRPC$Document;I)V

    .line 7813
    :cond_7
    :goto_3
    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->isSent()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 7814
    const/4 v13, 0x1

    .line 7798
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 7794
    .end local v4    # "a":I
    .end local v6    # "channelId":I
    .end local v9    # "isEncryptedChat":Z
    .end local v10    # "lastMessage":Lorg/telegram/messenger/MessageObject;
    .end local v11    # "message":Lorg/telegram/messenger/MessageObject;
    .end local v13    # "updateRating":Z
    :cond_9
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 7809
    .restart local v4    # "a":I
    .restart local v6    # "channelId":I
    .restart local v9    # "isEncryptedChat":Z
    .restart local v10    # "lastMessage":Lorg/telegram/messenger/MessageObject;
    .restart local v11    # "message":Lorg/telegram/messenger/MessageObject;
    .restart local v13    # "updateRating":Z
    :cond_a
    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->isSticker()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 7810
    const/4 v14, 0x0

    iget-object v15, v11, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v15, v15, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v15, v15, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, v11, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move/from16 v16, v0

    invoke-static/range {v14 .. v16}, Lorg/telegram/messenger/query/StickersQuery;->addRecentSticker(ILorg/telegram/tgnet/TLRPC$Document;I)V

    goto :goto_3

    .line 7817
    .end local v11    # "message":Lorg/telegram/messenger/MessageObject;
    :cond_b
    move-object/from16 v0, p3

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/query/MessagesQuery;->loadReplyMessagesForMessages(Ljava/util/ArrayList;J)V

    .line 7818
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v14

    sget v15, Lorg/telegram/messenger/NotificationCenter;->didReceivedNewMessages:I

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    aput-object p3, v16, v17

    invoke-virtual/range {v14 .. v16}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 7820
    if-eqz v10, :cond_0

    .line 7823
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 7824
    .local v8, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    iget-object v14, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v14, v14, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatMigrateTo;

    if-eqz v14, :cond_d

    .line 7825
    if-eqz v8, :cond_0

    .line 7826
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7827
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogsServerOnly:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7828
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogsGroupsOnly:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7829
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7830
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogsUsers:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7831
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogsGroups:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7832
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogsGroupsAll:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7833
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogsChannels:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7834
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogsMegaGroups:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7835
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogsBots:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7836
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogsFavs:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7837
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7838
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7839
    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/messenger/MessagesController;->nextDialogsCacheOffset:I

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lorg/telegram/messenger/MessagesController;->nextDialogsCacheOffset:I

    .line 7840
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    iget-wide v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7841
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    iget v15, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/messenger/MessageObject;

    .line 7842
    .local v12, "object":Lorg/telegram/messenger/MessageObject;
    if-eqz v12, :cond_c

    iget-object v14, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_c

    .line 7843
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByRandomIds:Ljava/util/HashMap;

    iget-object v15, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v0, v15, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7845
    :cond_c
    const/4 v14, 0x0

    iput v14, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    .line 7846
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v14

    iget-wide v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Lorg/telegram/messenger/NotificationsController;->removeNotificationsForDialog(J)V

    .line 7847
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v14

    sget v15, Lorg/telegram/messenger/NotificationCenter;->needReloadRecentDialogsSearch:I

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 7852
    .end local v12    # "object":Lorg/telegram/messenger/MessageObject;
    :cond_d
    const/4 v5, 0x0

    .line 7854
    .local v5, "changed":Z
    if-nez v8, :cond_14

    .line 7855
    if-nez p4, :cond_11

    .line 7856
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v7

    .line 7857
    .local v7, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v6, :cond_e

    if-eqz v7, :cond_0

    :cond_e
    if-eqz v7, :cond_f

    iget-boolean v14, v7, Lorg/telegram/tgnet/TLRPC$Chat;->left:Z

    if-nez v14, :cond_0

    .line 7860
    :cond_f
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .end local v8    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_dialog;-><init>()V

    .line 7861
    .restart local v8    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    move-wide/from16 v0, p1

    iput-wide v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    .line 7862
    const/4 v14, 0x0

    iput v14, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    .line 7863
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v14

    iput v14, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    .line 7864
    iget-object v14, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v14, v14, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iput v14, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    .line 7865
    invoke-static {v7}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v14

    if-eqz v14, :cond_13

    const/4 v14, 0x1

    :goto_4
    iput v14, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->flags:I

    .line 7866
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7867
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7868
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7869
    iget-object v14, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v14, v14, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-nez v14, :cond_10

    .line 7870
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7871
    iget-object v14, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_10

    .line 7872
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByRandomIds:Ljava/util/HashMap;

    iget-object v15, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v0, v15, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7875
    :cond_10
    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/messenger/MessagesController;->nextDialogsCacheOffset:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lorg/telegram/messenger/MessagesController;->nextDialogsCacheOffset:I

    .line 7876
    const/4 v5, 0x1

    .line 7901
    .end local v7    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_11
    :goto_5
    if-eqz v5, :cond_12

    .line 7902
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/telegram/messenger/MessagesController;->sortDialogs(Ljava/util/HashMap;)V

    .line 7905
    :cond_12
    if-eqz v13, :cond_0

    .line 7906
    invoke-static/range {p1 .. p2}, Lorg/telegram/messenger/query/SearchQuery;->increasePeerRaiting(J)V

    goto/16 :goto_0

    .line 7865
    .restart local v7    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_13
    const/4 v14, 0x0

    goto :goto_4

    .line 7879
    .end local v7    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_14
    iget v14, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    if-lez v14, :cond_15

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v14

    if-lez v14, :cond_15

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v14

    iget v15, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    if-gt v14, v15, :cond_17

    :cond_15
    iget v14, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    if-gez v14, :cond_16

    .line 7880
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v14

    if-gez v14, :cond_16

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v14

    iget v15, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    if-lt v14, v15, :cond_17

    :cond_16
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    .line 7881
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_17

    iget v14, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    if-ltz v14, :cond_17

    iget v14, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    iget-object v15, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v15, v15, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    if-gt v14, v15, :cond_11

    .line 7882
    :cond_17
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    iget v15, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/messenger/MessageObject;

    .line 7883
    .restart local v12    # "object":Lorg/telegram/messenger/MessageObject;
    if-eqz v12, :cond_18

    iget-object v14, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_18

    .line 7884
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByRandomIds:Ljava/util/HashMap;

    iget-object v15, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v0, v15, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7886
    :cond_18
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v14

    iput v14, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    .line 7887
    if-nez p4, :cond_19

    .line 7888
    iget-object v14, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v14, v14, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iput v14, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    .line 7889
    const/4 v5, 0x1

    .line 7891
    :cond_19
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7892
    iget-object v14, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v14, v14, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-nez v14, :cond_11

    .line 7893
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7894
    iget-object v14, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_11

    .line 7895
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByRandomIds:Ljava/util/HashMap;

    iget-object v15, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v0, v15, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5
.end method

.method public updateTimerProc()V
    .locals 30

    .prologue
    .line 2254
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 2256
    .local v10, "currentTime":J
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lorg/telegram/messenger/MessagesController;->checkDeletingTask(Z)Z

    .line 2258
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v23

    if-eqz v23, :cond_8

    .line 2259
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/tgnet/ConnectionsManager;->getPauseTime()J

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmp-long v23, v24, v26

    if-nez v23, :cond_4

    sget-boolean v23, Lorg/telegram/messenger/ApplicationLoader;->isScreenOn:Z

    if-eqz v23, :cond_4

    sget-boolean v23, Lorg/telegram/messenger/ApplicationLoader;->mainInterfacePausedStageQueue:Z

    if-nez v23, :cond_4

    .line 2260
    sget-wide v24, Lorg/telegram/messenger/ApplicationLoader;->mainInterfacePausedStageQueueTime:J

    const-wide/16 v26, 0x0

    cmp-long v23, v24, v26

    if-eqz v23, :cond_2

    sget-wide v24, Lorg/telegram/messenger/ApplicationLoader;->mainInterfacePausedStageQueueTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    sub-long v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->abs(J)J

    move-result-wide v24

    const-wide/16 v26, 0x3e8

    cmp-long v23, v24, v26

    if-lez v23, :cond_2

    .line 2261
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->statusSettingState:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesController;->lastStatusUpdateTime:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmp-long v23, v24, v26

    if-eqz v23, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesController;->lastStatusUpdateTime:J

    move-wide/from16 v26, v0

    sub-long v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->abs(J)J

    move-result-wide v24

    const-wide/32 v26, 0xd6d8

    cmp-long v23, v24, v26

    if-gez v23, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesController;->offlineSent:Z

    move/from16 v23, v0

    if-eqz v23, :cond_2

    .line 2262
    :cond_0
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/MessagesController;->statusSettingState:I

    .line 2264
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->statusRequest:I

    move/from16 v23, v0

    if-eqz v23, :cond_1

    .line 2265
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->statusRequest:I

    move/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v23 .. v25}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 2268
    :cond_1
    new-instance v15, Lorg/telegram/tgnet/TLRPC$TL_account_updateStatus;

    invoke-direct {v15}, Lorg/telegram/tgnet/TLRPC$TL_account_updateStatus;-><init>()V

    .line 2269
    .local v15, "req":Lorg/telegram/tgnet/TLRPC$TL_account_updateStatus;
    const/16 v23, 0x0

    move/from16 v0, v23

    iput-boolean v0, v15, Lorg/telegram/tgnet/TLRPC$TL_account_updateStatus;->offline:Z

    .line 2270
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v23

    new-instance v24, Lorg/telegram/messenger/MessagesController$43;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/MessagesController$43;-><init>(Lorg/telegram/messenger/MessagesController;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v15, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/MessagesController;->statusRequest:I

    .line 2309
    .end local v15    # "req":Lorg/telegram/tgnet/TLRPC$TL_account_updateStatus;
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->updatesQueueChannels:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_6

    .line 2310
    new-instance v13, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->updatesQueueChannels:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v13, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2311
    .local v13, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_1
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v4, v0, :cond_6

    .line 2312
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 2313
    .local v12, "key":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeChannels:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Long;

    .line 2314
    .local v21, "updatesStartWaitTime":Ljava/lang/Long;
    if-eqz v21, :cond_3

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    const-wide/16 v26, 0x5dc

    add-long v24, v24, v26

    cmp-long v23, v24, v10

    if-gez v23, :cond_3

    .line 2315
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "QUEUE CHANNEL "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " UPDATES WAIT TIMEOUT - CHECK QUEUE"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 2316
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v12, v1}, Lorg/telegram/messenger/MessagesController;->processChannelsUpdatesQueue(II)V

    .line 2311
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2287
    .end local v4    # "a":I
    .end local v12    # "key":I
    .end local v13    # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v21    # "updatesStartWaitTime":Ljava/lang/Long;
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->statusSettingState:I

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesController;->offlineSent:Z

    move/from16 v23, v0

    if-nez v23, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/tgnet/ConnectionsManager;->getPauseTime()J

    move-result-wide v26

    sub-long v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->abs(J)J

    move-result-wide v24

    const-wide/16 v26, 0x7d0

    cmp-long v23, v24, v26

    if-ltz v23, :cond_2

    .line 2288
    const/16 v23, 0x2

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/MessagesController;->statusSettingState:I

    .line 2289
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->statusRequest:I

    move/from16 v23, v0

    if-eqz v23, :cond_5

    .line 2290
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->statusRequest:I

    move/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v23 .. v25}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 2292
    :cond_5
    new-instance v15, Lorg/telegram/tgnet/TLRPC$TL_account_updateStatus;

    invoke-direct {v15}, Lorg/telegram/tgnet/TLRPC$TL_account_updateStatus;-><init>()V

    .line 2293
    .restart local v15    # "req":Lorg/telegram/tgnet/TLRPC$TL_account_updateStatus;
    const/16 v23, 0x1

    move/from16 v0, v23

    iput-boolean v0, v15, Lorg/telegram/tgnet/TLRPC$TL_account_updateStatus;->offline:Z

    .line 2294
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v23

    new-instance v24, Lorg/telegram/messenger/MessagesController$44;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/MessagesController$44;-><init>(Lorg/telegram/messenger/MessagesController;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v15, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/MessagesController;->statusRequest:I

    goto/16 :goto_0

    .line 2321
    .end local v15    # "req":Lorg/telegram/tgnet/TLRPC$TL_account_updateStatus;
    :cond_6
    const/4 v4, 0x0

    .restart local v4    # "a":I
    :goto_2
    const/16 v23, 0x3

    move/from16 v0, v23

    if-ge v4, v0, :cond_8

    .line 2322
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getUpdatesStartTime(I)J

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmp-long v23, v24, v26

    if-eqz v23, :cond_7

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getUpdatesStartTime(I)J

    move-result-wide v24

    const-wide/16 v26, 0x5dc

    add-long v24, v24, v26

    cmp-long v23, v24, v10

    if-gez v23, :cond_7

    .line 2323
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " QUEUE UPDATES WAIT TIMEOUT - CHECK QUEUE"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 2324
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v4, v1}, Lorg/telegram/messenger/MessagesController;->processUpdatesQueue(II)V

    .line 2321
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2328
    .end local v4    # "a":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->channelViewsToSend:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseArray;->size()I

    move-result v23

    if-nez v23, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->channelViewsToReload:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseArray;->size()I

    move-result v23

    if-eqz v23, :cond_e

    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesController;->lastViewsCheckTime:J

    move-wide/from16 v26, v0

    sub-long v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->abs(J)J

    move-result-wide v24

    const-wide/16 v26, 0x1388

    cmp-long v23, v24, v26

    if-ltz v23, :cond_e

    .line 2329
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/messenger/MessagesController;->lastViewsCheckTime:J

    .line 2330
    const/4 v7, 0x0

    .local v7, "b":I
    :goto_3
    const/16 v23, 0x2

    move/from16 v0, v23

    if-ge v7, v0, :cond_e

    .line 2331
    if-nez v7, :cond_a

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/MessagesController;->channelViewsToSend:Landroid/util/SparseArray;

    .line 2332
    .local v6, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    :goto_4
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v23

    if-nez v23, :cond_b

    .line 2330
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 2331
    .end local v6    # "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    :cond_a
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/MessagesController;->channelViewsToReload:Landroid/util/SparseArray;

    goto :goto_4

    .line 2335
    .restart local v6    # "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    :cond_b
    const/4 v4, 0x0

    .restart local v4    # "a":I
    :goto_6
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v4, v0, :cond_d

    .line 2336
    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    .line 2337
    .restart local v12    # "key":I
    new-instance v15, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessagesViews;

    invoke-direct {v15}, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessagesViews;-><init>()V

    .line 2338
    .local v15, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getMessagesViews;
    invoke-static {v12}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v15, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessagesViews;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 2339
    invoke-virtual {v6, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/ArrayList;

    move-object/from16 v0, v23

    iput-object v0, v15, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessagesViews;->id:Ljava/util/ArrayList;

    .line 2340
    if-nez v4, :cond_c

    const/16 v23, 0x1

    :goto_7
    move/from16 v0, v23

    iput-boolean v0, v15, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessagesViews;->increment:Z

    .line 2341
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v23

    new-instance v24, Lorg/telegram/messenger/MessagesController$45;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12, v15}, Lorg/telegram/messenger/MessagesController$45;-><init>(Lorg/telegram/messenger/MessagesController;ILorg/telegram/tgnet/TLRPC$TL_messages_getMessagesViews;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v15, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 2335
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 2340
    :cond_c
    const/16 v23, 0x0

    goto :goto_7

    .line 2369
    .end local v12    # "key":I
    .end local v15    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getMessagesViews;
    :cond_d
    invoke-virtual {v6}, Landroid/util/SparseArray;->clear()V

    goto :goto_5

    .line 2372
    .end local v4    # "a":I
    .end local v6    # "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    .end local v7    # "b":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->onlinePrivacy:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_13

    .line 2373
    const/16 v18, 0x0

    .line 2374
    .local v18, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v8

    .line 2375
    .local v8, "currentServerTime":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->onlinePrivacy:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :cond_f
    :goto_8
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_11

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 2376
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v23

    add-int/lit8 v25, v8, -0x1e

    move/from16 v0, v23

    move/from16 v1, v25

    if-ge v0, v1, :cond_f

    .line 2377
    if-nez v18, :cond_10

    .line 2378
    new-instance v18, Ljava/util/ArrayList;

    .end local v18    # "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 2380
    .restart local v18    # "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_10
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 2383
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_11
    if-eqz v18, :cond_13

    .line 2384
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_9
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_12

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    .line 2385
    .local v19, "uid":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->onlinePrivacy:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 2387
    .end local v19    # "uid":Ljava/lang/Integer;
    :cond_12
    new-instance v23, Lorg/telegram/messenger/MessagesController$46;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/MessagesController$46;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2395
    .end local v8    # "currentServerTime":I
    .end local v18    # "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->shortPollChannels:Landroid/util/SparseIntArray;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseIntArray;->size()I

    move-result v23

    if-eqz v23, :cond_15

    .line 2396
    const/4 v4, 0x0

    .restart local v4    # "a":I
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->shortPollChannels:Landroid/util/SparseIntArray;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseIntArray;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v4, v0, :cond_15

    .line 2397
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->shortPollChannels:Landroid/util/SparseIntArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v12

    .line 2398
    .restart local v12    # "key":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->shortPollChannels:Landroid/util/SparseIntArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Landroid/util/SparseIntArray;->get(I)I

    move-result v17

    .line 2399
    .local v17, "timeout":I
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v24, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    const-wide/16 v28, 0x3e8

    div-long v26, v26, v28

    cmp-long v23, v24, v26

    if-gez v23, :cond_14

    .line 2400
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->shortPollChannels:Landroid/util/SparseIntArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Landroid/util/SparseIntArray;->delete(I)V

    .line 2401
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->needShortPollChannels:Landroid/util/SparseIntArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v23

    if-ltz v23, :cond_14

    .line 2402
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lorg/telegram/messenger/MessagesController;->getChannelDifference(I)V

    .line 2396
    :cond_14
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 2407
    .end local v4    # "a":I
    .end local v12    # "key":I
    .end local v17    # "timeout":I
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v23

    if-eqz v23, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->lastPrintingStringCount:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_1c

    .line 2408
    :cond_16
    const/16 v20, 0x0

    .line 2409
    .local v20, "updated":Z
    new-instance v14, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v14, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2410
    .local v14, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v7, 0x0

    .restart local v7    # "b":I
    :goto_b
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v7, v0, :cond_1b

    .line 2411
    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    .line 2412
    .local v12, "key":Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 2413
    .local v5, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;"
    const/4 v4, 0x0

    .restart local v4    # "a":I
    :goto_c
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v4, v0, :cond_19

    .line 2414
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/telegram/messenger/MessagesController$PrintingUser;

    .line 2416
    .local v22, "user":Lorg/telegram/messenger/MessagesController$PrintingUser;
    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$PrintingUser;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageGamePlayAction;

    move/from16 v23, v0

    if-eqz v23, :cond_18

    .line 2417
    const/16 v16, 0x7530

    .line 2421
    .local v16, "timeToRemove":I
    :goto_d
    move-object/from16 v0, v22

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesController$PrintingUser;->lastTime:J

    move-wide/from16 v24, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v26, v0

    add-long v24, v24, v26

    cmp-long v23, v24, v10

    if-gez v23, :cond_17

    .line 2422
    const/16 v20, 0x1

    .line 2423
    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2424
    add-int/lit8 v4, v4, -0x1

    .line 2413
    :cond_17
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 2419
    .end local v16    # "timeToRemove":I
    :cond_18
    const/16 v16, 0x170c

    .restart local v16    # "timeToRemove":I
    goto :goto_d

    .line 2427
    .end local v16    # "timeToRemove":I
    .end local v22    # "user":Lorg/telegram/messenger/MessagesController$PrintingUser;
    :cond_19
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v23

    if-eqz v23, :cond_1a

    .line 2428
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2429
    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2430
    add-int/lit8 v7, v7, -0x1

    .line 2410
    :cond_1a
    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    .line 2434
    .end local v4    # "a":I
    .end local v5    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessagesController$PrintingUser;>;"
    .end local v12    # "key":Ljava/lang/Long;
    :cond_1b
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MessagesController;->updatePrintingStrings()V

    .line 2436
    if-eqz v20, :cond_1c

    .line 2437
    new-instance v23, Lorg/telegram/messenger/MessagesController$47;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/MessagesController$47;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2445
    .end local v7    # "b":I
    .end local v14    # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v20    # "updated":Z
    :cond_1c
    return-void
.end method

.method public uploadAndApplyUserAvatar(Lorg/telegram/tgnet/TLRPC$PhotoSize;)V
    .locals 5
    .param p1, "bigPhoto"    # Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .prologue
    .line 1865
    if-eqz p1, :cond_0

    .line 1866
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/MessagesController;->uploadingAvatar:Ljava/lang/String;

    .line 1867
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->uploadingAvatar:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x1000000

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZI)V

    .line 1869
    :cond_0
    return-void
.end method
