.class public Lorg/telegram/messenger/MusicPlayerService;
.super Landroid/app/Service;
.source "MusicPlayerService.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# static fields
.field public static final NOTIFY_CLOSE:Ljava/lang/String; = "org.telegram.android.musicplayer.close"

.field public static final NOTIFY_NEXT:Ljava/lang/String; = "org.telegram.android.musicplayer.next"

.field public static final NOTIFY_PAUSE:Ljava/lang/String; = "org.telegram.android.musicplayer.pause"

.field public static final NOTIFY_PLAY:Ljava/lang/String; = "org.telegram.android.musicplayer.play"

.field public static final NOTIFY_PREVIOUS:Ljava/lang/String; = "org.telegram.android.musicplayer.previous"

.field private static supportBigNotifications:Z

.field private static supportLockScreenControls:Z


# instance fields
.field private audioManager:Landroid/media/AudioManager;

.field private remoteControlClient:Landroid/media/RemoteControlClient;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 41
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lorg/telegram/messenger/MusicPlayerService;->supportBigNotifications:Z

    .line 42
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v0, v3, :cond_1

    :goto_1
    sput-boolean v1, Lorg/telegram/messenger/MusicPlayerService;->supportLockScreenControls:Z

    return-void

    :cond_0
    move v0, v2

    .line 41
    goto :goto_0

    :cond_1
    move v1, v2

    .line 42
    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private createNotification(Lorg/telegram/messenger/MessageObject;)V
    .locals 14
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 97
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getMusicTitle()Ljava/lang/String;

    move-result-object v10

    .line 98
    .local v10, "songName":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getMusicAuthor()Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, "authorName":Ljava/lang/String;
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/messenger/MediaController;->getAudioInfo()Lorg/telegram/messenger/audioinfo/AudioInfo;

    move-result-object v1

    .line 101
    .local v1, "audioInfo":Lorg/telegram/messenger/audioinfo/AudioInfo;
    new-instance v9, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lorg/telegram/messenger/MusicPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const v12, 0x7f030014

    invoke-direct {v9, v11, v12}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 102
    .local v9, "simpleContentView":Landroid/widget/RemoteViews;
    const/4 v5, 0x0

    .line 103
    .local v5, "expandedView":Landroid/widget/RemoteViews;
    sget-boolean v11, Lorg/telegram/messenger/MusicPlayerService;->supportBigNotifications:Z

    if-eqz v11, :cond_0

    .line 104
    new-instance v5, Landroid/widget/RemoteViews;

    .end local v5    # "expandedView":Landroid/widget/RemoteViews;
    invoke-virtual {p0}, Lorg/telegram/messenger/MusicPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const v12, 0x7f030013

    invoke-direct {v5, v11, v12}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 107
    .restart local v5    # "expandedView":Landroid/widget/RemoteViews;
    :cond_0
    new-instance v6, Landroid/content/Intent;

    sget-object v11, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v12, Lorg/telegram/ui/LaunchActivity;

    invoke-direct {v6, v11, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 108
    .local v6, "intent":Landroid/content/Intent;
    const-string/jumbo v11, "com.tmessages.openplayer"

    invoke-virtual {v6, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    const v11, 0x8000

    invoke-virtual {v6, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 110
    sget-object v11, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v11, v12, v6, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 112
    .local v3, "contentIntent":Landroid/app/PendingIntent;
    new-instance v11, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Lorg/telegram/messenger/MusicPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v12, 0x7f02022a

    .line 113
    invoke-virtual {v11, v12}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v11

    .line 114
    invoke-virtual {v11, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v11

    .line 115
    invoke-virtual {v11, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    .line 117
    .local v8, "notification":Landroid/app/Notification;
    iput-object v9, v8, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 118
    sget-boolean v11, Lorg/telegram/messenger/MusicPlayerService;->supportBigNotifications:Z

    if-eqz v11, :cond_1

    .line 119
    iput-object v5, v8, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 122
    :cond_1
    invoke-virtual {p0, v9}, Lorg/telegram/messenger/MusicPlayerService;->setListeners(Landroid/widget/RemoteViews;)V

    .line 123
    sget-boolean v11, Lorg/telegram/messenger/MusicPlayerService;->supportBigNotifications:Z

    if-eqz v11, :cond_2

    .line 124
    invoke-virtual {p0, v5}, Lorg/telegram/messenger/MusicPlayerService;->setListeners(Landroid/widget/RemoteViews;)V

    .line 127
    :cond_2
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getSmallCover()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 128
    .local v0, "albumArt":Landroid/graphics/Bitmap;
    :goto_0
    if-eqz v0, :cond_9

    .line 129
    iget-object v11, v8, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v12, 0x7f0c0053

    invoke-virtual {v11, v12, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 130
    sget-boolean v11, Lorg/telegram/messenger/MusicPlayerService;->supportBigNotifications:Z

    if-eqz v11, :cond_3

    .line 131
    iget-object v11, v8, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    const v12, 0x7f0c0053

    invoke-virtual {v11, v12, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 139
    :cond_3
    :goto_1
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/messenger/MediaController;->isDownloadingCurrentMessage()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 140
    iget-object v11, v8, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v12, 0x7f0c0059

    const/16 v13, 0x8

    invoke-virtual {v11, v12, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 141
    iget-object v11, v8, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v12, 0x7f0c005a

    const/16 v13, 0x8

    invoke-virtual {v11, v12, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 142
    iget-object v11, v8, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v12, 0x7f0c005b

    const/16 v13, 0x8

    invoke-virtual {v11, v12, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 143
    iget-object v11, v8, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v12, 0x7f0c0058

    const/16 v13, 0x8

    invoke-virtual {v11, v12, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 144
    iget-object v11, v8, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v12, 0x7f0c0057

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 145
    sget-boolean v11, Lorg/telegram/messenger/MusicPlayerService;->supportBigNotifications:Z

    if-eqz v11, :cond_4

    .line 146
    iget-object v11, v8, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    const v12, 0x7f0c0059

    const/16 v13, 0x8

    invoke-virtual {v11, v12, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 147
    iget-object v11, v8, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    const v12, 0x7f0c005a

    const/16 v13, 0x8

    invoke-virtual {v11, v12, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 148
    iget-object v11, v8, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    const v12, 0x7f0c005b

    const/16 v13, 0x8

    invoke-virtual {v11, v12, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 149
    iget-object v11, v8, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    const v12, 0x7f0c0058

    const/16 v13, 0x8

    invoke-virtual {v11, v12, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 150
    iget-object v11, v8, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    const v12, 0x7f0c0057

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 179
    :cond_4
    :goto_2
    iget-object v11, v8, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v12, 0x7f0c0054

    invoke-virtual {v11, v12, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 180
    iget-object v11, v8, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v12, 0x7f0c0056

    invoke-virtual {v11, v12, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 181
    sget-boolean v11, Lorg/telegram/messenger/MusicPlayerService;->supportBigNotifications:Z

    if-eqz v11, :cond_5

    .line 182
    iget-object v11, v8, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    const v12, 0x7f0c0054

    invoke-virtual {v11, v12, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 183
    iget-object v11, v8, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    const v12, 0x7f0c0056

    invoke-virtual {v11, v12, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 185
    :cond_5
    iget v11, v8, Landroid/app/Notification;->flags:I

    or-int/lit8 v11, v11, 0x2

    iput v11, v8, Landroid/app/Notification;->flags:I

    .line 186
    const/4 v11, 0x5

    invoke-virtual {p0, v11, v8}, Lorg/telegram/messenger/MusicPlayerService;->startForeground(ILandroid/app/Notification;)V

    .line 188
    iget-object v11, p0, Lorg/telegram/messenger/MusicPlayerService;->remoteControlClient:Landroid/media/RemoteControlClient;

    if-eqz v11, :cond_7

    .line 189
    iget-object v11, p0, Lorg/telegram/messenger/MusicPlayerService;->remoteControlClient:Landroid/media/RemoteControlClient;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/media/RemoteControlClient;->editMetadata(Z)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object v7

    .line 190
    .local v7, "metadataEditor":Landroid/media/RemoteControlClient$MetadataEditor;
    const/4 v11, 0x2

    invoke-virtual {v7, v11, v2}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 191
    const/4 v11, 0x7

    invoke-virtual {v7, v11, v10}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 192
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getCover()Landroid/graphics/Bitmap;

    move-result-object v11

    if-eqz v11, :cond_6

    .line 194
    const/16 v11, 0x64

    :try_start_0
    invoke-virtual {v1}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getCover()Landroid/graphics/Bitmap;

    move-result-object v12

    invoke-virtual {v7, v11, v12}, Landroid/media/RemoteControlClient$MetadataEditor;->putBitmap(ILandroid/graphics/Bitmap;)Landroid/media/RemoteControlClient$MetadataEditor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :cond_6
    :goto_3
    invoke-virtual {v7}, Landroid/media/RemoteControlClient$MetadataEditor;->apply()V

    .line 201
    .end local v7    # "metadataEditor":Landroid/media/RemoteControlClient$MetadataEditor;
    :cond_7
    return-void

    .line 127
    .end local v0    # "albumArt":Landroid/graphics/Bitmap;
    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 134
    .restart local v0    # "albumArt":Landroid/graphics/Bitmap;
    :cond_9
    iget-object v11, v8, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v12, 0x7f0c0053

    const v13, 0x7f0201ef

    invoke-virtual {v11, v12, v13}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 135
    sget-boolean v11, Lorg/telegram/messenger/MusicPlayerService;->supportBigNotifications:Z

    if-eqz v11, :cond_3

    .line 136
    iget-object v11, v8, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    const v12, 0x7f0c0053

    const v13, 0x7f0201ee

    invoke-virtual {v11, v12, v13}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_1

    .line 153
    :cond_a
    iget-object v11, v8, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v12, 0x7f0c0057

    const/16 v13, 0x8

    invoke-virtual {v11, v12, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 154
    iget-object v11, v8, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v12, 0x7f0c005b

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 155
    iget-object v11, v8, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v12, 0x7f0c0058

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 156
    sget-boolean v11, Lorg/telegram/messenger/MusicPlayerService;->supportBigNotifications:Z

    if-eqz v11, :cond_b

    .line 157
    iget-object v11, v8, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    const v12, 0x7f0c005b

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 158
    iget-object v11, v8, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    const v12, 0x7f0c0058

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 159
    iget-object v11, v8, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    const v12, 0x7f0c0057

    const/16 v13, 0x8

    invoke-virtual {v11, v12, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 162
    :cond_b
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/messenger/MediaController;->isAudioPaused()Z

    move-result v11

    if-eqz v11, :cond_c

    .line 163
    iget-object v11, v8, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v12, 0x7f0c0059

    const/16 v13, 0x8

    invoke-virtual {v11, v12, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 164
    iget-object v11, v8, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v12, 0x7f0c005a

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 165
    sget-boolean v11, Lorg/telegram/messenger/MusicPlayerService;->supportBigNotifications:Z

    if-eqz v11, :cond_4

    .line 166
    iget-object v11, v8, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    const v12, 0x7f0c0059

    const/16 v13, 0x8

    invoke-virtual {v11, v12, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 167
    iget-object v11, v8, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    const v12, 0x7f0c005a

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_2

    .line 170
    :cond_c
    iget-object v11, v8, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v12, 0x7f0c0059

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 171
    iget-object v11, v8, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v12, 0x7f0c005a

    const/16 v13, 0x8

    invoke-virtual {v11, v12, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 172
    sget-boolean v11, Lorg/telegram/messenger/MusicPlayerService;->supportBigNotifications:Z

    if-eqz v11, :cond_4

    .line 173
    iget-object v11, v8, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    const v12, 0x7f0c0059

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 174
    iget-object v11, v8, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    const v12, 0x7f0c005a

    const/16 v13, 0x8

    invoke-virtual {v11, v12, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_2

    .line 195
    .restart local v7    # "metadataEditor":Landroid/media/RemoteControlClient$MetadataEditor;
    :catch_0
    move-exception v4

    .line 196
    .local v4, "e":Ljava/lang/Throwable;
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_3
.end method


# virtual methods
.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 232
    sget v1, Lorg/telegram/messenger/NotificationCenter;->audioPlayStateChanged:I

    if-ne p1, v1, :cond_0

    .line 233
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    .line 234
    .local v0, "messageObject":Lorg/telegram/messenger/MessageObject;
    if-eqz v0, :cond_1

    .line 235
    invoke-direct {p0, v0}, Lorg/telegram/messenger/MusicPlayerService;->createNotification(Lorg/telegram/messenger/MessageObject;)V

    .line 240
    .end local v0    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_0
    :goto_0
    return-void

    .line 237
    .restart local v0    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/MusicPlayerService;->stopSelf()V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 51
    const-string/jumbo v0, "audio"

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MusicPlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lorg/telegram/messenger/MusicPlayerService;->audioManager:Landroid/media/AudioManager;

    .line 52
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->audioProgressDidChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 53
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->audioPlayStateChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 54
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 55
    return-void
.end method

.method public onDestroy()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 219
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 220
    iget-object v1, p0, Lorg/telegram/messenger/MusicPlayerService;->remoteControlClient:Landroid/media/RemoteControlClient;

    if-eqz v1, :cond_0

    .line 221
    iget-object v1, p0, Lorg/telegram/messenger/MusicPlayerService;->remoteControlClient:Landroid/media/RemoteControlClient;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/RemoteControlClient;->editMetadata(Z)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object v0

    .line 222
    .local v0, "metadataEditor":Landroid/media/RemoteControlClient$MetadataEditor;
    invoke-virtual {v0}, Landroid/media/RemoteControlClient$MetadataEditor;->clear()V

    .line 223
    invoke-virtual {v0}, Landroid/media/RemoteControlClient$MetadataEditor;->apply()V

    .line 224
    iget-object v1, p0, Lorg/telegram/messenger/MusicPlayerService;->audioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lorg/telegram/messenger/MusicPlayerService;->remoteControlClient:Landroid/media/RemoteControlClient;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->unregisterRemoteControlClient(Landroid/media/RemoteControlClient;)V

    .line 226
    .end local v0    # "metadataEditor":Landroid/media/RemoteControlClient$MetadataEditor;
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->audioProgressDidChanged:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 227
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->audioPlayStateChanged:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 228
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 61
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    .line 62
    .local v3, "messageObject":Lorg/telegram/messenger/MessageObject;
    if-nez v3, :cond_0

    .line 63
    new-instance v5, Lorg/telegram/messenger/MusicPlayerService$1;

    invoke-direct {v5, p0}, Lorg/telegram/messenger/MusicPlayerService$1;-><init>(Lorg/telegram/messenger/MusicPlayerService;)V

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 92
    .end local v3    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :goto_0
    return v7

    .line 71
    .restart local v3    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_0
    sget-boolean v5, Lorg/telegram/messenger/MusicPlayerService;->supportLockScreenControls:Z

    if-eqz v5, :cond_2

    .line 72
    new-instance v4, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lorg/telegram/messenger/MusicPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lorg/telegram/messenger/MusicPlayerReceiver;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .local v4, "remoteComponentName":Landroid/content/ComponentName;
    :try_start_1
    iget-object v5, p0, Lorg/telegram/messenger/MusicPlayerService;->remoteControlClient:Landroid/media/RemoteControlClient;

    if-nez v5, :cond_1

    .line 75
    iget-object v5, p0, Lorg/telegram/messenger/MusicPlayerService;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v4}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 76
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 77
    .local v1, "mediaButtonIntent":Landroid/content/Intent;
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 78
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {p0, v5, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 79
    .local v2, "mediaPendingIntent":Landroid/app/PendingIntent;
    new-instance v5, Landroid/media/RemoteControlClient;

    invoke-direct {v5, v2}, Landroid/media/RemoteControlClient;-><init>(Landroid/app/PendingIntent;)V

    iput-object v5, p0, Lorg/telegram/messenger/MusicPlayerService;->remoteControlClient:Landroid/media/RemoteControlClient;

    .line 80
    iget-object v5, p0, Lorg/telegram/messenger/MusicPlayerService;->audioManager:Landroid/media/AudioManager;

    iget-object v6, p0, Lorg/telegram/messenger/MusicPlayerService;->remoteControlClient:Landroid/media/RemoteControlClient;

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->registerRemoteControlClient(Landroid/media/RemoteControlClient;)V

    .line 82
    .end local v1    # "mediaButtonIntent":Landroid/content/Intent;
    .end local v2    # "mediaPendingIntent":Landroid/app/PendingIntent;
    :cond_1
    iget-object v5, p0, Lorg/telegram/messenger/MusicPlayerService;->remoteControlClient:Landroid/media/RemoteControlClient;

    const/16 v6, 0xbd

    invoke-virtual {v5, v6}, Landroid/media/RemoteControlClient;->setTransportControlFlags(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 88
    .end local v4    # "remoteComponentName":Landroid/content/ComponentName;
    :cond_2
    :goto_1
    :try_start_2
    invoke-direct {p0, v3}, Lorg/telegram/messenger/MusicPlayerService;->createNotification(Lorg/telegram/messenger/MessageObject;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 89
    .end local v3    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 84
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .restart local v4    # "remoteComponentName":Landroid/content/ComponentName;
    :catch_1
    move-exception v0

    .line 85
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_3
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method

.method public setListeners(Landroid/widget/RemoteViews;)V
    .locals 6
    .param p1, "view"    # Landroid/widget/RemoteViews;

    .prologue
    const/high16 v5, 0x8000000

    const/4 v4, 0x0

    .line 204
    invoke-virtual {p0}, Lorg/telegram/messenger/MusicPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "org.telegram.android.musicplayer.previous"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v4, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 205
    .local v0, "pendingIntent":Landroid/app/PendingIntent;
    const v1, 0x7f0c0058

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 206
    invoke-virtual {p0}, Lorg/telegram/messenger/MusicPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "org.telegram.android.musicplayer.close"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v4, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 207
    const v1, 0x7f0c0055

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 208
    invoke-virtual {p0}, Lorg/telegram/messenger/MusicPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "org.telegram.android.musicplayer.pause"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v4, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 209
    const v1, 0x7f0c0059

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 210
    invoke-virtual {p0}, Lorg/telegram/messenger/MusicPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "org.telegram.android.musicplayer.next"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v4, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 211
    const v1, 0x7f0c005b

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 212
    invoke-virtual {p0}, Lorg/telegram/messenger/MusicPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "org.telegram.android.musicplayer.play"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v4, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 213
    const v1, 0x7f0c005a

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 214
    return-void
.end method
