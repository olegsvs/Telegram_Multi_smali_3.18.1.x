.class public Lorg/telegram/messenger/NotificationCenter;
.super Ljava/lang/Object;
.source "NotificationCenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/NotificationCenter$1;,
        Lorg/telegram/messenger/NotificationCenter$DelayedPost;,
        Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
    }
.end annotation


# static fields
.field public static final FileDidFailUpload:I

.field public static final FileDidFailedLoad:I

.field public static final FileDidLoaded:I

.field public static final FileDidUpload:I

.field public static final FileLoadProgressChanged:I

.field public static final FileNewChunkAvailable:I

.field public static final FilePreparingFailed:I

.field public static final FilePreparingStarted:I

.field public static final FileUploadProgressChanged:I

.field private static volatile Instance:Lorg/telegram/messenger/NotificationCenter;

.field public static final albumsDidLoaded:I

.field public static final appDidLogout:I

.field public static final archivedStickersCountDidLoaded:I

.field public static final audioDidReset:I

.field public static final audioDidSent:I

.field public static final audioDidStarted:I

.field public static final audioPlayStateChanged:I

.field public static final audioProgressDidChanged:I

.field public static final audioRouteChanged:I

.field public static final blockedUsersDidLoaded:I

.field public static final botInfoDidLoaded:I

.field public static final botKeyboardDidLoaded:I

.field public static final cameraInitied:I

.field public static final chatDidCreated:I

.field public static final chatDidFailCreate:I

.field public static final chatInfoCantLoad:I

.field public static final chatInfoDidLoaded:I

.field public static final chatSearchResultsAvailable:I

.field public static final closeChats:I

.field public static final closeInCallActivity:I

.field public static final closeOtherAppActivities:I

.field public static final contactsDidLoaded:I

.field public static final dialogPhotosLoaded:I

.field public static final dialogsNeedReload:I

.field public static final didCreatedNewDeleteTask:I

.field public static final didEndedCall:I

.field public static final didLoadedPinnedMessage:I

.field public static final didLoadedReplyMessages:I

.field public static final didReceiveCall:I

.field public static final didReceiveSmsCode:I

.field public static final didReceivedNewMessages:I

.field public static final didReceivedWebpages:I

.field public static final didReceivedWebpagesInUpdates:I

.field public static final didRemovedTwoStepPassword:I

.field public static final didReplacedPhotoInMemCache:I

.field public static final didSetNewWallpapper:I

.field public static final didSetPasscode:I

.field public static final didSetTwoStepPassword:I

.field public static final didStartedCall:I

.field public static final didUpdatedConnectionState:I

.field public static final didUpdatedMessagesViews:I

.field public static final emojiDidLoaded:I

.field public static final encryptedChatCreated:I

.field public static final encryptedChatUpdated:I

.field public static final featuredStickersDidLoaded:I

.field public static final httpFileDidFailedLoad:I

.field public static final httpFileDidLoaded:I

.field public static final locationPermissionGranted:I

.field public static final mainUserInfoChanged:I

.field public static final mediaCountDidLoaded:I

.field public static final mediaDidLoaded:I

.field public static final messageReceivedByAck:I

.field public static final messageReceivedByServer:I

.field public static final messageSendError:I

.field public static final messageThumbGenerated:I

.field public static final messagesDeleted:I

.field public static final messagesDidLoaded:I

.field public static final messagesRead:I

.field public static final messagesReadContent:I

.field public static final messagesReadEncrypted:I

.field public static final musicDidLoaded:I

.field public static final needReloadArchivedStickers:I

.field public static final needReloadRecentDialogsSearch:I

.field public static final needShowAlert:I

.field public static final newDraftReceived:I

.field public static final newSessionReceived:I

.field public static final notificationsSettingsUpdated:I

.field public static final openedChatChanged:I

.field public static final paymentFinished:I

.field public static final peerSettingsDidLoaded:I

.field public static final privacyRulesUpdated:I

.field public static final pushMessagesUpdated:I

.field public static final recentDocumentsDidLoaded:I

.field public static final recentImagesDidLoaded:I

.field public static final recordProgressChanged:I

.field public static final recordStartError:I

.field public static final recordStarted:I

.field public static final recordStopped:I

.field public static final refreshTabs:I

.field public static final refreshTabsCounters:I

.field public static final reloadHints:I

.field public static final reloadInlineHints:I

.field public static final removeAllMessagesFromDialog:I

.field public static final replaceMessagesObjects:I

.field public static final screenStateChanged:I

.field public static final screenshotTook:I

.field public static final showStatusNotifications:I

.field public static final stickersDidLoaded:I

.field public static final stopEncodingService:I

.field private static totalEvents:I

.field public static final updateChatTheme:I

.field public static final updateDialogsTheme:I

.field public static final updateInterfaces:I

.field public static final updateMessageMedia:I

.field public static final userInfoDidLoaded:I

.field public static final wallpaperChanged:I

.field public static final wallpapersDidLoaded:I

.field public static final wasUnableToFindCurrentLocation:I


# instance fields
.field private addAfterBroadcast:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private allowedNotifications:[I

.field private animationInProgress:Z

.field private broadcasting:I

.field private delayedPosts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/NotificationCenter$DelayedPost;",
            ">;"
        }
    .end annotation
.end field

.field private observers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private removeAfterBroadcast:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    const/4 v0, 0x1

    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    .line 19
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->didReceivedNewMessages:I

    .line 20
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    .line 21
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    .line 22
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    .line 23
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    .line 24
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->messagesRead:I

    .line 25
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->messagesDidLoaded:I

    .line 26
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->messageReceivedByAck:I

    .line 27
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->messageReceivedByServer:I

    .line 28
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->messageSendError:I

    .line 29
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoaded:I

    .line 30
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->chatDidCreated:I

    .line 31
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->chatDidFailCreate:I

    .line 32
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoaded:I

    .line 33
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->chatInfoCantLoad:I

    .line 34
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->mediaDidLoaded:I

    .line 35
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->mediaCountDidLoaded:I

    .line 36
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->encryptedChatUpdated:I

    .line 37
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->messagesReadEncrypted:I

    .line 38
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->encryptedChatCreated:I

    .line 39
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->dialogPhotosLoaded:I

    .line 40
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->removeAllMessagesFromDialog:I

    .line 41
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->notificationsSettingsUpdated:I

    .line 42
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->pushMessagesUpdated:I

    .line 43
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->blockedUsersDidLoaded:I

    .line 44
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->openedChatChanged:I

    .line 45
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->stopEncodingService:I

    .line 46
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->didCreatedNewDeleteTask:I

    .line 47
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    .line 48
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->privacyRulesUpdated:I

    .line 49
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->updateMessageMedia:I

    .line 50
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->recentImagesDidLoaded:I

    .line 51
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->replaceMessagesObjects:I

    .line 52
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->didSetPasscode:I

    .line 53
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->didSetTwoStepPassword:I

    .line 54
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->didRemovedTwoStepPassword:I

    .line 55
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->screenStateChanged:I

    .line 56
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->didLoadedReplyMessages:I

    .line 57
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->didLoadedPinnedMessage:I

    .line 58
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->newSessionReceived:I

    .line 59
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->didReceivedWebpages:I

    .line 60
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->didReceivedWebpagesInUpdates:I

    .line 61
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoaded:I

    .line 62
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->featuredStickersDidLoaded:I

    .line 63
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->didReplacedPhotoInMemCache:I

    .line 64
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->messagesReadContent:I

    .line 65
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->botInfoDidLoaded:I

    .line 66
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->userInfoDidLoaded:I

    .line 67
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->botKeyboardDidLoaded:I

    .line 68
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->chatSearchResultsAvailable:I

    .line 69
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->musicDidLoaded:I

    .line 70
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->needShowAlert:I

    .line 71
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->didUpdatedMessagesViews:I

    .line 72
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->needReloadRecentDialogsSearch:I

    .line 73
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->locationPermissionGranted:I

    .line 74
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->peerSettingsDidLoaded:I

    .line 75
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->wasUnableToFindCurrentLocation:I

    .line 76
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->reloadHints:I

    .line 77
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->reloadInlineHints:I

    .line 78
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->newDraftReceived:I

    .line 79
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->recentDocumentsDidLoaded:I

    .line 80
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->cameraInitied:I

    .line 81
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->needReloadArchivedStickers:I

    .line 82
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->didSetNewWallpapper:I

    .line 83
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->archivedStickersCountDidLoaded:I

    .line 84
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->paymentFinished:I

    .line 86
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->httpFileDidLoaded:I

    .line 87
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->httpFileDidFailedLoad:I

    .line 89
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->messageThumbGenerated:I

    .line 91
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->wallpapersDidLoaded:I

    .line 92
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->closeOtherAppActivities:I

    .line 93
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->didUpdatedConnectionState:I

    .line 94
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    .line 95
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->didReceiveCall:I

    .line 96
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->emojiDidLoaded:I

    .line 97
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->appDidLogout:I

    .line 99
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->FileDidUpload:I

    .line 100
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->FileDidFailUpload:I

    .line 101
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->FileUploadProgressChanged:I

    .line 102
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->FileLoadProgressChanged:I

    .line 103
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->FileDidLoaded:I

    .line 104
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->FileDidFailedLoad:I

    .line 105
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->FilePreparingStarted:I

    .line 106
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->FileNewChunkAvailable:I

    .line 107
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->FilePreparingFailed:I

    .line 109
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->audioProgressDidChanged:I

    .line 110
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->audioDidReset:I

    .line 111
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->audioPlayStateChanged:I

    .line 112
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->recordProgressChanged:I

    .line 113
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->recordStarted:I

    .line 114
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->recordStartError:I

    .line 115
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->recordStopped:I

    .line 116
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->screenshotTook:I

    .line 117
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->albumsDidLoaded:I

    .line 118
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->audioDidSent:I

    .line 119
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->audioDidStarted:I

    .line 120
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->audioRouteChanged:I

    .line 122
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->didStartedCall:I

    .line 123
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->didEndedCall:I

    .line 124
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->closeInCallActivity:I

    .line 126
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->wallpaperChanged:I

    .line 127
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->refreshTabs:I

    .line 128
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->refreshTabsCounters:I

    .line 129
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->showStatusNotifications:I

    .line 130
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->updateDialogsTheme:I

    .line 132
    sget v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->updateChatTheme:I

    .line 159
    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/messenger/NotificationCenter;->Instance:Lorg/telegram/messenger/NotificationCenter;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/NotificationCenter;->observers:Landroid/util/SparseArray;

    .line 135
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/NotificationCenter;->removeAfterBroadcast:Landroid/util/SparseArray;

    .line 136
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/NotificationCenter;->addAfterBroadcast:Landroid/util/SparseArray;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/NotificationCenter;->delayedPosts:Ljava/util/ArrayList;

    .line 139
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/NotificationCenter;->broadcasting:I

    .line 148
    return-void
.end method

.method public static getInstance()Lorg/telegram/messenger/NotificationCenter;
    .locals 4

    .prologue
    .line 162
    sget-object v0, Lorg/telegram/messenger/NotificationCenter;->Instance:Lorg/telegram/messenger/NotificationCenter;

    .line 163
    .local v0, "localInstance":Lorg/telegram/messenger/NotificationCenter;
    if-nez v0, :cond_1

    .line 164
    const-class v3, Lorg/telegram/messenger/NotificationCenter;

    monitor-enter v3

    .line 165
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/NotificationCenter;->Instance:Lorg/telegram/messenger/NotificationCenter;

    .line 166
    if-nez v0, :cond_0

    .line 167
    new-instance v1, Lorg/telegram/messenger/NotificationCenter;

    invoke-direct {v1}, Lorg/telegram/messenger/NotificationCenter;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "localInstance":Lorg/telegram/messenger/NotificationCenter;
    .local v1, "localInstance":Lorg/telegram/messenger/NotificationCenter;
    :try_start_1
    sput-object v1, Lorg/telegram/messenger/NotificationCenter;->Instance:Lorg/telegram/messenger/NotificationCenter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 169
    .end local v1    # "localInstance":Lorg/telegram/messenger/NotificationCenter;
    .restart local v0    # "localInstance":Lorg/telegram/messenger/NotificationCenter;
    :cond_0
    :try_start_2
    monitor-exit v3

    .line 171
    :cond_1
    return-object v0

    .line 169
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "localInstance":Lorg/telegram/messenger/NotificationCenter;
    .restart local v1    # "localInstance":Lorg/telegram/messenger/NotificationCenter;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "localInstance":Lorg/telegram/messenger/NotificationCenter;
    .restart local v0    # "localInstance":Lorg/telegram/messenger/NotificationCenter;
    goto :goto_0
.end method


# virtual methods
.method public addObserver(Ljava/lang/Object;I)V
    .locals 4
    .param p1, "observer"    # Ljava/lang/Object;
    .param p2, "id"    # I

    .prologue
    .line 253
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v2, :cond_0

    .line 254
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    if-eq v2, v3, :cond_0

    .line 255
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "addObserver allowed only from MAIN thread"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 258
    :cond_0
    iget v2, p0, Lorg/telegram/messenger/NotificationCenter;->broadcasting:I

    if-eqz v2, :cond_3

    .line 259
    iget-object v2, p0, Lorg/telegram/messenger/NotificationCenter;->addAfterBroadcast:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 260
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    if-nez v0, :cond_1

    .line 261
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 262
    .restart local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v2, p0, Lorg/telegram/messenger/NotificationCenter;->addAfterBroadcast:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 264
    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    .end local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_2
    :goto_0
    return-void

    .line 267
    :cond_3
    iget-object v2, p0, Lorg/telegram/messenger/NotificationCenter;->observers:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 268
    .local v1, "objects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    if-nez v1, :cond_4

    .line 269
    iget-object v2, p0, Lorg/telegram/messenger/NotificationCenter;->observers:Landroid/util/SparseArray;

    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "objects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .restart local v1    # "objects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {v2, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 271
    :cond_4
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 274
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public isAnimationInProgress()Z
    .locals 1

    .prologue
    .line 189
    iget-boolean v0, p0, Lorg/telegram/messenger/NotificationCenter;->animationInProgress:Z

    return v0
.end method

.method public varargs postNotificationName(I[Ljava/lang/Object;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 193
    const/4 v1, 0x0

    .line 194
    .local v1, "allowDuringAnimation":Z
    iget-object v2, p0, Lorg/telegram/messenger/NotificationCenter;->allowedNotifications:[I

    if-eqz v2, :cond_0

    .line 195
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/NotificationCenter;->allowedNotifications:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 196
    iget-object v2, p0, Lorg/telegram/messenger/NotificationCenter;->allowedNotifications:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_1

    .line 197
    const/4 v1, 0x1

    .line 202
    .end local v0    # "a":I
    :cond_0
    invoke-virtual {p0, p1, v1, p2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationNameInternal(IZ[Ljava/lang/Object;)V

    .line 203
    return-void

    .line 195
    .restart local v0    # "a":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public varargs postNotificationNameInternal(IZ[Ljava/lang/Object;)V
    .locals 9
    .param p1, "id"    # I
    .param p2, "allowDuringAnimation"    # Z
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 206
    sget-boolean v7, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v7, :cond_0

    .line 207
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    sget-object v8, Lorg/telegram/messenger/ApplicationLoader;->applicationHandler:Landroid/os/Handler;

    invoke-virtual {v8}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v8

    if-eq v7, v8, :cond_0

    .line 208
    new-instance v7, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "postNotificationName allowed only from MAIN thread"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 211
    :cond_0
    if-nez p2, :cond_2

    iget-boolean v7, p0, Lorg/telegram/messenger/NotificationCenter;->animationInProgress:Z

    if-eqz v7, :cond_2

    .line 212
    new-instance v3, Lorg/telegram/messenger/NotificationCenter$DelayedPost;

    const/4 v7, 0x0

    invoke-direct {v3, p0, p1, p3, v7}, Lorg/telegram/messenger/NotificationCenter$DelayedPost;-><init>(Lorg/telegram/messenger/NotificationCenter;I[Ljava/lang/Object;Lorg/telegram/messenger/NotificationCenter$1;)V

    .line 213
    .local v3, "delayedPost":Lorg/telegram/messenger/NotificationCenter$DelayedPost;
    iget-object v7, p0, Lorg/telegram/messenger/NotificationCenter;->delayedPosts:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    sget-boolean v7, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v7, :cond_1

    .line 215
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "delay post notification "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " with args count = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, p3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 250
    .end local v3    # "delayedPost":Lorg/telegram/messenger/NotificationCenter$DelayedPost;
    :cond_1
    :goto_0
    return-void

    .line 219
    :cond_2
    iget v7, p0, Lorg/telegram/messenger/NotificationCenter;->broadcasting:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lorg/telegram/messenger/NotificationCenter;->broadcasting:I

    .line 220
    iget-object v7, p0, Lorg/telegram/messenger/NotificationCenter;->observers:Landroid/util/SparseArray;

    invoke-virtual {v7, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 221
    .local v6, "objects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 222
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_3

    .line 223
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 224
    .local v5, "obj":Ljava/lang/Object;
    check-cast v5, Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;

    .end local v5    # "obj":Ljava/lang/Object;
    invoke-interface {v5, p1, p3}, Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;->didReceivedNotification(I[Ljava/lang/Object;)V

    .line 222
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 227
    .end local v0    # "a":I
    :cond_3
    iget v7, p0, Lorg/telegram/messenger/NotificationCenter;->broadcasting:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lorg/telegram/messenger/NotificationCenter;->broadcasting:I

    .line 228
    iget v7, p0, Lorg/telegram/messenger/NotificationCenter;->broadcasting:I

    if-nez v7, :cond_1

    .line 229
    iget-object v7, p0, Lorg/telegram/messenger/NotificationCenter;->removeAfterBroadcast:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-eqz v7, :cond_6

    .line 230
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_2
    iget-object v7, p0, Lorg/telegram/messenger/NotificationCenter;->removeAfterBroadcast:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v0, v7, :cond_5

    .line 231
    iget-object v7, p0, Lorg/telegram/messenger/NotificationCenter;->removeAfterBroadcast:Landroid/util/SparseArray;

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 232
    .local v4, "key":I
    iget-object v7, p0, Lorg/telegram/messenger/NotificationCenter;->removeAfterBroadcast:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 233
    .local v1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .local v2, "b":I
    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_4

    .line 234
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0, v7, v4}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 233
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 230
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 237
    .end local v1    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v2    # "b":I
    .end local v4    # "key":I
    :cond_5
    iget-object v7, p0, Lorg/telegram/messenger/NotificationCenter;->removeAfterBroadcast:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->clear()V

    .line 239
    .end local v0    # "a":I
    :cond_6
    iget-object v7, p0, Lorg/telegram/messenger/NotificationCenter;->addAfterBroadcast:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-eqz v7, :cond_1

    .line 240
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_4
    iget-object v7, p0, Lorg/telegram/messenger/NotificationCenter;->addAfterBroadcast:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v0, v7, :cond_8

    .line 241
    iget-object v7, p0, Lorg/telegram/messenger/NotificationCenter;->addAfterBroadcast:Landroid/util/SparseArray;

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 242
    .restart local v4    # "key":I
    iget-object v7, p0, Lorg/telegram/messenger/NotificationCenter;->addAfterBroadcast:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 243
    .restart local v1    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .restart local v2    # "b":I
    :goto_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_7

    .line 244
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0, v7, v4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 243
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 240
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 247
    .end local v1    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v2    # "b":I
    .end local v4    # "key":I
    :cond_8
    iget-object v7, p0, Lorg/telegram/messenger/NotificationCenter;->addAfterBroadcast:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->clear()V

    goto/16 :goto_0
.end method

.method public removeObserver(Ljava/lang/Object;I)V
    .locals 4
    .param p1, "observer"    # Ljava/lang/Object;
    .param p2, "id"    # I

    .prologue
    .line 278
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v2, :cond_0

    .line 279
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    if-eq v2, v3, :cond_0

    .line 280
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "removeObserver allowed only from MAIN thread"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 283
    :cond_0
    iget v2, p0, Lorg/telegram/messenger/NotificationCenter;->broadcasting:I

    if-eqz v2, :cond_3

    .line 284
    iget-object v2, p0, Lorg/telegram/messenger/NotificationCenter;->removeAfterBroadcast:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 285
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    if-nez v0, :cond_1

    .line 286
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 287
    .restart local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v2, p0, Lorg/telegram/messenger/NotificationCenter;->removeAfterBroadcast:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 289
    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    .end local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_2
    :goto_0
    return-void

    .line 292
    :cond_3
    iget-object v2, p0, Lorg/telegram/messenger/NotificationCenter;->observers:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 293
    .local v1, "objects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    if-eqz v1, :cond_2

    .line 294
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setAllowedNotificationsDutingAnimation([I)V
    .locals 0
    .param p1, "notifications"    # [I

    .prologue
    .line 175
    iput-object p1, p0, Lorg/telegram/messenger/NotificationCenter;->allowedNotifications:[I

    .line 176
    return-void
.end method

.method public setAnimationInProgress(Z)V
    .locals 5
    .param p1, "value"    # Z

    .prologue
    .line 179
    iput-boolean p1, p0, Lorg/telegram/messenger/NotificationCenter;->animationInProgress:Z

    .line 180
    iget-boolean v1, p0, Lorg/telegram/messenger/NotificationCenter;->animationInProgress:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/NotificationCenter;->delayedPosts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 181
    iget-object v1, p0, Lorg/telegram/messenger/NotificationCenter;->delayedPosts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/NotificationCenter$DelayedPost;

    .line 182
    .local v0, "delayedPost":Lorg/telegram/messenger/NotificationCenter$DelayedPost;
    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter$DelayedPost;->access$000(Lorg/telegram/messenger/NotificationCenter$DelayedPost;)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter$DelayedPost;->access$100(Lorg/telegram/messenger/NotificationCenter$DelayedPost;)[Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationNameInternal(IZ[Ljava/lang/Object;)V

    goto :goto_0

    .line 184
    .end local v0    # "delayedPost":Lorg/telegram/messenger/NotificationCenter$DelayedPost;
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/NotificationCenter;->delayedPosts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 186
    :cond_1
    return-void
.end method
