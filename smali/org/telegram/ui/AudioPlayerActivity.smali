.class public Lorg/telegram/ui/AudioPlayerActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "AudioPlayerActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;
    }
.end annotation


# instance fields
.field private TAG:I

.field private bottomView:Landroid/widget/FrameLayout;

.field private buttons:[Landroid/widget/ImageView;

.field private durationTextView:Landroid/widget/TextView;

.field private lastMessageObject:Lorg/telegram/messenger/MessageObject;

.field private lastTimeString:Ljava/lang/String;

.field private nextButton:Landroid/widget/ImageView;

.field private placeholder:Landroid/widget/ImageView;

.field private playButton:Landroid/widget/ImageView;

.field private prevButton:Landroid/widget/ImageView;

.field private progressView:Lorg/telegram/ui/Components/LineProgressView;

.field private repeatButton:Landroid/widget/ImageView;

.field private seekBarContainer:Landroid/widget/FrameLayout;

.field private seekBarView:Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;

.field private shuffleButton:Landroid/widget/ImageView;

.field private timeTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 55
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->buttons:[Landroid/widget/ImageView;

    .line 68
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/AudioPlayerActivity;F)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/AudioPlayerActivity;
    .param p1, "x1"    # F

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lorg/telegram/ui/AudioPlayerActivity;->onSeekBarDrag(F)V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/AudioPlayerActivity;)[Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/AudioPlayerActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->buttons:[Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/AudioPlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/AudioPlayerActivity;

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/telegram/ui/AudioPlayerActivity;->updateRepeatButton()V

    return-void
.end method

.method static synthetic access$300(Lorg/telegram/ui/AudioPlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/AudioPlayerActivity;

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/telegram/ui/AudioPlayerActivity;->updateShuffleButton()V

    return-void
.end method

.method private checkIfMusicDownloaded(Lorg/telegram/messenger/MessageObject;)V
    .locals 7
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 425
    const/4 v0, 0x0

    .line 426
    .local v0, "cacheFile":Ljava/io/File;
    iget-object v3, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 427
    new-instance v0, Ljava/io/File;

    .end local v0    # "cacheFile":Ljava/io/File;
    iget-object v3, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 428
    .restart local v0    # "cacheFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 429
    const/4 v0, 0x0

    .line 432
    :cond_0
    if-nez v0, :cond_1

    .line 433
    iget-object v3, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v0

    .line 435
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    .line 436
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getFileName()Ljava/lang/String;

    move-result-object v1

    .line 437
    .local v1, "fileName":Ljava/lang/String;
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v3

    invoke-virtual {v3, v1, p0}, Lorg/telegram/messenger/MediaController;->addLoadingFileObserver(Ljava/lang/String;Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;)V

    .line 438
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/telegram/messenger/ImageLoader;->getFileProgress(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    .line 439
    .local v2, "progress":Ljava/lang/Float;
    iget-object v4, p0, Lorg/telegram/ui/AudioPlayerActivity;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    :goto_0
    invoke-virtual {v4, v3, v5}, Lorg/telegram/ui/Components/LineProgressView;->setProgress(FZ)V

    .line 440
    iget-object v3, p0, Lorg/telegram/ui/AudioPlayerActivity;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/LineProgressView;->setVisibility(I)V

    .line 441
    iget-object v3, p0, Lorg/telegram/ui/AudioPlayerActivity;->seekBarView:Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;

    invoke-virtual {v3, v6}, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->setVisibility(I)V

    .line 442
    iget-object v3, p0, Lorg/telegram/ui/AudioPlayerActivity;->playButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 449
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v2    # "progress":Ljava/lang/Float;
    :goto_1
    return-void

    .line 439
    .restart local v1    # "fileName":Ljava/lang/String;
    .restart local v2    # "progress":Ljava/lang/Float;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 444
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v2    # "progress":Ljava/lang/Float;
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v3

    invoke-virtual {v3, p0}, Lorg/telegram/messenger/MediaController;->removeLoadingFileObserver(Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;)V

    .line 445
    iget-object v3, p0, Lorg/telegram/ui/AudioPlayerActivity;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    invoke-virtual {v3, v6}, Lorg/telegram/ui/Components/LineProgressView;->setVisibility(I)V

    .line 446
    iget-object v3, p0, Lorg/telegram/ui/AudioPlayerActivity;->seekBarView:Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;

    invoke-virtual {v3, v5}, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->setVisibility(I)V

    .line 447
    iget-object v3, p0, Lorg/telegram/ui/AudioPlayerActivity;->playButton:Landroid/widget/ImageView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_1
.end method

.method private onSeekBarDrag(F)V
    .locals 2
    .param p1, "progress"    # F

    .prologue
    .line 378
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/telegram/messenger/MediaController;->seekToProgress(Lorg/telegram/messenger/MessageObject;F)Z

    .line 379
    return-void
.end method

.method private updateProgress(Lorg/telegram/messenger/MessageObject;)V
    .locals 5
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 412
    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->seekBarView:Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;

    if-eqz v1, :cond_2

    .line 413
    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->seekBarView:Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;

    invoke-virtual {v1}, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->isDragging()Z

    move-result v1

    if-nez v1, :cond_0

    .line 414
    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->seekBarView:Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;

    iget v2, p1, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    invoke-virtual {v1, v2}, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->setProgress(F)V

    .line 416
    :cond_0
    const-string/jumbo v1, "%d:%02d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p1, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    div-int/lit8 v4, v4, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p1, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    rem-int/lit8 v4, v4, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 417
    .local v0, "timeString":Ljava/lang/String;
    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->lastTimeString:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->lastTimeString:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->lastTimeString:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 418
    :cond_1
    iput-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->lastTimeString:Ljava/lang/String;

    .line 419
    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->timeTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 422
    .end local v0    # "timeString":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private updateRepeatButton()V
    .locals 5

    .prologue
    const v2, 0x7f020224

    .line 393
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaController;->getRepeatMode()I

    move-result v0

    .line 394
    .local v0, "mode":I
    if-nez v0, :cond_1

    .line 395
    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->repeatButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 396
    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->repeatButton:Landroid/widget/ImageView;

    const-string/jumbo v2, "player_button"

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 397
    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->repeatButton:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const-string/jumbo v3, "player_button"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 409
    :cond_0
    :goto_0
    return-void

    .line 398
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 399
    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->repeatButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 400
    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->repeatButton:Landroid/widget/ImageView;

    const-string/jumbo v2, "player_buttonActive"

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 401
    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->repeatButton:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const-string/jumbo v3, "player_buttonActive"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 402
    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->repeatButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->lightColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 403
    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 404
    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->repeatButton:Landroid/widget/ImageView;

    const v2, 0x7f020225

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 405
    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->repeatButton:Landroid/widget/ImageView;

    const-string/jumbo v2, "player_buttonActive"

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 406
    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->repeatButton:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const-string/jumbo v3, "player_buttonActive"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 407
    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->repeatButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->lightColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method private updateShuffleButton()V
    .locals 4

    .prologue
    .line 382
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->isShuffleMusic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->shuffleButton:Landroid/widget/ImageView;

    const-string/jumbo v1, "player_buttonActive"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 384
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->shuffleButton:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string/jumbo v2, "player_buttonActive"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 385
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->shuffleButton:Landroid/widget/ImageView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->lightColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 390
    :goto_0
    return-void

    .line 387
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->shuffleButton:Landroid/widget/ImageView;

    const-string/jumbo v1, "player_button"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 388
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->shuffleButton:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string/jumbo v2, "player_button"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method

.method private updateTitle(Z)V
    .locals 14
    .param p1, "shutdown"    # Z

    .prologue
    const/4 v13, 0x0

    const/4 v6, -0x1

    const/4 v12, 0x0

    .line 452
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v5

    .line 453
    .local v5, "messageObject":Lorg/telegram/messenger/MessageObject;
    if-nez v5, :cond_0

    if-nez p1, :cond_1

    :cond_0
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v7

    if-nez v7, :cond_4

    .line 454
    :cond_1
    iget-object v7, p0, Lorg/telegram/ui/AudioPlayerActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lorg/telegram/ui/AudioPlayerActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v7, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lorg/telegram/ui/AudioPlayerActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v7, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    iget-object v8, p0, Lorg/telegram/ui/AudioPlayerActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v8, v8, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, p0, :cond_3

    .line 455
    invoke-virtual {p0}, Lorg/telegram/ui/AudioPlayerActivity;->finishFragment()V

    .line 509
    :cond_2
    :goto_0
    return-void

    .line 457
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/AudioPlayerActivity;->removeSelfFromStack()V

    goto :goto_0

    .line 460
    :cond_4
    if-eqz v5, :cond_2

    .line 463
    invoke-direct {p0, v5}, Lorg/telegram/ui/AudioPlayerActivity;->checkIfMusicDownloaded(Lorg/telegram/messenger/MessageObject;)V

    .line 464
    invoke-direct {p0, v5}, Lorg/telegram/ui/AudioPlayerActivity;->updateProgress(Lorg/telegram/messenger/MessageObject;)V

    .line 466
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/MediaController;->isAudioPaused()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 467
    iget-object v7, p0, Lorg/telegram/ui/AudioPlayerActivity;->playButton:Landroid/widget/ImageView;

    iget-object v8, p0, Lorg/telegram/ui/AudioPlayerActivity;->playButton:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f020222

    const-string/jumbo v10, "player_button"

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v10

    const-string/jumbo v11, "player_buttonActive"

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v11

    invoke-static {v8, v9, v10, v11}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 473
    :goto_1
    iget-object v7, p0, Lorg/telegram/ui/AudioPlayerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v7, :cond_5

    .line 474
    sget v7, Lorg/telegram/ui/ActionBar/Theme;->defColor:I

    if-eq v7, v6, :cond_8

    .line 475
    .local v6, "tColor":I
    :goto_2
    iget-object v7, p0, Lorg/telegram/ui/AudioPlayerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getMusicTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 476
    iget-object v7, p0, Lorg/telegram/ui/AudioPlayerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/ActionBar;->getTitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v7

    invoke-virtual {v7, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 477
    iget-object v7, p0, Lorg/telegram/ui/AudioPlayerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getMusicAuthor()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 479
    .end local v6    # "tColor":I
    :cond_5
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/MediaController;->getAudioInfo()Lorg/telegram/messenger/audioinfo/AudioInfo;

    move-result-object v2

    .line 480
    .local v2, "audioInfo":Lorg/telegram/messenger/audioinfo/AudioInfo;
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getCover()Landroid/graphics/Bitmap;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 481
    iget-object v7, p0, Lorg/telegram/ui/AudioPlayerActivity;->placeholder:Landroid/widget/ImageView;

    invoke-virtual {v2}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getCover()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 482
    iget-object v7, p0, Lorg/telegram/ui/AudioPlayerActivity;->placeholder:Landroid/widget/ImageView;

    invoke-virtual {v7, v12, v12, v12, v12}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 483
    iget-object v7, p0, Lorg/telegram/ui/AudioPlayerActivity;->placeholder:Landroid/widget/ImageView;

    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 484
    iget-object v7, p0, Lorg/telegram/ui/AudioPlayerActivity;->placeholder:Landroid/widget/ImageView;

    invoke-virtual {v7, v13}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 485
    iget-object v7, p0, Lorg/telegram/ui/AudioPlayerActivity;->placeholder:Landroid/widget/ImageView;

    invoke-virtual {v7, v13}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 494
    :goto_3
    iget-object v7, p0, Lorg/telegram/ui/AudioPlayerActivity;->durationTextView:Landroid/widget/TextView;

    if-eqz v7, :cond_2

    .line 495
    const/4 v4, 0x0

    .line 496
    .local v4, "duration":I
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    .line 497
    .local v3, "document":Lorg/telegram/tgnet/TLRPC$Document;
    if-eqz v3, :cond_6

    .line 498
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_4
    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_6

    .line 499
    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 500
    .local v1, "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v7, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    if-eqz v7, :cond_a

    .line 501
    iget v4, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:I

    .line 506
    .end local v0    # "a":I
    .end local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_6
    iget-object v8, p0, Lorg/telegram/ui/AudioPlayerActivity;->durationTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_b

    const-string/jumbo v7, "%d:%02d"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    div-int/lit8 v10, v4, 0x3c

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    const/4 v10, 0x1

    rem-int/lit8 v11, v4, 0x3c

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    :goto_5
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 470
    .end local v2    # "audioInfo":Lorg/telegram/messenger/audioinfo/AudioInfo;
    .end local v3    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    .end local v4    # "duration":I
    :cond_7
    iget-object v7, p0, Lorg/telegram/ui/AudioPlayerActivity;->playButton:Landroid/widget/ImageView;

    iget-object v8, p0, Lorg/telegram/ui/AudioPlayerActivity;->playButton:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f020221

    const-string/jumbo v10, "player_button"

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v10

    const-string/jumbo v11, "player_buttonActive"

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v11

    invoke-static {v8, v9, v10, v11}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 474
    :cond_8
    const v6, -0xdededf

    goto/16 :goto_2

    .line 487
    .restart local v2    # "audioInfo":Lorg/telegram/messenger/audioinfo/AudioInfo;
    :cond_9
    iget-object v7, p0, Lorg/telegram/ui/AudioPlayerActivity;->placeholder:Landroid/widget/ImageView;

    const v8, 0x7f0201ed

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 488
    iget-object v7, p0, Lorg/telegram/ui/AudioPlayerActivity;->placeholder:Landroid/widget/ImageView;

    const/high16 v8, 0x41f00000    # 30.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v7, v12, v12, v12, v8}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 489
    iget-object v7, p0, Lorg/telegram/ui/AudioPlayerActivity;->placeholder:Landroid/widget/ImageView;

    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 490
    iget-object v7, p0, Lorg/telegram/ui/AudioPlayerActivity;->placeholder:Landroid/widget/ImageView;

    const-string/jumbo v8, "player_placeholder"

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 491
    iget-object v7, p0, Lorg/telegram/ui/AudioPlayerActivity;->placeholder:Landroid/widget/ImageView;

    new-instance v8, Landroid/graphics/PorterDuffColorFilter;

    const-string/jumbo v9, "player_placeholder"

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v9

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v8, v9, v10}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_3

    .line 498
    .restart local v0    # "a":I
    .restart local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    .restart local v3    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    .restart local v4    # "duration":I
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    .line 506
    .end local v0    # "a":I
    .end local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_b
    const-string/jumbo v7, "-:--"

    goto :goto_5
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 184
    new-instance v7, Landroid/widget/FrameLayout;

    invoke-direct {v7, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 185
    .local v7, "frameLayout":Landroid/widget/FrameLayout;
    const-string/jumbo v0, "windowBackgroundGray"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 186
    new-instance v0, Lorg/telegram/ui/AudioPlayerActivity$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/AudioPlayerActivity$1;-><init>(Lorg/telegram/ui/AudioPlayerActivity;)V

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 192
    iput-object v7, p0, Lorg/telegram/ui/AudioPlayerActivity;->fragmentView:Landroid/view/View;

    .line 195
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v1, "player_actionBar"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 196
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v1, 0x7f0200b6

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 197
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v1, "player_actionBarItems"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 198
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v1, "player_actionBarSelector"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 199
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v1, "player_actionBarTitle"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 200
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v1, "player_actionBarSubtitle"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitleColor(I)V

    .line 201
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->defColor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 v9, -0x1

    .line 203
    .local v9, "tColor":I
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->showActionModeTop()V

    .line 205
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v1, "player_actionBarTop"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionModeTopColor(I)V

    .line 207
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/AudioPlayerActivity$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/AudioPlayerActivity$2;-><init>(Lorg/telegram/ui/AudioPlayerActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 216
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->placeholder:Landroid/widget/ImageView;

    .line 217
    iget-object v10, p0, Lorg/telegram/ui/AudioPlayerActivity;->placeholder:Landroid/widget/ImageView;

    const/4 v0, -0x1

    const/high16 v1, -0x40800000    # -1.0f

    const/16 v2, 0x33

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x42840000    # 66.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v10, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    new-instance v8, Landroid/view/View;

    invoke-direct {v8, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 220
    .local v8, "shadow":Landroid/view/View;
    const v0, 0x7f0200b2

    invoke-virtual {v8, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 221
    const/4 v0, -0x1

    const/high16 v1, 0x40400000    # 3.0f

    const/16 v2, 0x53

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x42c00000    # 96.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 223
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->seekBarContainer:Landroid/widget/FrameLayout;

    .line 224
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->seekBarContainer:Landroid/widget/FrameLayout;

    const-string/jumbo v1, "player_seekBarBackground"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 225
    iget-object v10, p0, Lorg/telegram/ui/AudioPlayerActivity;->seekBarContainer:Landroid/widget/FrameLayout;

    const/4 v0, -0x1

    const/high16 v1, 0x41f00000    # 30.0f

    const/16 v2, 0x53

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x42840000    # 66.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v10, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 227
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->timeTextView:Landroid/widget/TextView;

    .line 228
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->timeTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 229
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->timeTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "player_time"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 230
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->timeTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->lightColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 231
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->timeTextView:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 232
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->timeTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "0:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->seekBarContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->timeTextView:Landroid/widget/TextView;

    const/16 v2, 0x2c

    const/4 v3, -0x1

    const/16 v4, 0x33

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->durationTextView:Landroid/widget/TextView;

    .line 236
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->durationTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 237
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->durationTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "player_duration"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 238
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->durationTextView:Landroid/widget/TextView;

    const v1, -0x757576

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 239
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->durationTextView:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 240
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->durationTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "3:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->seekBarContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->durationTextView:Landroid/widget/TextView;

    const/16 v2, 0x2c

    const/4 v3, -0x1

    const/16 v4, 0x35

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 243
    new-instance v0, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;-><init>(Lorg/telegram/ui/AudioPlayerActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->seekBarView:Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;

    .line 244
    iget-object v10, p0, Lorg/telegram/ui/AudioPlayerActivity;->seekBarContainer:Landroid/widget/FrameLayout;

    iget-object v11, p0, Lorg/telegram/ui/AudioPlayerActivity;->seekBarView:Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;

    const/4 v0, -0x1

    const/high16 v1, -0x40800000    # -1.0f

    const/16 v2, 0x33

    const/high16 v3, 0x42000000    # 32.0f

    const/4 v4, 0x0

    const/high16 v5, 0x42000000    # 32.0f

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v10, v11, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    new-instance v0, Lorg/telegram/ui/Components/LineProgressView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/LineProgressView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    .line 247
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/LineProgressView;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    const-string/jumbo v1, "player_progressBackground"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/LineProgressView;->setBackgroundColor(I)V

    .line 249
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    const-string/jumbo v1, "player_progress"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/LineProgressView;->setProgressColor(I)V

    .line 250
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->lightColor:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/LineProgressView;->setProgressColor(I)V

    .line 251
    iget-object v10, p0, Lorg/telegram/ui/AudioPlayerActivity;->seekBarContainer:Landroid/widget/FrameLayout;

    iget-object v11, p0, Lorg/telegram/ui/AudioPlayerActivity;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    const/4 v0, -0x1

    const/high16 v1, 0x40000000    # 2.0f

    const/16 v2, 0x13

    const/high16 v3, 0x42300000    # 44.0f

    const/4 v4, 0x0

    const/high16 v5, 0x42300000    # 44.0f

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v10, v11, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 253
    new-instance v0, Lorg/telegram/ui/AudioPlayerActivity$3;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/AudioPlayerActivity$3;-><init>(Lorg/telegram/ui/AudioPlayerActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->bottomView:Landroid/widget/FrameLayout;

    .line 264
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->bottomView:Landroid/widget/FrameLayout;

    const-string/jumbo v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 265
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->bottomView:Landroid/widget/FrameLayout;

    const/4 v1, -0x1

    const/16 v2, 0x42

    const/16 v3, 0x53

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 267
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->buttons:[Landroid/widget/ImageView;

    const/4 v1, 0x0

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/AudioPlayerActivity;->repeatButton:Landroid/widget/ImageView;

    aput-object v2, v0, v1

    .line 268
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->repeatButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 269
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->bottomView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->repeatButton:Landroid/widget/ImageView;

    const/16 v2, 0x30

    const/16 v3, 0x30

    const/16 v4, 0x33

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 270
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->repeatButton:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/AudioPlayerActivity$4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/AudioPlayerActivity$4;-><init>(Lorg/telegram/ui/AudioPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->buttons:[Landroid/widget/ImageView;

    const/4 v1, 0x1

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/AudioPlayerActivity;->prevButton:Landroid/widget/ImageView;

    aput-object v2, v0, v1

    .line 279
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->prevButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 280
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->prevButton:Landroid/widget/ImageView;

    const v1, 0x7f020223

    const-string/jumbo v2, "player_button"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "player_buttonActive"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {p1, v1, v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 282
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->bottomView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->prevButton:Landroid/widget/ImageView;

    const/16 v2, 0x30

    const/16 v3, 0x30

    const/16 v4, 0x33

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 283
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->prevButton:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/AudioPlayerActivity$5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/AudioPlayerActivity$5;-><init>(Lorg/telegram/ui/AudioPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->buttons:[Landroid/widget/ImageView;

    const/4 v1, 0x2

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/AudioPlayerActivity;->playButton:Landroid/widget/ImageView;

    aput-object v2, v0, v1

    .line 291
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->playButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 292
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->playButton:Landroid/widget/ImageView;

    const v1, 0x7f020222

    const-string/jumbo v2, "player_button"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "player_buttonActive"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {p1, v1, v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 294
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->bottomView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->playButton:Landroid/widget/ImageView;

    const/16 v2, 0x30

    const/16 v3, 0x30

    const/16 v4, 0x33

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 295
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->playButton:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/AudioPlayerActivity$6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/AudioPlayerActivity$6;-><init>(Lorg/telegram/ui/AudioPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->buttons:[Landroid/widget/ImageView;

    const/4 v1, 0x3

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/AudioPlayerActivity;->nextButton:Landroid/widget/ImageView;

    aput-object v2, v0, v1

    .line 310
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->nextButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 311
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->nextButton:Landroid/widget/ImageView;

    const v1, 0x7f020220

    const-string/jumbo v2, "player_button"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "player_buttonActive"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {p1, v1, v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 313
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->bottomView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->nextButton:Landroid/widget/ImageView;

    const/16 v2, 0x30

    const/16 v3, 0x30

    const/16 v4, 0x33

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 314
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->nextButton:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/AudioPlayerActivity$7;

    invoke-direct {v1, p0}, Lorg/telegram/ui/AudioPlayerActivity$7;-><init>(Lorg/telegram/ui/AudioPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->buttons:[Landroid/widget/ImageView;

    const/4 v1, 0x4

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/AudioPlayerActivity;->shuffleButton:Landroid/widget/ImageView;

    aput-object v2, v0, v1

    .line 322
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->shuffleButton:Landroid/widget/ImageView;

    const v1, 0x7f020226

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 323
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->shuffleButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 324
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->bottomView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->shuffleButton:Landroid/widget/ImageView;

    const/16 v2, 0x30

    const/16 v3, 0x30

    const/16 v4, 0x33

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 325
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->shuffleButton:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/AudioPlayerActivity$8;

    invoke-direct {v1, p0}, Lorg/telegram/ui/AudioPlayerActivity$8;-><init>(Lorg/telegram/ui/AudioPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/AudioPlayerActivity;->updateTitle(Z)V

    .line 334
    invoke-direct {p0}, Lorg/telegram/ui/AudioPlayerActivity;->updateRepeatButton()V

    .line 335
    invoke-direct {p0}, Lorg/telegram/ui/AudioPlayerActivity;->updateShuffleButton()V

    .line 337
    return-object v7

    .line 201
    .end local v8    # "shadow":Landroid/view/View;
    .end local v9    # "tColor":I
    :cond_1
    const v9, -0xdededf

    goto/16 :goto_0
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    .line 342
    sget v1, Lorg/telegram/messenger/NotificationCenter;->audioDidStarted:I

    if-eq p1, v1, :cond_0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->audioPlayStateChanged:I

    if-eq p1, v1, :cond_0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->audioDidReset:I

    if-ne p1, v1, :cond_3

    .line 343
    :cond_0
    sget v1, Lorg/telegram/messenger/NotificationCenter;->audioDidReset:I

    if-ne p1, v1, :cond_2

    aget-object v1, p2, v2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    invoke-direct {p0, v1}, Lorg/telegram/ui/AudioPlayerActivity;->updateTitle(Z)V

    .line 350
    :cond_1
    :goto_1
    return-void

    .line 343
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 344
    :cond_3
    sget v1, Lorg/telegram/messenger/NotificationCenter;->audioProgressDidChanged:I

    if-ne p1, v1, :cond_1

    .line 345
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    .line 346
    .local v0, "messageObject":Lorg/telegram/messenger/MessageObject;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 347
    invoke-direct {p0, v0}, Lorg/telegram/ui/AudioPlayerActivity;->updateProgress(Lorg/telegram/messenger/MessageObject;)V

    goto :goto_1
.end method

.method public getObserverTag()I
    .locals 1

    .prologue
    .line 374
    iget v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->TAG:I

    return v0
.end method

.method public getThemeDescriptions()[Lorg/telegram/ui/ActionBar/ThemeDescription;
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 513
    const/16 v0, 0x1a

    new-array v8, v0, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->fragmentView:Landroid/view/View;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const-string/jumbo v7, "windowBackgroundGray"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v10

    const/4 v9, 0x1

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->bottomView:Landroid/widget/FrameLayout;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const-string/jumbo v7, "windowBackgroundWhite"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/4 v9, 0x2

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const-string/jumbo v7, "player_actionBar"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/4 v9, 0x3

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const-string/jumbo v7, "player_actionBarItems"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/4 v9, 0x4

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const-string/jumbo v7, "player_actionBarTitle"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/4 v9, 0x5

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBTITLECOLOR:I

    const-string/jumbo v7, "player_actionBarSubtitle"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/4 v9, 0x6

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const-string/jumbo v7, "player_actionBarSelector"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/4 v9, 0x7

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_AM_TOPBACKGROUND:I

    const-string/jumbo v7, "player_actionBarTop"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/16 v9, 0x8

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->seekBarContainer:Landroid/widget/FrameLayout;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const-string/jumbo v7, "player_seekBarBackground"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/16 v9, 0x9

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->timeTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const-string/jumbo v7, "player_time"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/16 v9, 0xa

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->durationTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const-string/jumbo v7, "player_time"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/16 v9, 0xb

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const-string/jumbo v7, "player_progressBackground"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/16 v9, 0xc

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    const-string/jumbo v7, "player_progress"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/16 v9, 0xd

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->seekBarView:Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;

    iget-object v2, p0, Lorg/telegram/ui/AudioPlayerActivity;->seekBarView:Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;

    .line 532
    invoke-static {v2}, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->access$400(Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;)Landroid/graphics/Paint;

    move-result-object v4

    const-string/jumbo v7, "player_progressBackground"

    move v2, v10

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/16 v9, 0xe

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->seekBarView:Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;

    iget-object v2, p0, Lorg/telegram/ui/AudioPlayerActivity;->seekBarView:Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;

    .line 533
    invoke-static {v2}, Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;->access$500(Lorg/telegram/ui/AudioPlayerActivity$SeekBarView;)Landroid/graphics/Paint;

    move-result-object v4

    const-string/jumbo v7, "player_progress"

    move v2, v10

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/16 v9, 0xf

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->repeatButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    or-int/2addr v2, v4

    const-string/jumbo v7, "player_buttonActive"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/16 v9, 0x10

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->repeatButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    or-int/2addr v2, v4

    const-string/jumbo v7, "player_button"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/16 v9, 0x11

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->shuffleButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    or-int/2addr v2, v4

    const-string/jumbo v7, "player_buttonActive"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/16 v9, 0x12

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->shuffleButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    or-int/2addr v2, v4

    const-string/jumbo v7, "player_button"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/16 v9, 0x13

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->placeholder:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    or-int/2addr v2, v4

    const-string/jumbo v7, "player_placeholder"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/16 v9, 0x14

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->prevButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_USEBACKGROUNDDRAWABLE:I

    or-int/2addr v2, v4

    const-string/jumbo v7, "player_button"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/16 v9, 0x15

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->prevButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_USEBACKGROUNDDRAWABLE:I

    or-int/2addr v2, v4

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int/2addr v2, v4

    const-string/jumbo v7, "player_buttonActive"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/16 v9, 0x16

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->playButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_USEBACKGROUNDDRAWABLE:I

    or-int/2addr v2, v4

    const-string/jumbo v7, "player_button"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/16 v9, 0x17

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->playButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_USEBACKGROUNDDRAWABLE:I

    or-int/2addr v2, v4

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int/2addr v2, v4

    const-string/jumbo v7, "player_buttonActive"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/16 v9, 0x18

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->nextButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_USEBACKGROUNDDRAWABLE:I

    or-int/2addr v2, v4

    const-string/jumbo v7, "player_button"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/16 v9, 0x19

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/AudioPlayerActivity;->nextButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_USEBACKGROUNDDRAWABLE:I

    or-int/2addr v2, v4

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int/2addr v2, v4

    const-string/jumbo v7, "player_buttonActive"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    return-object v8
.end method

.method public onFailedDownload(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 355
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 2

    .prologue
    .line 164
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->generateObserverTag()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->TAG:I

    .line 165
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->audioDidReset:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 166
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->audioPlayStateChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 167
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->audioDidStarted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 168
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->audioProgressDidChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 169
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .prologue
    .line 174
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->audioDidReset:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 175
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->audioPlayStateChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 176
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->audioDidStarted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 177
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->audioProgressDidChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 178
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/MediaController;->removeLoadingFileObserver(Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;)V

    .line 179
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 180
    return-void
.end method

.method public onProgressDownload(Ljava/lang/String;F)V
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "progress"    # F

    .prologue
    .line 364
    iget-object v0, p0, Lorg/telegram/ui/AudioPlayerActivity;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lorg/telegram/ui/Components/LineProgressView;->setProgress(FZ)V

    .line 365
    return-void
.end method

.method public onProgressUpload(Ljava/lang/String;FZ)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "progress"    # F
    .param p3, "isEncrypted"    # Z

    .prologue
    .line 370
    return-void
.end method

.method public onSuccessDownload(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 360
    return-void
.end method
