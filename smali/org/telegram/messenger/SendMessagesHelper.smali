.class public Lorg/telegram/messenger/SendMessagesHelper;
.super Ljava/lang/Object;
.source "SendMessagesHelper.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;,
        Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;
    }
.end annotation


# static fields
.field private static volatile Instance:Lorg/telegram/messenger/SendMessagesHelper;


# instance fields
.field private currentChatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

.field private delayedMessages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;",
            ">;>;"
        }
    .end annotation
.end field

.field private locationProvider:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

.field private sendingMessages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            ">;"
        }
    .end annotation
.end field

.field private unsentMessages:Ljava/util/HashMap;
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

.field private waitingForCallback:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private waitingForLocation:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/MessageObject;",
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

    sput-object v0, Lorg/telegram/messenger/SendMessagesHelper;->Instance:Lorg/telegram/messenger/SendMessagesHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->currentChatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->unsentMessages:Ljava/util/HashMap;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->sendingMessages:Ljava/util/HashMap;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->waitingForLocation:Ljava/util/HashMap;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->waitingForCallback:Ljava/util/HashMap;

    .line 64
    new-instance v0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    new-instance v1, Lorg/telegram/messenger/SendMessagesHelper$1;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/SendMessagesHelper$1;-><init>(Lorg/telegram/messenger/SendMessagesHelper;)V

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;-><init>(Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$LocationProviderDelegate;)V

    iput-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->locationProvider:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    .line 233
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->FileDidUpload:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 234
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->FileDidFailUpload:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 235
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->FilePreparingStarted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 236
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->FileNewChunkAvailable:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 237
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->FilePreparingFailed:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 238
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->httpFileDidFailedLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 239
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->httpFileDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 240
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->FileDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 241
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->FileDidFailedLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 242
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/SendMessagesHelper;Landroid/location/Location;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/SendMessagesHelper;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lorg/telegram/messenger/SendMessagesHelper;->sendLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/messenger/SendMessagesHelper;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/SendMessagesHelper;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->waitingForLocation:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1000(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Ljava/lang/String;)Z
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/net/Uri;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # J
    .param p6, "x5"    # Lorg/telegram/messenger/MessageObject;
    .param p7, "x6"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-static/range {p0 .. p7}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingDocumentInternal(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-static {p0}, Lorg/telegram/messenger/SendMessagesHelper;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;Lorg/telegram/messenger/VideoEditedInfo;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;
    .param p2, "x2"    # Lorg/telegram/messenger/VideoEditedInfo;

    .prologue
    .line 55
    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/SendMessagesHelper;->fillVideoAttribute(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;Lorg/telegram/messenger/VideoEditedInfo;)V

    return-void
.end method

.method static synthetic access$700(Lorg/telegram/messenger/SendMessagesHelper;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/SendMessagesHelper;
    .param p1, "x1"    # Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    return-void
.end method

.method static synthetic access$800(Lorg/telegram/messenger/SendMessagesHelper;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$Message;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/SendMessagesHelper;
    .param p1, "x1"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "x2"    # Lorg/telegram/tgnet/TLRPC$Message;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Z

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/SendMessagesHelper;->updateMediaPaths(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$Message;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$900(Lorg/telegram/messenger/SendMessagesHelper;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/SendMessagesHelper;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->waitingForCallback:Ljava/util/HashMap;

    return-object v0
.end method

.method private static fillVideoAttribute(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;Lorg/telegram/messenger/VideoEditedInfo;)V
    .locals 16
    .param p0, "videoPath"    # Ljava/lang/String;
    .param p1, "attributeVideo"    # Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;
    .param p2, "videoEditedInfo"    # Lorg/telegram/messenger/VideoEditedInfo;

    .prologue
    .line 3600
    const/4 v5, 0x0

    .line 3602
    .local v5, "infoObtained":Z
    const/4 v6, 0x0

    .line 3604
    .local v6, "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    :try_start_0
    new-instance v7, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v7}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3605
    .end local v6    # "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    .local v7, "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 3606
    const/16 v13, 0x12

    invoke-virtual {v7, v13}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v12

    .line 3607
    .local v12, "width":Ljava/lang/String;
    if-eqz v12, :cond_0

    .line 3608
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p1

    iput v13, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->w:I

    .line 3610
    :cond_0
    const/16 v13, 0x13

    invoke-virtual {v7, v13}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    .line 3611
    .local v4, "height":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 3612
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p1

    iput v13, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->h:I

    .line 3614
    :cond_1
    const/16 v13, 0x9

    invoke-virtual {v7, v13}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    .line 3615
    .local v2, "duration":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 3616
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    long-to-float v13, v14

    const/high16 v14, 0x447a0000    # 1000.0f

    div-float/2addr v13, v14

    float-to-double v14, v13

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v13, v14

    move-object/from16 v0, p1

    iput v13, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->duration:I

    .line 3618
    :cond_2
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x11

    if-lt v13, v14, :cond_3

    .line 3619
    const/16 v13, 0x18

    invoke-virtual {v7, v13}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v9

    .line 3620
    .local v9, "rotation":Ljava/lang/String;
    if-eqz v9, :cond_3

    .line 3621
    invoke-static {v9}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 3622
    .local v11, "val":I
    if-eqz p2, :cond_7

    .line 3623
    move-object/from16 v0, p2

    iput v11, v0, Lorg/telegram/messenger/VideoEditedInfo;->rotationValue:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3631
    .end local v9    # "rotation":Ljava/lang/String;
    .end local v11    # "val":I
    :cond_3
    :goto_0
    const/4 v5, 0x1

    .line 3636
    if-eqz v7, :cond_4

    .line 3637
    :try_start_2
    invoke-virtual {v7}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_4
    move-object v6, v7

    .line 3643
    .end local v2    # "duration":Ljava/lang/String;
    .end local v4    # "height":Ljava/lang/String;
    .end local v7    # "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    .end local v12    # "width":Ljava/lang/String;
    .restart local v6    # "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    :cond_5
    :goto_1
    if-nez v5, :cond_6

    .line 3645
    :try_start_3
    sget-object v13, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v14}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v8

    .line 3646
    .local v8, "mp":Landroid/media/MediaPlayer;
    if-eqz v8, :cond_6

    .line 3647
    invoke-virtual {v8}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v13

    int-to-float v13, v13

    const/high16 v14, 0x447a0000    # 1000.0f

    div-float/2addr v13, v14

    float-to-double v14, v13

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v13, v14

    move-object/from16 v0, p1

    iput v13, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->duration:I

    .line 3648
    invoke-virtual {v8}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v13

    move-object/from16 v0, p1

    iput v13, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->w:I

    .line 3649
    invoke-virtual {v8}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v13

    move-object/from16 v0, p1

    iput v13, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->h:I

    .line 3650
    invoke-virtual {v8}, Landroid/media/MediaPlayer;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 3656
    .end local v8    # "mp":Landroid/media/MediaPlayer;
    :cond_6
    :goto_2
    return-void

    .line 3624
    .end local v6    # "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    .restart local v2    # "duration":Ljava/lang/String;
    .restart local v4    # "height":Ljava/lang/String;
    .restart local v7    # "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    .restart local v9    # "rotation":Ljava/lang/String;
    .restart local v11    # "val":I
    .restart local v12    # "width":Ljava/lang/String;
    :cond_7
    const/16 v13, 0x5a

    if-eq v11, v13, :cond_8

    const/16 v13, 0x10e

    if-ne v11, v13, :cond_3

    .line 3625
    :cond_8
    :try_start_4
    move-object/from16 v0, p1

    iget v10, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->w:I

    .line 3626
    .local v10, "temp":I
    move-object/from16 v0, p1

    iget v13, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->h:I

    move-object/from16 v0, p1

    iput v13, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->w:I

    .line 3627
    move-object/from16 v0, p1

    iput v10, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->h:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 3632
    .end local v2    # "duration":Ljava/lang/String;
    .end local v4    # "height":Ljava/lang/String;
    .end local v9    # "rotation":Ljava/lang/String;
    .end local v10    # "temp":I
    .end local v11    # "val":I
    .end local v12    # "width":Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v6, v7

    .line 3633
    .end local v7    # "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    .local v3, "e":Ljava/lang/Exception;
    .restart local v6    # "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    :goto_3
    :try_start_5
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3636
    if-eqz v6, :cond_5

    .line 3637
    :try_start_6
    invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 3639
    :catch_1
    move-exception v3

    .line 3640
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 3639
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v6    # "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    .restart local v2    # "duration":Ljava/lang/String;
    .restart local v4    # "height":Ljava/lang/String;
    .restart local v7    # "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    .restart local v12    # "width":Ljava/lang/String;
    :catch_2
    move-exception v3

    .line 3640
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move-object v6, v7

    .line 3642
    .end local v7    # "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    .restart local v6    # "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    goto :goto_1

    .line 3635
    .end local v2    # "duration":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "height":Ljava/lang/String;
    .end local v12    # "width":Ljava/lang/String;
    :catchall_0
    move-exception v13

    .line 3636
    :goto_4
    if-eqz v6, :cond_9

    .line 3637
    :try_start_7
    invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 3641
    :cond_9
    :goto_5
    throw v13

    .line 3639
    :catch_3
    move-exception v3

    .line 3640
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 3652
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v3

    .line 3653
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 3635
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v6    # "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    .restart local v7    # "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    :catchall_1
    move-exception v13

    move-object v6, v7

    .end local v7    # "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    .restart local v6    # "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    goto :goto_4

    .line 3632
    :catch_5
    move-exception v3

    goto :goto_3
.end method

.method public static getInstance()Lorg/telegram/messenger/SendMessagesHelper;
    .locals 4

    .prologue
    .line 220
    sget-object v0, Lorg/telegram/messenger/SendMessagesHelper;->Instance:Lorg/telegram/messenger/SendMessagesHelper;

    .line 221
    .local v0, "localInstance":Lorg/telegram/messenger/SendMessagesHelper;
    if-nez v0, :cond_1

    .line 222
    const-class v3, Lorg/telegram/messenger/SendMessagesHelper;

    monitor-enter v3

    .line 223
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/SendMessagesHelper;->Instance:Lorg/telegram/messenger/SendMessagesHelper;

    .line 224
    if-nez v0, :cond_0

    .line 225
    new-instance v1, Lorg/telegram/messenger/SendMessagesHelper;

    invoke-direct {v1}, Lorg/telegram/messenger/SendMessagesHelper;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "localInstance":Lorg/telegram/messenger/SendMessagesHelper;
    .local v1, "localInstance":Lorg/telegram/messenger/SendMessagesHelper;
    :try_start_1
    sput-object v1, Lorg/telegram/messenger/SendMessagesHelper;->Instance:Lorg/telegram/messenger/SendMessagesHelper;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 227
    .end local v1    # "localInstance":Lorg/telegram/messenger/SendMessagesHelper;
    .restart local v0    # "localInstance":Lorg/telegram/messenger/SendMessagesHelper;
    :cond_0
    :try_start_2
    monitor-exit v3

    .line 229
    :cond_1
    return-object v0

    .line 227
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "localInstance":Lorg/telegram/messenger/SendMessagesHelper;
    .restart local v1    # "localInstance":Lorg/telegram/messenger/SendMessagesHelper;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "localInstance":Lorg/telegram/messenger/SendMessagesHelper;
    .restart local v0    # "localInstance":Lorg/telegram/messenger/SendMessagesHelper;
    goto :goto_0
.end method

.method private static getTrimmedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "src"    # Ljava/lang/String;

    .prologue
    .line 3424
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 3425
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 3434
    .end local v0    # "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 3428
    .restart local v0    # "result":Ljava/lang/String;
    :cond_0
    :goto_1
    const-string/jumbo v1, "\n"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3429
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 3431
    :cond_1
    :goto_2
    const-string/jumbo v1, "\n"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3432
    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_2
    move-object v0, p0

    .line 3434
    goto :goto_0
.end method

.method private performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V
    .locals 14
    .param p1, "message"    # Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    .prologue
    const/high16 v5, 0x2000000

    const/high16 v6, 0x1000000

    const/4 v4, 0x4

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 2186
    iget v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    if-nez v0, :cond_5

    .line 2187
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->httpLocation:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2188
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->httpLocation:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lorg/telegram/messenger/SendMessagesHelper;->putToDelayedMessages(Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    .line 2189
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    iget-object v2, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->httpLocation:Ljava/lang/String;

    const-string/jumbo v3, "file"

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/ImageLoader;->loadHttpFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 2306
    :cond_0
    :goto_0
    return-void

    .line 2191
    :cond_1
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    if-eqz v0, :cond_2

    .line 2192
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2193
    .local v1, "location":Ljava/lang/String;
    invoke-direct {p0, v1, p1}, Lorg/telegram/messenger/SendMessagesHelper;->putToDelayedMessages(Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    .line 2194
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v8, v6}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZI)V

    goto :goto_0

    .line 2196
    .end local v1    # "location":Ljava/lang/String;
    :cond_2
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2197
    .restart local v1    # "location":Ljava/lang/String;
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    if-eqz v0, :cond_4

    .line 2198
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2199
    .local v12, "file":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2200
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-static {v0, v8}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2201
    new-instance v12, Ljava/io/File;

    .end local v12    # "file":Ljava/io/File;
    invoke-direct {v12, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2203
    .restart local v12    # "file":Ljava/io/File;
    :cond_3
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2204
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/telegram/messenger/SendMessagesHelper;->putToDelayedMessages(Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    .line 2205
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const-string/jumbo v4, "jpg"

    invoke-virtual {v0, v3, v4, v2, v2}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 2209
    .end local v12    # "file":Ljava/io/File;
    :cond_4
    invoke-direct {p0, v1, p1}, Lorg/telegram/messenger/SendMessagesHelper;->putToDelayedMessages(Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    .line 2210
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    invoke-virtual {v0, v1, v8, v8, v6}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZI)V

    goto :goto_0

    .line 2213
    .end local v1    # "location":Ljava/lang/String;
    :cond_5
    iget v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    if-ne v0, v8, :cond_10

    .line 2214
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    if-eqz v0, :cond_7

    .line 2215
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 2216
    .restart local v1    # "location":Ljava/lang/String;
    if-nez v1, :cond_6

    .line 2217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$TL_document;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ".mp4"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2219
    :cond_6
    invoke-direct {p0, v1, p1}, Lorg/telegram/messenger/SendMessagesHelper;->putToDelayedMessages(Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    .line 2220
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    iget-object v2, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MediaController;->scheduleVideoConvert(Lorg/telegram/messenger/MessageObject;)V

    goto/16 :goto_0

    .line 2222
    .end local v1    # "location":Ljava/lang/String;
    :cond_7
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    if-eqz v0, :cond_c

    .line 2224
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    if-eqz v0, :cond_9

    .line 2225
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    .line 2229
    .local v13, "media":Lorg/telegram/tgnet/TLRPC$InputMedia;
    :goto_1
    iget-object v0, v13, Lorg/telegram/tgnet/TLRPC$InputMedia;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    if-nez v0, :cond_b

    .line 2230
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 2231
    .restart local v1    # "location":Ljava/lang/String;
    if-nez v1, :cond_8

    .line 2232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$TL_document;->id:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ".mp4"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2234
    :cond_8
    invoke-direct {p0, v1, p1}, Lorg/telegram/messenger/SendMessagesHelper;->putToDelayedMessages(Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    .line 2235
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    if-eqz v0, :cond_a

    .line 2236
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    iget v4, v3, Lorg/telegram/tgnet/TLRPC$TL_document;->size:I

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZII)V

    goto/16 :goto_0

    .line 2227
    .end local v1    # "location":Ljava/lang/String;
    .end local v13    # "media":Lorg/telegram/tgnet/TLRPC$InputMedia;
    :cond_9
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    .restart local v13    # "media":Lorg/telegram/tgnet/TLRPC$InputMedia;
    goto :goto_1

    .line 2238
    .restart local v1    # "location":Ljava/lang/String;
    :cond_a
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v2, v5}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZI)V

    goto/16 :goto_0

    .line 2241
    .end local v1    # "location":Ljava/lang/String;
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ".jpg"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2242
    .restart local v1    # "location":Ljava/lang/String;
    invoke-direct {p0, v1, p1}, Lorg/telegram/messenger/SendMessagesHelper;->putToDelayedMessages(Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    .line 2243
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v8, v6}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZI)V

    goto/16 :goto_0

    .line 2246
    .end local v1    # "location":Ljava/lang/String;
    .end local v13    # "media":Lorg/telegram/tgnet/TLRPC$InputMedia;
    :cond_c
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 2247
    .restart local v1    # "location":Ljava/lang/String;
    if-nez v1, :cond_d

    .line 2248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$TL_document;->id:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ".mp4"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2250
    :cond_d
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    if-eqz v0, :cond_e

    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->dc_id:I

    if-eqz v0, :cond_e

    .line 2251
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2252
    .restart local v12    # "file":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_e

    .line 2253
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/telegram/messenger/SendMessagesHelper;->putToDelayedMessages(Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    .line 2254
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-virtual {v0, v3, v8, v2}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;ZZ)V

    goto/16 :goto_0

    .line 2258
    .end local v12    # "file":Ljava/io/File;
    :cond_e
    invoke-direct {p0, v1, p1}, Lorg/telegram/messenger/SendMessagesHelper;->putToDelayedMessages(Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    .line 2259
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    if-eqz v0, :cond_f

    .line 2260
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v6

    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    iget v10, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->size:I

    move-object v7, v1

    move v9, v2

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZII)V

    goto/16 :goto_0

    .line 2262
    :cond_f
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    invoke-virtual {v0, v1, v8, v2, v5}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZI)V

    goto/16 :goto_0

    .line 2266
    .end local v1    # "location":Ljava/lang/String;
    :cond_10
    iget v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_17

    .line 2267
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->httpLocation:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 2268
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->httpLocation:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lorg/telegram/messenger/SendMessagesHelper;->putToDelayedMessages(Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    .line 2269
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    iget-object v2, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->httpLocation:Ljava/lang/String;

    const-string/jumbo v3, "gif"

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/ImageLoader;->loadHttpFile(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2271
    :cond_11
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    if-eqz v0, :cond_15

    .line 2273
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    if-eqz v0, :cond_12

    .line 2274
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    .line 2278
    .restart local v13    # "media":Lorg/telegram/tgnet/TLRPC$InputMedia;
    :goto_2
    iget-object v0, v13, Lorg/telegram/tgnet/TLRPC$InputMedia;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    if-nez v0, :cond_14

    .line 2279
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 2280
    .restart local v1    # "location":Ljava/lang/String;
    invoke-direct {p0, v1, p1}, Lorg/telegram/messenger/SendMessagesHelper;->putToDelayedMessages(Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    .line 2281
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    if-nez v3, :cond_13

    :goto_3
    const/high16 v3, 0x4000000

    invoke-virtual {v0, v1, v8, v2, v3}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZI)V

    goto/16 :goto_0

    .line 2276
    .end local v1    # "location":Ljava/lang/String;
    .end local v13    # "media":Lorg/telegram/tgnet/TLRPC$InputMedia;
    :cond_12
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    .restart local v13    # "media":Lorg/telegram/tgnet/TLRPC$InputMedia;
    goto :goto_2

    .restart local v1    # "location":Ljava/lang/String;
    :cond_13
    move v8, v2

    .line 2281
    goto :goto_3

    .line 2282
    .end local v1    # "location":Ljava/lang/String;
    :cond_14
    iget-object v0, v13, Lorg/telegram/tgnet/TLRPC$InputMedia;->thumb:Lorg/telegram/tgnet/TLRPC$InputFile;

    if-nez v0, :cond_0

    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v0, :cond_0

    .line 2283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ".jpg"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2284
    .restart local v1    # "location":Ljava/lang/String;
    invoke-direct {p0, v1, p1}, Lorg/telegram/messenger/SendMessagesHelper;->putToDelayedMessages(Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    .line 2285
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v8, v6}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZI)V

    goto/16 :goto_0

    .line 2288
    .end local v1    # "location":Ljava/lang/String;
    .end local v13    # "media":Lorg/telegram/tgnet/TLRPC$InputMedia;
    :cond_15
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 2289
    .restart local v1    # "location":Ljava/lang/String;
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    if-eqz v0, :cond_16

    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->dc_id:I

    if-eqz v0, :cond_16

    .line 2290
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2291
    .restart local v12    # "file":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_16

    .line 2292
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/telegram/messenger/SendMessagesHelper;->putToDelayedMessages(Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    .line 2293
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-virtual {v0, v3, v8, v2}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;ZZ)V

    goto/16 :goto_0

    .line 2297
    .end local v12    # "file":Ljava/io/File;
    :cond_16
    invoke-direct {p0, v1, p1}, Lorg/telegram/messenger/SendMessagesHelper;->putToDelayedMessages(Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    .line 2298
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    const/high16 v3, 0x4000000

    invoke-virtual {v0, v1, v8, v2, v3}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZI)V

    goto/16 :goto_0

    .line 2301
    .end local v1    # "location":Ljava/lang/String;
    :cond_17
    iget v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    .line 2302
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 2303
    .restart local v1    # "location":Ljava/lang/String;
    invoke-direct {p0, v1, p1}, Lorg/telegram/messenger/SendMessagesHelper;->putToDelayedMessages(Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    .line 2304
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    if-nez v3, :cond_18

    move v2, v8

    :cond_18
    const/high16 v3, 0x3000000

    invoke-virtual {v0, v1, v2, v8, v3}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZI)V

    goto/16 :goto_0
.end method

.method private performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V
    .locals 7
    .param p1, "req"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "msgObj"    # Lorg/telegram/messenger/MessageObject;
    .param p3, "originalPath"    # Ljava/lang/String;

    .prologue
    .line 2335
    iget-object v2, p2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    .line 2336
    .local v2, "newMsgObj":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-virtual {p0, v2}, Lorg/telegram/messenger/SendMessagesHelper;->putToSendingMessages(Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 2337
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v6

    new-instance v0, Lorg/telegram/messenger/SendMessagesHelper$9;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/SendMessagesHelper$9;-><init>(Lorg/telegram/messenger/SendMessagesHelper;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    new-instance v3, Lorg/telegram/messenger/SendMessagesHelper$10;

    invoke-direct {v3, p0, v2}, Lorg/telegram/messenger/SendMessagesHelper$10;-><init>(Lorg/telegram/messenger/SendMessagesHelper;Lorg/telegram/tgnet/TLRPC$Message;)V

    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;

    if-eqz v1, :cond_0

    const/16 v1, 0x80

    :goto_0
    or-int/lit8 v1, v1, 0x44

    invoke-virtual {v6, p1, v0, v3, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/QuickAckDelegate;I)I

    .line 2496
    return-void

    .line 2337
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static prepareSendingAudioDocuments(Ljava/util/ArrayList;JLorg/telegram/messenger/MessageObject;)V
    .locals 3
    .param p1, "dialog_id"    # J
    .param p3, "reply_to_msg"    # Lorg/telegram/messenger/MessageObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;J",
            "Lorg/telegram/messenger/MessageObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2896
    .local p0, "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/telegram/messenger/SendMessagesHelper$13;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/telegram/messenger/SendMessagesHelper$13;-><init>(Ljava/util/ArrayList;JLorg/telegram/messenger/MessageObject;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2941
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2942
    return-void
.end method

.method public static prepareSendingBotContextResult(Lorg/telegram/tgnet/TLRPC$BotInlineResult;Ljava/util/HashMap;JLorg/telegram/messenger/MessageObject;)V
    .locals 22
    .param p0, "result"    # Lorg/telegram/tgnet/TLRPC$BotInlineResult;
    .param p2, "dialog_id"    # J
    .param p4, "reply_to_msg"    # Lorg/telegram/messenger/MessageObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$BotInlineResult;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Lorg/telegram/messenger/MessageObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3011
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_1

    .line 3265
    :cond_0
    :goto_0
    return-void

    .line 3014
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaAuto;

    if-eqz v2, :cond_2

    .line 3015
    new-instance v8, Ljava/lang/Thread;

    new-instance v2, Lorg/telegram/messenger/SendMessagesHelper$15;

    move-object/from16 v3, p0

    move-wide/from16 v4, p2

    move-object/from16 v6, p1

    move-object/from16 v7, p4

    invoke-direct/range {v2 .. v7}, Lorg/telegram/messenger/SendMessagesHelper$15;-><init>(Lorg/telegram/tgnet/TLRPC$BotInlineResult;JLjava/util/HashMap;Lorg/telegram/messenger/MessageObject;)V

    invoke-direct {v8, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3232
    invoke-virtual {v8}, Ljava/lang/Thread;->run()V

    goto :goto_0

    .line 3233
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageText;

    if-eqz v2, :cond_6

    .line 3234
    const/4 v7, 0x0

    .line 3235
    .local v7, "webPage":Lorg/telegram/tgnet/TLRPC$WebPage;
    move-wide/from16 v0, p2

    long-to-int v2, v0

    if-nez v2, :cond_3

    .line 3236
    const/16 v19, 0x0

    .local v19, "a":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->entities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v19

    if-ge v0, v2, :cond_3

    .line 3237
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->entities:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    .line 3238
    .local v20, "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    move-object/from16 v0, v20

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityUrl;

    if-eqz v2, :cond_4

    .line 3239
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_webPagePending;

    .end local v7    # "webPage":Lorg/telegram/tgnet/TLRPC$WebPage;
    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_webPagePending;-><init>()V

    .line 3240
    .restart local v7    # "webPage":Lorg/telegram/tgnet/TLRPC$WebPage;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->message:Ljava/lang/String;

    move-object/from16 v0, v20

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v20

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v20

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    .line 3245
    .end local v19    # "a":I
    .end local v20    # "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->message:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->no_webpage:Z

    if-nez v4, :cond_5

    const/4 v8, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object v9, v4, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->entities:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object v10, v4, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    move-wide/from16 v4, p2

    move-object/from16 v6, p4

    move-object/from16 v11, p1

    invoke-virtual/range {v2 .. v11}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 3236
    .restart local v19    # "a":I
    .restart local v20    # "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_4
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 3245
    .end local v19    # "a":I
    .end local v20    # "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_5
    const/4 v8, 0x0

    goto :goto_2

    .line 3246
    .end local v7    # "webPage":Lorg/telegram/tgnet/TLRPC$WebPage;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaVenue;

    if-eqz v2, :cond_7

    .line 3247
    new-instance v9, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    invoke-direct {v9}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;-><init>()V

    .line 3248
    .local v9, "venue":Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iput-object v2, v9, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    .line 3249
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->address:Ljava/lang/String;

    iput-object v2, v9, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->address:Ljava/lang/String;

    .line 3250
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->title:Ljava/lang/String;

    iput-object v2, v9, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->title:Ljava/lang/String;

    .line 3251
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->provider:Ljava/lang/String;

    iput-object v2, v9, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->provider:Ljava/lang/String;

    .line 3252
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->venue_id:Ljava/lang/String;

    iput-object v2, v9, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->venue_id:Ljava/lang/String;

    .line 3253
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object v13, v2, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    move-wide/from16 v10, p2

    move-object/from16 v12, p4

    move-object/from16 v14, p1

    invoke-virtual/range {v8 .. v14}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/tgnet/TLRPC$MessageMedia;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 3254
    .end local v9    # "venue":Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaGeo;

    if-eqz v2, :cond_8

    .line 3255
    new-instance v11, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;

    invoke-direct {v11}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;-><init>()V

    .line 3256
    .local v11, "location":Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iput-object v2, v11, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    .line 3257
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object v15, v2, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    move-wide/from16 v12, p2

    move-object/from16 v14, p4

    move-object/from16 v16, p1

    invoke-virtual/range {v10 .. v16}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/tgnet/TLRPC$MessageMedia;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 3258
    .end local v11    # "location":Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaContact;

    if-eqz v2, :cond_0

    .line 3259
    new-instance v13, Lorg/telegram/tgnet/TLRPC$TL_user;

    invoke-direct {v13}, Lorg/telegram/tgnet/TLRPC$TL_user;-><init>()V

    .line 3260
    .local v13, "user":Lorg/telegram/tgnet/TLRPC$User;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->phone_number:Ljava/lang/String;

    iput-object v2, v13, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    .line 3261
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->first_name:Ljava/lang/String;

    iput-object v2, v13, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    .line 3262
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->last_name:Ljava/lang/String;

    iput-object v2, v13, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    .line 3263
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    move-object/from16 v17, v0

    move-wide/from16 v14, p2

    move-object/from16 v16, p4

    move-object/from16 v18, p1

    invoke-virtual/range {v12 .. v18}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/tgnet/TLRPC$User;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto/16 :goto_0
.end method

.method public static prepareSendingDocument(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Landroid/support/v13/view/inputmethod/InputContentInfoCompat;)V
    .locals 8
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "originalPath"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mine"    # Ljava/lang/String;
    .param p4, "dialog_id"    # J
    .param p6, "reply_to_msg"    # Lorg/telegram/messenger/MessageObject;
    .param p7, "inputContent"    # Landroid/support/v13/view/inputmethod/InputContentInfoCompat;

    .prologue
    .line 2878
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    if-nez p2, :cond_1

    .line 2893
    :goto_0
    return-void

    .line 2881
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2882
    .local v0, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2883
    .local v1, "originalPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 2884
    .local v2, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-eqz p2, :cond_2

    .line 2885
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2886
    .restart local v2    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2888
    :cond_2
    if-eqz p0, :cond_3

    .line 2889
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2890
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    move-object v7, p7

    .line 2892
    invoke-static/range {v0 .. v7}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingDocuments(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Landroid/support/v13/view/inputmethod/InputContentInfoCompat;)V

    goto :goto_0
.end method

.method private static prepareSendingDocumentInternal(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Ljava/lang/String;)Z
    .locals 34
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "originalPath"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mime"    # Ljava/lang/String;
    .param p4, "dialog_id"    # J
    .param p6, "reply_to_msg"    # Lorg/telegram/messenger/MessageObject;
    .param p7, "caption"    # Ljava/lang/String;

    .prologue
    .line 2709
    if-eqz p0, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    if-nez p2, :cond_1

    .line 2710
    const/4 v2, 0x0

    .line 2874
    :goto_0
    return v2

    .line 2712
    :cond_1
    if-eqz p2, :cond_2

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/AndroidUtilities;->isInternalUri(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2713
    const/4 v2, 0x0

    goto :goto_0

    .line 2715
    :cond_2
    if-eqz p0, :cond_3

    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->isInternalUri(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2716
    const/4 v2, 0x0

    goto :goto_0

    .line 2718
    :cond_3
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v30

    .line 2719
    .local v30, "myMime":Landroid/webkit/MimeTypeMap;
    const/4 v11, 0x0

    .line 2720
    .local v11, "attributeAudio":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;
    const/16 v22, 0x0

    .line 2721
    .local v22, "extension":Ljava/lang/String;
    if-eqz p2, :cond_6

    .line 2722
    if-eqz p3, :cond_4

    .line 2723
    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 2725
    :cond_4
    if-nez v22, :cond_5

    .line 2726
    const-string/jumbo v22, "txt"

    .line 2728
    :cond_5
    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lorg/telegram/messenger/MediaController;->copyFileToCache(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2729
    if-nez p0, :cond_6

    .line 2730
    const/4 v2, 0x0

    goto :goto_0

    .line 2733
    :cond_6
    new-instance v23, Ljava/io/File;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2734
    .local v23, "f":Ljava/io/File;
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-nez v2, :cond_8

    .line 2735
    :cond_7
    const/4 v2, 0x0

    goto :goto_0

    .line 2738
    :cond_8
    move-wide/from16 v0, p4

    long-to-int v2, v0

    if-nez v2, :cond_b

    const/16 v28, 0x1

    .line 2739
    .local v28, "isEncrypted":Z
    :goto_1
    if-nez v28, :cond_c

    const/4 v10, 0x1

    .line 2741
    .local v10, "allowSticker":Z
    :goto_2
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v31

    .line 2742
    .local v31, "name":Ljava/lang/String;
    const-string/jumbo v21, ""

    .line 2743
    .local v21, "ext":Ljava/lang/String;
    if-eqz v22, :cond_d

    .line 2744
    move-object/from16 v21, v22

    .line 2751
    :cond_9
    :goto_3
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "mp3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "m4a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 2752
    :cond_a
    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getAudioInfo(Ljava/io/File;)Lorg/telegram/messenger/audioinfo/AudioInfo;

    move-result-object v14

    .line 2753
    .local v14, "audioInfo":Lorg/telegram/messenger/audioinfo/AudioInfo;
    if-eqz v14, :cond_11

    invoke-virtual {v14}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getDuration()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_11

    .line 2754
    if-eqz v28, :cond_19

    .line 2755
    const/16 v2, 0x20

    shr-long v2, p4, v2

    long-to-int v0, v2

    move/from16 v26, v0

    .line 2756
    .local v26, "high_id":I
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v20

    .line 2757
    .local v20, "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    if-nez v20, :cond_e

    .line 2758
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2738
    .end local v10    # "allowSticker":Z
    .end local v14    # "audioInfo":Lorg/telegram/messenger/audioinfo/AudioInfo;
    .end local v20    # "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .end local v21    # "ext":Ljava/lang/String;
    .end local v26    # "high_id":I
    .end local v28    # "isEncrypted":Z
    .end local v31    # "name":Ljava/lang/String;
    :cond_b
    const/16 v28, 0x0

    goto :goto_1

    .line 2739
    .restart local v28    # "isEncrypted":Z
    :cond_c
    const/4 v10, 0x0

    goto :goto_2

    .line 2746
    .restart local v10    # "allowSticker":Z
    .restart local v21    # "ext":Ljava/lang/String;
    .restart local v31    # "name":Ljava/lang/String;
    :cond_d
    const/16 v2, 0x2e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v27

    .line 2747
    .local v27, "idx":I
    const/4 v2, -0x1

    move/from16 v0, v27

    if-eq v0, v2, :cond_9

    .line 2748
    add-int/lit8 v2, v27, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    goto :goto_3

    .line 2760
    .end local v27    # "idx":I
    .restart local v14    # "audioInfo":Lorg/telegram/messenger/audioinfo/AudioInfo;
    .restart local v20    # "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .restart local v26    # "high_id":I
    :cond_e
    new-instance v11, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    .end local v11    # "attributeAudio":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;
    invoke-direct {v11}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;-><init>()V

    .line 2764
    .end local v20    # "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .end local v26    # "high_id":I
    .restart local v11    # "attributeAudio":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;
    :goto_4
    invoke-virtual {v14}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getDuration()J

    move-result-wide v2

    const-wide/16 v6, 0x3e8

    div-long/2addr v2, v6

    long-to-int v2, v2

    iput v2, v11, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->duration:I

    .line 2765
    invoke-virtual {v14}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->title:Ljava/lang/String;

    .line 2766
    invoke-virtual {v14}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getArtist()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->performer:Ljava/lang/String;

    .line 2767
    iget-object v2, v11, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->title:Ljava/lang/String;

    if-nez v2, :cond_f

    .line 2768
    const-string/jumbo v2, ""

    iput-object v2, v11, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->title:Ljava/lang/String;

    .line 2770
    :cond_f
    iget v2, v11, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->flags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v11, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->flags:I

    .line 2771
    iget-object v2, v11, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->performer:Ljava/lang/String;

    if-nez v2, :cond_10

    .line 2772
    const-string/jumbo v2, ""

    iput-object v2, v11, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->performer:Ljava/lang/String;

    .line 2774
    :cond_10
    iget v2, v11, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v11, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->flags:I

    .line 2777
    .end local v14    # "audioInfo":Lorg/telegram/messenger/audioinfo/AudioInfo;
    :cond_11
    const/16 v32, 0x0

    .line 2778
    .local v32, "sendNew":Z
    if-eqz p1, :cond_12

    .line 2779
    const-string/jumbo v2, "attheme"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 2780
    const/16 v32, 0x1

    .line 2788
    :cond_12
    :goto_5
    const/16 v18, 0x0

    .line 2789
    .local v18, "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    if-nez v32, :cond_13

    if-nez v28, :cond_13

    .line 2790
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    if-nez v28, :cond_1c

    const/4 v2, 0x1

    :goto_6
    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v2}, Lorg/telegram/messenger/MessagesStorage;->getSentFile(Ljava/lang/String;I)Lorg/telegram/tgnet/TLObject;

    move-result-object v18

    .end local v18    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    check-cast v18, Lorg/telegram/tgnet/TLRPC$TL_document;

    .line 2791
    .restart local v18    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    if-nez v18, :cond_13

    invoke-virtual/range {p0 .. p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    if-nez v28, :cond_13

    .line 2792
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    if-nez v28, :cond_1d

    const/4 v2, 0x1

    :goto_7
    invoke-virtual {v3, v6, v2}, Lorg/telegram/messenger/MessagesStorage;->getSentFile(Ljava/lang/String;I)Lorg/telegram/tgnet/TLObject;

    move-result-object v18

    .end local v18    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    check-cast v18, Lorg/telegram/tgnet/TLRPC$TL_document;

    .line 2795
    .restart local v18    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    :cond_13
    if-nez v18, :cond_17

    .line 2796
    new-instance v18, Lorg/telegram/tgnet/TLRPC$TL_document;

    .end local v18    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    invoke-direct/range {v18 .. v18}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    .line 2797
    .restart local v18    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    const-wide/16 v2, 0x0

    move-object/from16 v0, v18

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->id:J

    .line 2798
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v2

    move-object/from16 v0, v18

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->date:I

    .line 2799
    new-instance v25, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;

    invoke-direct/range {v25 .. v25}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;-><init>()V

    .line 2800
    .local v25, "fileName":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;
    move-object/from16 v0, v31

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;->file_name:Ljava/lang/String;

    .line 2801
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2802
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    move-object/from16 v0, v18

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->size:I

    .line 2803
    const/4 v2, 0x0

    move-object/from16 v0, v18

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->dc_id:I

    .line 2804
    if-eqz v11, :cond_14

    .line 2805
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2807
    :cond_14
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_20

    .line 2808
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "webp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 2809
    const-string/jumbo v2, "image/webp"

    move-object/from16 v0, v18

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    .line 2821
    :goto_8
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    const-string/jumbo v3, "image/gif"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 2823
    :try_start_0
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v6, 0x42b40000    # 90.0f

    const/high16 v7, 0x42b40000    # 90.0f

    const/4 v8, 0x1

    invoke-static {v2, v3, v6, v7, v8}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 2824
    .local v15, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v15, :cond_15

    .line 2825
    const-string/jumbo v2, "animation.gif"

    move-object/from16 v0, v25

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;->file_name:Ljava/lang/String;

    .line 2826
    const/high16 v2, 0x42b40000    # 90.0f

    const/high16 v3, 0x42b40000    # 90.0f

    const/16 v6, 0x37

    move/from16 v0, v28

    invoke-static {v15, v2, v3, v6, v0}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Landroid/graphics/Bitmap;FFIZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v2

    move-object/from16 v0, v18

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 2827
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2833
    .end local v15    # "bitmap":Landroid/graphics/Bitmap;
    :cond_15
    :goto_9
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    const-string/jumbo v3, "image/webp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    if-eqz v10, :cond_16

    .line 2834
    new-instance v16, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2836
    .local v16, "bmOptions":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    :try_start_1
    move-object/from16 v0, v16

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2837
    new-instance v24, Ljava/io/RandomAccessFile;

    const-string/jumbo v2, "r"

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2838
    .local v24, "file":Ljava/io/RandomAccessFile;
    invoke-virtual/range {v24 .. v24}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v17

    .line 2839
    .local v17, "buffer":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    const/4 v6, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v2, v0, v3, v1, v6}, Lorg/telegram/messenger/Utilities;->loadWebpImage(Landroid/graphics/Bitmap;Ljava/nio/ByteBuffer;ILandroid/graphics/BitmapFactory$Options;Z)Z

    .line 2840
    invoke-virtual/range {v24 .. v24}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2844
    .end local v17    # "buffer":Ljava/nio/ByteBuffer;
    .end local v24    # "file":Ljava/io/RandomAccessFile;
    :goto_a
    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eqz v2, :cond_16

    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eqz v2, :cond_16

    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/16 v3, 0x320

    if-gt v2, v3, :cond_16

    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/16 v3, 0x320

    if-gt v2, v3, :cond_16

    .line 2845
    new-instance v13, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;

    invoke-direct {v13}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;-><init>()V

    .line 2846
    .local v13, "attributeSticker":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;
    const-string/jumbo v2, ""

    iput-object v2, v13, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;->alt:Ljava/lang/String;

    .line 2847
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmpty;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmpty;-><init>()V

    iput-object v2, v13, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    .line 2848
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2849
    new-instance v12, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;

    invoke-direct {v12}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;-><init>()V

    .line 2850
    .local v12, "attributeImageSize":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;
    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v2, v12, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;->w:I

    .line 2851
    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v2, v12, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;->h:I

    .line 2852
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2855
    .end local v12    # "attributeImageSize":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;
    .end local v13    # "attributeSticker":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;
    .end local v16    # "bmOptions":Landroid/graphics/BitmapFactory$Options;
    :cond_16
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-nez v2, :cond_17

    .line 2856
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;-><init>()V

    move-object/from16 v0, v18

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 2857
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-string/jumbo v3, "s"

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    .line 2860
    .end local v25    # "fileName":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;
    :cond_17
    move-object/from16 v0, p7

    move-object/from16 v1, v18

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    .line 2862
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 2863
    .local v9, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_18

    .line 2864
    const-string/jumbo v2, "originalPath"

    move-object/from16 v0, p1

    invoke-virtual {v9, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2866
    :cond_18
    move-object/from16 v4, v18

    .line 2867
    .local v4, "documentFinal":Lorg/telegram/tgnet/TLRPC$TL_document;
    move-object/from16 v5, p0

    .line 2868
    .local v5, "pathFinal":Ljava/lang/String;
    new-instance v3, Lorg/telegram/messenger/SendMessagesHelper$12;

    move-wide/from16 v6, p4

    move-object/from16 v8, p6

    invoke-direct/range {v3 .. v9}, Lorg/telegram/messenger/SendMessagesHelper$12;-><init>(Lorg/telegram/tgnet/TLRPC$TL_document;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Ljava/util/HashMap;)V

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2874
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2762
    .end local v4    # "documentFinal":Lorg/telegram/tgnet/TLRPC$TL_document;
    .end local v5    # "pathFinal":Ljava/lang/String;
    .end local v9    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v18    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    .end local v32    # "sendNew":Z
    .restart local v14    # "audioInfo":Lorg/telegram/messenger/audioinfo/AudioInfo;
    :cond_19
    new-instance v11, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    .end local v11    # "attributeAudio":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;
    invoke-direct {v11}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;-><init>()V

    .restart local v11    # "attributeAudio":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;
    goto/16 :goto_4

    .line 2781
    .end local v14    # "audioInfo":Lorg/telegram/messenger/audioinfo/AudioInfo;
    .restart local v32    # "sendNew":Z
    :cond_1a
    if-eqz v11, :cond_1b

    .line 2782
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "audio"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_5

    .line 2784
    :cond_1b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_5

    .line 2790
    .restart local v18    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    :cond_1c
    const/4 v2, 0x4

    goto/16 :goto_6

    .line 2792
    :cond_1d
    const/4 v2, 0x4

    goto/16 :goto_7

    .line 2811
    .restart local v25    # "fileName":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;
    :cond_1e
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 2812
    .local v29, "mimeType":Ljava/lang/String;
    if-eqz v29, :cond_1f

    .line 2813
    move-object/from16 v0, v29

    move-object/from16 v1, v18

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    goto/16 :goto_8

    .line 2815
    :cond_1f
    const-string/jumbo v2, "application/octet-stream"

    move-object/from16 v0, v18

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    goto/16 :goto_8

    .line 2819
    .end local v29    # "mimeType":Ljava/lang/String;
    :cond_20
    const-string/jumbo v2, "application/octet-stream"

    move-object/from16 v0, v18

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    goto/16 :goto_8

    .line 2829
    :catch_0
    move-exception v19

    .line 2830
    .local v19, "e":Ljava/lang/Exception;
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .line 2841
    .end local v19    # "e":Ljava/lang/Exception;
    .restart local v16    # "bmOptions":Landroid/graphics/BitmapFactory$Options;
    :catch_1
    move-exception v19

    .line 2842
    .restart local v19    # "e":Ljava/lang/Exception;
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_a
.end method

.method public static prepareSendingDocuments(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Landroid/support/v13/view/inputmethod/InputContentInfoCompat;)V
    .locals 10
    .param p3, "mime"    # Ljava/lang/String;
    .param p4, "dialog_id"    # J
    .param p6, "reply_to_msg"    # Lorg/telegram/messenger/MessageObject;
    .param p7, "inputContent"    # Landroid/support/v13/view/inputmethod/InputContentInfoCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "J",
            "Lorg/telegram/messenger/MessageObject;",
            "Landroid/support/v13/view/inputmethod/InputContentInfoCompat;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2945
    .local p0, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p1, "originalPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 2984
    :cond_1
    :goto_0
    return-void

    .line 2948
    :cond_2
    new-instance v9, Ljava/lang/Thread;

    new-instance v0, Lorg/telegram/messenger/SendMessagesHelper$14;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-wide v4, p4

    move-object/from16 v6, p6

    move-object v7, p2

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/telegram/messenger/SendMessagesHelper$14;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Landroid/support/v13/view/inputmethod/InputContentInfoCompat;)V

    invoke-direct {v9, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2983
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static prepareSendingPhoto(Ljava/lang/String;Landroid/net/Uri;JLorg/telegram/messenger/MessageObject;Ljava/lang/CharSequence;Ljava/util/ArrayList;Landroid/support/v13/view/inputmethod/InputContentInfoCompat;)V
    .locals 8
    .param p0, "imageFilePath"    # Ljava/lang/String;
    .param p1, "imageUri"    # Landroid/net/Uri;
    .param p2, "dialog_id"    # J
    .param p4, "reply_to_msg"    # Lorg/telegram/messenger/MessageObject;
    .param p5, "caption"    # Ljava/lang/CharSequence;
    .param p7, "inputContent"    # Landroid/support/v13/view/inputmethod/InputContentInfoCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "J",
            "Lorg/telegram/messenger/MessageObject;",
            "Ljava/lang/CharSequence;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$InputDocument;",
            ">;",
            "Landroid/support/v13/view/inputmethod/InputContentInfoCompat;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2987
    .local p6, "stickers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputDocument;>;"
    const/4 v0, 0x0

    .line 2988
    .local v0, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 2989
    .local v1, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v5, 0x0

    .line 2990
    .local v5, "captions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 2991
    .local v6, "masks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputDocument;>;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 2992
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2993
    .restart local v0    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2995
    :cond_0
    if-eqz p1, :cond_1

    .line 2996
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2997
    .restart local v1    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2999
    :cond_1
    if-eqz p5, :cond_2

    .line 3000
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "captions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3001
    .restart local v5    # "captions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3003
    :cond_2
    if-eqz p6, :cond_3

    invoke-virtual {p6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 3004
    new-instance v6, Ljava/util/ArrayList;

    .end local v6    # "masks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputDocument;>;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3005
    .restart local v6    # "masks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputDocument;>;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    move-wide v2, p2

    move-object v4, p4

    move-object v7, p7

    .line 3007
    invoke-static/range {v0 .. v7}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingPhotos(Ljava/util/ArrayList;Ljava/util/ArrayList;JLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/support/v13/view/inputmethod/InputContentInfoCompat;)V

    .line 3008
    return-void
.end method

.method public static prepareSendingPhotos(Ljava/util/ArrayList;Ljava/util/ArrayList;JLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/support/v13/view/inputmethod/InputContentInfoCompat;)V
    .locals 10
    .param p2, "dialog_id"    # J
    .param p4, "reply_to_msg"    # Lorg/telegram/messenger/MessageObject;
    .param p7, "inputContent"    # Landroid/support/v13/view/inputmethod/InputContentInfoCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;J",
            "Lorg/telegram/messenger/MessageObject;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$InputDocument;",
            ">;>;",
            "Landroid/support/v13/view/inputmethod/InputContentInfoCompat;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3464
    .local p0, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p1, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .local p5, "captions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p6, "masks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputDocument;>;>;"
    if-nez p0, :cond_0

    if-eqz p1, :cond_2

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3597
    :cond_2
    :goto_0
    return-void

    .line 3467
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3468
    .local v4, "pathsCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3469
    .local v5, "urisCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-eqz p0, :cond_4

    .line 3470
    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3472
    :cond_4
    if-eqz p1, :cond_5

    .line 3473
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3475
    :cond_5
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/telegram/messenger/SendMessagesHelper$18;

    move-wide v2, p2

    move-object v6, p5

    move-object/from16 v7, p6

    move-object v8, p4

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lorg/telegram/messenger/SendMessagesHelper$18;-><init>(JLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/messenger/MessageObject;Landroid/support/v13/view/inputmethod/InputContentInfoCompat;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3596
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static prepareSendingPhotosSearch(Ljava/util/ArrayList;JLorg/telegram/messenger/MessageObject;)V
    .locals 3
    .param p1, "dialog_id"    # J
    .param p3, "reply_to_msg"    # Lorg/telegram/messenger/MessageObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MediaController$SearchImage;",
            ">;J",
            "Lorg/telegram/messenger/MessageObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3268
    .local p0, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MediaController$SearchImage;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3421
    :cond_0
    :goto_0
    return-void

    .line 3271
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/telegram/messenger/SendMessagesHelper$16;

    invoke-direct {v1, p1, p2, p0, p3}, Lorg/telegram/messenger/SendMessagesHelper$16;-><init>(JLjava/util/ArrayList;Lorg/telegram/messenger/MessageObject;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3420
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static prepareSendingText(Ljava/lang/String;J)V
    .locals 3
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "dialog_id"    # J

    .prologue
    .line 3438
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/SendMessagesHelper$17;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/messenger/SendMessagesHelper$17;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 3461
    return-void
.end method

.method public static prepareSendingVideo(Ljava/lang/String;JJIILorg/telegram/messenger/VideoEditedInfo;JLorg/telegram/messenger/MessageObject;Ljava/lang/String;)V
    .locals 15
    .param p0, "videoPath"    # Ljava/lang/String;
    .param p1, "estimatedSize"    # J
    .param p3, "duration"    # J
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "videoEditedInfo"    # Lorg/telegram/messenger/VideoEditedInfo;
    .param p8, "dialog_id"    # J
    .param p10, "reply_to_msg"    # Lorg/telegram/messenger/MessageObject;
    .param p11, "caption"    # Ljava/lang/String;

    .prologue
    .line 3659
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 3746
    :cond_0
    :goto_0
    return-void

    .line 3662
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/telegram/messenger/SendMessagesHelper$19;

    move-wide/from16 v2, p8

    move-object/from16 v4, p7

    move-object v5, p0

    move-wide/from16 v6, p3

    move/from16 v8, p6

    move/from16 v9, p5

    move-wide/from16 v10, p1

    move-object/from16 v12, p11

    move-object/from16 v13, p10

    invoke-direct/range {v1 .. v13}, Lorg/telegram/messenger/SendMessagesHelper$19;-><init>(JLorg/telegram/messenger/VideoEditedInfo;Ljava/lang/String;JIIJLjava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3745
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private putToDelayedMessages(Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V
    .locals 2
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "message"    # Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    .prologue
    .line 2640
    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2641
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    if-nez v0, :cond_0

    .line 2642
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2643
    .restart local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2645
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2646
    return-void
.end method

.method private sendLocation(Landroid/location/Location;)V
    .locals 9
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    const/4 v5, 0x0

    .line 1034
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;-><init>()V

    .line 1035
    .local v1, "mediaGeo":Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_geoPoint;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_geoPoint;-><init>()V

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    .line 1036
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    .line 1037
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    .line 1038
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->waitingForLocation:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 1039
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/telegram/messenger/MessageObject;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    .line 1040
    .local v4, "messageObject":Lorg/telegram/messenger/MessageObject;
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/tgnet/TLRPC$MessageMedia;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto :goto_0

    .line 1042
    .end local v4    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/telegram/messenger/MessageObject;>;"
    :cond_0
    return-void
.end method

.method private sendMessage(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/TLRPC$TL_photo;Lorg/telegram/messenger/VideoEditedInfo;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/tgnet/TLRPC$TL_game;JLjava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V
    .locals 56
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "location"    # Lorg/telegram/tgnet/TLRPC$MessageMedia;
    .param p3, "photo"    # Lorg/telegram/tgnet/TLRPC$TL_photo;
    .param p4, "videoEditedInfo"    # Lorg/telegram/messenger/VideoEditedInfo;
    .param p5, "user"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p6, "document"    # Lorg/telegram/tgnet/TLRPC$TL_document;
    .param p7, "game"    # Lorg/telegram/tgnet/TLRPC$TL_game;
    .param p8, "peer"    # J
    .param p10, "path"    # Ljava/lang/String;
    .param p11, "reply_to_msg"    # Lorg/telegram/messenger/MessageObject;
    .param p12, "webPage"    # Lorg/telegram/tgnet/TLRPC$WebPage;
    .param p13, "searchLinks"    # Z
    .param p14, "retryMessageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p16, "replyMarkup"    # Lorg/telegram/tgnet/TLRPC$ReplyMarkup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/telegram/tgnet/TLRPC$MessageMedia;",
            "Lorg/telegram/tgnet/TLRPC$TL_photo;",
            "Lorg/telegram/messenger/VideoEditedInfo;",
            "Lorg/telegram/tgnet/TLRPC$User;",
            "Lorg/telegram/tgnet/TLRPC$TL_document;",
            "Lorg/telegram/tgnet/TLRPC$TL_game;",
            "J",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/MessageObject;",
            "Lorg/telegram/tgnet/TLRPC$WebPage;",
            "Z",
            "Lorg/telegram/messenger/MessageObject;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$MessageEntity;",
            ">;",
            "Lorg/telegram/tgnet/TLRPC$ReplyMarkup;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1274
    .local p15, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$MessageEntity;>;"
    .local p17, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-wide/16 v8, 0x0

    cmp-long v4, p8, v8

    if-nez v4, :cond_1

    .line 2183
    :cond_0
    :goto_0
    return-void

    .line 1278
    :cond_1
    const/16 v43, 0x0

    .line 1279
    .local v43, "originalPath":Ljava/lang/String;
    if-eqz p17, :cond_2

    const-string/jumbo v4, "originalPath"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1280
    const-string/jumbo v4, "originalPath"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    .end local v43    # "originalPath":Ljava/lang/String;
    check-cast v43, Ljava/lang/String;

    .line 1283
    .restart local v43    # "originalPath":Ljava/lang/String;
    :cond_2
    const/16 v38, 0x0

    .line 1284
    .local v38, "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    const/16 v40, 0x0

    .line 1285
    .local v40, "newMsgObj":Lorg/telegram/messenger/MessageObject;
    const/16 v54, -0x1

    .line 1286
    .local v54, "type":I
    move-wide/from16 v0, p8

    long-to-int v0, v0

    move/from16 v34, v0

    .line 1287
    .local v34, "lower_id":I
    const/16 v4, 0x20

    shr-long v8, p8, v4

    long-to-int v0, v8

    move/from16 v30, v0

    .line 1288
    .local v30, "high_id":I
    const/16 v32, 0x0

    .line 1289
    .local v32, "isChannel":Z
    const/16 v16, 0x0

    .line 1290
    .local v16, "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    if-eqz v34, :cond_3

    invoke-static/range {v34 .. v34}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v48

    .line 1291
    .local v48, "sendToPeer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    :goto_1
    const/16 v49, 0x0

    .line 1292
    .local v49, "sendToPeers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputUser;>;"
    if-nez v34, :cond_4

    .line 1293
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v16

    .line 1294
    if-nez v16, :cond_5

    .line 1295
    if-eqz p14, :cond_0

    .line 1296
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, p14

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesStorage;->markMessageAsSendError(Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 1297
    move-object/from16 v0, p14

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v6, 0x2

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 1298
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/NotificationCenter;->messageSendError:I

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual/range {p14 .. p14}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v9

    invoke-virtual {v4, v6, v8}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1299
    invoke-virtual/range {p14 .. p14}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/SendMessagesHelper;->processSentMessage(I)V

    goto :goto_0

    .line 1290
    .end local v48    # "sendToPeer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    .end local v49    # "sendToPeers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputUser;>;"
    :cond_3
    const/16 v48, 0x0

    goto :goto_1

    .line 1303
    .restart local v48    # "sendToPeer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    .restart local v49    # "sendToPeers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputUser;>;"
    :cond_4
    move-object/from16 v0, v48

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    if-eqz v4, :cond_5

    .line 1304
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    move-object/from16 v0, v48

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v25

    .line 1305
    .local v25, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v25, :cond_10

    move-object/from16 v0, v25

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v4, :cond_10

    const/16 v32, 0x1

    .line 1309
    .end local v25    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_5
    :goto_2
    if-eqz p14, :cond_1c

    .line 1310
    :try_start_0
    move-object/from16 v0, p14

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v38, v0

    .line 1311
    invoke-virtual/range {p14 .. p14}, Lorg/telegram/messenger/MessageObject;->isForwarded()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1312
    const/16 v54, 0x4

    .line 1515
    :cond_6
    :goto_3
    move-object/from16 v0, v38

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-nez v4, :cond_7

    .line 1516
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/SendMessagesHelper;->getNextRandomId()J

    move-result-wide v8

    move-object/from16 v0, v38

    iput-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    .line 1518
    :cond_7
    if-eqz p17, :cond_9

    const-string/jumbo v4, "bot"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1519
    if-eqz v16, :cond_41

    .line 1520
    const-string/jumbo v4, "bot_name"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v38

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_name:Ljava/lang/String;

    .line 1521
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_name:Ljava/lang/String;

    if-nez v4, :cond_8

    .line 1522
    const-string/jumbo v4, ""

    move-object/from16 v0, v38

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_name:Ljava/lang/String;

    .line 1527
    :cond_8
    :goto_4
    move-object/from16 v0, v38

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v4, v4, 0x800

    move-object/from16 v0, v38

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 1529
    :cond_9
    move-object/from16 v0, p17

    move-object/from16 v1, v38

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->params:Ljava/util/HashMap;

    .line 1530
    if-eqz p14, :cond_a

    move-object/from16 v0, p14

    iget-boolean v4, v0, Lorg/telegram/messenger/MessageObject;->resendAsIs:Z

    if-nez v4, :cond_c

    .line 1531
    :cond_a
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v4

    move-object/from16 v0, v38

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 1532
    move-object/from16 v0, v48

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    if-eqz v4, :cond_43

    .line 1533
    if-eqz v32, :cond_b

    .line 1534
    const/4 v4, 0x1

    move-object/from16 v0, v38

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->views:I

    .line 1535
    move-object/from16 v0, v38

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v4, v4, 0x400

    move-object/from16 v0, v38

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 1537
    :cond_b
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    move-object/from16 v0, v48

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v25

    .line 1538
    .restart local v25    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v25, :cond_c

    .line 1539
    move-object/from16 v0, v25

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v4, :cond_42

    .line 1540
    move-object/from16 v0, v38

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/high16 v6, -0x80000000

    or-int/2addr v4, v6

    move-object/from16 v0, v38

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 1541
    const/4 v4, 0x1

    move-object/from16 v0, v38

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    .line 1553
    .end local v25    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_c
    :goto_5
    move-object/from16 v0, v38

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v4, v4, 0x200

    move-object/from16 v0, v38

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 1554
    move-wide/from16 v0, p8

    move-object/from16 v2, v38

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 1555
    if-eqz p11, :cond_d

    .line 1556
    if-eqz v16, :cond_44

    move-object/from16 v0, p11

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-eqz v4, :cond_44

    .line 1557
    move-object/from16 v0, p11

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    move-object/from16 v0, v38

    iput-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_to_random_id:J

    .line 1558
    move-object/from16 v0, v38

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit8 v4, v4, 0x8

    move-object/from16 v0, v38

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 1562
    :goto_6
    invoke-virtual/range {p11 .. p11}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    move-object/from16 v0, v38

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_to_msg_id:I

    .line 1564
    :cond_d
    if-eqz p16, :cond_e

    if-nez v16, :cond_e

    .line 1565
    move-object/from16 v0, v38

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit8 v4, v4, 0x40

    move-object/from16 v0, v38

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 1566
    move-object/from16 v0, p16

    move-object/from16 v1, v38

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    .line 1568
    :cond_e
    if-eqz v34, :cond_50

    .line 1569
    const/4 v4, 0x1

    move/from16 v0, v30

    if-ne v0, v4, :cond_4e

    .line 1570
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->currentChatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-nez v4, :cond_45

    .line 1571
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesStorage;->markMessageAsSendError(Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 1572
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/NotificationCenter;->messageSendError:I

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, v38

    iget v11, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v9

    invoke-virtual {v4, v6, v8}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1573
    move-object/from16 v0, v38

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/SendMessagesHelper;->processSentMessage(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2174
    :catch_0
    move-exception v29

    move-object/from16 v12, v40

    .line 2175
    .end local v40    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .local v12, "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .local v29, "e":Ljava/lang/Exception;
    :goto_7
    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2176
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesStorage;->markMessageAsSendError(Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 2177
    if-eqz v12, :cond_f

    .line 2178
    iget-object v4, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v6, 0x2

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 2180
    :cond_f
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/NotificationCenter;->messageSendError:I

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, v38

    iget v11, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v9

    invoke-virtual {v4, v6, v8}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2181
    move-object/from16 v0, v38

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/SendMessagesHelper;->processSentMessage(I)V

    goto/16 :goto_0

    .line 1305
    .end local v12    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .end local v29    # "e":Ljava/lang/Exception;
    .restart local v25    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .restart local v40    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    :cond_10
    const/16 v32, 0x0

    goto/16 :goto_2

    .line 1314
    .end local v25    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_11
    :try_start_1
    move-object/from16 v0, p14

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    if-nez v4, :cond_14

    .line 1315
    move-object/from16 v0, p14

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-eqz v4, :cond_13

    .line 1320
    :goto_8
    const/16 v54, 0x0

    .line 1344
    :cond_12
    :goto_9
    if-eqz p17, :cond_6

    const-string/jumbo v4, "query_id"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1345
    const/16 v54, 0x9

    goto/16 :goto_3

    .line 1318
    :cond_13
    move-object/from16 v0, v38

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 p1, v0

    goto :goto_8

    .line 1321
    :cond_14
    move-object/from16 v0, p14

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v6, 0x4

    if-ne v4, v6, :cond_15

    .line 1322
    move-object/from16 v0, v38

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 p2, v0

    .line 1323
    const/16 v54, 0x1

    goto :goto_9

    .line 1324
    :cond_15
    move-object/from16 v0, p14

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_16

    .line 1325
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    move-object v0, v4

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_photo;

    move-object/from16 p3, v0

    .line 1326
    const/16 v54, 0x2

    goto :goto_9

    .line 1327
    :cond_16
    move-object/from16 v0, p14

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v6, 0x3

    if-eq v4, v6, :cond_17

    if-eqz p4, :cond_18

    .line 1328
    :cond_17
    const/16 v54, 0x3

    .line 1329
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object v0, v4

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_document;

    move-object/from16 p6, v0

    goto :goto_9

    .line 1330
    :cond_18
    move-object/from16 v0, p14

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v6, 0xc

    if-ne v4, v6, :cond_19

    .line 1331
    new-instance v55, Lorg/telegram/tgnet/TLRPC$TL_userRequest_old2;

    invoke-direct/range {v55 .. v55}, Lorg/telegram/tgnet/TLRPC$TL_userRequest_old2;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1332
    .end local p5    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .local v55, "user":Lorg/telegram/tgnet/TLRPC$User;
    :try_start_2
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->phone_number:Ljava/lang/String;

    move-object/from16 v0, v55

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    .line 1333
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->first_name:Ljava/lang/String;

    move-object/from16 v0, v55

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    .line 1334
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->last_name:Ljava/lang/String;

    move-object/from16 v0, v55

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    .line 1335
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->user_id:I

    move-object/from16 v0, v55

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 1336
    const/16 v54, 0x6

    move-object/from16 p5, v55

    .end local v55    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .restart local p5    # "user":Lorg/telegram/tgnet/TLRPC$User;
    goto/16 :goto_9

    .line 1337
    :cond_19
    :try_start_3
    move-object/from16 v0, p14

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v6, 0x8

    if-eq v4, v6, :cond_1a

    move-object/from16 v0, p14

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v6, 0x9

    if-eq v4, v6, :cond_1a

    move-object/from16 v0, p14

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v6, 0xd

    if-eq v4, v6, :cond_1a

    move-object/from16 v0, p14

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v6, 0xe

    if-ne v4, v6, :cond_1b

    .line 1338
    :cond_1a
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object v0, v4

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_document;

    move-object/from16 p6, v0

    .line 1339
    const/16 v54, 0x7

    goto/16 :goto_9

    .line 1340
    :cond_1b
    move-object/from16 v0, p14

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_12

    .line 1341
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object v0, v4

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_document;

    move-object/from16 p6, v0

    .line 1342
    const/16 v54, 0x8

    goto/16 :goto_9

    .line 1349
    :cond_1c
    if-eqz p1, :cond_25

    .line 1350
    if-eqz v16, :cond_21

    .line 1351
    new-instance v39, Lorg/telegram/tgnet/TLRPC$TL_message_secret;

    invoke-direct/range {v39 .. v39}, Lorg/telegram/tgnet/TLRPC$TL_message_secret;-><init>()V

    .end local v38    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .local v39, "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v38, v39

    .line 1355
    .end local v39    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v38    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    :goto_a
    if-eqz p15, :cond_1d

    invoke-virtual/range {p15 .. p15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1d

    .line 1356
    move-object/from16 v0, p15

    move-object/from16 v1, v38

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    .line 1358
    :cond_1d
    if-eqz v16, :cond_1e

    move-object/from16 v0, p12

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_webPagePending;

    if-eqz v4, :cond_1e

    .line 1359
    move-object/from16 v0, p12

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    if-eqz v4, :cond_22

    .line 1360
    new-instance v41, Lorg/telegram/tgnet/TLRPC$TL_webPageUrlPending;

    invoke-direct/range {v41 .. v41}, Lorg/telegram/tgnet/TLRPC$TL_webPageUrlPending;-><init>()V

    .line 1361
    .local v41, "newWebPage":Lorg/telegram/tgnet/TLRPC$WebPage;
    move-object/from16 v0, p12

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    move-object/from16 v0, v41

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    .line 1362
    move-object/from16 p12, v41

    .line 1367
    .end local v41    # "newWebPage":Lorg/telegram/tgnet/TLRPC$WebPage;
    :cond_1e
    :goto_b
    if-nez p12, :cond_23

    .line 1368
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    move-object/from16 v0, v38

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 1373
    :goto_c
    if-eqz p17, :cond_24

    const-string/jumbo v4, "query_id"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 1374
    const/16 v54, 0x9

    .line 1378
    :goto_d
    move-object/from16 v0, p1

    move-object/from16 v1, v38

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 1502
    :cond_1f
    :goto_e
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-nez v4, :cond_20

    .line 1503
    const-string/jumbo v4, ""

    move-object/from16 v0, v38

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 1505
    :cond_20
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getNewMessageId()I

    move-result v4

    move-object/from16 v0, v38

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move-object/from16 v0, v38

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->local_id:I

    .line 1506
    const/4 v4, 0x1

    move-object/from16 v0, v38

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 1507
    if-eqz v32, :cond_40

    if-eqz v48, :cond_40

    .line 1508
    move-object/from16 v0, v48

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:I

    neg-int v4, v4

    move-object/from16 v0, v38

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    .line 1513
    :goto_f
    const/4 v4, 0x0

    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    goto/16 :goto_3

    .line 1353
    :cond_21
    new-instance v39, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct/range {v39 .. v39}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .end local v38    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v39    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v38, v39

    .end local v39    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v38    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    goto/16 :goto_a

    .line 1364
    :cond_22
    const/16 p12, 0x0

    goto :goto_b

    .line 1370
    :cond_23
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;-><init>()V

    move-object/from16 v0, v38

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 1371
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, p12

    iput-object v0, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    goto :goto_c

    .line 1376
    :cond_24
    const/16 v54, 0x0

    goto :goto_d

    .line 1379
    :cond_25
    if-eqz p2, :cond_28

    .line 1380
    if-eqz v16, :cond_26

    .line 1381
    new-instance v39, Lorg/telegram/tgnet/TLRPC$TL_message_secret;

    invoke-direct/range {v39 .. v39}, Lorg/telegram/tgnet/TLRPC$TL_message_secret;-><init>()V

    .end local v38    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v39    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v38, v39

    .line 1385
    .end local v39    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v38    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    :goto_10
    move-object/from16 v0, p2

    move-object/from16 v1, v38

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 1386
    const-string/jumbo v4, ""

    move-object/from16 v0, v38

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 1387
    if-eqz p17, :cond_27

    const-string/jumbo v4, "query_id"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 1388
    const/16 v54, 0x9

    goto :goto_e

    .line 1383
    :cond_26
    new-instance v39, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct/range {v39 .. v39}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .end local v38    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v39    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v38, v39

    .end local v39    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v38    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    goto :goto_10

    .line 1390
    :cond_27
    const/16 v54, 0x1

    goto/16 :goto_e

    .line 1392
    :cond_28
    if-eqz p3, :cond_2d

    .line 1393
    if-eqz v16, :cond_29

    .line 1394
    new-instance v39, Lorg/telegram/tgnet/TLRPC$TL_message_secret;

    invoke-direct/range {v39 .. v39}, Lorg/telegram/tgnet/TLRPC$TL_message_secret;-><init>()V

    .end local v38    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v39    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v38, v39

    .line 1398
    .end local v39    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v38    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    :goto_11
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;-><init>()V

    move-object/from16 v0, v38

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 1399
    move-object/from16 v0, v38

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->caption:Ljava/lang/String;

    if-eqz v4, :cond_2a

    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->caption:Ljava/lang/String;

    :goto_12
    iput-object v4, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    .line 1400
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, p3

    iput-object v0, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 1401
    if-eqz p17, :cond_2b

    const-string/jumbo v4, "query_id"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 1402
    const/16 v54, 0x9

    .line 1406
    :goto_13
    const-string/jumbo v4, "-1"

    move-object/from16 v0, v38

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 1407
    if-eqz p10, :cond_2c

    invoke-virtual/range {p10 .. p10}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2c

    const-string/jumbo v4, "http"

    move-object/from16 v0, p10

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 1408
    move-object/from16 v0, p10

    move-object/from16 v1, v38

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    goto/16 :goto_e

    .line 1396
    :cond_29
    new-instance v39, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct/range {v39 .. v39}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .end local v38    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v39    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v38, v39

    .end local v39    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v38    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    goto :goto_11

    .line 1399
    :cond_2a
    const-string/jumbo v4, ""

    goto :goto_12

    .line 1404
    :cond_2b
    const/16 v54, 0x2

    goto :goto_13

    .line 1410
    :cond_2c
    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    move-object/from16 v0, p3

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v33, v0

    .line 1411
    .local v33, "location1":Lorg/telegram/tgnet/TLRPC$FileLocation;
    const/4 v4, 0x1

    move-object/from16 v0, v33

    invoke-static {v0, v4}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v38

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    goto/16 :goto_e

    .line 1413
    .end local v33    # "location1":Lorg/telegram/tgnet/TLRPC$FileLocation;
    :cond_2d
    if-eqz p7, :cond_2e

    .line 1414
    new-instance v39, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct/range {v39 .. v39}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1415
    .end local v38    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v39    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    :try_start_4
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;-><init>()V

    move-object/from16 v0, v39

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 1416
    move-object/from16 v0, v39

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    const-string/jumbo v6, ""

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    .line 1417
    move-object/from16 v0, v39

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, p7

    iput-object v0, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    .line 1418
    const-string/jumbo v4, ""

    move-object/from16 v0, v39

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 1419
    if-eqz p17, :cond_bc

    const-string/jumbo v4, "query_id"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result v4

    if-eqz v4, :cond_bc

    .line 1420
    const/16 v54, 0x9

    move-object/from16 v38, v39

    .end local v39    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v38    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    goto/16 :goto_e

    .line 1422
    :cond_2e
    if-eqz p5, :cond_33

    .line 1423
    if-eqz v16, :cond_31

    .line 1424
    :try_start_5
    new-instance v39, Lorg/telegram/tgnet/TLRPC$TL_message_secret;

    invoke-direct/range {v39 .. v39}, Lorg/telegram/tgnet/TLRPC$TL_message_secret;-><init>()V

    .end local v38    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v39    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v38, v39

    .line 1428
    .end local v39    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v38    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    :goto_14
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;-><init>()V

    move-object/from16 v0, v38

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 1429
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, p5

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->phone_number:Ljava/lang/String;

    .line 1430
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, p5

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->first_name:Ljava/lang/String;

    .line 1431
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, p5

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->last_name:Ljava/lang/String;

    .line 1432
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, p5

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->user_id:I

    .line 1433
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->first_name:Ljava/lang/String;

    if-nez v4, :cond_2f

    .line 1434
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    const-string/jumbo v6, ""

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->first_name:Ljava/lang/String;

    move-object/from16 v0, p5

    iput-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    .line 1436
    :cond_2f
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->last_name:Ljava/lang/String;

    if-nez v4, :cond_30

    .line 1437
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    const-string/jumbo v6, ""

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->last_name:Ljava/lang/String;

    move-object/from16 v0, p5

    iput-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    .line 1439
    :cond_30
    const-string/jumbo v4, ""

    move-object/from16 v0, v38

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 1440
    if-eqz p17, :cond_32

    const-string/jumbo v4, "query_id"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 1441
    const/16 v54, 0x9

    goto/16 :goto_e

    .line 1426
    :cond_31
    new-instance v39, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct/range {v39 .. v39}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .end local v38    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v39    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v38, v39

    .end local v39    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v38    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    goto :goto_14

    .line 1443
    :cond_32
    const/16 v54, 0x6

    goto/16 :goto_e

    .line 1445
    :cond_33
    if-eqz p6, :cond_1f

    .line 1446
    if-eqz v16, :cond_34

    .line 1447
    new-instance v39, Lorg/telegram/tgnet/TLRPC$TL_message_secret;

    invoke-direct/range {v39 .. v39}, Lorg/telegram/tgnet/TLRPC$TL_message_secret;-><init>()V

    .end local v38    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v39    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v38, v39

    .line 1451
    .end local v39    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v38    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    :goto_15
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    move-object/from16 v0, v38

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 1452
    move-object/from16 v0, v38

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    if-eqz v4, :cond_35

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    :goto_16
    iput-object v4, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    .line 1453
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, p6

    iput-object v0, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 1454
    if-eqz p17, :cond_36

    const-string/jumbo v4, "query_id"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 1455
    const/16 v54, 0x9

    .line 1463
    :goto_17
    if-nez p4, :cond_3a

    .line 1464
    const-string/jumbo v4, "-1"

    move-object/from16 v0, v38

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 1468
    :goto_18
    if-eqz v16, :cond_3b

    move-object/from16 v0, p6

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->dc_id:I

    if-lez v4, :cond_3b

    invoke-static/range {p6 .. p6}, Lorg/telegram/messenger/MessageObject;->isStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v4

    if-nez v4, :cond_3b

    .line 1469
    invoke-static/range {p6 .. p6}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v38

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 1473
    :goto_19
    if-eqz v16, :cond_1f

    invoke-static/range {p6 .. p6}, Lorg/telegram/messenger/MessageObject;->isStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 1474
    const/16 v20, 0x0

    .local v20, "a":I
    :goto_1a
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_1f

    .line 1475
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 1476
    .local v22, "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    move-object/from16 v0, v22

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;

    if-eqz v4, :cond_3f

    .line 1477
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1478
    new-instance v23, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker_layer55;

    invoke-direct/range {v23 .. v23}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker_layer55;-><init>()V

    .line 1479
    .local v23, "attributeSticker":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker_layer55;
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1480
    move-object/from16 v0, v22

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->alt:Ljava/lang/String;

    move-object/from16 v0, v23

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker_layer55;->alt:Ljava/lang/String;

    .line 1481
    move-object/from16 v0, v22

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    if-eqz v4, :cond_3e

    .line 1483
    move-object/from16 v0, v22

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;

    if-eqz v4, :cond_3c

    .line 1484
    move-object/from16 v0, v22

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->short_name:Ljava/lang/String;

    move-object/from16 v37, v0

    .line 1488
    .local v37, "name":Ljava/lang/String;
    :goto_1b
    invoke-static/range {v37 .. v37}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3d

    .line 1489
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;-><init>()V

    move-object/from16 v0, v23

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker_layer55;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    .line 1490
    move-object/from16 v0, v23

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker_layer55;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-object/from16 v0, v37

    iput-object v0, v4, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->short_name:Ljava/lang/String;

    goto/16 :goto_e

    .line 1449
    .end local v20    # "a":I
    .end local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    .end local v23    # "attributeSticker":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker_layer55;
    .end local v37    # "name":Ljava/lang/String;
    :cond_34
    new-instance v39, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct/range {v39 .. v39}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .end local v38    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v39    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v38, v39

    .end local v39    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v38    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    goto/16 :goto_15

    .line 1452
    :cond_35
    const-string/jumbo v4, ""

    goto/16 :goto_16

    .line 1456
    :cond_36
    invoke-static/range {p6 .. p6}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v4

    if-nez v4, :cond_37

    if-eqz p4, :cond_38

    .line 1457
    :cond_37
    const/16 v54, 0x3

    goto/16 :goto_17

    .line 1458
    :cond_38
    invoke-static/range {p6 .. p6}, Lorg/telegram/messenger/MessageObject;->isVoiceDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 1459
    const/16 v54, 0x8

    goto/16 :goto_17

    .line 1461
    :cond_39
    const/16 v54, 0x7

    goto/16 :goto_17

    .line 1466
    :cond_3a
    invoke-virtual/range {p4 .. p4}, Lorg/telegram/messenger/VideoEditedInfo;->getString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v38

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    goto/16 :goto_18

    .line 1471
    :cond_3b
    move-object/from16 v0, p10

    move-object/from16 v1, v38

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    goto/16 :goto_19

    .line 1486
    .restart local v20    # "a":I
    .restart local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    .restart local v23    # "attributeSticker":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker_layer55;
    :cond_3c
    move-object/from16 v0, v22

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    invoke-static {v8, v9}, Lorg/telegram/messenger/query/StickersQuery;->getStickerSetName(J)Ljava/lang/String;

    move-result-object v37

    .restart local v37    # "name":Ljava/lang/String;
    goto :goto_1b

    .line 1492
    :cond_3d
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmpty;-><init>()V

    move-object/from16 v0, v23

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker_layer55;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    goto/16 :goto_e

    .line 1495
    .end local v37    # "name":Ljava/lang/String;
    :cond_3e
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmpty;-><init>()V

    move-object/from16 v0, v23

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker_layer55;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    goto/16 :goto_e

    .line 1474
    .end local v23    # "attributeSticker":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker_layer55;
    :cond_3f
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_1a

    .line 1510
    .end local v20    # "a":I
    .end local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_40
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v4

    move-object/from16 v0, v38

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    .line 1511
    move-object/from16 v0, v38

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v4, v4, 0x100

    move-object/from16 v0, v38

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    goto/16 :goto_f

    .line 1525
    :cond_41
    const-string/jumbo v4, "bot"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, v38

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_id:I

    goto/16 :goto_4

    .line 1543
    .restart local v25    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_42
    const/4 v4, 0x1

    move-object/from16 v0, v38

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->post:Z

    .line 1544
    move-object/from16 v0, v25

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->signatures:Z

    if-eqz v4, :cond_c

    .line 1545
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v4

    move-object/from16 v0, v38

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    goto/16 :goto_5

    .line 1550
    .end local v25    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_43
    const/4 v4, 0x1

    move-object/from16 v0, v38

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    goto/16 :goto_5

    .line 1560
    :cond_44
    move-object/from16 v0, v38

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit8 v4, v4, 0x8

    move-object/from16 v0, v38

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    goto/16 :goto_6

    .line 1576
    :cond_45
    new-instance v50, Ljava/util/ArrayList;

    invoke-direct/range {v50 .. v50}, Ljava/util/ArrayList;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 1577
    .end local v49    # "sendToPeers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputUser;>;"
    .local v50, "sendToPeers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputUser;>;"
    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->currentChatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_46
    :goto_1c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_47

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 1578
    .local v44, "participant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    move-object/from16 v0, v44

    iget v8, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v51

    .line 1579
    .local v51, "sendToUser":Lorg/telegram/tgnet/TLRPC$User;
    invoke-static/range {v51 .. v51}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v45

    .line 1580
    .local v45, "peerUser":Lorg/telegram/tgnet/TLRPC$InputUser;
    if-eqz v45, :cond_46

    .line 1581
    move-object/from16 v0, v50

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 2174
    .end local v44    # "participant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    .end local v45    # "peerUser":Lorg/telegram/tgnet/TLRPC$InputUser;
    .end local v51    # "sendToUser":Lorg/telegram/tgnet/TLRPC$User;
    :catch_1
    move-exception v29

    move-object/from16 v49, v50

    .end local v50    # "sendToPeers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputUser;>;"
    .restart local v49    # "sendToPeers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputUser;>;"
    move-object/from16 v12, v40

    .end local v40    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .restart local v12    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    goto/16 :goto_7

    .line 1584
    .end local v12    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .end local v49    # "sendToPeers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputUser;>;"
    .restart local v40    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .restart local v50    # "sendToPeers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputUser;>;"
    :cond_47
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_peerChat;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_peerChat;-><init>()V

    move-object/from16 v0, v38

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 1585
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move/from16 v0, v34

    iput v0, v4, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    move-object/from16 v49, v50

    .line 1631
    .end local v50    # "sendToPeers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputUser;>;"
    .restart local v49    # "sendToPeers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputUser;>;"
    :cond_48
    :goto_1d
    const/4 v4, 0x1

    move/from16 v0, v30

    if-eq v0, v4, :cond_49

    :try_start_7
    invoke-static/range {v38 .. v38}, Lorg/telegram/messenger/MessageObject;->isVoiceMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v4

    if-eqz v4, :cond_49

    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-nez v4, :cond_49

    .line 1632
    const/4 v4, 0x1

    move-object/from16 v0, v38

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media_unread:Z

    .line 1635
    :cond_49
    const/4 v4, 0x1

    move-object/from16 v0, v38

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 1636
    new-instance v12, Lorg/telegram/messenger/MessageObject;

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, v38

    invoke-direct {v12, v0, v4, v6}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 1637
    .end local v40    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .restart local v12    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    :try_start_8
    move-object/from16 v0, p11

    iput-object v0, v12, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 1638
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isForwarded()Z

    move-result v4

    if-nez v4, :cond_4b

    iget v4, v12, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v6, 0x3

    if-eq v4, v6, :cond_4a

    if-eqz p4, :cond_4b

    :cond_4a
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4b

    .line 1639
    const/4 v4, 0x1

    iput-boolean v4, v12, Lorg/telegram/messenger/MessageObject;->attachPathExists:Z

    .line 1642
    :cond_4b
    new-instance v42, Ljava/util/ArrayList;

    invoke-direct/range {v42 .. v42}, Ljava/util/ArrayList;-><init>()V

    .line 1643
    .local v42, "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    move-object/from16 v0, v42

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1644
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1645
    .local v5, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1646
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZI)V

    .line 1647
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    move-wide/from16 v0, p8

    move-object/from16 v2, v42

    invoke-virtual {v4, v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->updateInterfaceWithMessages(JLjava/util/ArrayList;)V

    .line 1648
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v8}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1650
    sget-boolean v4, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v4, :cond_4c

    .line 1651
    if-eqz v48, :cond_4c

    .line 1652
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "send message user_id = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v48

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->user_id:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " chat_id = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v48

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->chat_id:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " channel_id = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v48

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " access_hash = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v48

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->access_hash:J

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1656
    :cond_4c
    if-eqz v54, :cond_4d

    const/16 v4, 0x9

    move/from16 v0, v54

    if-ne v0, v4, :cond_63

    if-eqz p1, :cond_63

    if-eqz v16, :cond_63

    .line 1657
    :cond_4d
    if-nez v16, :cond_5e

    .line 1658
    if-eqz v49, :cond_58

    .line 1659
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;-><init>()V

    .line 1660
    .local v7, "reqSend":Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;
    new-instance v46, Ljava/util/ArrayList;

    invoke-direct/range {v46 .. v46}, Ljava/util/ArrayList;-><init>()V

    .line 1661
    .local v46, "random_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/16 v20, 0x0

    .restart local v20    # "a":I
    :goto_1e
    invoke-virtual/range {v49 .. v49}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_57

    .line 1662
    sget-object v4, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v4}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 1661
    add-int/lit8 v20, v20, 0x1

    goto :goto_1e

    .line 1587
    .end local v5    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v7    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;
    .end local v12    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .end local v20    # "a":I
    .end local v42    # "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v46    # "random_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v40    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    :cond_4e
    :try_start_9
    invoke-static/range {v34 .. v34}, Lorg/telegram/messenger/MessagesController;->getPeer(I)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v4

    move-object/from16 v0, v38

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 1588
    if-lez v34, :cond_48

    .line 1589
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v51

    .line 1590
    .restart local v51    # "sendToUser":Lorg/telegram/tgnet/TLRPC$User;
    if-nez v51, :cond_4f

    .line 1591
    move-object/from16 v0, v38

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/SendMessagesHelper;->processSentMessage(I)V

    goto/16 :goto_0

    .line 1594
    :cond_4f
    move-object/from16 v0, v51

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v4, :cond_48

    .line 1595
    const/4 v4, 0x0

    move-object/from16 v0, v38

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    goto/16 :goto_1d

    .line 1600
    .end local v51    # "sendToUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_50
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    move-object/from16 v0, v38

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 1601
    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->participant_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v6

    if-ne v4, v6, :cond_52

    .line 1602
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v0, v16

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->admin_id:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    .line 1606
    :goto_1f
    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    move-object/from16 v0, v38

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    .line 1607
    move-object/from16 v0, v38

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    if-eqz v4, :cond_48

    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v4, :cond_48

    .line 1608
    invoke-static/range {v38 .. v38}, Lorg/telegram/messenger/MessageObject;->isVoiceMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v4

    if-eqz v4, :cond_54

    .line 1609
    const/16 v28, 0x0

    .line 1610
    .local v28, "duration":I
    const/16 v20, 0x0

    .restart local v20    # "a":I
    :goto_20
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_51

    .line 1611
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 1612
    .restart local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    move-object/from16 v0, v22

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    if-eqz v4, :cond_53

    .line 1613
    move-object/from16 v0, v22

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:I

    move/from16 v28, v0

    .line 1617
    .end local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_51
    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    add-int/lit8 v6, v28, 0x1

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, v38

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    goto/16 :goto_1d

    .line 1604
    .end local v20    # "a":I
    .end local v28    # "duration":I
    :cond_52
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v0, v16

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->participant_id:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    goto :goto_1f

    .line 1610
    .restart local v20    # "a":I
    .restart local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    .restart local v28    # "duration":I
    :cond_53
    add-int/lit8 v20, v20, 0x1

    goto :goto_20

    .line 1618
    .end local v20    # "a":I
    .end local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    .end local v28    # "duration":I
    :cond_54
    invoke-static/range {v38 .. v38}, Lorg/telegram/messenger/MessageObject;->isVideoMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 1619
    const/16 v28, 0x0

    .line 1620
    .restart local v28    # "duration":I
    const/16 v20, 0x0

    .restart local v20    # "a":I
    :goto_21
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_55

    .line 1621
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 1622
    .restart local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    move-object/from16 v0, v22

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    if-eqz v4, :cond_56

    .line 1623
    move-object/from16 v0, v22

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:I

    move/from16 v28, v0

    .line 1627
    .end local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_55
    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    add-int/lit8 v6, v28, 0x1

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, v38

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_1d

    .line 1620
    .restart local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_56
    add-int/lit8 v20, v20, 0x1

    goto :goto_21

    .line 1664
    .end local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    .end local v28    # "duration":I
    .end local v40    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .restart local v5    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .restart local v7    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;
    .restart local v12    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .restart local v42    # "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .restart local v46    # "random_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_57
    :try_start_a
    move-object/from16 v0, p1

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;->message:Ljava/lang/String;

    .line 1665
    move-object/from16 v0, v49

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;->contacts:Ljava/util/ArrayList;

    .line 1666
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputMediaEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaEmpty;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    .line 1667
    move-object/from16 v0, v46

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;->random_id:Ljava/util/ArrayList;

    .line 1668
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v4}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2174
    .end local v5    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v7    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;
    .end local v20    # "a":I
    .end local v42    # "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v46    # "random_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :catch_2
    move-exception v29

    goto/16 :goto_7

    .line 1670
    .restart local v5    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .restart local v42    # "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :cond_58
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;-><init>()V

    .line 1671
    .local v7, "reqSend":Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;
    move-object/from16 v0, p1

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->message:Ljava/lang/String;

    .line 1672
    if-nez p14, :cond_5d

    const/4 v4, 0x1

    :goto_22
    iput-boolean v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->clear_draft:Z

    .line 1673
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    if-eqz v4, :cond_59

    .line 1674
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v6, "Notifications"

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "silent_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p8

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-interface {v4, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->silent:Z

    .line 1676
    :cond_59
    move-object/from16 v0, v48

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1677
    move-object/from16 v0, v38

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v8, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->random_id:J

    .line 1678
    if-eqz p11, :cond_5a

    .line 1679
    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->flags:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->flags:I

    .line 1680
    invoke-virtual/range {p11 .. p11}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->reply_to_msg_id:I

    .line 1682
    :cond_5a
    if-nez p13, :cond_5b

    .line 1683
    const/4 v4, 0x1

    iput-boolean v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->no_webpage:Z

    .line 1685
    :cond_5b
    if-eqz p15, :cond_5c

    invoke-virtual/range {p15 .. p15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5c

    .line 1686
    move-object/from16 v0, p15

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->entities:Ljava/util/ArrayList;

    .line 1687
    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->flags:I

    or-int/lit8 v4, v4, 0x8

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->flags:I

    .line 1689
    :cond_5c
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v4}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    .line 1690
    if-nez p14, :cond_0

    .line 1691
    const/4 v4, 0x0

    move-wide/from16 v0, p8

    invoke-static {v0, v1, v4}, Lorg/telegram/messenger/query/DraftQuery;->cleanDraft(JZ)V

    goto/16 :goto_0

    .line 1672
    :cond_5d
    const/4 v4, 0x0

    goto :goto_22

    .line 1696
    .end local v7    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;
    :cond_5e
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;-><init>()V

    .line 1697
    .local v7, "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;
    move-object/from16 v0, v38

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->ttl:I

    .line 1698
    if-eqz p15, :cond_5f

    invoke-virtual/range {p15 .. p15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5f

    .line 1699
    move-object/from16 v0, p15

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->entities:Ljava/util/ArrayList;

    .line 1700
    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    or-int/lit16 v4, v4, 0x80

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    .line 1702
    :cond_5f
    if-eqz p11, :cond_60

    move-object/from16 v0, p11

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-eqz v4, :cond_60

    .line 1703
    move-object/from16 v0, p11

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v8, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->reply_to_random_id:J

    .line 1704
    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    or-int/lit8 v4, v4, 0x8

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    .line 1706
    :cond_60
    if-eqz p17, :cond_61

    const-string/jumbo v4, "bot_name"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_61

    .line 1707
    const-string/jumbo v4, "bot_name"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->via_bot_name:Ljava/lang/String;

    .line 1708
    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    or-int/lit16 v4, v4, 0x800

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    .line 1710
    :cond_61
    move-object/from16 v0, v38

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v8, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->random_id:J

    .line 1711
    move-object/from16 v0, p1

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->message:Ljava/lang/String;

    .line 1712
    if-eqz p12, :cond_62

    move-object/from16 v0, p12

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    if-eqz v4, :cond_62

    .line 1713
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaWebPage;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaWebPage;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    .line 1714
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p12

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->url:Ljava/lang/String;

    .line 1715
    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    or-int/lit16 v4, v4, 0x200

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    .line 1719
    :goto_23
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v6

    iget-object v8, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v9, v16

    invoke-virtual/range {v6 .. v12}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    .line 1720
    if-nez p14, :cond_0

    .line 1721
    const/4 v4, 0x0

    move-wide/from16 v0, p8

    invoke-static {v0, v1, v4}, Lorg/telegram/messenger/query/DraftQuery;->cleanDraft(JZ)V

    goto/16 :goto_0

    .line 1717
    :cond_62
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaEmpty;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    goto :goto_23

    .line 1724
    .end local v7    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;
    :cond_63
    const/4 v4, 0x1

    move/from16 v0, v54

    if-lt v0, v4, :cond_64

    const/4 v4, 0x3

    move/from16 v0, v54

    if-le v0, v4, :cond_66

    :cond_64
    const/4 v4, 0x5

    move/from16 v0, v54

    if-lt v0, v4, :cond_65

    const/16 v4, 0x8

    move/from16 v0, v54

    if-le v0, v4, :cond_66

    :cond_65
    const/16 v4, 0x9

    move/from16 v0, v54

    if-ne v0, v4, :cond_b3

    if-eqz v16, :cond_b3

    .line 1725
    :cond_66
    if-nez v16, :cond_93

    .line 1726
    const/16 v31, 0x0

    .line 1727
    .local v31, "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    const/16 v27, 0x0

    .line 1728
    .local v27, "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    const/4 v4, 0x1

    move/from16 v0, v54

    if-ne v0, v4, :cond_69

    .line 1729
    move-object/from16 v0, p2

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    if-eqz v4, :cond_68

    .line 1730
    new-instance v31, Lorg/telegram/tgnet/TLRPC$TL_inputMediaVenue;

    .end local v31    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    invoke-direct/range {v31 .. v31}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaVenue;-><init>()V

    .line 1731
    .restart local v31    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    move-object/from16 v0, p2

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->address:Ljava/lang/String;

    move-object/from16 v0, v31

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->address:Ljava/lang/String;

    .line 1732
    move-object/from16 v0, p2

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;

    move-object/from16 v0, v31

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->title:Ljava/lang/String;

    .line 1733
    move-object/from16 v0, p2

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->provider:Ljava/lang/String;

    move-object/from16 v0, v31

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->provider:Ljava/lang/String;

    .line 1734
    move-object/from16 v0, p2

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->venue_id:Ljava/lang/String;

    move-object/from16 v0, v31

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->venue_id:Ljava/lang/String;

    .line 1738
    :goto_24
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputGeoPoint;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputGeoPoint;-><init>()V

    move-object/from16 v0, v31

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

    .line 1739
    move-object/from16 v0, v31

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

    move-object/from16 v0, p2

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v8, v6, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->lat:D

    .line 1740
    move-object/from16 v0, v31

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

    move-object/from16 v0, p2

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v8, v6, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->_long:D

    .line 1858
    :cond_67
    :goto_25
    if-eqz v49, :cond_86

    .line 1859
    new-instance v47, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;

    invoke-direct/range {v47 .. v47}, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;-><init>()V

    .line 1860
    .local v47, "request":Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;
    new-instance v46, Ljava/util/ArrayList;

    invoke-direct/range {v46 .. v46}, Ljava/util/ArrayList;-><init>()V

    .line 1861
    .restart local v46    # "random_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/16 v20, 0x0

    .restart local v20    # "a":I
    :goto_26
    invoke-virtual/range {v49 .. v49}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_83

    .line 1862
    sget-object v4, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v4}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1861
    add-int/lit8 v20, v20, 0x1

    goto :goto_26

    .line 1736
    .end local v20    # "a":I
    .end local v46    # "random_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v47    # "request":Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;
    :cond_68
    new-instance v31, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGeoPoint;

    .end local v31    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    invoke-direct/range {v31 .. v31}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGeoPoint;-><init>()V

    .restart local v31    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    goto :goto_24

    .line 1741
    :cond_69
    const/4 v4, 0x2

    move/from16 v0, v54

    if-eq v0, v4, :cond_6a

    const/16 v4, 0x9

    move/from16 v0, v54

    if-ne v0, v4, :cond_71

    if-eqz p3, :cond_71

    .line 1742
    :cond_6a
    move-object/from16 v0, p3

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->access_hash:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-nez v4, :cond_6f

    .line 1743
    new-instance v31, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedPhoto;

    .end local v31    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    invoke-direct/range {v31 .. v31}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedPhoto;-><init>()V

    .line 1744
    .restart local v31    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->caption:Ljava/lang/String;

    if-eqz v4, :cond_6b

    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->caption:Ljava/lang/String;

    :goto_27
    move-object/from16 v0, v31

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->caption:Ljava/lang/String;

    .line 1745
    if-eqz p17, :cond_6d

    .line 1746
    const-string/jumbo v4, "masks"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/String;

    .line 1747
    .local v35, "masks":Ljava/lang/String;
    if-eqz v35, :cond_6d

    .line 1748
    new-instance v52, Lorg/telegram/tgnet/SerializedData;

    invoke-static/range {v35 .. v35}, Lorg/telegram/messenger/Utilities;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v4

    move-object/from16 v0, v52

    invoke-direct {v0, v4}, Lorg/telegram/tgnet/SerializedData;-><init>([B)V

    .line 1749
    .local v52, "serializedData":Lorg/telegram/tgnet/SerializedData;
    const/4 v4, 0x0

    move-object/from16 v0, v52

    invoke-virtual {v0, v4}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v26

    .line 1750
    .local v26, "count":I
    const/16 v20, 0x0

    .restart local v20    # "a":I
    :goto_28
    move/from16 v0, v20

    move/from16 v1, v26

    if-ge v0, v1, :cond_6c

    .line 1751
    move-object/from16 v0, v31

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->stickers:Ljava/util/ArrayList;

    const/4 v6, 0x0

    move-object/from16 v0, v52

    invoke-virtual {v0, v6}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v6

    const/4 v8, 0x0

    move-object/from16 v0, v52

    invoke-static {v0, v6, v8}, Lorg/telegram/tgnet/TLRPC$InputDocument;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputDocument;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1750
    add-int/lit8 v20, v20, 0x1

    goto :goto_28

    .line 1744
    .end local v20    # "a":I
    .end local v26    # "count":I
    .end local v35    # "masks":Ljava/lang/String;
    .end local v52    # "serializedData":Lorg/telegram/tgnet/SerializedData;
    :cond_6b
    const-string/jumbo v4, ""

    goto :goto_27

    .line 1753
    .restart local v20    # "a":I
    .restart local v26    # "count":I
    .restart local v35    # "masks":Ljava/lang/String;
    .restart local v52    # "serializedData":Lorg/telegram/tgnet/SerializedData;
    :cond_6c
    move-object/from16 v0, v31

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    or-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v31

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    .line 1756
    .end local v20    # "a":I
    .end local v26    # "count":I
    .end local v35    # "masks":Ljava/lang/String;
    .end local v52    # "serializedData":Lorg/telegram/tgnet/SerializedData;
    :cond_6d
    new-instance v27, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    .end local v27    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;-><init>(Lorg/telegram/messenger/SendMessagesHelper;)V

    .line 1757
    .restart local v27    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    move-object/from16 v0, v43

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    .line 1758
    const/4 v4, 0x0

    move-object/from16 v0, v27

    iput v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    .line 1759
    move-object/from16 v0, v27

    iput-object v12, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    .line 1760
    if-eqz p10, :cond_6e

    invoke-virtual/range {p10 .. p10}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_6e

    const-string/jumbo v4, "http"

    move-object/from16 v0, p10

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6e

    .line 1761
    move-object/from16 v0, p10

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->httpLocation:Ljava/lang/String;

    goto/16 :goto_25

    .line 1763
    :cond_6e
    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    move-object/from16 v0, p3

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v0, v27

    iput-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto/16 :goto_25

    .line 1766
    :cond_6f
    new-instance v36, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;

    invoke-direct/range {v36 .. v36}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;-><init>()V

    .line 1767
    .local v36, "media":Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputPhoto;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoto;-><init>()V

    move-object/from16 v0, v36

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    .line 1768
    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->caption:Ljava/lang/String;

    if-eqz v4, :cond_70

    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->caption:Ljava/lang/String;

    :goto_29
    move-object/from16 v0, v36

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;->caption:Ljava/lang/String;

    .line 1769
    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    move-object/from16 v0, p3

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->id:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputPhoto;->id:J

    .line 1770
    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    move-object/from16 v0, p3

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->access_hash:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputPhoto;->access_hash:J

    .line 1771
    move-object/from16 v31, v36

    .line 1772
    goto/16 :goto_25

    .line 1768
    :cond_70
    const-string/jumbo v4, ""

    goto :goto_29

    .line 1773
    .end local v36    # "media":Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;
    :cond_71
    const/4 v4, 0x3

    move/from16 v0, v54

    if-ne v0, v4, :cond_76

    .line 1774
    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-nez v4, :cond_74

    .line 1775
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v4, :cond_72

    .line 1776
    new-instance v31, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedThumbDocument;

    .end local v31    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    invoke-direct/range {v31 .. v31}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedThumbDocument;-><init>()V

    .line 1780
    .restart local v31    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    :goto_2a
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    if-eqz v4, :cond_73

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    :goto_2b
    move-object/from16 v0, v31

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->caption:Ljava/lang/String;

    .line 1781
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    move-object/from16 v0, v31

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->mime_type:Ljava/lang/String;

    .line 1782
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    move-object/from16 v0, v31

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->attributes:Ljava/util/ArrayList;

    .line 1783
    new-instance v27, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    .end local v27    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;-><init>(Lorg/telegram/messenger/SendMessagesHelper;)V

    .line 1784
    .restart local v27    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    move-object/from16 v0, v43

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    .line 1785
    const/4 v4, 0x1

    move-object/from16 v0, v27

    iput v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    .line 1786
    move-object/from16 v0, v27

    iput-object v12, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    .line 1787
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v0, v27

    iput-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 1788
    move-object/from16 v0, p6

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    .line 1789
    move-object/from16 v0, p4

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    goto/16 :goto_25

    .line 1778
    :cond_72
    new-instance v31, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;

    .end local v31    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    invoke-direct/range {v31 .. v31}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;-><init>()V

    .restart local v31    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    goto :goto_2a

    .line 1780
    :cond_73
    const-string/jumbo v4, ""

    goto :goto_2b

    .line 1791
    :cond_74
    new-instance v36, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;

    invoke-direct/range {v36 .. v36}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;-><init>()V

    .line 1792
    .local v36, "media":Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;-><init>()V

    move-object/from16 v0, v36

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    .line 1793
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    if-eqz v4, :cond_75

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    :goto_2c
    move-object/from16 v0, v36

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->caption:Ljava/lang/String;

    .line 1794
    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->id:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    .line 1795
    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputDocument;->access_hash:J

    .line 1796
    move-object/from16 v31, v36

    .line 1797
    goto/16 :goto_25

    .line 1793
    :cond_75
    const-string/jumbo v4, ""

    goto :goto_2c

    .line 1798
    .end local v36    # "media":Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;
    :cond_76
    const/4 v4, 0x6

    move/from16 v0, v54

    if-ne v0, v4, :cond_77

    .line 1799
    new-instance v31, Lorg/telegram/tgnet/TLRPC$TL_inputMediaContact;

    .end local v31    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    invoke-direct/range {v31 .. v31}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaContact;-><init>()V

    .line 1800
    .restart local v31    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    move-object/from16 v0, p5

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    move-object/from16 v0, v31

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->phone_number:Ljava/lang/String;

    .line 1801
    move-object/from16 v0, p5

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    move-object/from16 v0, v31

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->first_name:Ljava/lang/String;

    .line 1802
    move-object/from16 v0, p5

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    move-object/from16 v0, v31

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->last_name:Ljava/lang/String;

    goto/16 :goto_25

    .line 1803
    :cond_77
    const/4 v4, 0x7

    move/from16 v0, v54

    if-eq v0, v4, :cond_78

    const/16 v4, 0x9

    move/from16 v0, v54

    if-ne v0, v4, :cond_7f

    .line 1804
    :cond_78
    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-nez v4, :cond_7d

    .line 1805
    if-nez v16, :cond_7a

    if-eqz v43, :cond_7a

    invoke-virtual/range {v43 .. v43}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_7a

    const-string/jumbo v4, "http"

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7a

    if-eqz p17, :cond_7a

    .line 1806
    new-instance v31, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGifExternal;

    .end local v31    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    invoke-direct/range {v31 .. v31}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGifExternal;-><init>()V

    .line 1807
    .restart local v31    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    const-string/jumbo v4, "url"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v6, "\\|"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 1808
    .local v21, "args":[Ljava/lang/String;
    move-object/from16 v0, v21

    array-length v4, v0

    const/4 v6, 0x2

    if-ne v4, v6, :cond_79

    .line 1809
    move-object/from16 v0, v31

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGifExternal;

    move-object v4, v0

    const/4 v6, 0x0

    aget-object v6, v21, v6

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGifExternal;->url:Ljava/lang/String;

    .line 1810
    const/4 v4, 0x1

    aget-object v4, v21, v4

    move-object/from16 v0, v31

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->q:Ljava/lang/String;

    .line 1825
    .end local v21    # "args":[Ljava/lang/String;
    :cond_79
    :goto_2d
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    move-object/from16 v0, v31

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->mime_type:Ljava/lang/String;

    .line 1826
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    move-object/from16 v0, v31

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->attributes:Ljava/util/ArrayList;

    .line 1827
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    if-eqz v4, :cond_7c

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    :goto_2e
    move-object/from16 v0, v31

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->caption:Ljava/lang/String;

    goto/16 :goto_25

    .line 1813
    :cond_7a
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v4, :cond_7b

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_fileLocation;

    if-eqz v4, :cond_7b

    .line 1814
    new-instance v31, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedThumbDocument;

    .end local v31    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    invoke-direct/range {v31 .. v31}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedThumbDocument;-><init>()V

    .line 1818
    .restart local v31    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    :goto_2f
    new-instance v27, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    .end local v27    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;-><init>(Lorg/telegram/messenger/SendMessagesHelper;)V

    .line 1819
    .restart local v27    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    move-object/from16 v0, v43

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    .line 1820
    const/4 v4, 0x2

    move-object/from16 v0, v27

    iput v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    .line 1821
    move-object/from16 v0, v27

    iput-object v12, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    .line 1822
    move-object/from16 v0, p6

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    .line 1823
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v0, v27

    iput-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto :goto_2d

    .line 1816
    :cond_7b
    new-instance v31, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;

    .end local v31    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    invoke-direct/range {v31 .. v31}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;-><init>()V

    .restart local v31    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    goto :goto_2f

    .line 1827
    :cond_7c
    const-string/jumbo v4, ""

    goto :goto_2e

    .line 1829
    :cond_7d
    new-instance v36, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;

    invoke-direct/range {v36 .. v36}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;-><init>()V

    .line 1830
    .restart local v36    # "media":Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;-><init>()V

    move-object/from16 v0, v36

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    .line 1831
    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->id:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    .line 1832
    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputDocument;->access_hash:J

    .line 1833
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    if-eqz v4, :cond_7e

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    :goto_30
    move-object/from16 v0, v36

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->caption:Ljava/lang/String;

    .line 1834
    move-object/from16 v31, v36

    .line 1835
    goto/16 :goto_25

    .line 1833
    :cond_7e
    const-string/jumbo v4, ""

    goto :goto_30

    .line 1836
    .end local v36    # "media":Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;
    :cond_7f
    const/16 v4, 0x8

    move/from16 v0, v54

    if-ne v0, v4, :cond_67

    .line 1837
    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-nez v4, :cond_81

    .line 1838
    new-instance v31, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;

    .end local v31    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    invoke-direct/range {v31 .. v31}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;-><init>()V

    .line 1839
    .restart local v31    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    move-object/from16 v0, v31

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->mime_type:Ljava/lang/String;

    .line 1840
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    move-object/from16 v0, v31

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->attributes:Ljava/util/ArrayList;

    .line 1841
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    if-eqz v4, :cond_80

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    :goto_31
    move-object/from16 v0, v31

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->caption:Ljava/lang/String;

    .line 1842
    new-instance v27, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    .end local v27    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;-><init>(Lorg/telegram/messenger/SendMessagesHelper;)V

    .line 1843
    .restart local v27    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    const/4 v4, 0x3

    move-object/from16 v0, v27

    iput v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    .line 1844
    move-object/from16 v0, v27

    iput-object v12, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    .line 1845
    move-object/from16 v0, p6

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    goto/16 :goto_25

    .line 1841
    :cond_80
    const-string/jumbo v4, ""

    goto :goto_31

    .line 1847
    :cond_81
    new-instance v36, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;

    invoke-direct/range {v36 .. v36}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;-><init>()V

    .line 1848
    .restart local v36    # "media":Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;-><init>()V

    move-object/from16 v0, v36

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    .line 1849
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    if-eqz v4, :cond_82

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    :goto_32
    move-object/from16 v0, v36

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->caption:Ljava/lang/String;

    .line 1850
    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->id:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    .line 1851
    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputDocument;->access_hash:J

    .line 1852
    move-object/from16 v31, v36

    goto/16 :goto_25

    .line 1849
    :cond_82
    const-string/jumbo v4, ""

    goto :goto_32

    .line 1864
    .end local v36    # "media":Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;
    .restart local v20    # "a":I
    .restart local v46    # "random_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v47    # "request":Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;
    :cond_83
    move-object/from16 v0, v49

    move-object/from16 v1, v47

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;->contacts:Ljava/util/ArrayList;

    .line 1865
    move-object/from16 v0, v31

    move-object/from16 v1, v47

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    .line 1866
    move-object/from16 v0, v46

    move-object/from16 v1, v47

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;->random_id:Ljava/util/ArrayList;

    .line 1867
    const-string/jumbo v4, ""

    move-object/from16 v0, v47

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;->message:Ljava/lang/String;

    .line 1868
    if-eqz v27, :cond_84

    .line 1869
    move-object/from16 v0, v47

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    .line 1871
    :cond_84
    move-object/from16 v7, v47

    .line 1872
    .local v7, "reqSend":Lorg/telegram/tgnet/TLObject;
    if-nez p14, :cond_85

    .line 1873
    const/4 v4, 0x0

    move-wide/from16 v0, p8

    invoke-static {v0, v1, v4}, Lorg/telegram/messenger/query/DraftQuery;->cleanDraft(JZ)V

    .line 1892
    .end local v20    # "a":I
    .end local v46    # "random_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v47    # "request":Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;
    :cond_85
    :goto_33
    const/4 v4, 0x1

    move/from16 v0, v54

    if-ne v0, v4, :cond_8a

    .line 1893
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v4}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1876
    .end local v7    # "reqSend":Lorg/telegram/tgnet/TLObject;
    :cond_86
    new-instance v47, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    invoke-direct/range {v47 .. v47}, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;-><init>()V

    .line 1877
    .local v47, "request":Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;
    move-object/from16 v0, v48

    move-object/from16 v1, v47

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1878
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    if-eqz v4, :cond_87

    .line 1879
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v6, "Notifications"

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "silent_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p8

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-interface {v4, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    move-object/from16 v0, v47

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->silent:Z

    .line 1881
    :cond_87
    move-object/from16 v0, v38

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    move-object/from16 v0, v47

    iput-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->random_id:J

    .line 1882
    move-object/from16 v0, v31

    move-object/from16 v1, v47

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    .line 1883
    if-eqz p11, :cond_88

    .line 1884
    move-object/from16 v0, v47

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->flags:I

    or-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v47

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->flags:I

    .line 1885
    invoke-virtual/range {p11 .. p11}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    move-object/from16 v0, v47

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->reply_to_msg_id:I

    .line 1887
    :cond_88
    if-eqz v27, :cond_89

    .line 1888
    move-object/from16 v0, v47

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    .line 1890
    :cond_89
    move-object/from16 v7, v47

    .restart local v7    # "reqSend":Lorg/telegram/tgnet/TLObject;
    goto :goto_33

    .line 1894
    .end local v47    # "request":Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;
    :cond_8a
    const/4 v4, 0x2

    move/from16 v0, v54

    if-ne v0, v4, :cond_8c

    .line 1895
    move-object/from16 v0, p3

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->access_hash:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-nez v4, :cond_8b

    .line 1896
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    goto/16 :goto_0

    .line 1898
    :cond_8b
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v4}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1900
    :cond_8c
    const/4 v4, 0x3

    move/from16 v0, v54

    if-ne v0, v4, :cond_8e

    .line 1901
    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-nez v4, :cond_8d

    .line 1902
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    goto/16 :goto_0

    .line 1904
    :cond_8d
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v4}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1906
    :cond_8e
    const/4 v4, 0x6

    move/from16 v0, v54

    if-ne v0, v4, :cond_8f

    .line 1907
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v4}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1908
    :cond_8f
    const/4 v4, 0x7

    move/from16 v0, v54

    if-ne v0, v4, :cond_91

    .line 1909
    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-nez v4, :cond_90

    if-eqz v27, :cond_90

    .line 1910
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    goto/16 :goto_0

    .line 1912
    :cond_90
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v7, v12, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1914
    :cond_91
    const/16 v4, 0x8

    move/from16 v0, v54

    if-ne v0, v4, :cond_0

    .line 1915
    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-nez v4, :cond_92

    .line 1916
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    goto/16 :goto_0

    .line 1918
    :cond_92
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v4}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1923
    .end local v7    # "reqSend":Lorg/telegram/tgnet/TLObject;
    .end local v27    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    .end local v31    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    :cond_93
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;-><init>()V

    .line 1924
    .local v7, "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;
    move-object/from16 v0, v38

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->ttl:I

    .line 1925
    if-eqz p15, :cond_94

    invoke-virtual/range {p15 .. p15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_94

    .line 1926
    move-object/from16 v0, p15

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->entities:Ljava/util/ArrayList;

    .line 1927
    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    or-int/lit16 v4, v4, 0x80

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    .line 1929
    :cond_94
    if-eqz p11, :cond_95

    move-object/from16 v0, p11

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-eqz v4, :cond_95

    .line 1930
    move-object/from16 v0, p11

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v8, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->reply_to_random_id:J

    .line 1931
    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    or-int/lit8 v4, v4, 0x8

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    .line 1933
    :cond_95
    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    or-int/lit16 v4, v4, 0x200

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    .line 1934
    if-eqz p17, :cond_96

    const-string/jumbo v4, "bot_name"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_96

    .line 1935
    const-string/jumbo v4, "bot_name"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->via_bot_name:Ljava/lang/String;

    .line 1936
    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    or-int/lit16 v4, v4, 0x800

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    .line 1938
    :cond_96
    move-object/from16 v0, v38

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v8, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->random_id:J

    .line 1939
    const-string/jumbo v4, ""

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->message:Ljava/lang/String;

    .line 1940
    const/4 v4, 0x1

    move/from16 v0, v54

    if-ne v0, v4, :cond_99

    .line 1941
    move-object/from16 v0, p2

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    if-eqz v4, :cond_98

    .line 1942
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVenue;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVenue;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    .line 1943
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p2

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->address:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->address:Ljava/lang/String;

    .line 1944
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p2

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->title:Ljava/lang/String;

    .line 1945
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p2

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->provider:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->provider:Ljava/lang/String;

    .line 1946
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p2

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->venue_id:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->venue_id:Ljava/lang/String;

    .line 1950
    :goto_34
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p2

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v8, v6, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->lat:D

    .line 1951
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p2

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v8, v6, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->_long:D

    .line 1952
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v6

    iget-object v8, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v9, v16

    invoke-virtual/range {v6 .. v12}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    .line 2127
    :cond_97
    :goto_35
    if-nez p14, :cond_0

    .line 2128
    const/4 v4, 0x0

    move-wide/from16 v0, p8

    invoke-static {v0, v1, v4}, Lorg/telegram/messenger/query/DraftQuery;->cleanDraft(JZ)V

    goto/16 :goto_0

    .line 1948
    :cond_98
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaGeoPoint;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaGeoPoint;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    goto :goto_34

    .line 1953
    :cond_99
    const/4 v4, 0x2

    move/from16 v0, v54

    if-eq v0, v4, :cond_9a

    const/16 v4, 0x9

    move/from16 v0, v54

    if-ne v0, v4, :cond_9f

    if-eqz p3, :cond_9f

    .line 1954
    :cond_9a
    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 1955
    .local v53, "small":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    move-object/from16 v0, p3

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 1956
    .local v24, "big":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    invoke-static/range {v53 .. v53}, Lorg/telegram/messenger/ImageLoader;->fillPhotoSizeWithBytes(Lorg/telegram/tgnet/TLRPC$PhotoSize;)V

    .line 1957
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    .line 1958
    iget-object v6, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->caption:Ljava/lang/String;

    if-eqz v4, :cond_9b

    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->caption:Ljava/lang/String;

    :goto_36
    iput-object v4, v6, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->caption:Ljava/lang/String;

    .line 1959
    move-object/from16 v0, v53

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    if-eqz v4, :cond_9c

    .line 1960
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;

    move-object/from16 v0, v53

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;->thumb:[B

    .line 1964
    :goto_37
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, v53

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    .line 1965
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, v53

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    .line 1966
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, v24

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->w:I

    .line 1967
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, v24

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->h:I

    .line 1968
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, v24

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->size:I

    .line 1969
    move-object/from16 v0, v24

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->key:[B

    if-nez v4, :cond_9e

    .line 1970
    new-instance v27, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;-><init>(Lorg/telegram/messenger/SendMessagesHelper;)V

    .line 1971
    .restart local v27    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    move-object/from16 v0, v43

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    .line 1972
    move-object/from16 v0, v27

    iput-object v7, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    .line 1973
    const/4 v4, 0x0

    move-object/from16 v0, v27

    iput v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    .line 1974
    move-object/from16 v0, v27

    iput-object v12, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    .line 1975
    move-object/from16 v0, v16

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 1976
    if-eqz p10, :cond_9d

    invoke-virtual/range {p10 .. p10}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_9d

    const-string/jumbo v4, "http"

    move-object/from16 v0, p10

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9d

    .line 1977
    move-object/from16 v0, p10

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->httpLocation:Ljava/lang/String;

    .line 1981
    :goto_38
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    goto/16 :goto_35

    .line 1958
    .end local v27    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    :cond_9b
    const-string/jumbo v4, ""

    goto/16 :goto_36

    .line 1962
    :cond_9c
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;

    const/4 v6, 0x0

    new-array v6, v6, [B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;->thumb:[B

    goto/16 :goto_37

    .line 1979
    .restart local v27    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    :cond_9d
    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    move-object/from16 v0, p3

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v0, v27

    iput-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto :goto_38

    .line 1983
    .end local v27    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    :cond_9e
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;-><init>()V

    .line 1984
    .local v10, "encryptedFile":Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;
    move-object/from16 v0, v24

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iput-wide v8, v10, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;->id:J

    .line 1985
    move-object/from16 v0, v24

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->secret:J

    iput-wide v8, v10, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;->access_hash:J

    .line 1986
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, v24

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$FileLocation;->key:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B

    .line 1987
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, v24

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$FileLocation;->iv:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B

    .line 1988
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v6

    iget-object v8, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v11, 0x0

    move-object/from16 v9, v16

    invoke-virtual/range {v6 .. v12}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    goto/16 :goto_35

    .line 1990
    .end local v10    # "encryptedFile":Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;
    .end local v24    # "big":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .end local v53    # "small":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_9f
    const/4 v4, 0x3

    move/from16 v0, v54

    if-ne v0, v4, :cond_a7

    .line 1991
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-static {v4}, Lorg/telegram/messenger/ImageLoader;->fillPhotoSizeWithBytes(Lorg/telegram/tgnet/TLRPC$PhotoSize;)V

    .line 1992
    invoke-static/range {p6 .. p6}, Lorg/telegram/messenger/MessageObject;->isNewGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v4

    if-eqz v4, :cond_a2

    .line 1993
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    .line 1994
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->attributes:Ljava/util/ArrayList;

    .line 1995
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v4, :cond_a1

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    if-eqz v4, :cond_a1

    .line 1996
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;->thumb:[B

    .line 2008
    :goto_39
    iget-object v6, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    if-eqz v4, :cond_a4

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    :goto_3a
    iput-object v4, v6, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->caption:Ljava/lang/String;

    .line 2009
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    const-string/jumbo v6, "video/mp4"

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->mime_type:Ljava/lang/String;

    .line 2010
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->size:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->size:I

    .line 2011
    const/16 v20, 0x0

    .restart local v20    # "a":I
    :goto_3b
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_a0

    .line 2012
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 2013
    .restart local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    move-object/from16 v0, v22

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    if-eqz v4, :cond_a5

    .line 2014
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, v22

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->w:I

    .line 2015
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, v22

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->h:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->h:I

    .line 2016
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, v22

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->duration:I

    .line 2020
    .end local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_a0
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    .line 2021
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    .line 2022
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->key:[B

    if-nez v4, :cond_a6

    .line 2023
    new-instance v27, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;-><init>(Lorg/telegram/messenger/SendMessagesHelper;)V

    .line 2024
    .restart local v27    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    move-object/from16 v0, v43

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    .line 2025
    move-object/from16 v0, v27

    iput-object v7, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    .line 2026
    const/4 v4, 0x1

    move-object/from16 v0, v27

    iput v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    .line 2027
    move-object/from16 v0, v27

    iput-object v12, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    .line 2028
    move-object/from16 v0, v16

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 2029
    move-object/from16 v0, p6

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    .line 2030
    move-object/from16 v0, p4

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    .line 2031
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    goto/16 :goto_35

    .line 1998
    .end local v20    # "a":I
    .end local v27    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    :cond_a1
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;

    const/4 v6, 0x0

    new-array v6, v6, [B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;->thumb:[B

    goto/16 :goto_39

    .line 2001
    :cond_a2
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    .line 2002
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v4, :cond_a3

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    if-eqz v4, :cond_a3

    .line 2003
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo;->thumb:[B

    goto/16 :goto_39

    .line 2005
    :cond_a3
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo;

    const/4 v6, 0x0

    new-array v6, v6, [B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo;->thumb:[B

    goto/16 :goto_39

    .line 2008
    :cond_a4
    const-string/jumbo v4, ""

    goto/16 :goto_3a

    .line 2011
    .restart local v20    # "a":I
    .restart local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_a5
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_3b

    .line 2033
    .end local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_a6
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;-><init>()V

    .line 2034
    .restart local v10    # "encryptedFile":Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;
    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->id:J

    iput-wide v8, v10, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;->id:J

    .line 2035
    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    iput-wide v8, v10, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;->access_hash:J

    .line 2036
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->key:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B

    .line 2037
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->iv:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B

    .line 2038
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v6

    iget-object v8, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v11, 0x0

    move-object/from16 v9, v16

    invoke-virtual/range {v6 .. v12}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    goto/16 :goto_35

    .line 2040
    .end local v10    # "encryptedFile":Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;
    .end local v20    # "a":I
    :cond_a7
    const/4 v4, 0x6

    move/from16 v0, v54

    if-ne v0, v4, :cond_a8

    .line 2041
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaContact;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaContact;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    .line 2042
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p5

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->phone_number:Ljava/lang/String;

    .line 2043
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p5

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->first_name:Ljava/lang/String;

    .line 2044
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p5

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->last_name:Ljava/lang/String;

    .line 2045
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p5

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->user_id:I

    .line 2046
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v13

    iget-object v15, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v14, v7

    move-object/from16 v19, v12

    invoke-virtual/range {v13 .. v19}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    goto/16 :goto_35

    .line 2047
    :cond_a8
    const/4 v4, 0x7

    move/from16 v0, v54

    if-eq v0, v4, :cond_a9

    const/16 v4, 0x9

    move/from16 v0, v54

    if-ne v0, v4, :cond_b0

    if-eqz p6, :cond_b0

    .line 2048
    :cond_a9
    invoke-static/range {p6 .. p6}, Lorg/telegram/messenger/MessageObject;->isStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v4

    if-eqz v4, :cond_ab

    .line 2049
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    .line 2050
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->id:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->id:J

    .line 2051
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->date:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->date:I

    .line 2052
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->access_hash:J

    .line 2053
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->mime_type:Ljava/lang/String;

    .line 2054
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->size:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->size:I

    .line 2055
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->dc_id:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->dc_id:I

    .line 2056
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->attributes:Ljava/util/ArrayList;

    .line 2057
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-nez v4, :cond_aa

    .line 2058
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;

    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;-><init>()V

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 2059
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-string/jumbo v6, "s"

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    .line 2063
    :goto_3c
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v13

    iget-object v15, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v14, v7

    move-object/from16 v19, v12

    invoke-virtual/range {v13 .. v19}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    goto/16 :goto_35

    .line 2061
    :cond_aa
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    goto :goto_3c

    .line 2065
    :cond_ab
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-static {v4}, Lorg/telegram/messenger/ImageLoader;->fillPhotoSizeWithBytes(Lorg/telegram/tgnet/TLRPC$PhotoSize;)V

    .line 2066
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    .line 2067
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->attributes:Ljava/util/ArrayList;

    .line 2068
    iget-object v6, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    if-eqz v4, :cond_ad

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    :goto_3d
    iput-object v4, v6, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->caption:Ljava/lang/String;

    .line 2069
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v4, :cond_ae

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    if-eqz v4, :cond_ae

    .line 2070
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;->thumb:[B

    .line 2071
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    .line 2072
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    .line 2078
    :goto_3e
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->size:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->size:I

    .line 2079
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->mime_type:Ljava/lang/String;

    .line 2081
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->key:[B

    if-nez v4, :cond_af

    .line 2082
    new-instance v27, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;-><init>(Lorg/telegram/messenger/SendMessagesHelper;)V

    .line 2083
    .restart local v27    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    move-object/from16 v0, v43

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    .line 2084
    move-object/from16 v0, v27

    iput-object v7, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    .line 2085
    const/4 v4, 0x2

    move-object/from16 v0, v27

    iput v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    .line 2086
    move-object/from16 v0, v27

    iput-object v12, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    .line 2087
    move-object/from16 v0, v16

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 2088
    if-eqz p10, :cond_ac

    invoke-virtual/range {p10 .. p10}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_ac

    const-string/jumbo v4, "http"

    move-object/from16 v0, p10

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_ac

    .line 2089
    move-object/from16 v0, p10

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->httpLocation:Ljava/lang/String;

    .line 2091
    :cond_ac
    move-object/from16 v0, p6

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    .line 2092
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    goto/16 :goto_35

    .line 2068
    .end local v27    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    :cond_ad
    const-string/jumbo v4, ""

    goto/16 :goto_3d

    .line 2074
    :cond_ae
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;

    const/4 v6, 0x0

    new-array v6, v6, [B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;->thumb:[B

    .line 2075
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    const/4 v6, 0x0

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    .line 2076
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    const/4 v6, 0x0

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    goto :goto_3e

    .line 2094
    :cond_af
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;-><init>()V

    .line 2095
    .restart local v10    # "encryptedFile":Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;
    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->id:J

    iput-wide v8, v10, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;->id:J

    .line 2096
    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    iput-wide v8, v10, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;->access_hash:J

    .line 2097
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->key:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B

    .line 2098
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->iv:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B

    .line 2099
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v6

    iget-object v8, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v11, 0x0

    move-object/from16 v9, v16

    invoke-virtual/range {v6 .. v12}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    goto/16 :goto_35

    .line 2102
    .end local v10    # "encryptedFile":Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;
    :cond_b0
    const/16 v4, 0x8

    move/from16 v0, v54

    if-ne v0, v4, :cond_97

    .line 2103
    new-instance v27, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;-><init>(Lorg/telegram/messenger/SendMessagesHelper;)V

    .line 2104
    .restart local v27    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    move-object/from16 v0, v16

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 2105
    move-object/from16 v0, v27

    iput-object v7, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    .line 2106
    move-object/from16 v0, v27

    iput-object v12, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    .line 2107
    move-object/from16 v0, p6

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    .line 2108
    const/4 v4, 0x3

    move-object/from16 v0, v27

    iput v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    .line 2110
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    .line 2111
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->attributes:Ljava/util/ArrayList;

    .line 2112
    iget-object v6, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    if-eqz v4, :cond_b1

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    :goto_3f
    iput-object v4, v6, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->caption:Ljava/lang/String;

    .line 2113
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v4, :cond_b2

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    if-eqz v4, :cond_b2

    .line 2114
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;->thumb:[B

    .line 2115
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    .line 2116
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    .line 2122
    :goto_40
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->mime_type:Ljava/lang/String;

    .line 2123
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->size:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->size:I

    .line 2124
    move-object/from16 v0, v43

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    .line 2125
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    goto/16 :goto_35

    .line 2112
    :cond_b1
    const-string/jumbo v4, ""

    goto :goto_3f

    .line 2118
    :cond_b2
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;

    const/4 v6, 0x0

    new-array v6, v6, [B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;->thumb:[B

    .line 2119
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    const/4 v6, 0x0

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    .line 2120
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    const/4 v6, 0x0

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    goto :goto_40

    .line 2131
    .end local v7    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;
    .end local v27    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    :cond_b3
    const/4 v4, 0x4

    move/from16 v0, v54

    if-ne v0, v4, :cond_b8

    .line 2132
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;-><init>()V

    .line 2133
    .local v7, "reqSend":Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;
    move-object/from16 v0, v48

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->to_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 2134
    move-object/from16 v0, p14

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->with_my_score:Z

    iput-boolean v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->with_my_score:Z

    .line 2135
    move-object/from16 v0, p14

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    if-eqz v4, :cond_b6

    .line 2136
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    move-object/from16 v0, p14

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    neg-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v25

    .line 2137
    .restart local v25    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->from_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 2138
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->from_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-object/from16 v0, p14

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    neg-int v6, v6

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:I

    .line 2139
    if-eqz v25, :cond_b4

    .line 2140
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->from_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-object/from16 v0, v25

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Chat;->access_hash:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputPeer;->access_hash:J

    .line 2145
    .end local v25    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_b4
    :goto_41
    move-object/from16 v0, p14

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    if-eqz v4, :cond_b5

    .line 2146
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v6, "Notifications"

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "silent_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p8

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-interface {v4, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->silent:Z

    .line 2148
    :cond_b5
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->random_id:Ljava/util/ArrayList;

    move-object/from16 v0, v38

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2149
    invoke-virtual/range {p14 .. p14}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    if-ltz v4, :cond_b7

    .line 2150
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->id:Ljava/util/ArrayList;

    invoke-virtual/range {p14 .. p14}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2154
    :goto_42
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v4}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2143
    :cond_b6
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->from_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto :goto_41

    .line 2152
    :cond_b7
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->id:Ljava/util/ArrayList;

    move-object/from16 v0, p14

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->fwd_msg_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_42

    .line 2155
    .end local v7    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;
    :cond_b8
    const/16 v4, 0x9

    move/from16 v0, v54

    if-ne v0, v4, :cond_0

    .line 2156
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;-><init>()V

    .line 2157
    .local v7, "reqSend":Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;
    move-object/from16 v0, v48

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 2158
    move-object/from16 v0, v38

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v8, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->random_id:J

    .line 2159
    if-eqz p11, :cond_b9

    .line 2160
    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->flags:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->flags:I

    .line 2161
    invoke-virtual/range {p11 .. p11}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->reply_to_msg_id:I

    .line 2163
    :cond_b9
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    if-eqz v4, :cond_ba

    .line 2164
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v6, "Notifications"

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "silent_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p8

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-interface {v4, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->silent:Z

    .line 2166
    :cond_ba
    const-string/jumbo v4, "query_id"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->parseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->query_id:J

    .line 2167
    const-string/jumbo v4, "id"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->id:Ljava/lang/String;

    .line 2168
    if-nez p14, :cond_bb

    .line 2169
    const/4 v4, 0x1

    iput-boolean v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->clear_draft:Z

    .line 2170
    const/4 v4, 0x0

    move-wide/from16 v0, p8

    invoke-static {v0, v1, v4}, Lorg/telegram/messenger/query/DraftQuery;->cleanDraft(JZ)V

    .line 2172
    :cond_bb
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v4}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    goto/16 :goto_0

    .line 2174
    .end local v5    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v7    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;
    .end local v12    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .end local v42    # "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local p5    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .restart local v40    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .restart local v55    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :catch_3
    move-exception v29

    move-object/from16 v12, v40

    .end local v40    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .restart local v12    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    move-object/from16 p5, v55

    .end local v55    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .restart local p5    # "user":Lorg/telegram/tgnet/TLRPC$User;
    goto/16 :goto_7

    .end local v12    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .end local v38    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v39    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v40    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    :catch_4
    move-exception v29

    move-object/from16 v12, v40

    .end local v40    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .restart local v12    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v38, v39

    .end local v39    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v38    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    goto/16 :goto_7

    .end local v12    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .end local v38    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v39    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v40    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    :cond_bc
    move-object/from16 v38, v39

    .end local v39    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v38    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    goto/16 :goto_e
.end method

.method private updateMediaPaths(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$Message;Ljava/lang/String;Z)V
    .locals 18
    .param p1, "newMsgObj"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "sentMessage"    # Lorg/telegram/tgnet/TLRPC$Message;
    .param p3, "originalPath"    # Ljava/lang/String;
    .param p4, "post"    # Z

    .prologue
    .line 2499
    move-object/from16 v0, p1

    iget-object v9, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    .line 2500
    .local v9, "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    if-nez p2, :cond_1

    .line 2637
    :cond_0
    :goto_0
    return-void

    .line 2503
    :cond_1
    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v13, v13, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v13, :cond_c

    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v13, :cond_c

    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v13, v13, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v13, :cond_c

    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v13, :cond_c

    .line 2504
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v13

    move-object/from16 v0, p2

    iget-object v14, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v14, v15}, Lorg/telegram/messenger/MessagesStorage;->putSentFile(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;I)V

    .line 2506
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_3

    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    instance-of v13, v13, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;

    if-eqz v13, :cond_3

    .line 2507
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    move-object/from16 v0, p2

    iget-object v14, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    iput-object v14, v13, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    .line 2541
    :cond_2
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v0, p2

    iput-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 2542
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    move-object/from16 v0, p2

    iput-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 2543
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    move-object/from16 v0, p2

    iget-object v14, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    iput-wide v14, v13, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    .line 2544
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    move-object/from16 v0, p2

    iget-object v14, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$Photo;->access_hash:J

    iput-wide v14, v13, Lorg/telegram/tgnet/TLRPC$Photo;->access_hash:J

    goto/16 :goto_0

    .line 2509
    :cond_3
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_1
    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v2, v13, :cond_2

    .line 2510
    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 2511
    .local v11, "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v11, :cond_4

    iget-object v13, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v13, :cond_4

    instance-of v13, v11, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    if-nez v13, :cond_4

    iget-object v13, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    if-nez v13, :cond_5

    .line 2509
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2514
    :cond_5
    const/4 v4, 0x0

    .local v4, "b":I
    :goto_3
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v4, v13, :cond_4

    .line 2515
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 2516
    .local v12, "size2":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v12, :cond_6

    iget-object v13, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v13, :cond_6

    iget-object v13, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    if-nez v13, :cond_7

    .line 2514
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 2519
    :cond_7
    iget-object v13, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v14, v13, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    const-wide/32 v16, -0x80000000

    cmp-long v13, v14, v16

    if-nez v13, :cond_8

    iget-object v13, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    iget-object v14, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    :cond_8
    iget v13, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iget v14, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    if-ne v13, v14, :cond_6

    iget v13, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iget v14, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    if-ne v13, v14, :cond_6

    .line 2520
    :cond_9
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v14, v14, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2521
    .local v7, "fileName":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v14, v14, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2522
    .local v8, "fileName2":Ljava/lang/String;
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 2525
    new-instance v5, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v13

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ".jpg"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v5, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2527
    .local v5, "cacheFile":Ljava/io/File;
    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_a

    iget v13, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    const/16 v14, 0x5a

    if-gt v13, v14, :cond_a

    iget v13, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    const/16 v14, 0x5a

    if-le v13, v14, :cond_b

    .line 2528
    :cond_a
    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v6

    .line 2532
    .local v6, "cacheFile2":Ljava/io/File;
    :goto_4
    invoke-virtual {v5, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 2533
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v13

    iget-object v14, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move/from16 v0, p4

    invoke-virtual {v13, v7, v8, v14, v0}, Lorg/telegram/messenger/ImageLoader;->replaceImageInCache(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$FileLocation;Z)V

    .line 2534
    iget-object v13, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v13, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 2535
    iget v13, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    iput v13, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    goto/16 :goto_2

    .line 2530
    .end local v6    # "cacheFile2":Ljava/io/File;
    :cond_b
    new-instance v6, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v13

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ".jpg"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v6, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v6    # "cacheFile2":Ljava/io/File;
    goto :goto_4

    .line 2545
    .end local v2    # "a":I
    .end local v4    # "b":I
    .end local v5    # "cacheFile":Ljava/io/File;
    .end local v6    # "cacheFile2":Ljava/io/File;
    .end local v7    # "fileName":Ljava/lang/String;
    .end local v8    # "fileName2":Ljava/lang/String;
    .end local v11    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .end local v12    # "size2":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_c
    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v13, v13, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v13, :cond_1d

    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v13, :cond_1d

    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v13, v13, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v13, :cond_1d

    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v13, :cond_1d

    .line 2546
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/MessageObject;->isVideoMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 2547
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v13

    move-object/from16 v0, p2

    iget-object v14, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v15, 0x2

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v14, v15}, Lorg/telegram/messenger/MessagesStorage;->putSentFile(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;I)V

    .line 2548
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    move-object/from16 v0, p2

    iput-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 2553
    :cond_d
    :goto_5
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v12, v13, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 2554
    .restart local v12    # "size2":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v11, v13, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 2555
    .restart local v11    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v12, :cond_12

    iget-object v13, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v13, :cond_12

    iget-object v13, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v14, v13, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    const-wide/32 v16, -0x80000000

    cmp-long v13, v14, v16

    if-nez v13, :cond_12

    if-eqz v11, :cond_12

    iget-object v13, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v13, :cond_12

    instance-of v13, v11, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    if-nez v13, :cond_12

    instance-of v13, v12, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    if-nez v13, :cond_12

    .line 2556
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v14, v14, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2557
    .restart local v7    # "fileName":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v14, v14, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2558
    .restart local v8    # "fileName2":Ljava/lang/String;
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_e

    .line 2559
    new-instance v5, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v13

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ".jpg"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v5, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2560
    .restart local v5    # "cacheFile":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v13

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ".jpg"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v6, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2561
    .restart local v6    # "cacheFile2":Ljava/io/File;
    invoke-virtual {v5, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 2562
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v13

    iget-object v14, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move/from16 v0, p4

    invoke-virtual {v13, v7, v8, v14, v0}, Lorg/telegram/messenger/ImageLoader;->replaceImageInCache(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$FileLocation;Z)V

    .line 2563
    iget-object v13, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v13, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 2564
    iget v13, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    iput v13, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    .line 2572
    .end local v5    # "cacheFile":Ljava/io/File;
    .end local v6    # "cacheFile2":Ljava/io/File;
    .end local v7    # "fileName":Ljava/lang/String;
    .end local v8    # "fileName2":Ljava/lang/String;
    :cond_e
    :goto_6
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, p2

    iget-object v14, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget v14, v14, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    iput v14, v13, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    .line 2573
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, p2

    iget-object v14, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v14, v13, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    .line 2574
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, p2

    iget-object v14, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    iput-wide v14, v13, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    .line 2575
    const/4 v10, 0x0

    .line 2576
    .local v10, "oldWaveform":[B
    const/4 v2, 0x0

    .restart local v2    # "a":I
    :goto_7
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v2, v13, :cond_f

    .line 2577
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 2578
    .local v3, "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v13, v3, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    if-eqz v13, :cond_16

    .line 2579
    iget-object v10, v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->waveform:[B

    .line 2583
    .end local v3    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_f
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, p2

    iget-object v14, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    iput-object v14, v13, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    .line 2584
    if-eqz v10, :cond_17

    .line 2585
    const/4 v2, 0x0

    :goto_8
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v2, v13, :cond_17

    .line 2586
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 2587
    .restart local v3    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v13, v3, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    if-eqz v13, :cond_10

    .line 2588
    iput-object v10, v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->waveform:[B

    .line 2589
    iget v13, v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->flags:I

    or-int/lit8 v13, v13, 0x4

    iput v13, v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->flags:I

    .line 2585
    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 2549
    .end local v2    # "a":I
    .end local v3    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    .end local v10    # "oldWaveform":[B
    .end local v11    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .end local v12    # "size2":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_11
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/MessageObject;->isVoiceMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v13

    if-nez v13, :cond_d

    .line 2550
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v13

    move-object/from16 v0, p2

    iget-object v14, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v15, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v14, v15}, Lorg/telegram/messenger/MessagesStorage;->putSentFile(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;I)V

    goto/16 :goto_5

    .line 2566
    .restart local v11    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .restart local v12    # "size2":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_12
    if-eqz v12, :cond_13

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/MessageObject;->isStickerMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v13

    if-eqz v13, :cond_13

    iget-object v13, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v13, :cond_13

    .line 2567
    iget-object v13, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v13, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto/16 :goto_6

    .line 2568
    :cond_13
    if-eqz v12, :cond_14

    iget-object v13, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    instance-of v13, v13, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;

    if-nez v13, :cond_15

    :cond_14
    instance-of v13, v12, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    if-eqz v13, :cond_e

    .line 2569
    :cond_15
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, p2

    iget-object v14, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iput-object v14, v13, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    goto/16 :goto_6

    .line 2576
    .restart local v2    # "a":I
    .restart local v3    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    .restart local v10    # "oldWaveform":[B
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_7

    .line 2593
    .end local v3    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_17
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, p2

    iget-object v14, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget v14, v14, Lorg/telegram/tgnet/TLRPC$Document;->size:I

    iput v14, v13, Lorg/telegram/tgnet/TLRPC$Document;->size:I

    .line 2594
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, p2

    iget-object v14, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    iput-object v14, v13, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    .line 2596
    move-object/from16 v0, p2

    iget v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit8 v13, v13, 0x4

    if-nez v13, :cond_18

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/MessageObject;->isOut(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v13

    if-eqz v13, :cond_18

    .line 2597
    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v13}, Lorg/telegram/messenger/MessageObject;->isNewGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v13

    if-eqz v13, :cond_19

    .line 2598
    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, p2

    iget v14, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    invoke-static {v13, v14}, Lorg/telegram/messenger/query/StickersQuery;->addRecentGif(Lorg/telegram/tgnet/TLRPC$Document;I)V

    .line 2604
    :cond_18
    :goto_9
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz v13, :cond_1c

    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v14

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1c

    .line 2605
    new-instance v5, Ljava/io/File;

    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v5, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2606
    .restart local v5    # "cacheFile":Ljava/io/File;
    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v13}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v6

    .line 2607
    .restart local v6    # "cacheFile2":Ljava/io/File;
    invoke-virtual {v5, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v13

    if-nez v13, :cond_1a

    .line 2608
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    move-object/from16 v0, p2

    iput-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 2609
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v0, p2

    iput-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    goto/16 :goto_0

    .line 2599
    .end local v5    # "cacheFile":Ljava/io/File;
    .end local v6    # "cacheFile2":Ljava/io/File;
    :cond_19
    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v13}, Lorg/telegram/messenger/MessageObject;->isStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v13

    if-eqz v13, :cond_18

    .line 2600
    const/4 v13, 0x0

    move-object/from16 v0, p2

    iget-object v14, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, p2

    iget v15, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    invoke-static {v13, v14, v15}, Lorg/telegram/messenger/query/StickersQuery;->addRecentSticker(ILorg/telegram/tgnet/TLRPC$Document;I)V

    goto :goto_9

    .line 2611
    .restart local v5    # "cacheFile":Ljava/io/File;
    .restart local v6    # "cacheFile2":Ljava/io/File;
    :cond_1a
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/MessageObject;->isVideoMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v13

    if-eqz v13, :cond_1b

    .line 2612
    const/4 v13, 0x1

    move-object/from16 v0, p1

    iput-boolean v13, v0, Lorg/telegram/messenger/MessageObject;->attachPathExists:Z

    goto/16 :goto_0

    .line 2614
    :cond_1b
    move-object/from16 v0, p1

    iget-boolean v13, v0, Lorg/telegram/messenger/MessageObject;->attachPathExists:Z

    move-object/from16 v0, p1

    iput-boolean v13, v0, Lorg/telegram/messenger/MessageObject;->mediaExists:Z

    .line 2615
    const/4 v13, 0x0

    move-object/from16 v0, p1

    iput-boolean v13, v0, Lorg/telegram/messenger/MessageObject;->attachPathExists:Z

    .line 2616
    const-string/jumbo v13, ""

    iput-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 2617
    if-eqz p3, :cond_0

    const-string/jumbo v13, "http"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 2618
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v13

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v15, v15, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v14, v15}, Lorg/telegram/messenger/MessagesStorage;->addRecentLocalFile(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$Document;)V

    goto/16 :goto_0

    .line 2623
    .end local v5    # "cacheFile":Ljava/io/File;
    .end local v6    # "cacheFile2":Ljava/io/File;
    :cond_1c
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    move-object/from16 v0, p2

    iput-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 2624
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v0, p2

    iput-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    goto/16 :goto_0

    .line 2626
    .end local v2    # "a":I
    .end local v10    # "oldWaveform":[B
    .end local v11    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .end local v12    # "size2":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_1d
    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v13, v13, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    if-eqz v13, :cond_1e

    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v13, v13, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    if-eqz v13, :cond_1e

    .line 2627
    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iput-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    goto/16 :goto_0

    .line 2628
    :cond_1e
    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v13, v13, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v13, :cond_1f

    .line 2629
    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iput-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    goto/16 :goto_0

    .line 2630
    :cond_1f
    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v13, v13, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-eqz v13, :cond_0

    .line 2631
    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iput-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 2632
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v13, v13, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-eqz v13, :cond_0

    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 2633
    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    iput-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    .line 2634
    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    iput-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    goto/16 :goto_0
.end method


# virtual methods
.method public cancelSendingMessage(Lorg/telegram/messenger/MessageObject;)V
    .locals 12
    .param p1, "object"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    const/4 v2, 0x0

    .line 528
    const/4 v9, 0x0

    .line 529
    .local v9, "keyToRemvoe":Ljava/lang/String;
    const/4 v7, 0x0

    .line 530
    .local v7, "enc":Z
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 531
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 532
    .local v11, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    const/4 v6, 0x0

    .local v6, "a":I
    :goto_1
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v6, v3, :cond_0

    .line 533
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    .line 534
    .local v10, "message":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    iget-object v3, v10, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 535
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 536
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v3

    iget-object v4, v10, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MediaController;->cancelVideoConvert(Lorg/telegram/messenger/MessageObject;)V

    .line 537
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 538
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "keyToRemvoe":Ljava/lang/String;
    check-cast v9, Ljava/lang/String;

    .line 539
    .restart local v9    # "keyToRemvoe":Ljava/lang/String;
    iget-object v3, v10, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    if-eqz v3, :cond_0

    .line 540
    const/4 v7, 0x1

    goto :goto_0

    .line 532
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 547
    .end local v6    # "a":I
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;>;"
    .end local v10    # "message":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    .end local v11    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    :cond_2
    if-eqz v9, :cond_3

    .line 548
    const-string/jumbo v0, "http"

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 549
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    invoke-virtual {v0, v9}, Lorg/telegram/messenger/ImageLoader;->cancelLoadHttpFile(Ljava/lang/String;)V

    .line 553
    :goto_2
    invoke-virtual {p0, v9}, Lorg/telegram/messenger/SendMessagesHelper;->stopVideoService(Ljava/lang/String;)V

    .line 555
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 556
    .local v1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 557
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v3, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v3, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    const/4 v5, 0x0

    move-object v3, v2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/MessagesController;->deleteMessages(Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$EncryptedChat;IZ)V

    .line 558
    return-void

    .line 551
    .end local v1    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_4
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    invoke-virtual {v0, v9, v7}, Lorg/telegram/messenger/FileLoader;->cancelUploadFile(Ljava/lang/String;Z)V

    goto :goto_2
.end method

.method public checkUnsentMessages()V
    .locals 2

    .prologue
    .line 2661
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesStorage;->getUnsentMessages(I)V

    .line 2662
    return-void
.end method

.method public cleanup()V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 246
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->unsentMessages:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 247
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->sendingMessages:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 248
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->waitingForLocation:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 249
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->waitingForCallback:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 250
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->currentChatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 251
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->locationProvider:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    invoke-virtual {v0}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->stop()V

    .line 252
    return-void
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 34
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 260
    sget v4, Lorg/telegram/messenger/NotificationCenter;->FileDidUpload:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_10

    .line 261
    const/4 v4, 0x0

    aget-object v24, p2, v4

    check-cast v24, Ljava/lang/String;

    .line 262
    .local v24, "location":Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v19, p2, v4

    check-cast v19, Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 263
    .local v19, "file":Lorg/telegram/tgnet/TLRPC$InputFile;
    const/4 v4, 0x2

    aget-object v8, p2, v4

    check-cast v8, Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;

    .line 264
    .local v8, "encryptedFile":Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    .line 265
    .local v16, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    if-eqz v16, :cond_f

    .line 266
    const/4 v15, 0x0

    .local v15, "a":I
    :goto_0
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v15, v4, :cond_e

    .line 267
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    .line 268
    .local v27, "message":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    const/16 v26, 0x0

    .line 269
    .local v26, "media":Lorg/telegram/tgnet/TLRPC$InputMedia;
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    if-eqz v4, :cond_3

    .line 270
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    move-object/from16 v26, v0

    .line 275
    :cond_0
    :goto_1
    if-eqz v19, :cond_b

    if-eqz v26, :cond_b

    .line 276
    move-object/from16 v0, v27

    iget v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    if-nez v4, :cond_4

    .line 277
    move-object/from16 v0, v19

    move-object/from16 v1, v26

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$InputMedia;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 278
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v0, v27

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, v27

    iget-object v6, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    .line 307
    :cond_1
    :goto_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 308
    add-int/lit8 v15, v15, -0x1

    .line 266
    :cond_2
    :goto_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 271
    :cond_3
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;

    if-eqz v4, :cond_0

    .line 272
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;

    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    move-object/from16 v26, v0

    goto :goto_1

    .line 279
    :cond_4
    move-object/from16 v0, v27

    iget v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_7

    .line 280
    move-object/from16 v0, v26

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    if-nez v4, :cond_6

    .line 281
    move-object/from16 v0, v19

    move-object/from16 v1, v26

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$InputMedia;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 282
    move-object/from16 v0, v26

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->thumb:Lorg/telegram/tgnet/TLRPC$InputFile;

    if-nez v4, :cond_5

    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v4, :cond_5

    .line 283
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    goto :goto_2

    .line 285
    :cond_5
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v0, v27

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, v27

    iget-object v6, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto :goto_2

    .line 288
    :cond_6
    move-object/from16 v0, v19

    move-object/from16 v1, v26

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$InputMedia;->thumb:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 289
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v0, v27

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, v27

    iget-object v6, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto :goto_2

    .line 291
    :cond_7
    move-object/from16 v0, v27

    iget v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_a

    .line 292
    move-object/from16 v0, v26

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    if-nez v4, :cond_9

    .line 293
    move-object/from16 v0, v19

    move-object/from16 v1, v26

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$InputMedia;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 294
    move-object/from16 v0, v26

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->thumb:Lorg/telegram/tgnet/TLRPC$InputFile;

    if-nez v4, :cond_8

    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v4, :cond_8

    .line 295
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    goto/16 :goto_2

    .line 297
    :cond_8
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v0, v27

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, v27

    iget-object v6, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 300
    :cond_9
    move-object/from16 v0, v19

    move-object/from16 v1, v26

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$InputMedia;->thumb:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 301
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v0, v27

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, v27

    iget-object v6, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 303
    :cond_a
    move-object/from16 v0, v27

    iget v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 304
    move-object/from16 v0, v19

    move-object/from16 v1, v26

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$InputMedia;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 305
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v0, v27

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, v27

    iget-object v6, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 309
    :cond_b
    if-eqz v8, :cond_2

    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    if-eqz v4, :cond_2

    .line 310
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo;

    if-nez v4, :cond_c

    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;

    if-nez v4, :cond_c

    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;

    if-eqz v4, :cond_d

    .line 313
    :cond_c
    const/4 v4, 0x5

    aget-object v4, p2, v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v32

    .line 314
    .local v32, "size":J
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-wide/from16 v0, v32

    long-to-int v5, v0

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->size:I

    .line 316
    .end local v32    # "size":J
    :cond_d
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    const/4 v4, 0x3

    aget-object v4, p2, v4

    check-cast v4, [B

    check-cast v4, [B

    iput-object v4, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B

    .line 317
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    const/4 v4, 0x4

    aget-object v4, p2, v4

    check-cast v4, [B

    check-cast v4, [B

    iput-object v4, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B

    .line 318
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v4

    move-object/from16 v0, v27

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    move-object/from16 v0, v27

    iget-object v6, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v0, v27

    iget-object v7, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-object/from16 v0, v27

    iget-object v9, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    move-object/from16 v0, v27

    iget-object v10, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    invoke-virtual/range {v4 .. v10}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    .line 319
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 320
    add-int/lit8 v15, v15, -0x1

    goto/16 :goto_3

    .line 323
    .end local v26    # "media":Lorg/telegram/tgnet/TLRPC$InputMedia;
    .end local v27    # "message":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    :cond_e
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 324
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    .end local v8    # "encryptedFile":Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;
    .end local v15    # "a":I
    .end local v16    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    .end local v19    # "file":Lorg/telegram/tgnet/TLRPC$InputFile;
    .end local v24    # "location":Ljava/lang/String;
    :cond_f
    :goto_4
    return-void

    .line 327
    :cond_10
    sget v4, Lorg/telegram/messenger/NotificationCenter;->FileDidFailUpload:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_15

    .line 328
    const/4 v4, 0x0

    aget-object v24, p2, v4

    check-cast v24, Ljava/lang/String;

    .line 329
    .restart local v24    # "location":Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v4, p2, v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    .line 330
    .local v18, "enc":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    .line 331
    .restart local v16    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    if-eqz v16, :cond_f

    .line 332
    const/4 v15, 0x0

    .restart local v15    # "a":I
    :goto_5
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v15, v4, :cond_14

    .line 333
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    .line 334
    .local v29, "obj":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    if-eqz v18, :cond_11

    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    if-nez v4, :cond_12

    :cond_11
    if-nez v18, :cond_13

    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    if-eqz v4, :cond_13

    .line 335
    :cond_12
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v29

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesStorage;->markMessageAsSendError(Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 336
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v5, 0x2

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 337
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 338
    add-int/lit8 v15, v15, -0x1

    .line 339
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->messageSendError:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, v29

    iget-object v9, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v7

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 340
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/SendMessagesHelper;->processSentMessage(I)V

    .line 332
    :cond_13
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 343
    .end local v29    # "obj":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    :cond_14
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 344
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 347
    .end local v15    # "a":I
    .end local v16    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    .end local v18    # "enc":Z
    .end local v24    # "location":Ljava/lang/String;
    :cond_15
    sget v4, Lorg/telegram/messenger/NotificationCenter;->FilePreparingStarted:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_18

    .line 348
    const/4 v4, 0x0

    aget-object v28, p2, v4

    check-cast v28, Lorg/telegram/messenger/MessageObject;

    .line 349
    .local v28, "messageObject":Lorg/telegram/messenger/MessageObject;
    invoke-virtual/range {v28 .. v28}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    if-eqz v4, :cond_f

    .line 352
    const/4 v4, 0x1

    aget-object v20, p2, v4

    check-cast v20, Ljava/lang/String;

    .line 354
    .local v20, "finalPath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    move-object/from16 v0, v28

    iget-object v5, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    .line 355
    .restart local v16    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    if-eqz v16, :cond_f

    .line 356
    const/4 v15, 0x0

    .restart local v15    # "a":I
    :goto_6
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v15, v4, :cond_16

    .line 357
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    .line 358
    .restart local v27    # "message":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, v28

    if-ne v4, v0, :cond_17

    .line 359
    const/4 v4, 0x0

    move-object/from16 v0, v27

    iput-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    .line 360
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    .line 361
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 365
    .end local v27    # "message":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    :cond_16
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 366
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    move-object/from16 v0, v28

    iget-object v5, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 356
    .restart local v27    # "message":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    :cond_17
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 369
    .end local v15    # "a":I
    .end local v16    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    .end local v20    # "finalPath":Ljava/lang/String;
    .end local v27    # "message":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    .end local v28    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_18
    sget v4, Lorg/telegram/messenger/NotificationCenter;->FileNewChunkAvailable:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_1c

    .line 370
    const/4 v4, 0x0

    aget-object v28, p2, v4

    check-cast v28, Lorg/telegram/messenger/MessageObject;

    .line 371
    .restart local v28    # "messageObject":Lorg/telegram/messenger/MessageObject;
    invoke-virtual/range {v28 .. v28}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    if-eqz v4, :cond_f

    .line 374
    const/4 v4, 0x1

    aget-object v20, p2, v4

    check-cast v20, Ljava/lang/String;

    .line 375
    .restart local v20    # "finalPath":Ljava/lang/String;
    const/4 v4, 0x2

    aget-object v4, p2, v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    .line 376
    .local v22, "finalSize":J
    invoke-virtual/range {v28 .. v28}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    long-to-int v4, v4

    if-nez v4, :cond_1a

    const/16 v21, 0x1

    .line 377
    .local v21, "isEncrypted":Z
    :goto_7
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v4, v0, v1, v2, v3}, Lorg/telegram/messenger/FileLoader;->checkUploadNewDataAvailable(Ljava/lang/String;ZJ)V

    .line 378
    const-wide/16 v4, 0x0

    cmp-long v4, v22, v4

    if-eqz v4, :cond_f

    .line 379
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    move-object/from16 v0, v28

    iget-object v5, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    .line 380
    .restart local v16    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    if-eqz v16, :cond_f

    .line 381
    const/4 v15, 0x0

    .restart local v15    # "a":I
    :goto_8
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v15, v4, :cond_19

    .line 382
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    .line 383
    .restart local v27    # "message":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, v28

    if-ne v4, v0, :cond_1b

    .line 384
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    const/4 v5, 0x0

    iput-object v5, v4, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    .line 385
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const-string/jumbo v5, "-1"

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 386
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-wide/from16 v0, v22

    long-to-int v5, v0

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->size:I

    .line 388
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 389
    .local v10, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZI)V

    .line 394
    .end local v10    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v27    # "message":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    :cond_19
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 395
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    move-object/from16 v0, v28

    iget-object v5, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 376
    .end local v15    # "a":I
    .end local v16    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    .end local v21    # "isEncrypted":Z
    :cond_1a
    const/16 v21, 0x0

    goto/16 :goto_7

    .line 381
    .restart local v15    # "a":I
    .restart local v16    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    .restart local v21    # "isEncrypted":Z
    .restart local v27    # "message":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    :cond_1b
    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    .line 399
    .end local v15    # "a":I
    .end local v16    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    .end local v20    # "finalPath":Ljava/lang/String;
    .end local v21    # "isEncrypted":Z
    .end local v22    # "finalSize":J
    .end local v27    # "message":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    .end local v28    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_1c
    sget v4, Lorg/telegram/messenger/NotificationCenter;->FilePreparingFailed:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_1f

    .line 400
    const/4 v4, 0x0

    aget-object v28, p2, v4

    check-cast v28, Lorg/telegram/messenger/MessageObject;

    .line 401
    .restart local v28    # "messageObject":Lorg/telegram/messenger/MessageObject;
    invoke-virtual/range {v28 .. v28}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    if-eqz v4, :cond_f

    .line 404
    const/4 v4, 0x1

    aget-object v20, p2, v4

    check-cast v20, Ljava/lang/String;

    .line 405
    .restart local v20    # "finalPath":Ljava/lang/String;
    move-object/from16 v0, v28

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/SendMessagesHelper;->stopVideoService(Ljava/lang/String;)V

    .line 407
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    .line 408
    .restart local v16    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    if-eqz v16, :cond_f

    .line 409
    const/4 v15, 0x0

    .restart local v15    # "a":I
    :goto_9
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v15, v4, :cond_1e

    .line 410
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    .line 411
    .restart local v27    # "message":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, v28

    if-ne v4, v0, :cond_1d

    .line 412
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v27

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesStorage;->markMessageAsSendError(Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 413
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v5, 0x2

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 414
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 415
    add-int/lit8 v15, v15, -0x1

    .line 416
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->messageSendError:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, v27

    iget-object v9, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v7

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 417
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/SendMessagesHelper;->processSentMessage(I)V

    .line 409
    :cond_1d
    add-int/lit8 v15, v15, 0x1

    goto :goto_9

    .line 420
    .end local v27    # "message":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    :cond_1e
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 421
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 424
    .end local v15    # "a":I
    .end local v16    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    .end local v20    # "finalPath":Ljava/lang/String;
    .end local v28    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_1f
    sget v4, Lorg/telegram/messenger/NotificationCenter;->httpFileDidLoaded:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_23

    .line 425
    const/4 v4, 0x0

    aget-object v30, p2, v4

    check-cast v30, Ljava/lang/String;

    .line 426
    .local v30, "path":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    .line 427
    .restart local v16    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    if-eqz v16, :cond_f

    .line 428
    const/4 v15, 0x0

    .restart local v15    # "a":I
    :goto_a
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v15, v4, :cond_22

    .line 429
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    .line 430
    .restart local v27    # "message":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    move-object/from16 v0, v27

    iget v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    if-nez v4, :cond_21

    .line 431
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->httpLocation:Ljava/lang/String;

    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v27

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->httpLocation:Ljava/lang/String;

    const-string/jumbo v6, "file"

    invoke-static {v5, v6}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 432
    .local v25, "md5":Ljava/lang/String;
    new-instance v17, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v4

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-direct {v0, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 433
    .local v17, "cacheFile":Ljava/io/File;
    sget-object v4, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v5, Lorg/telegram/messenger/SendMessagesHelper$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v27

    invoke-direct {v5, v0, v1, v2}, Lorg/telegram/messenger/SendMessagesHelper$2;-><init>(Lorg/telegram/messenger/SendMessagesHelper;Ljava/io/File;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 428
    .end local v17    # "cacheFile":Ljava/io/File;
    .end local v25    # "md5":Ljava/lang/String;
    :cond_20
    :goto_b
    add-int/lit8 v15, v15, 0x1

    goto :goto_a

    .line 461
    :cond_21
    move-object/from16 v0, v27

    iget v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_20

    .line 462
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->httpLocation:Ljava/lang/String;

    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".gif"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 463
    .restart local v25    # "md5":Ljava/lang/String;
    new-instance v17, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v4

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-direct {v0, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 464
    .restart local v17    # "cacheFile":Ljava/io/File;
    sget-object v4, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v5, Lorg/telegram/messenger/SendMessagesHelper$3;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v17

    invoke-direct {v5, v0, v1, v2}, Lorg/telegram/messenger/SendMessagesHelper$3;-><init>(Lorg/telegram/messenger/SendMessagesHelper;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;Ljava/io/File;)V

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_b

    .line 500
    .end local v17    # "cacheFile":Ljava/io/File;
    .end local v25    # "md5":Ljava/lang/String;
    .end local v27    # "message":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    :cond_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 502
    .end local v15    # "a":I
    .end local v16    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    .end local v30    # "path":Ljava/lang/String;
    :cond_23
    sget v4, Lorg/telegram/messenger/NotificationCenter;->FileDidLoaded:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_25

    .line 503
    const/4 v4, 0x0

    aget-object v30, p2, v4

    check-cast v30, Ljava/lang/String;

    .line 504
    .restart local v30    # "path":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    .line 505
    .restart local v16    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    if-eqz v16, :cond_f

    .line 506
    const/4 v15, 0x0

    .restart local v15    # "a":I
    :goto_c
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v15, v4, :cond_24

    .line 507
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    .line 506
    add-int/lit8 v15, v15, 0x1

    goto :goto_c

    .line 509
    :cond_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 511
    .end local v15    # "a":I
    .end local v16    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    .end local v30    # "path":Ljava/lang/String;
    :cond_25
    sget v4, Lorg/telegram/messenger/NotificationCenter;->httpFileDidFailedLoad:I

    move/from16 v0, p1

    if-eq v0, v4, :cond_26

    sget v4, Lorg/telegram/messenger/NotificationCenter;->FileDidFailedLoad:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_f

    .line 512
    :cond_26
    const/4 v4, 0x0

    aget-object v30, p2, v4

    check-cast v30, Ljava/lang/String;

    .line 514
    .restart local v30    # "path":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    .line 515
    .restart local v16    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    if-eqz v16, :cond_f

    .line 516
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_27

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    .line 517
    .restart local v27    # "message":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    move-object/from16 v0, v27

    iget-object v6, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesStorage;->markMessageAsSendError(Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 518
    move-object/from16 v0, v27

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v6, 0x2

    iput v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 519
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/NotificationCenter;->messageSendError:I

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, v27

    iget-object v11, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v7, v9

    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 520
    move-object/from16 v0, v27

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/telegram/messenger/SendMessagesHelper;->processSentMessage(I)V

    goto :goto_d

    .line 522
    .end local v27    # "message":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    :cond_27
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4
.end method

.method public editMessage(Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ZLorg/telegram/ui/ActionBar/BaseFragment;Ljava/util/ArrayList;Ljava/lang/Runnable;)I
    .locals 4
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "searchLinks"    # Z
    .param p4, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;
    .param p6, "callback"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/MessageObject;",
            "Ljava/lang/String;",
            "Z",
            "Lorg/telegram/ui/ActionBar/BaseFragment;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$MessageEntity;",
            ">;",
            "Ljava/lang/Runnable;",
            ")I"
        }
    .end annotation

    .prologue
    .local p5, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$MessageEntity;>;"
    const/4 v1, 0x0

    .line 996
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    if-nez p6, :cond_1

    .line 1010
    :cond_0
    :goto_0
    return v1

    .line 1000
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;-><init>()V

    .line 1001
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1002
    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->message:Ljava/lang/String;

    .line 1003
    iget v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->flags:I

    or-int/lit16 v2, v2, 0x800

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->flags:I

    .line 1004
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->id:I

    .line 1005
    if-nez p3, :cond_2

    const/4 v1, 0x1

    :cond_2
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->no_webpage:Z

    .line 1006
    if-eqz p5, :cond_3

    .line 1007
    iput-object p5, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->entities:Ljava/util/ArrayList;

    .line 1008
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->flags:I

    .line 1010
    :cond_3
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/SendMessagesHelper$5;

    invoke-direct {v2, p0, p6, p4, v0}, Lorg/telegram/messenger/SendMessagesHelper$5;-><init>(Lorg/telegram/messenger/SendMessagesHelper;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v1

    goto :goto_0
.end method

.method public generatePhotoSizes(Ljava/lang/String;Landroid/net/Uri;)Lorg/telegram/tgnet/TLRPC$TL_photo;
    .locals 11
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "imageUri"    # Landroid/net/Uri;

    .prologue
    const/16 v5, 0x65

    const/4 v4, 0x0

    const/high16 v10, 0x44480000    # 800.0f

    const/high16 v6, 0x42b40000    # 90.0f

    const/4 v3, 0x1

    .line 2681
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v2

    int-to-float v2, v2

    invoke-static {p1, p2, v1, v2, v3}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2682
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v1

    const/16 v2, 0x320

    if-eq v1, v2, :cond_0

    .line 2683
    invoke-static {p1, p2, v10, v10, v3}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2685
    :cond_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2686
    .local v9, "sizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$PhotoSize;>;"
    const/16 v1, 0x37

    invoke-static {v0, v6, v6, v1, v3}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Landroid/graphics/Bitmap;FFIZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v8

    .line 2687
    .local v8, "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v8, :cond_1

    .line 2688
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2690
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v2

    int-to-float v2, v2

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->plusPhotoQuality:I

    move v6, v5

    invoke-static/range {v0 .. v6}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Landroid/graphics/Bitmap;FFIZII)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v8

    .line 2691
    if-eqz v8, :cond_2

    .line 2692
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2694
    :cond_2
    if-eqz v0, :cond_3

    .line 2695
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2697
    :cond_3
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2698
    const/4 v7, 0x0

    .line 2704
    :goto_0
    return-object v7

    .line 2700
    :cond_4
    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 2701
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_photo;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_photo;-><init>()V

    .line 2702
    .local v7, "photo":Lorg/telegram/tgnet/TLRPC$TL_photo;
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v1

    iput v1, v7, Lorg/telegram/tgnet/TLRPC$TL_photo;->date:I

    .line 2703
    iput-object v9, v7, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method protected getDelayedMessages(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "location"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2649
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getNextRandomId()J
    .locals 4

    .prologue
    .line 2653
    const-wide/16 v0, 0x0

    .line 2654
    .local v0, "val":J
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 2655
    sget-object v2, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v0

    goto :goto_0

    .line 2657
    :cond_0
    return-wide v0
.end method

.method public isSendingCallback(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$KeyboardButton;)Z
    .locals 6
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "button"    # Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    .prologue
    .line 1190
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1191
    :cond_0
    const/4 v2, 0x0

    .line 1202
    :goto_0
    return v2

    .line 1194
    :cond_1
    instance-of v2, p2, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonGame;

    if-eqz v2, :cond_2

    .line 1195
    const/4 v1, 0x1

    .line 1201
    .local v1, "type":I
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->data:[B

    invoke-static {v3}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1202
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lorg/telegram/messenger/SendMessagesHelper;->waitingForCallback:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 1196
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "type":I
    :cond_2
    instance-of v2, p2, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonBuy;

    if-eqz v2, :cond_3

    .line 1197
    const/4 v1, 0x2

    .restart local v1    # "type":I
    goto :goto_1

    .line 1199
    .end local v1    # "type":I
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "type":I
    goto :goto_1
.end method

.method public isSendingCurrentLocation(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$KeyboardButton;)Z
    .locals 4
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "button"    # Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    .prologue
    .line 1054
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1055
    :cond_0
    const/4 v1, 0x0

    .line 1058
    :goto_0
    return v1

    .line 1057
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->data:[B

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    instance-of v1, p2, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonGame;

    if-eqz v1, :cond_2

    const-string/jumbo v1, "1"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1058
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper;->waitingForLocation:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 1057
    .end local v0    # "key":Ljava/lang/String;
    :cond_2
    const-string/jumbo v1, "0"

    goto :goto_1
.end method

.method public isSendingMessage(I)Z
    .locals 2
    .param p1, "mid"    # I

    .prologue
    .line 2331
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->sendingMessages:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public processForwardFromMyName(Lorg/telegram/messenger/MessageObject;J)V
    .locals 18
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "did"    # J

    .prologue
    .line 622
    if-nez p1, :cond_1

    .line 655
    :cond_0
    :goto_0
    return-void

    .line 625
    :cond_1
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v4, :cond_7

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    if-nez v4, :cond_7

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-nez v4, :cond_7

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-nez v4, :cond_7

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    if-nez v4, :cond_7

    .line 626
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_photo;

    if-eqz v4, :cond_2

    .line 627
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_photo;

    const/4 v7, 0x0

    move-object/from16 v0, p1

    iget-object v10, v0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v5, p0

    move-wide/from16 v8, p2

    invoke-virtual/range {v5 .. v12}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/tgnet/TLRPC$TL_photo;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto :goto_0

    .line 628
    :cond_2
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_document;

    if-eqz v4, :cond_3

    .line 629
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_document;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v10, v0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v4, p0

    move-wide/from16 v8, p2

    invoke-virtual/range {v4 .. v12}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/messenger/VideoEditedInfo;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto :goto_0

    .line 630
    :cond_3
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    if-nez v4, :cond_4

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;

    if-eqz v4, :cond_5

    .line 631
    :cond_4
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, p1

    iget-object v8, v0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p0

    move-wide/from16 v6, p2

    invoke-virtual/range {v4 .. v10}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/tgnet/TLRPC$MessageMedia;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 632
    :cond_5
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->phone_number:Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 633
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_userContact_old2;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_userContact_old2;-><init>()V

    .line 634
    .local v5, "user":Lorg/telegram/tgnet/TLRPC$User;
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->phone_number:Ljava/lang/String;

    iput-object v4, v5, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    .line 635
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->first_name:Ljava/lang/String;

    iput-object v4, v5, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    .line 636
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->last_name:Ljava/lang/String;

    iput-object v4, v5, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    .line 637
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->user_id:I

    iput v4, v5, Lorg/telegram/tgnet/TLRPC$User;->id:I

    .line 638
    move-object/from16 v0, p1

    iget-object v8, v0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p0

    move-wide/from16 v6, p2

    invoke-virtual/range {v4 .. v10}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/tgnet/TLRPC$User;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 639
    .end local v5    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_6
    move-wide/from16 v0, p2

    long-to-int v4, v0

    if-eqz v4, :cond_0

    .line 640
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 641
    .local v16, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 642
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/util/ArrayList;J)V

    goto/16 :goto_0

    .line 644
    .end local v16    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :cond_7
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    if-eqz v4, :cond_9

    .line 645
    const/4 v11, 0x0

    .line 646
    .local v11, "webPage":Lorg/telegram/tgnet/TLRPC$WebPage;
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v4, :cond_8

    .line 647
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v11, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    .line 649
    :cond_8
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v10, v0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v12, 0x1

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v13, v4, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v6, p0

    move-wide/from16 v8, p2

    invoke-virtual/range {v6 .. v15}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 650
    .end local v11    # "webPage":Lorg/telegram/tgnet/TLRPC$WebPage;
    :cond_9
    move-wide/from16 v0, p2

    long-to-int v4, v0

    if-eqz v4, :cond_0

    .line 651
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 652
    .restart local v16    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 653
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/util/ArrayList;J)V

    goto/16 :goto_0
.end method

.method protected processSentMessage(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 614
    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper;->unsentMessages:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 615
    .local v0, "prevSize":I
    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper;->unsentMessages:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper;->unsentMessages:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 617
    invoke-virtual {p0}, Lorg/telegram/messenger/SendMessagesHelper;->checkUnsentMessages()V

    .line 619
    :cond_0
    return-void
.end method

.method protected processUnsentMessages(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$EncryptedChat;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2665
    .local p1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .local p2, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    .local p3, "chats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Chat;>;"
    .local p4, "encryptedChats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$EncryptedChat;>;"
    new-instance v0, Lorg/telegram/messenger/SendMessagesHelper$11;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/SendMessagesHelper$11;-><init>(Lorg/telegram/messenger/SendMessagesHelper;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2678
    return-void
.end method

.method protected putToSendingMessages(Lorg/telegram/tgnet/TLRPC$Message;)V
    .locals 2
    .param p1, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 2323
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->sendingMessages:Ljava/util/HashMap;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2324
    return-void
.end method

.method protected removeFromSendingMessages(I)V
    .locals 2
    .param p1, "mid"    # I

    .prologue
    .line 2327
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->sendingMessages:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2328
    return-void
.end method

.method public retrySendMessage(Lorg/telegram/messenger/MessageObject;Z)Z
    .locals 10
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "unsent"    # Z

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 561
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    if-ltz v4, :cond_0

    .line 610
    :goto_0
    return v2

    .line 564
    :cond_0
    iget-object v4, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageEncryptedAction;

    if-eqz v4, :cond_e

    .line 565
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    const/16 v6, 0x20

    shr-long/2addr v4, v6

    long-to-int v0, v4

    .line 566
    .local v0, "enc_id":I
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v1

    .line 567
    .local v1, "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    if-nez v1, :cond_1

    .line 568
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    iget-object v5, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesStorage;->markMessageAsSendError(Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 569
    iget-object v4, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v5, 0x2

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 570
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->messageSendError:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v2

    invoke-virtual {v4, v5, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 571
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/telegram/messenger/SendMessagesHelper;->processSentMessage(I)V

    goto :goto_0

    .line 574
    :cond_1
    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    cmp-long v2, v4, v8

    if-nez v2, :cond_2

    .line 575
    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {p0}, Lorg/telegram/messenger/SendMessagesHelper;->getNextRandomId()J

    move-result-wide v4

    iput-wide v4, v2, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    .line 577
    :cond_2
    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionSetMessageTTL;

    if-eqz v2, :cond_4

    .line 578
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v2

    iget-object v4, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v2, v1, v4}, Lorg/telegram/messenger/SecretChatHelper;->sendTTLMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V

    :cond_3
    :goto_1
    move v2, v3

    .line 604
    goto :goto_0

    .line 579
    :cond_4
    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionDeleteMessages;

    if-eqz v2, :cond_5

    .line 580
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v2

    iget-object v4, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v2, v1, v7, v4}, Lorg/telegram/messenger/SecretChatHelper;->sendMessagesDeleteMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$Message;)V

    goto :goto_1

    .line 581
    :cond_5
    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionFlushHistory;

    if-eqz v2, :cond_6

    .line 582
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v2

    iget-object v4, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v2, v1, v4}, Lorg/telegram/messenger/SecretChatHelper;->sendClearHistoryMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V

    goto :goto_1

    .line 583
    :cond_6
    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionNotifyLayer;

    if-eqz v2, :cond_7

    .line 584
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v2

    iget-object v4, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v2, v1, v4}, Lorg/telegram/messenger/SecretChatHelper;->sendNotifyLayerMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V

    goto :goto_1

    .line 585
    :cond_7
    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionReadMessages;

    if-eqz v2, :cond_8

    .line 586
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v2

    iget-object v4, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v2, v1, v7, v4}, Lorg/telegram/messenger/SecretChatHelper;->sendMessagesReadMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$Message;)V

    goto :goto_1

    .line 587
    :cond_8
    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionScreenshotMessages;

    if-eqz v2, :cond_9

    .line 588
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v2

    iget-object v4, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v2, v1, v7, v4}, Lorg/telegram/messenger/SecretChatHelper;->sendScreenshotMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$Message;)V

    goto :goto_1

    .line 589
    :cond_9
    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionTyping;

    if-nez v2, :cond_3

    .line 591
    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionResend;

    if-nez v2, :cond_3

    .line 593
    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionCommitKey;

    if-eqz v2, :cond_a

    .line 594
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v2

    iget-object v4, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v2, v1, v4}, Lorg/telegram/messenger/SecretChatHelper;->sendCommitKeyMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V

    goto/16 :goto_1

    .line 595
    :cond_a
    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionAbortKey;

    if-eqz v2, :cond_b

    .line 596
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v2

    iget-object v4, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v2, v1, v4, v8, v9}, Lorg/telegram/messenger/SecretChatHelper;->sendAbortKeyMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;J)V

    goto/16 :goto_1

    .line 597
    :cond_b
    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionRequestKey;

    if-eqz v2, :cond_c

    .line 598
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v2

    iget-object v4, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v2, v1, v4}, Lorg/telegram/messenger/SecretChatHelper;->sendRequestKeyMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V

    goto/16 :goto_1

    .line 599
    :cond_c
    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionAcceptKey;

    if-eqz v2, :cond_d

    .line 600
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v2

    iget-object v4, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v2, v1, v4}, Lorg/telegram/messenger/SecretChatHelper;->sendAcceptKeyMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V

    goto/16 :goto_1

    .line 601
    :cond_d
    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionNoop;

    if-eqz v2, :cond_3

    .line 602
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v2

    iget-object v4, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v2, v1, v4}, Lorg/telegram/messenger/SecretChatHelper;->sendNoopMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V

    goto/16 :goto_1

    .line 606
    .end local v0    # "enc_id":I
    .end local v1    # "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    :cond_e
    if-eqz p2, :cond_f

    .line 607
    iget-object v2, p0, Lorg/telegram/messenger/SendMessagesHelper;->unsentMessages:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    :cond_f
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/messenger/MessageObject;)V

    move v2, v3

    .line 610
    goto/16 :goto_0
.end method

.method public sendCallback(ZLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$KeyboardButton;Lorg/telegram/ui/ChatActivity;)V
    .locals 10
    .param p1, "cache"    # Z
    .param p2, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p3, "button"    # Lorg/telegram/tgnet/TLRPC$KeyboardButton;
    .param p4, "parentFragment"    # Lorg/telegram/ui/ChatActivity;

    .prologue
    const/4 v9, 0x2

    .line 1062
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 1187
    :cond_0
    :goto_0
    return-void

    .line 1067
    :cond_1
    instance-of v1, p3, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonGame;

    if-eqz v1, :cond_2

    .line 1068
    const/4 v3, 0x0

    .line 1069
    .local v3, "cacheFinal":Z
    const/4 v8, 0x1

    .line 1078
    .local v8, "type":I
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p3, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->data:[B

    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1079
    .local v2, "key":Ljava/lang/String;
    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper;->waitingForCallback:Ljava/util/HashMap;

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1081
    new-instance v0, Lorg/telegram/messenger/SendMessagesHelper$6;

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/SendMessagesHelper$6;-><init>(Lorg/telegram/messenger/SendMessagesHelper;Ljava/lang/String;ZLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$KeyboardButton;Lorg/telegram/ui/ChatActivity;)V

    .line 1162
    .local v0, "requestDelegate":Lorg/telegram/tgnet/RequestDelegate;
    if-eqz v3, :cond_4

    .line 1163
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lorg/telegram/messenger/MessagesStorage;->getBotCache(Ljava/lang/String;Lorg/telegram/tgnet/RequestDelegate;)V

    goto :goto_0

    .line 1071
    .end local v0    # "requestDelegate":Lorg/telegram/tgnet/RequestDelegate;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "cacheFinal":Z
    .end local v8    # "type":I
    :cond_2
    move v3, p1

    .line 1072
    .restart local v3    # "cacheFinal":Z
    instance-of v1, p3, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonBuy;

    if-eqz v1, :cond_3

    .line 1073
    const/4 v8, 0x2

    .restart local v8    # "type":I
    goto :goto_1

    .line 1075
    .end local v8    # "type":I
    :cond_3
    const/4 v8, 0x0

    .restart local v8    # "type":I
    goto :goto_1

    .line 1165
    .restart local v0    # "requestDelegate":Lorg/telegram/tgnet/RequestDelegate;
    .restart local v2    # "key":Ljava/lang/String;
    :cond_4
    instance-of v1, p3, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonBuy;

    if-eqz v1, :cond_6

    .line 1166
    iget-object v1, p2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_5

    .line 1167
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;-><init>()V

    .line 1168
    .local v7, "req":Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;
    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    iput v1, v7, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;->msg_id:I

    .line 1169
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1, v7, v0, v9}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto/16 :goto_0

    .line 1171
    .end local v7    # "req":Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;
    :cond_5
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentReceipt;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentReceipt;-><init>()V

    .line 1172
    .local v7, "req":Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentReceipt;
    iget-object v1, p2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->receipt_msg_id:I

    iput v1, v7, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentReceipt;->msg_id:I

    .line 1173
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1, v7, v0, v9}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto/16 :goto_0

    .line 1176
    .end local v7    # "req":Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentReceipt;
    :cond_6
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messages_getBotCallbackAnswer;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messages_getBotCallbackAnswer;-><init>()V

    .line 1177
    .local v7, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getBotCallbackAnswer;
    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    long-to-int v1, v4

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_getBotCallbackAnswer;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1178
    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    iput v1, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_getBotCallbackAnswer;->msg_id:I

    .line 1179
    instance-of v1, p3, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonGame;

    iput-boolean v1, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_getBotCallbackAnswer;->game:Z

    .line 1180
    iget-object v1, p3, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->data:[B

    if-eqz v1, :cond_7

    .line 1181
    iget v1, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_getBotCallbackAnswer;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_getBotCallbackAnswer;->flags:I

    .line 1182
    iget-object v1, p3, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->data:[B

    iput-object v1, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_getBotCallbackAnswer;->data:[B

    .line 1184
    :cond_7
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1, v7, v0, v9}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto/16 :goto_0
.end method

.method public sendCurrentLocation(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$KeyboardButton;)V
    .locals 4
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "button"    # Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    .prologue
    .line 1045
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1051
    :cond_0
    :goto_0
    return-void

    .line 1048
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->data:[B

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    instance-of v1, p2, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonGame;

    if-eqz v1, :cond_2

    const-string/jumbo v1, "1"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1049
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper;->waitingForLocation:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1050
    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper;->locationProvider:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    invoke-virtual {v1}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->start()V

    goto :goto_0

    .line 1048
    .end local v0    # "key":Ljava/lang/String;
    :cond_2
    const-string/jumbo v1, "0"

    goto :goto_1
.end method

.method public sendGame(Lorg/telegram/tgnet/TLRPC$InputPeer;Lorg/telegram/tgnet/TLRPC$TL_inputMediaGame;JJ)V
    .locals 9
    .param p1, "peer"    # Lorg/telegram/tgnet/TLRPC$InputPeer;
    .param p2, "game"    # Lorg/telegram/tgnet/TLRPC$TL_inputMediaGame;
    .param p3, "random_id"    # J
    .param p5, "taskId"    # J

    .prologue
    .line 1206
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1243
    :cond_0
    :goto_0
    return-void

    .line 1209
    :cond_1
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;-><init>()V

    .line 1210
    .local v3, "request":Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;
    iput-object p1, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1211
    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    instance-of v6, v6, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    if-eqz v6, :cond_2

    .line 1212
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v7, "Notifications"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "silent_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->silent:Z

    .line 1214
    :cond_2
    const-wide/16 v6, 0x0

    cmp-long v6, p3, v6

    if-eqz v6, :cond_3

    move-wide v6, p3

    :goto_1
    iput-wide v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->random_id:J

    .line 1215
    iput-object p2, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    .line 1217
    const-wide/16 v6, 0x0

    cmp-long v6, p5, v6

    if-nez v6, :cond_4

    .line 1218
    const/4 v0, 0x0

    .line 1220
    .local v0, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :try_start_0
    new-instance v1, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {p1}, Lorg/telegram/tgnet/TLRPC$InputPeer;->getObjectSize()I

    move-result v6

    invoke-virtual {p2}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGame;->getObjectSize()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x4

    add-int/lit8 v6, v6, 0x8

    invoke-direct {v1, v6}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1221
    .end local v0    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .local v1, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    const/4 v6, 0x3

    :try_start_1
    invoke-virtual {v1, v6}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    .line 1222
    invoke-virtual {v1, p3, p4}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt64(J)V

    .line 1223
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/TLRPC$InputPeer;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 1224
    invoke-virtual {p2, v1}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGame;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 1228
    .end local v1    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v0    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :goto_2
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v6

    invoke-virtual {v6, v0}, Lorg/telegram/messenger/MessagesStorage;->createPendingTask(Lorg/telegram/tgnet/NativeByteBuffer;)J

    move-result-wide v4

    .line 1232
    .end local v0    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .local v4, "newTaskId":J
    :goto_3
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v6

    new-instance v7, Lorg/telegram/messenger/SendMessagesHelper$7;

    invoke-direct {v7, p0, v4, v5}, Lorg/telegram/messenger/SendMessagesHelper$7;-><init>(Lorg/telegram/messenger/SendMessagesHelper;J)V

    invoke-virtual {v6, v3, v7}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0

    .line 1214
    .end local v4    # "newTaskId":J
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/messenger/SendMessagesHelper;->getNextRandomId()J

    move-result-wide v6

    goto :goto_1

    .line 1225
    .restart local v0    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :catch_0
    move-exception v2

    .line 1226
    .local v2, "e":Ljava/lang/Exception;
    :goto_4
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 1230
    .end local v0    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    move-wide v4, p5

    .restart local v4    # "newTaskId":J
    goto :goto_3

    .line 1225
    .end local v4    # "newTaskId":J
    .restart local v1    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v0    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    goto :goto_4
.end method

.method public sendMessage(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V
    .locals 18
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "peer"    # J
    .param p4, "reply_to_msg"    # Lorg/telegram/messenger/MessageObject;
    .param p5, "webPage"    # Lorg/telegram/tgnet/TLRPC$WebPage;
    .param p6, "searchLinks"    # Z
    .param p8, "replyMarkup"    # Lorg/telegram/tgnet/TLRPC$ReplyMarkup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lorg/telegram/messenger/MessageObject;",
            "Lorg/telegram/tgnet/TLRPC$WebPage;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$MessageEntity;",
            ">;",
            "Lorg/telegram/tgnet/TLRPC$ReplyMarkup;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1258
    .local p7, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$MessageEntity;>;"
    .local p9, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v8, p2

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move/from16 v13, p6

    move-object/from16 v15, p7

    move-object/from16 v16, p8

    move-object/from16 v17, p9

    invoke-direct/range {v0 .. v17}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/TLRPC$TL_photo;Lorg/telegram/messenger/VideoEditedInfo;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/tgnet/TLRPC$TL_game;JLjava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    .line 1259
    return-void
.end method

.method public sendMessage(Ljava/util/ArrayList;J)V
    .locals 36
    .param p2, "peer"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 709
    .local p1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 993
    :cond_0
    return-void

    .line 712
    :cond_1
    move-wide/from16 v0, p2

    long-to-int v0, v0

    move/from16 v23, v0

    .line 713
    .local v23, "lower_id":I
    if-eqz v23, :cond_1d

    .line 714
    move-wide/from16 v0, p2

    long-to-int v4, v0

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getPeer(I)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v13

    .line 715
    .local v13, "to_id":Lorg/telegram/tgnet/TLRPC$Peer;
    const/16 v21, 0x0

    .line 716
    .local v21, "isMegagroup":Z
    const/16 v22, 0x0

    .line 717
    .local v22, "isSignature":Z
    if-lez v23, :cond_4

    .line 718
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v32

    .line 719
    .local v32, "sendToUser":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v32, :cond_0

    .line 730
    .end local v32    # "sendToUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_2
    :goto_0
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .line 731
    .local v30, "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 732
    .local v16, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .line 733
    .local v31, "randomIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 734
    .local v19, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v26, Ljava/util/HashMap;

    invoke-direct/range {v26 .. v26}, Ljava/util/HashMap;-><init>()V

    .line 735
    .local v26, "messagesByRandomIds":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Message;>;"
    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v20

    .line 736
    .local v20, "inputPeer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    const-wide/16 v24, 0x0

    .line 737
    .local v24, "lastDialogId":J
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v4

    int-to-long v4, v4

    cmp-long v4, p2, v4

    if-nez v4, :cond_5

    const/16 v33, 0x1

    .line 738
    .local v33, "toMyself":Z
    :goto_1
    const/4 v15, 0x0

    .local v15, "a":I
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v15, v4, :cond_0

    .line 739
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lorg/telegram/messenger/MessageObject;

    .line 740
    .local v27, "msgObj":Lorg/telegram/messenger/MessageObject;
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    if-gtz v4, :cond_6

    .line 738
    :cond_3
    :goto_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 723
    .end local v15    # "a":I
    .end local v16    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v19    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v20    # "inputPeer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    .end local v24    # "lastDialogId":J
    .end local v26    # "messagesByRandomIds":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v27    # "msgObj":Lorg/telegram/messenger/MessageObject;
    .end local v30    # "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v31    # "randomIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v33    # "toMyself":Z
    :cond_4
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    move/from16 v0, v23

    neg-int v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v17

    .line 724
    .local v17, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 725
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v21, v0

    .line 726
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->signatures:Z

    move/from16 v22, v0

    goto :goto_0

    .line 737
    .end local v17    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .restart local v16    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .restart local v19    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v20    # "inputPeer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    .restart local v24    # "lastDialogId":J
    .restart local v26    # "messagesByRandomIds":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Message;>;"
    .restart local v30    # "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .restart local v31    # "randomIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_5
    const/16 v33, 0x0

    goto :goto_1

    .line 744
    .restart local v15    # "a":I
    .restart local v27    # "msgObj":Lorg/telegram/messenger/MessageObject;
    .restart local v33    # "toMyself":Z
    :cond_6
    new-instance v28, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct/range {v28 .. v28}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 745
    .local v28, "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/messenger/MessageObject;->isForwarded()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 746
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    move-object/from16 v0, v28

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    .line 766
    :goto_4
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, v28

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 767
    const/4 v4, 0x4

    move-object/from16 v0, v28

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 768
    move-object/from16 v0, v28

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v4, :cond_7

    .line 769
    move-object/from16 v0, v28

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v4, v4, 0x200

    move-object/from16 v0, v28

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 771
    :cond_7
    if-eqz v21, :cond_8

    .line 772
    move-object/from16 v0, v28

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/high16 v5, -0x80000000

    or-int/2addr v4, v5

    move-object/from16 v0, v28

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 774
    :cond_8
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_id:I

    if-eqz v4, :cond_9

    .line 775
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_id:I

    move-object/from16 v0, v28

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_id:I

    .line 776
    move-object/from16 v0, v28

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v4, v4, 0x800

    move-object/from16 v0, v28

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 778
    :cond_9
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v0, v28

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 779
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    move-object/from16 v0, v28

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_msg_id:I

    .line 780
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    move-object/from16 v0, v28

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 781
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    move-object/from16 v0, v28

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    .line 782
    move-object/from16 v0, v28

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a

    .line 783
    move-object/from16 v0, v28

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v4, v4, 0x80

    move-object/from16 v0, v28

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 785
    :cond_a
    move-object/from16 v0, v28

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-nez v4, :cond_b

    .line 786
    const-string/jumbo v4, ""

    move-object/from16 v0, v28

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 788
    :cond_b
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getNewMessageId()I

    move-result v4

    move-object/from16 v0, v28

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move-object/from16 v0, v28

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->local_id:I

    .line 789
    const/4 v4, 0x1

    move-object/from16 v0, v28

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 790
    iget v4, v13, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v4, :cond_17

    if-nez v21, :cond_17

    .line 791
    if-eqz v22, :cond_16

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v4

    :goto_5
    move-object/from16 v0, v28

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    .line 792
    const/4 v4, 0x1

    move-object/from16 v0, v28

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->post:Z

    .line 797
    :goto_6
    move-object/from16 v0, v28

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_c

    .line 798
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/SendMessagesHelper;->getNextRandomId()J

    move-result-wide v4

    move-object/from16 v0, v28

    iput-wide v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    .line 800
    :cond_c
    move-object/from16 v0, v28

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 801
    move-object/from16 v0, v28

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 802
    move-object/from16 v0, v28

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_msg_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 803
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v4

    move-object/from16 v0, v28

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 804
    move-object/from16 v0, v20

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    if-eqz v4, :cond_19

    .line 805
    if-nez v21, :cond_18

    .line 806
    const/4 v4, 0x1

    move-object/from16 v0, v28

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->views:I

    .line 807
    move-object/from16 v0, v28

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v4, v4, 0x400

    move-object/from16 v0, v28

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 818
    :goto_7
    move-wide/from16 v0, p2

    move-object/from16 v2, v28

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 819
    move-object/from16 v0, v28

    iput-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 820
    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/MessageObject;->isVoiceMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v4

    if-eqz v4, :cond_d

    move-object/from16 v0, v28

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-nez v4, :cond_d

    .line 821
    const/4 v4, 0x1

    move-object/from16 v0, v28

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media_unread:Z

    .line 823
    :cond_d
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    if-eqz v4, :cond_e

    .line 824
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    neg-int v4, v4

    move-object/from16 v0, v28

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    .line 826
    :cond_e
    new-instance v29, Lorg/telegram/messenger/MessageObject;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v4, v5}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V

    .line 827
    .local v29, "newMsgObj":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v5, 0x1

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 828
    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 829
    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 831
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->putToSendingMessages(Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 832
    const/16 v18, 0x0

    .line 834
    .local v18, "differentDialog":Z
    sget-boolean v4, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v4, :cond_f

    .line 835
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "forward message user_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->user_id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " chat_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->chat_id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " channel_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " access_hash = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->access_hash:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 838
    :cond_f
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0x64

    if-eq v4, v5, :cond_10

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v15, v4, :cond_10

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v15, v4, :cond_3

    add-int/lit8 v4, v15, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    invoke-virtual/range {v27 .. v27}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    .line 839
    :cond_10
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZI)V

    .line 840
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    move-wide/from16 v0, p2

    move-object/from16 v2, v30

    invoke-virtual {v4, v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->updateInterfaceWithMessages(JLjava/util/ArrayList;)V

    .line 841
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 842
    const/4 v4, 0x0

    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 844
    new-instance v14, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;

    invoke-direct {v14}, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;-><init>()V

    .line 845
    .local v14, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;
    move-object/from16 v0, v20

    iput-object v0, v14, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->to_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 846
    iget-object v4, v14, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->to_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    if-eqz v4, :cond_11

    .line 847
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v5, "Notifications"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "silent_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v14, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->silent:Z

    .line 849
    :cond_11
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    if-eqz v4, :cond_1b

    .line 850
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    move-object/from16 v0, v27

    iget-object v5, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v17

    .line 851
    .restart local v17    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;-><init>()V

    iput-object v4, v14, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->from_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 852
    iget-object v4, v14, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->from_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-object/from16 v0, v27

    iget-object v5, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:I

    .line 853
    if-eqz v17, :cond_12

    .line 854
    iget-object v4, v14, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->from_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-object/from16 v0, v17

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Chat;->access_hash:J

    iput-wide v6, v4, Lorg/telegram/tgnet/TLRPC$InputPeer;->access_hash:J

    .line 859
    .end local v17    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_12
    :goto_8
    move-object/from16 v0, v31

    iput-object v0, v14, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->random_id:Ljava/util/ArrayList;

    .line 860
    move-object/from16 v0, v19

    iput-object v0, v14, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->id:Ljava/util/ArrayList;

    .line 861
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1c

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->with_my_score:Z

    if-eqz v4, :cond_1c

    const/4 v4, 0x1

    :goto_9
    iput-boolean v4, v14, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->with_my_score:Z

    .line 863
    move-object/from16 v11, v16

    .line 864
    .local v11, "newMsgObjArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    move-object/from16 v12, v30

    .line 865
    .local v12, "newMsgArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    move-object/from16 v10, v26

    .line 866
    .local v10, "messagesByRandomIdsFinal":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Message;>;"
    move/from16 v8, v21

    .line 867
    .local v8, "isMegagroupFinal":Z
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v34

    new-instance v4, Lorg/telegram/messenger/SendMessagesHelper$4;

    move-object/from16 v5, p0

    move-wide/from16 v6, p2

    move/from16 v9, v33

    invoke-direct/range {v4 .. v14}, Lorg/telegram/messenger/SendMessagesHelper$4;-><init>(Lorg/telegram/messenger/SendMessagesHelper;JZZLjava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$Peer;Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;)V

    const/16 v5, 0x44

    move-object/from16 v0, v34

    invoke-virtual {v0, v14, v4, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    .line 979
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v15, v4, :cond_3

    .line 980
    new-instance v30, Ljava/util/ArrayList;

    .end local v30    # "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .line 981
    .restart local v30    # "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    new-instance v16, Ljava/util/ArrayList;

    .end local v16    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 982
    .restart local v16    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    new-instance v31, Ljava/util/ArrayList;

    .end local v31    # "randomIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .line 983
    .restart local v31    # "randomIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v19, Ljava/util/ArrayList;

    .end local v19    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 984
    .restart local v19    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v26, Ljava/util/HashMap;

    .end local v26    # "messagesByRandomIds":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Message;>;"
    invoke-direct/range {v26 .. v26}, Ljava/util/HashMap;-><init>()V

    .restart local v26    # "messagesByRandomIds":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Message;>;"
    goto/16 :goto_3

    .line 748
    .end local v8    # "isMegagroupFinal":Z
    .end local v10    # "messagesByRandomIdsFinal":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v11    # "newMsgObjArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v12    # "newMsgArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v14    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;
    .end local v18    # "differentDialog":Z
    .end local v29    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    :cond_13
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;-><init>()V

    move-object/from16 v0, v28

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    .line 749
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/messenger/MessageObject;->isFromUser()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 750
    move-object/from16 v0, v28

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    move-object/from16 v0, v27

    iget-object v5, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->from_id:I

    .line 751
    move-object/from16 v0, v28

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->flags:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->flags:I

    .line 764
    :cond_14
    :goto_a
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move-object/from16 v0, v28

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    goto/16 :goto_4

    .line 753
    :cond_15
    move-object/from16 v0, v28

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    move-object/from16 v0, v27

    iget-object v5, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->channel_id:I

    .line 754
    move-object/from16 v0, v28

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->flags:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->flags:I

    .line 755
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->post:Z

    if-eqz v4, :cond_14

    .line 756
    move-object/from16 v0, v28

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    invoke-virtual/range {v27 .. v27}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->channel_post:I

    .line 757
    move-object/from16 v0, v28

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->flags:I

    or-int/lit8 v5, v5, 0x4

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->flags:I

    .line 758
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    if-lez v4, :cond_14

    .line 759
    move-object/from16 v0, v28

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    move-object/from16 v0, v27

    iget-object v5, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->from_id:I

    .line 760
    move-object/from16 v0, v28

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->flags:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->flags:I

    goto :goto_a

    .line 791
    :cond_16
    iget v4, v13, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    neg-int v4, v4

    goto/16 :goto_5

    .line 794
    :cond_17
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v4

    move-object/from16 v0, v28

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    .line 795
    move-object/from16 v0, v28

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v4, v4, 0x100

    move-object/from16 v0, v28

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    goto/16 :goto_6

    .line 809
    :cond_18
    const/4 v4, 0x1

    move-object/from16 v0, v28

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    goto/16 :goto_7

    .line 812
    :cond_19
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_1a

    .line 813
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->views:I

    move-object/from16 v0, v28

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->views:I

    .line 814
    move-object/from16 v0, v28

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v4, v4, 0x400

    move-object/from16 v0, v28

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 816
    :cond_1a
    const/4 v4, 0x1

    move-object/from16 v0, v28

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    goto/16 :goto_7

    .line 857
    .restart local v14    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;
    .restart local v18    # "differentDialog":Z
    .restart local v29    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    :cond_1b
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V

    iput-object v4, v14, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->from_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto/16 :goto_8

    .line 861
    :cond_1c
    const/4 v4, 0x0

    goto/16 :goto_9

    .line 989
    .end local v13    # "to_id":Lorg/telegram/tgnet/TLRPC$Peer;
    .end local v14    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;
    .end local v15    # "a":I
    .end local v16    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v18    # "differentDialog":Z
    .end local v19    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v20    # "inputPeer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    .end local v21    # "isMegagroup":Z
    .end local v22    # "isSignature":Z
    .end local v24    # "lastDialogId":J
    .end local v26    # "messagesByRandomIds":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v27    # "msgObj":Lorg/telegram/messenger/MessageObject;
    .end local v28    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v29    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .end local v30    # "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v31    # "randomIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v33    # "toMyself":Z
    :cond_1d
    const/4 v15, 0x0

    .restart local v15    # "a":I
    :goto_b
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v15, v4, :cond_0

    .line 990
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-virtual {v0, v4, v1, v2}, Lorg/telegram/messenger/SendMessagesHelper;->processForwardFromMyName(Lorg/telegram/messenger/MessageObject;J)V

    .line 989
    add-int/lit8 v15, v15, 0x1

    goto :goto_b
.end method

.method public sendMessage(Lorg/telegram/messenger/MessageObject;)V
    .locals 20
    .param p1, "retryMessageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 1246
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v10

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v12, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v17, 0x0

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->params:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v2, p0

    move-object/from16 v16, p1

    invoke-direct/range {v2 .. v19}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/TLRPC$TL_photo;Lorg/telegram/messenger/VideoEditedInfo;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/tgnet/TLRPC$TL_game;JLjava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    .line 1247
    return-void
.end method

.method public sendMessage(Lorg/telegram/tgnet/TLRPC$MessageMedia;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V
    .locals 18
    .param p1, "location"    # Lorg/telegram/tgnet/TLRPC$MessageMedia;
    .param p2, "peer"    # J
    .param p4, "reply_to_msg"    # Lorg/telegram/messenger/MessageObject;
    .param p5, "replyMarkup"    # Lorg/telegram/tgnet/TLRPC$ReplyMarkup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$MessageMedia;",
            "J",
            "Lorg/telegram/messenger/MessageObject;",
            "Lorg/telegram/tgnet/TLRPC$ReplyMarkup;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1262
    .local p6, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-wide/from16 v8, p2

    move-object/from16 v11, p4

    move-object/from16 v16, p5

    move-object/from16 v17, p6

    invoke-direct/range {v0 .. v17}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/TLRPC$TL_photo;Lorg/telegram/messenger/VideoEditedInfo;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/tgnet/TLRPC$TL_game;JLjava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    .line 1263
    return-void
.end method

.method public sendMessage(Lorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/messenger/VideoEditedInfo;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V
    .locals 18
    .param p1, "document"    # Lorg/telegram/tgnet/TLRPC$TL_document;
    .param p2, "videoEditedInfo"    # Lorg/telegram/messenger/VideoEditedInfo;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "peer"    # J
    .param p6, "reply_to_msg"    # Lorg/telegram/messenger/MessageObject;
    .param p7, "replyMarkup"    # Lorg/telegram/tgnet/TLRPC$ReplyMarkup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$TL_document;",
            "Lorg/telegram/messenger/VideoEditedInfo;",
            "Ljava/lang/String;",
            "J",
            "Lorg/telegram/messenger/MessageObject;",
            "Lorg/telegram/tgnet/TLRPC$ReplyMarkup;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1254
    .local p8, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v4, p2

    move-object/from16 v6, p1

    move-wide/from16 v8, p4

    move-object/from16 v10, p3

    move-object/from16 v11, p6

    move-object/from16 v16, p7

    move-object/from16 v17, p8

    invoke-direct/range {v0 .. v17}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/TLRPC$TL_photo;Lorg/telegram/messenger/VideoEditedInfo;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/tgnet/TLRPC$TL_game;JLjava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    .line 1255
    return-void
.end method

.method public sendMessage(Lorg/telegram/tgnet/TLRPC$TL_game;JLorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V
    .locals 18
    .param p1, "game"    # Lorg/telegram/tgnet/TLRPC$TL_game;
    .param p2, "peer"    # J
    .param p4, "replyMarkup"    # Lorg/telegram/tgnet/TLRPC$ReplyMarkup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$TL_game;",
            "J",
            "Lorg/telegram/tgnet/TLRPC$ReplyMarkup;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1266
    .local p5, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-wide/from16 v8, p2

    move-object/from16 v16, p4

    move-object/from16 v17, p5

    invoke-direct/range {v0 .. v17}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/TLRPC$TL_photo;Lorg/telegram/messenger/VideoEditedInfo;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/tgnet/TLRPC$TL_game;JLjava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    .line 1267
    return-void
.end method

.method public sendMessage(Lorg/telegram/tgnet/TLRPC$TL_photo;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V
    .locals 19
    .param p1, "photo"    # Lorg/telegram/tgnet/TLRPC$TL_photo;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "peer"    # J
    .param p5, "reply_to_msg"    # Lorg/telegram/messenger/MessageObject;
    .param p6, "replyMarkup"    # Lorg/telegram/tgnet/TLRPC$ReplyMarkup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$TL_photo;",
            "Ljava/lang/String;",
            "J",
            "Lorg/telegram/messenger/MessageObject;",
            "Lorg/telegram/tgnet/TLRPC$ReplyMarkup;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1270
    .local p7, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move-wide/from16 v8, p3

    move-object/from16 v10, p2

    move-object/from16 v11, p5

    move-object/from16 v16, p6

    move-object/from16 v17, p7

    invoke-direct/range {v0 .. v17}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/TLRPC$TL_photo;Lorg/telegram/messenger/VideoEditedInfo;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/tgnet/TLRPC$TL_game;JLjava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    .line 1271
    return-void
.end method

.method public sendMessage(Lorg/telegram/tgnet/TLRPC$User;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V
    .locals 18
    .param p1, "user"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p2, "peer"    # J
    .param p4, "reply_to_msg"    # Lorg/telegram/messenger/MessageObject;
    .param p5, "replyMarkup"    # Lorg/telegram/tgnet/TLRPC$ReplyMarkup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$User;",
            "J",
            "Lorg/telegram/messenger/MessageObject;",
            "Lorg/telegram/tgnet/TLRPC$ReplyMarkup;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1250
    .local p6, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v5, p1

    move-wide/from16 v8, p2

    move-object/from16 v11, p4

    move-object/from16 v16, p5

    move-object/from16 v17, p6

    invoke-direct/range {v0 .. v17}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/TLRPC$TL_photo;Lorg/telegram/messenger/VideoEditedInfo;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/tgnet/TLRPC$TL_game;JLjava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    .line 1251
    return-void
.end method

.method public sendSticker(Lorg/telegram/tgnet/TLRPC$Document;JLorg/telegram/messenger/MessageObject;)V
    .locals 20
    .param p1, "document"    # Lorg/telegram/tgnet/TLRPC$Document;
    .param p2, "peer"    # J
    .param p4, "replyingMessageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 658
    if-nez p1, :cond_1

    .line 706
    :cond_0
    :goto_0
    return-void

    .line 661
    :cond_1
    move-wide/from16 v0, p2

    long-to-int v2, v0

    if-nez v2, :cond_5

    .line 662
    const/16 v2, 0x20

    shr-long v2, p2, v2

    long-to-int v15, v2

    .line 663
    .local v15, "high_id":I
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v13

    .line 664
    .local v13, "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    if-eqz v13, :cond_0

    .line 667
    new-instance v17, Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-direct/range {v17 .. v17}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    .line 668
    .local v17, "newDocument":Lorg/telegram/tgnet/TLRPC$TL_document;
    move-object/from16 v0, p1

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    move-object/from16 v0, v17

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->id:J

    .line 669
    move-object/from16 v0, p1

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    move-object/from16 v0, v17

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    .line 670
    move-object/from16 v0, p1

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->date:I

    move-object/from16 v0, v17

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->date:I

    .line 671
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    .line 672
    move-object/from16 v0, p1

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->size:I

    move-object/from16 v0, v17

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->size:I

    .line 673
    move-object/from16 v0, p1

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    move-object/from16 v0, v17

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->dc_id:I

    .line 674
    new-instance v2, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, v17

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    .line 675
    move-object/from16 v0, v17

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 676
    const-string/jumbo v2, ""

    move-object/from16 v0, v17

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    .line 678
    :cond_2
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_photoSize;

    if-eqz v2, :cond_3

    .line 679
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v14

    .line 680
    .local v14, "file":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 682
    :try_start_0
    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v0, v2

    move/from16 v16, v0

    .line 683
    .local v16, "len":I
    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    new-array v11, v2, [B

    .line 684
    .local v11, "arr":[B
    new-instance v18, Ljava/io/RandomAccessFile;

    const-string/jumbo v2, "r"

    move-object/from16 v0, v18

    invoke-direct {v0, v14, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 685
    .local v18, "reader":Ljava/io/RandomAccessFile;
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 687
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;-><init>()V

    move-object/from16 v0, v17

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 688
    move-object/from16 v0, v17

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 689
    move-object/from16 v0, v17

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    .line 690
    move-object/from16 v0, v17

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    .line 691
    move-object/from16 v0, v17

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    .line 692
    move-object/from16 v0, v17

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    .line 693
    move-object/from16 v0, v17

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iput-object v11, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 699
    .end local v11    # "arr":[B
    .end local v14    # "file":Ljava/io/File;
    .end local v16    # "len":I
    .end local v18    # "reader":Ljava/io/RandomAccessFile;
    :cond_3
    :goto_1
    move-object/from16 v0, v17

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-nez v2, :cond_4

    .line 700
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;-><init>()V

    move-object/from16 v0, v17

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 701
    move-object/from16 v0, v17

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-string/jumbo v3, "s"

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    .line 703
    :cond_4
    move-object/from16 p1, v17

    .line 705
    .end local v13    # "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .end local v15    # "high_id":I
    .end local v17    # "newDocument":Lorg/telegram/tgnet/TLRPC$TL_document;
    :cond_5
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v2

    move-object/from16 v3, p1

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_document;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-wide/from16 v6, p2

    move-object/from16 v8, p4

    invoke-virtual/range {v2 .. v10}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/messenger/VideoEditedInfo;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 694
    .restart local v13    # "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .restart local v14    # "file":Ljava/io/File;
    .restart local v15    # "high_id":I
    .restart local v17    # "newDocument":Lorg/telegram/tgnet/TLRPC$TL_document;
    :catch_0
    move-exception v12

    .line 695
    .local v12, "e":Ljava/lang/Exception;
    invoke-static {v12}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public setCurrentChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V
    .locals 0
    .param p1, "info"    # Lorg/telegram/tgnet/TLRPC$ChatFull;

    .prologue
    .line 255
    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper;->currentChatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 256
    return-void
.end method

.method protected stopVideoService(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 2309
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/SendMessagesHelper$8;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/SendMessagesHelper$8;-><init>(Lorg/telegram/messenger/SendMessagesHelper;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 2320
    return-void
.end method
