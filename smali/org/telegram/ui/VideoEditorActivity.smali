.class public Lorg/telegram/ui/VideoEditorActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "VideoEditorActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;,
        Lorg/telegram/ui/VideoEditorActivity$VideoEditorActivityDelegate;
    }
.end annotation


# instance fields
.field private allowMentions:Z

.field private audioFramesSize:J

.field private bitrate:I

.field private captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

.field private captionItem:Landroid/widget/ImageView;

.field private compressItem:Landroid/widget/ImageView;

.field private compressionsCount:I

.field private created:Z

.field private currentCaption:Ljava/lang/CharSequence;

.field private currentSubtitle:Ljava/lang/String;

.field private delegate:Lorg/telegram/ui/VideoEditorActivity$VideoEditorActivityDelegate;

.field private endTime:J

.field private esimatedDuration:J

.field private estimatedSize:I

.field private firstCaptionLayout:Z

.field private inPreview:Z

.field private lastProgress:F

.field private loadInitialVideo:Z

.field private mentionLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

.field private mentionListAnimation:Landroid/animation/AnimatorSet;

.field private mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

.field private mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;

.field private muteItem:Landroid/widget/ImageView;

.field private muteVideo:Z

.field private needSeek:Z

.field private originalBitrate:I

.field private originalHeight:I

.field private originalSize:J

.field private originalWidth:I

.field private parentChatActivity:Lorg/telegram/ui/ChatActivity;

.field private pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

.field private playButton:Landroid/widget/ImageView;

.field private playerPrepared:Z

.field private previewViewEnd:I

.field private previousCompression:I

.field private progressRunnable:Ljava/lang/Runnable;

.field private progressView:Lorg/telegram/ui/Components/RadialProgressView;

.field private qualityChooseView:Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;

.field private qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

.field private requestingPreview:Z

.field private resultHeight:I

.field private resultWidth:I

.field private rotationValue:I

.field private selectedCompression:I

.field private startTime:J

.field private final sync:Ljava/lang/Object;

.field private textureView:Landroid/view/TextureView;

.field private thread:Ljava/lang/Thread;

.field private tryStartRequestPreviewOnFinish:Z

.field private videoDuration:F

.field private videoFramesSize:J

.field private videoPath:Ljava/lang/String;

.field private videoPlayer:Landroid/media/MediaPlayer;

.field private videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

.field private videoSeekBarView:Lorg/telegram/ui/Components/VideoSeekBarView;

.field private videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 356
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    .line 120
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/VideoEditorActivity;->compressionsCount:I

    .line 131
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->sync:Ljava/lang/Object;

    .line 156
    new-instance v0, Lorg/telegram/ui/VideoEditorActivity$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/VideoEditorActivity$1;-><init>(Lorg/telegram/ui/VideoEditorActivity;)V

    iput-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->progressRunnable:Ljava/lang/Runnable;

    .line 357
    const-string/jumbo v0, "videoPath"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPath:Ljava/lang/String;

    .line 358
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/VideoEditorActivity;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 83
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->sync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 83
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/VideoEditorActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 83
    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->compressionsCount:I

    return v0
.end method

.method static synthetic access$102(Lorg/telegram/ui/VideoEditorActivity;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;
    .param p1, "x1"    # Landroid/media/MediaPlayer;

    .prologue
    .line 83
    iput-object p1, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/VideoEditorActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 83
    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->selectedCompression:I

    return v0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/VideoEditorActivity;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;
    .param p1, "x1"    # I

    .prologue
    .line 83
    iput p1, p0, Lorg/telegram/ui/VideoEditorActivity;->selectedCompression:I

    return p1
.end method

.method static synthetic access$1200(Lorg/telegram/ui/VideoEditorActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lorg/telegram/ui/VideoEditorActivity;->didChangedCompressionLevel(Z)V

    return-void
.end method

.method static synthetic access$1300(Lorg/telegram/ui/VideoEditorActivity;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;
    .param p1, "x1"    # I

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lorg/telegram/ui/VideoEditorActivity;->requestVideoPreview(I)V

    return-void
.end method

.method static synthetic access$1400(Lorg/telegram/ui/VideoEditorActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 83
    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->originalHeight:I

    return v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/VideoEditorActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 83
    iget-boolean v0, p0, Lorg/telegram/ui/VideoEditorActivity;->playerPrepared:Z

    return v0
.end method

.method static synthetic access$1502(Lorg/telegram/ui/VideoEditorActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lorg/telegram/ui/VideoEditorActivity;->playerPrepared:Z

    return p1
.end method

.method static synthetic access$1600(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/PickerBottomLayoutViewer;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 83
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/VideoEditorActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lorg/telegram/ui/VideoEditorActivity;->closeCaptionEnter(Z)V

    return-void
.end method

.method static synthetic access$1800(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 83
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/VideoEditorActivity;)Landroid/view/TextureView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 83
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->textureView:Landroid/view/TextureView;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/VideoEditorActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 83
    iget-boolean v0, p0, Lorg/telegram/ui/VideoEditorActivity;->inPreview:Z

    return v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/VideoEditorActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 83
    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->rotationValue:I

    return v0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/VideoEditorActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 83
    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->originalWidth:I

    return v0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 83
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/VideoEditorActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 83
    iget-boolean v0, p0, Lorg/telegram/ui/VideoEditorActivity;->firstCaptionLayout:Z

    return v0
.end method

.method static synthetic access$2302(Lorg/telegram/ui/VideoEditorActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lorg/telegram/ui/VideoEditorActivity;->firstCaptionLayout:Z

    return p1
.end method

.method static synthetic access$2400(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/VideoEditorActivity$VideoEditorActivityDelegate;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 83
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->delegate:Lorg/telegram/ui/VideoEditorActivity$VideoEditorActivityDelegate;

    return-object v0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/VideoEditorActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 83
    iget-boolean v0, p0, Lorg/telegram/ui/VideoEditorActivity;->muteVideo:Z

    return v0
.end method

.method static synthetic access$2502(Lorg/telegram/ui/VideoEditorActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lorg/telegram/ui/VideoEditorActivity;->muteVideo:Z

    return p1
.end method

.method static synthetic access$2600(Lorg/telegram/ui/VideoEditorActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 83
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->compressItem:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/VideoEditorActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 83
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/VideoEditorActivity;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 83
    iget-wide v0, p0, Lorg/telegram/ui/VideoEditorActivity;->startTime:J

    return-wide v0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/VideoEditorActivity;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 83
    iget-wide v0, p0, Lorg/telegram/ui/VideoEditorActivity;->endTime:J

    return-wide v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/VideoEditorActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 83
    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->previewViewEnd:I

    return v0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/VideoEditorActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 83
    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->originalBitrate:I

    return v0
.end method

.method static synthetic access$302(Lorg/telegram/ui/VideoEditorActivity;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;
    .param p1, "x1"    # I

    .prologue
    .line 83
    iput p1, p0, Lorg/telegram/ui/VideoEditorActivity;->previewViewEnd:I

    return p1
.end method

.method static synthetic access$3100(Lorg/telegram/ui/VideoEditorActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 83
    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->estimatedSize:I

    return v0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/VideoEditorActivity;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 83
    iget-wide v0, p0, Lorg/telegram/ui/VideoEditorActivity;->esimatedDuration:J

    return-wide v0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/VideoEditorActivity;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 83
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->currentCaption:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/VideoEditorActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 83
    invoke-direct {p0}, Lorg/telegram/ui/VideoEditorActivity;->updateWidthHeightBitrateForCompression()V

    return-void
.end method

.method static synthetic access$3500(Lorg/telegram/ui/VideoEditorActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 83
    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->resultWidth:I

    return v0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/VideoEditorActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 83
    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->resultHeight:I

    return v0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/VideoEditorActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 83
    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->bitrate:I

    return v0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 83
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 83
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/VideoTimelineView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 83
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    return-object v0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/VideoEditorActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lorg/telegram/ui/VideoEditorActivity;->showQualityView(Z)V

    return-void
.end method

.method static synthetic access$4100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 83
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->playButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/VideoEditorActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 83
    iget-boolean v0, p0, Lorg/telegram/ui/VideoEditorActivity;->needSeek:Z

    return v0
.end method

.method static synthetic access$4202(Lorg/telegram/ui/VideoEditorActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lorg/telegram/ui/VideoEditorActivity;->needSeek:Z

    return p1
.end method

.method static synthetic access$4300(Lorg/telegram/ui/VideoEditorActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 83
    invoke-direct {p0}, Lorg/telegram/ui/VideoEditorActivity;->updateVideoInfo()V

    return-void
.end method

.method static synthetic access$4400(Lorg/telegram/ui/VideoEditorActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 83
    iget-boolean v0, p0, Lorg/telegram/ui/VideoEditorActivity;->requestingPreview:Z

    return v0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/VideoEditorActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 83
    iget-boolean v0, p0, Lorg/telegram/ui/VideoEditorActivity;->loadInitialVideo:Z

    return v0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/VideoEditorActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 83
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->progressRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Adapters/MentionsAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 83
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;

    return-object v0
.end method

.method static synthetic access$4800(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/ChatActivity;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 83
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->parentChatActivity:Lorg/telegram/ui/ChatActivity;

    return-object v0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/VideoEditorActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 83
    iget-boolean v0, p0, Lorg/telegram/ui/VideoEditorActivity;->allowMentions:Z

    return v0
.end method

.method static synthetic access$4902(Lorg/telegram/ui/VideoEditorActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lorg/telegram/ui/VideoEditorActivity;->allowMentions:Z

    return p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/VideoEditorActivity;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 83
    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoDuration:F

    return v0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/VideoEditorActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 83
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$5100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 83
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$5200(Lorg/telegram/ui/VideoEditorActivity;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 83
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->mentionListAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$5202(Lorg/telegram/ui/VideoEditorActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 83
    iput-object p1, p0, Lorg/telegram/ui/VideoEditorActivity;->mentionListAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$5300(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 83
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->mentionLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    return-object v0
.end method

.method static synthetic access$5400(Lorg/telegram/ui/VideoEditorActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 83
    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->previousCompression:I

    return v0
.end method

.method static synthetic access$5500(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 83
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->qualityChooseView:Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;

    return-object v0
.end method

.method static synthetic access$5600(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/PickerBottomLayoutViewer;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 83
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/VideoEditorActivity;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 83
    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->lastProgress:F

    return v0
.end method

.method static synthetic access$602(Lorg/telegram/ui/VideoEditorActivity;F)F
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;
    .param p1, "x1"    # F

    .prologue
    .line 83
    iput p1, p0, Lorg/telegram/ui/VideoEditorActivity;->lastProgress:F

    return p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/VideoSeekBarView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 83
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoSeekBarView:Lorg/telegram/ui/Components/VideoSeekBarView;

    return-object v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/VideoEditorActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 83
    invoke-direct {p0}, Lorg/telegram/ui/VideoEditorActivity;->onPlayComplete()V

    return-void
.end method

.method static synthetic access$900(Lorg/telegram/ui/VideoEditorActivity;)Ljava/lang/Thread;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 83
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->thread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$902(Lorg/telegram/ui/VideoEditorActivity;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;
    .param p1, "x1"    # Ljava/lang/Thread;

    .prologue
    .line 83
    iput-object p1, p0, Lorg/telegram/ui/VideoEditorActivity;->thread:Ljava/lang/Thread;

    return-object p1
.end method

.method private closeCaptionEnter(Z)V
    .locals 3
    .param p1, "apply"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1304
    if-eqz p1, :cond_0

    .line 1305
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->getFieldCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->currentCaption:Ljava/lang/CharSequence;

    .line 1307
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->setVisibility(I)V

    .line 1308
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1309
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoSeekBarView:Lorg/telegram/ui/Components/VideoSeekBarView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoSeekBarView;->setVisibility(I)V

    .line 1310
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoTimelineView;->setVisibility(I)V

    .line 1313
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-boolean v0, p0, Lorg/telegram/ui/VideoEditorActivity;->muteVideo:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "AttachGif"

    const v2, 0x7f0700a7

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1314
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-boolean v0, p0, Lorg/telegram/ui/VideoEditorActivity;->muteVideo:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 1315
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->captionItem:Landroid/widget/ImageView;

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->currentCaption:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f020211

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1316
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1317
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->hidePopup()V

    .line 1319
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->closeKeyboard()V

    .line 1320
    return-void

    .line 1313
    :cond_3
    const-string/jumbo v0, "AttachVideo"

    const v2, 0x7f0700ad

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1314
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->currentSubtitle:Ljava/lang/String;

    goto :goto_1

    .line 1315
    :cond_5
    const v0, 0x7f020212

    goto :goto_2
.end method

.method private destroyPlayer()V
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 363
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 370
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 371
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 376
    :cond_1
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    .line 378
    :cond_2
    return-void

    .line 373
    :catch_0
    move-exception v0

    goto :goto_1

    .line 366
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private didChangedCompressionLevel(Z)V
    .locals 5
    .param p1, "request"    # Z

    .prologue
    .line 1223
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

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1224
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1225
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "compress_video2"

    iget v3, p0, Lorg/telegram/ui/VideoEditorActivity;->selectedCompression:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1226
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1227
    invoke-direct {p0}, Lorg/telegram/ui/VideoEditorActivity;->updateWidthHeightBitrateForCompression()V

    .line 1228
    invoke-direct {p0}, Lorg/telegram/ui/VideoEditorActivity;->updateVideoInfo()V

    .line 1229
    if-eqz p1, :cond_0

    .line 1230
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lorg/telegram/ui/VideoEditorActivity;->requestVideoPreview(I)V

    .line 1232
    :cond_0
    return-void
.end method

.method private onPlayComplete()V
    .locals 4

    .prologue
    .line 1450
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->playButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 1451
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->playButton:Landroid/widget/ImageView;

    const v2, 0x7f02028e

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1453
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->videoSeekBarView:Lorg/telegram/ui/Components/VideoSeekBarView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    if-eqz v1, :cond_1

    .line 1454
    iget-boolean v1, p0, Lorg/telegram/ui/VideoEditorActivity;->inPreview:Z

    if-eqz v1, :cond_3

    .line 1455
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->videoSeekBarView:Lorg/telegram/ui/Components/VideoSeekBarView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/VideoSeekBarView;->setProgress(F)V

    .line 1461
    :cond_1
    :goto_0
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_2

    .line 1462
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    if-eqz v1, :cond_2

    .line 1463
    iget-boolean v1, p0, Lorg/telegram/ui/VideoEditorActivity;->inPreview:Z

    if-eqz v1, :cond_4

    .line 1464
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1473
    :cond_2
    :goto_1
    return-void

    .line 1457
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->videoSeekBarView:Lorg/telegram/ui/Components/VideoSeekBarView;

    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/VideoTimelineView;->getLeftProgress()F

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/VideoSeekBarView;->setProgress(F)V

    goto :goto_0

    .line 1466
    :cond_4
    :try_start_1
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/VideoTimelineView;->getLeftProgress()F

    move-result v2

    iget v3, p0, Lorg/telegram/ui/VideoEditorActivity;->videoDuration:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1470
    :catch_0
    move-exception v0

    .line 1471
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private processOpenVideo()Z
    .locals 32

    .prologue
    .line 1583
    :try_start_0
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/VideoEditorActivity;->videoPath:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1584
    .local v10, "file":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v28

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/ui/VideoEditorActivity;->originalSize:J

    .line 1586
    new-instance v14, Lcom/coremedia/iso/IsoFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/VideoEditorActivity;->videoPath:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-direct {v14, v0}, Lcom/coremedia/iso/IsoFile;-><init>(Ljava/lang/String;)V

    .line 1587
    .local v14, "isoFile":Lcom/coremedia/iso/IsoFile;
    const-string/jumbo v27, "/moov/trak/"

    move-object/from16 v0, v27

    invoke-static {v14, v0}, Lcom/googlecode/mp4parser/util/Path;->getPaths(Lcom/coremedia/iso/boxes/Container;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 1588
    .local v8, "boxes":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/Box;>;"
    const/16 v26, 0x0

    .line 1589
    .local v26, "trackHeaderBox":Lcom/coremedia/iso/boxes/TrackHeaderBox;
    const/4 v12, 0x1

    .line 1590
    .local v12, "isAvc":Z
    const/4 v13, 0x1

    .line 1592
    .local v13, "isMp4A":Z
    const-string/jumbo v27, "/moov/trak/mdia/minf/stbl/stsd/mp4a/"

    move-object/from16 v0, v27

    invoke-static {v14, v0}, Lcom/googlecode/mp4parser/util/Path;->getPath(Lcom/coremedia/iso/boxes/Container;Ljava/lang/String;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v7

    .line 1593
    .local v7, "boxTest":Lcom/coremedia/iso/boxes/Box;
    if-nez v7, :cond_0

    .line 1594
    const/4 v13, 0x0

    .line 1597
    :cond_0
    if-nez v13, :cond_1

    .line 1598
    const/16 v27, 0x0

    .line 1666
    .end local v7    # "boxTest":Lcom/coremedia/iso/boxes/Box;
    .end local v8    # "boxes":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/Box;>;"
    .end local v10    # "file":Ljava/io/File;
    .end local v12    # "isAvc":Z
    .end local v13    # "isMp4A":Z
    .end local v14    # "isoFile":Lcom/coremedia/iso/IsoFile;
    .end local v26    # "trackHeaderBox":Lcom/coremedia/iso/boxes/TrackHeaderBox;
    :goto_0
    return v27

    .line 1601
    .restart local v7    # "boxTest":Lcom/coremedia/iso/boxes/Box;
    .restart local v8    # "boxes":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/Box;>;"
    .restart local v10    # "file":Ljava/io/File;
    .restart local v12    # "isAvc":Z
    .restart local v13    # "isMp4A":Z
    .restart local v14    # "isoFile":Lcom/coremedia/iso/IsoFile;
    .restart local v26    # "trackHeaderBox":Lcom/coremedia/iso/boxes/TrackHeaderBox;
    :cond_1
    const-string/jumbo v27, "/moov/trak/mdia/minf/stbl/stsd/avc1/"

    move-object/from16 v0, v27

    invoke-static {v14, v0}, Lcom/googlecode/mp4parser/util/Path;->getPath(Lcom/coremedia/iso/boxes/Container;Ljava/lang/String;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v7

    .line 1602
    if-nez v7, :cond_2

    .line 1603
    const/4 v12, 0x0

    .line 1606
    :cond_2
    const/4 v5, 0x0

    .local v5, "b":I
    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v5, v0, :cond_6

    .line 1607
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/coremedia/iso/boxes/Box;

    .line 1608
    .local v6, "box":Lcom/coremedia/iso/boxes/Box;
    move-object v0, v6

    check-cast v0, Lcom/coremedia/iso/boxes/TrackBox;

    move-object/from16 v23, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1609
    .local v23, "trackBox":Lcom/coremedia/iso/boxes/TrackBox;
    const-wide/16 v20, 0x0

    .line 1610
    .local v20, "sampleSizes":J
    const-wide/16 v24, 0x0

    .line 1612
    .local v24, "trackBitrate":J
    :try_start_1
    invoke-virtual/range {v23 .. v23}, Lcom/coremedia/iso/boxes/TrackBox;->getMediaBox()Lcom/coremedia/iso/boxes/MediaBox;

    move-result-object v16

    .line 1613
    .local v16, "mediaBox":Lcom/coremedia/iso/boxes/MediaBox;
    invoke-virtual/range {v16 .. v16}, Lcom/coremedia/iso/boxes/MediaBox;->getMediaHeaderBox()Lcom/coremedia/iso/boxes/MediaHeaderBox;

    move-result-object v17

    .line 1614
    .local v17, "mediaHeaderBox":Lcom/coremedia/iso/boxes/MediaHeaderBox;
    invoke-virtual/range {v16 .. v16}, Lcom/coremedia/iso/boxes/MediaBox;->getMediaInformationBox()Lcom/coremedia/iso/boxes/MediaInformationBox;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/coremedia/iso/boxes/MediaInformationBox;->getSampleTableBox()Lcom/coremedia/iso/boxes/SampleTableBox;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/coremedia/iso/boxes/SampleTableBox;->getSampleSizeBox()Lcom/coremedia/iso/boxes/SampleSizeBox;

    move-result-object v19

    .line 1615
    .local v19, "sampleSizeBox":Lcom/coremedia/iso/boxes/SampleSizeBox;
    invoke-virtual/range {v19 .. v19}, Lcom/coremedia/iso/boxes/SampleSizeBox;->getSampleSizes()[J

    move-result-object v22

    .line 1616
    .local v22, "sizes":[J
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_2
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v4, v0, :cond_3

    .line 1617
    aget-wide v28, v22, v4

    add-long v20, v20, v28

    .line 1616
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1619
    :cond_3
    invoke-virtual/range {v17 .. v17}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->getDuration()J

    move-result-wide v28

    move-wide/from16 v0, v28

    long-to-float v0, v0

    move/from16 v27, v0

    invoke-virtual/range {v17 .. v17}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->getTimescale()J

    move-result-wide v28

    move-wide/from16 v0, v28

    long-to-float v0, v0

    move/from16 v28, v0

    div-float v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/VideoEditorActivity;->videoDuration:F

    .line 1620
    const-wide/16 v28, 0x8

    mul-long v28, v28, v20

    move-wide/from16 v0, v28

    long-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/VideoEditorActivity;->videoDuration:F

    move/from16 v28, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    div-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v24, v0

    .line 1624
    .end local v4    # "a":I
    .end local v16    # "mediaBox":Lcom/coremedia/iso/boxes/MediaBox;
    .end local v17    # "mediaHeaderBox":Lcom/coremedia/iso/boxes/MediaHeaderBox;
    .end local v19    # "sampleSizeBox":Lcom/coremedia/iso/boxes/SampleSizeBox;
    .end local v22    # "sizes":[J
    :goto_3
    :try_start_2
    invoke-virtual/range {v23 .. v23}, Lcom/coremedia/iso/boxes/TrackBox;->getTrackHeaderBox()Lcom/coremedia/iso/boxes/TrackHeaderBox;

    move-result-object v11

    .line 1625
    .local v11, "headerBox":Lcom/coremedia/iso/boxes/TrackHeaderBox;
    invoke-virtual {v11}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getWidth()D

    move-result-wide v28

    const-wide/16 v30, 0x0

    cmpl-double v27, v28, v30

    if-eqz v27, :cond_5

    invoke-virtual {v11}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getHeight()D

    move-result-wide v28

    const-wide/16 v30, 0x0

    cmpl-double v27, v28, v30

    if-eqz v27, :cond_5

    .line 1626
    move-object/from16 v26, v11

    .line 1627
    const-wide/32 v28, 0x186a0

    div-long v28, v24, v28

    const-wide/32 v30, 0x186a0

    mul-long v28, v28, v30

    move-wide/from16 v0, v28

    long-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/VideoEditorActivity;->bitrate:I

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/VideoEditorActivity;->originalBitrate:I

    .line 1628
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/VideoEditorActivity;->bitrate:I

    move/from16 v27, v0

    const v28, 0xdbba0

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_4

    .line 1629
    const v27, 0xdbba0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/VideoEditorActivity;->bitrate:I

    .line 1631
    :cond_4
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/ui/VideoEditorActivity;->videoFramesSize:J

    move-wide/from16 v28, v0

    add-long v28, v28, v20

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/ui/VideoEditorActivity;->videoFramesSize:J

    .line 1606
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 1621
    .end local v11    # "headerBox":Lcom/coremedia/iso/boxes/TrackHeaderBox;
    :catch_0
    move-exception v9

    .line 1622
    .local v9, "e":Ljava/lang/Exception;
    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 1660
    .end local v5    # "b":I
    .end local v6    # "box":Lcom/coremedia/iso/boxes/Box;
    .end local v7    # "boxTest":Lcom/coremedia/iso/boxes/Box;
    .end local v8    # "boxes":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/Box;>;"
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v10    # "file":Ljava/io/File;
    .end local v12    # "isAvc":Z
    .end local v13    # "isMp4A":Z
    .end local v14    # "isoFile":Lcom/coremedia/iso/IsoFile;
    .end local v20    # "sampleSizes":J
    .end local v23    # "trackBox":Lcom/coremedia/iso/boxes/TrackBox;
    .end local v24    # "trackBitrate":J
    .end local v26    # "trackHeaderBox":Lcom/coremedia/iso/boxes/TrackHeaderBox;
    :catch_1
    move-exception v9

    .line 1661
    .restart local v9    # "e":Ljava/lang/Exception;
    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1662
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 1633
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v5    # "b":I
    .restart local v6    # "box":Lcom/coremedia/iso/boxes/Box;
    .restart local v7    # "boxTest":Lcom/coremedia/iso/boxes/Box;
    .restart local v8    # "boxes":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/Box;>;"
    .restart local v10    # "file":Ljava/io/File;
    .restart local v11    # "headerBox":Lcom/coremedia/iso/boxes/TrackHeaderBox;
    .restart local v12    # "isAvc":Z
    .restart local v13    # "isMp4A":Z
    .restart local v14    # "isoFile":Lcom/coremedia/iso/IsoFile;
    .restart local v20    # "sampleSizes":J
    .restart local v23    # "trackBox":Lcom/coremedia/iso/boxes/TrackBox;
    .restart local v24    # "trackBitrate":J
    .restart local v26    # "trackHeaderBox":Lcom/coremedia/iso/boxes/TrackHeaderBox;
    :cond_5
    :try_start_3
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/ui/VideoEditorActivity;->audioFramesSize:J

    move-wide/from16 v28, v0

    add-long v28, v28, v20

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/ui/VideoEditorActivity;->audioFramesSize:J

    goto :goto_4

    .line 1636
    .end local v6    # "box":Lcom/coremedia/iso/boxes/Box;
    .end local v11    # "headerBox":Lcom/coremedia/iso/boxes/TrackHeaderBox;
    .end local v20    # "sampleSizes":J
    .end local v23    # "trackBox":Lcom/coremedia/iso/boxes/TrackBox;
    .end local v24    # "trackBitrate":J
    :cond_6
    if-nez v26, :cond_7

    .line 1637
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 1640
    :cond_7
    invoke-virtual/range {v26 .. v26}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getMatrix()Lcom/googlecode/mp4parser/util/Matrix;

    move-result-object v15

    .line 1641
    .local v15, "matrix":Lcom/googlecode/mp4parser/util/Matrix;
    sget-object v27, Lcom/googlecode/mp4parser/util/Matrix;->ROTATE_90:Lcom/googlecode/mp4parser/util/Matrix;

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Lcom/googlecode/mp4parser/util/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_a

    .line 1642
    const/16 v27, 0x5a

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/VideoEditorActivity;->rotationValue:I

    .line 1648
    :cond_8
    :goto_5
    invoke-virtual/range {v26 .. v26}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getWidth()D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/VideoEditorActivity;->originalWidth:I

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/VideoEditorActivity;->resultWidth:I

    .line 1649
    invoke-virtual/range {v26 .. v26}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getHeight()D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/VideoEditorActivity;->originalHeight:I

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/VideoEditorActivity;->resultHeight:I

    .line 1651
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/VideoEditorActivity;->videoDuration:F

    move/from16 v27, v0

    const/high16 v28, 0x447a0000    # 1000.0f

    mul-float v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/VideoEditorActivity;->videoDuration:F

    .line 1653
    sget-object v27, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "mainconfig"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-static {}, Lorg/telegram/messenger/ChangeUserHelper;->getUserTag()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v18

    .line 1654
    .local v18, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v27, "compress_video2"

    const/16 v28, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/VideoEditorActivity;->selectedCompression:I

    .line 1655
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/VideoEditorActivity;->updateWidthHeightBitrateForCompression()V

    .line 1657
    if-nez v12, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/VideoEditorActivity;->resultWidth:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/VideoEditorActivity;->originalWidth:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/VideoEditorActivity;->resultHeight:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/VideoEditorActivity;->originalHeight:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_c

    .line 1658
    :cond_9
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 1643
    .end local v18    # "preferences":Landroid/content/SharedPreferences;
    :cond_a
    sget-object v27, Lcom/googlecode/mp4parser/util/Matrix;->ROTATE_180:Lcom/googlecode/mp4parser/util/Matrix;

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Lcom/googlecode/mp4parser/util/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_b

    .line 1644
    const/16 v27, 0xb4

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/VideoEditorActivity;->rotationValue:I

    goto/16 :goto_5

    .line 1645
    :cond_b
    sget-object v27, Lcom/googlecode/mp4parser/util/Matrix;->ROTATE_270:Lcom/googlecode/mp4parser/util/Matrix;

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Lcom/googlecode/mp4parser/util/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_8

    .line 1646
    const/16 v27, 0x10e

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/VideoEditorActivity;->rotationValue:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_5

    .line 1665
    .restart local v18    # "preferences":Landroid/content/SharedPreferences;
    :cond_c
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/VideoEditorActivity;->updateVideoInfo()V

    .line 1666
    const/16 v27, 0x1

    goto/16 :goto_0
.end method

.method private reinitPlayer(Ljava/lang/String;)Z
    .locals 7
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 381
    invoke-direct {p0}, Lorg/telegram/ui/VideoEditorActivity;->destroyPlayer()V

    .line 382
    iget-object v5, p0, Lorg/telegram/ui/VideoEditorActivity;->playButton:Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    .line 383
    iget-object v5, p0, Lorg/telegram/ui/VideoEditorActivity;->playButton:Landroid/widget/ImageView;

    const v6, 0x7f02028e

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 385
    :cond_0
    iput v2, p0, Lorg/telegram/ui/VideoEditorActivity;->lastProgress:F

    .line 386
    new-instance v5, Landroid/media/MediaPlayer;

    invoke-direct {v5}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    .line 387
    iget-object v5, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    new-instance v6, Lorg/telegram/ui/VideoEditorActivity$2;

    invoke-direct {v6, p0}, Lorg/telegram/ui/VideoEditorActivity$2;-><init>(Lorg/telegram/ui/VideoEditorActivity;)V

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 402
    :try_start_0
    iget-object v5, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 403
    iget-object v5, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    iget-boolean v5, p0, Lorg/telegram/ui/VideoEditorActivity;->muteVideo:Z

    if-eqz v5, :cond_4

    .line 409
    .local v2, "volume":F
    :goto_0
    iget-object v5, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    if-eqz v5, :cond_1

    .line 410
    iget-object v5, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5, v2, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 412
    :cond_1
    iget-object v5, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPath:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    move v3, v4

    :cond_2
    iput-boolean v3, p0, Lorg/telegram/ui/VideoEditorActivity;->inPreview:Z

    .line 413
    iget-object v3, p0, Lorg/telegram/ui/VideoEditorActivity;->textureView:Landroid/view/TextureView;

    if-eqz v3, :cond_3

    .line 415
    :try_start_1
    new-instance v1, Landroid/view/Surface;

    iget-object v3, p0, Lorg/telegram/ui/VideoEditorActivity;->textureView:Landroid/view/TextureView;

    invoke-virtual {v3}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 416
    .local v1, "s":Landroid/view/Surface;
    iget-object v3, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 421
    .end local v1    # "s":Landroid/view/Surface;
    .end local v2    # "volume":F
    :cond_3
    :goto_1
    return v4

    .line 404
    :catch_0
    move-exception v0

    .line 405
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move v4, v3

    .line 406
    goto :goto_1

    .line 408
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    .line 417
    .restart local v2    # "volume":F
    :catch_1
    move-exception v0

    .line 418
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private requestVideoPreview(I)V
    .locals 10
    .param p1, "request"    # I

    .prologue
    .line 1323
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v6, :cond_0

    .line 1324
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/MediaController;->cancelVideoConvert(Lorg/telegram/messenger/MessageObject;)V

    .line 1326
    :cond_0
    iget-boolean v6, p0, Lorg/telegram/ui/VideoEditorActivity;->requestingPreview:Z

    if-eqz v6, :cond_2

    iget-boolean v6, p0, Lorg/telegram/ui/VideoEditorActivity;->tryStartRequestPreviewOnFinish:Z

    if-nez v6, :cond_2

    const/4 v3, 0x1

    .line 1327
    .local v3, "wasRequestingPreview":Z
    :goto_0
    const/4 v6, 0x0

    iput-boolean v6, p0, Lorg/telegram/ui/VideoEditorActivity;->requestingPreview:Z

    .line 1328
    const/4 v6, 0x0

    iput-boolean v6, p0, Lorg/telegram/ui/VideoEditorActivity;->loadInitialVideo:Z

    .line 1329
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/RadialProgressView;->setVisibility(I)V

    .line 1330
    const/4 v6, 0x1

    if-ne p1, v6, :cond_a

    .line 1331
    iget v6, p0, Lorg/telegram/ui/VideoEditorActivity;->selectedCompression:I

    iget v7, p0, Lorg/telegram/ui/VideoEditorActivity;->compressionsCount:I

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_4

    .line 1332
    const/4 v6, 0x0

    iput-boolean v6, p0, Lorg/telegram/ui/VideoEditorActivity;->tryStartRequestPreviewOnFinish:Z

    .line 1333
    if-nez v3, :cond_3

    .line 1334
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPath:Ljava/lang/String;

    invoke-direct {p0, v6}, Lorg/telegram/ui/VideoEditorActivity;->reinitPlayer(Ljava/lang/String;)Z

    .line 1385
    :cond_1
    :goto_1
    return-void

    .line 1326
    .end local v3    # "wasRequestingPreview":Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 1336
    .restart local v3    # "wasRequestingPreview":Z
    :cond_3
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->playButton:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1337
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/RadialProgressView;->setVisibility(I)V

    .line 1338
    const/4 v6, 0x1

    iput-boolean v6, p0, Lorg/telegram/ui/VideoEditorActivity;->loadInitialVideo:Z

    goto :goto_1

    .line 1341
    :cond_4
    invoke-direct {p0}, Lorg/telegram/ui/VideoEditorActivity;->destroyPlayer()V

    .line 1342
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v6, :cond_5

    .line 1343
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 1344
    .local v2, "message":Lorg/telegram/tgnet/TLRPC$TL_message;
    const/4 v6, 0x0

    iput v6, v2, Lorg/telegram/tgnet/TLRPC$TL_message;->id:I

    .line 1345
    const-string/jumbo v6, ""

    iput-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_message;->message:Ljava/lang/String;

    .line 1346
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 1347
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_messageActionEmpty;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_messageActionEmpty;-><init>()V

    iput-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    .line 1348
    new-instance v6, Lorg/telegram/messenger/MessageObject;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v6, v2, v7, v8}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V

    iput-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 1349
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    new-instance v7, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v8

    const-string/jumbo v9, "video_preview.mp4"

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 1350
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    new-instance v7, Lorg/telegram/messenger/VideoEditedInfo;

    invoke-direct {v7}, Lorg/telegram/messenger/VideoEditedInfo;-><init>()V

    iput-object v7, v6, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    .line 1351
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v7, p0, Lorg/telegram/ui/VideoEditorActivity;->rotationValue:I

    iput v7, v6, Lorg/telegram/messenger/VideoEditedInfo;->rotationValue:I

    .line 1352
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v7, p0, Lorg/telegram/ui/VideoEditorActivity;->originalWidth:I

    iput v7, v6, Lorg/telegram/messenger/VideoEditedInfo;->originalWidth:I

    .line 1353
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v7, p0, Lorg/telegram/ui/VideoEditorActivity;->originalHeight:I

    iput v7, v6, Lorg/telegram/messenger/VideoEditedInfo;->originalHeight:I

    .line 1354
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-object v7, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPath:Ljava/lang/String;

    iput-object v7, v6, Lorg/telegram/messenger/VideoEditedInfo;->originalPath:Ljava/lang/String;

    .line 1356
    .end local v2    # "message":Lorg/telegram/tgnet/TLRPC$TL_message;
    :cond_5
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-wide v4, p0, Lorg/telegram/ui/VideoEditorActivity;->startTime:J

    iput-wide v4, v6, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    .line 1357
    .local v4, "start":J
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-wide v0, p0, Lorg/telegram/ui/VideoEditorActivity;->endTime:J

    iput-wide v0, v6, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    .line 1358
    .local v0, "end":J
    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-nez v6, :cond_6

    .line 1359
    const-wide/16 v4, 0x0

    .line 1361
    :cond_6
    const-wide/16 v6, -0x1

    cmp-long v6, v0, v6

    if-nez v6, :cond_7

    .line 1362
    iget v6, p0, Lorg/telegram/ui/VideoEditorActivity;->videoDuration:F

    const/high16 v7, 0x447a0000    # 1000.0f

    mul-float/2addr v6, v7

    float-to-long v0, v6

    .line 1364
    :cond_7
    sub-long v6, v0, v4

    const-wide/32 v8, 0x4c4b40

    cmp-long v6, v6, v8

    if-lez v6, :cond_8

    .line 1365
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    const-wide/32 v8, 0x4c4b40

    add-long/2addr v8, v4

    iput-wide v8, v6, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    .line 1367
    :cond_8
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v7, p0, Lorg/telegram/ui/VideoEditorActivity;->bitrate:I

    iput v7, v6, Lorg/telegram/messenger/VideoEditedInfo;->bitrate:I

    .line 1368
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v7, p0, Lorg/telegram/ui/VideoEditorActivity;->resultWidth:I

    iput v7, v6, Lorg/telegram/messenger/VideoEditedInfo;->resultWidth:I

    .line 1369
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v7, p0, Lorg/telegram/ui/VideoEditorActivity;->resultHeight:I

    iput v7, v6, Lorg/telegram/messenger/VideoEditedInfo;->resultHeight:I

    .line 1370
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lorg/telegram/messenger/MediaController;->scheduleVideoConvert(Lorg/telegram/messenger/MessageObject;Z)Z

    move-result v6

    if-nez v6, :cond_9

    .line 1371
    const/4 v6, 0x1

    iput-boolean v6, p0, Lorg/telegram/ui/VideoEditorActivity;->tryStartRequestPreviewOnFinish:Z

    .line 1373
    :cond_9
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    if-nez v6, :cond_1

    .line 1374
    const/4 v6, 0x1

    iput-boolean v6, p0, Lorg/telegram/ui/VideoEditorActivity;->requestingPreview:Z

    .line 1375
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->playButton:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1376
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/RadialProgressView;->setVisibility(I)V

    goto/16 :goto_1

    .line 1380
    .end local v0    # "end":J
    .end local v4    # "start":J
    :cond_a
    const/4 v6, 0x0

    iput-boolean v6, p0, Lorg/telegram/ui/VideoEditorActivity;->tryStartRequestPreviewOnFinish:Z

    .line 1381
    const/4 v6, 0x2

    if-ne p1, v6, :cond_1

    .line 1382
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPath:Ljava/lang/String;

    invoke-direct {p0, v6}, Lorg/telegram/ui/VideoEditorActivity;->reinitPlayer(Ljava/lang/String;)Z

    goto/16 :goto_1
.end method

.method private showQualityView(Z)V
    .locals 11
    .param p1, "show"    # Z

    .prologue
    const/high16 v10, 0x43180000    # 152.0f

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1257
    if-eqz p1, :cond_0

    .line 1258
    iget v1, p0, Lorg/telegram/ui/VideoEditorActivity;->selectedCompression:I

    iput v1, p0, Lorg/telegram/ui/VideoEditorActivity;->previousCompression:I

    .line 1260
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1261
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    if-eqz p1, :cond_1

    .line 1262
    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const-string/jumbo v3, "translationY"

    new-array v4, v8, [F

    aput v9, v4, v6

    .line 1263
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    const-string/jumbo v3, "translationY"

    new-array v4, v8, [F

    aput v9, v4, v6

    .line 1264
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity;->videoSeekBarView:Lorg/telegram/ui/Components/VideoSeekBarView;

    const-string/jumbo v3, "translationY"

    new-array v4, v8, [F

    aput v9, v4, v6

    .line 1265
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v8

    .line 1262
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1271
    :goto_0
    new-instance v1, Lorg/telegram/ui/VideoEditorActivity$22;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/VideoEditorActivity$22;-><init>(Lorg/telegram/ui/VideoEditorActivity;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1294
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1295
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1296
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1297
    return-void

    .line 1267
    :cond_1
    new-array v1, v8, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity;->qualityChooseView:Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;

    const-string/jumbo v3, "translationY"

    new-array v4, v8, [F

    aput v9, v4, v6

    const/high16 v5, 0x42f00000    # 120.0f

    .line 1268
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity;->qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const-string/jumbo v3, "translationY"

    new-array v4, v8, [F

    aput v9, v4, v6

    const/high16 v5, 0x42f00000    # 120.0f

    .line 1269
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    .line 1267
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_0
.end method

.method private updateVideoInfo()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x3e8

    const/16 v9, 0x10e

    const/16 v8, 0x5a

    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 1476
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-nez v6, :cond_0

    .line 1526
    :goto_0
    return-void

    .line 1480
    :cond_0
    iget v6, p0, Lorg/telegram/ui/VideoEditorActivity;->selectedCompression:I

    if-nez v6, :cond_5

    .line 1481
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->compressItem:Landroid/widget/ImageView;

    const v7, 0x7f020289

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1492
    :cond_1
    :goto_1
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/VideoTimelineView;->getRightProgress()F

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/VideoTimelineView;->getLeftProgress()F

    move-result v7

    sub-float/2addr v6, v7

    iget v7, p0, Lorg/telegram/ui/VideoEditorActivity;->videoDuration:F

    mul-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-long v6, v6

    iput-wide v6, p0, Lorg/telegram/ui/VideoEditorActivity;->esimatedDuration:J

    .line 1497
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->compressItem:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_2

    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->compressItem:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_b

    iget v6, p0, Lorg/telegram/ui/VideoEditorActivity;->selectedCompression:I

    iget v7, p0, Lorg/telegram/ui/VideoEditorActivity;->compressionsCount:I

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_b

    .line 1498
    :cond_2
    iget v6, p0, Lorg/telegram/ui/VideoEditorActivity;->rotationValue:I

    if-eq v6, v8, :cond_3

    iget v6, p0, Lorg/telegram/ui/VideoEditorActivity;->rotationValue:I

    if-ne v6, v9, :cond_9

    :cond_3
    iget v5, p0, Lorg/telegram/ui/VideoEditorActivity;->originalHeight:I

    .line 1499
    .local v5, "width":I
    :goto_2
    iget v6, p0, Lorg/telegram/ui/VideoEditorActivity;->rotationValue:I

    if-eq v6, v8, :cond_4

    iget v6, p0, Lorg/telegram/ui/VideoEditorActivity;->rotationValue:I

    if-ne v6, v9, :cond_a

    :cond_4
    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->originalWidth:I

    .line 1500
    .local v0, "height":I
    :goto_3
    iget-wide v6, p0, Lorg/telegram/ui/VideoEditorActivity;->originalSize:J

    long-to-float v6, v6

    iget-wide v8, p0, Lorg/telegram/ui/VideoEditorActivity;->esimatedDuration:J

    long-to-float v7, v8

    iget v8, p0, Lorg/telegram/ui/VideoEditorActivity;->videoDuration:F

    div-float/2addr v7, v8

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lorg/telegram/ui/VideoEditorActivity;->estimatedSize:I

    .line 1509
    :goto_4
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/VideoTimelineView;->getLeftProgress()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_10

    .line 1510
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lorg/telegram/ui/VideoEditorActivity;->startTime:J

    .line 1514
    :goto_5
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/VideoTimelineView;->getRightProgress()F

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v7

    if-nez v6, :cond_11

    .line 1515
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lorg/telegram/ui/VideoEditorActivity;->endTime:J

    .line 1520
    :goto_6
    const-string/jumbo v6, "%dx%d"

    new-array v7, v11, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1521
    .local v3, "videoDimension":Ljava/lang/String;
    iget-wide v6, p0, Lorg/telegram/ui/VideoEditorActivity;->esimatedDuration:J

    div-long/2addr v6, v12

    const-wide/16 v8, 0x3c

    div-long/2addr v6, v8

    long-to-int v1, v6

    .line 1522
    .local v1, "minutes":I
    iget-wide v6, p0, Lorg/telegram/ui/VideoEditorActivity;->esimatedDuration:J

    div-long/2addr v6, v12

    long-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    mul-int/lit8 v7, v1, 0x3c

    sub-int v2, v6, v7

    .line 1523
    .local v2, "seconds":I
    const-string/jumbo v6, "%d:%02d, ~%s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    iget v8, p0, Lorg/telegram/ui/VideoEditorActivity;->estimatedSize:I

    int-to-long v8, v8

    invoke-static {v8, v9}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1524
    .local v4, "videoTimeSize":Ljava/lang/String;
    const-string/jumbo v6, "%s, %s"

    new-array v7, v11, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    aput-object v4, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->currentSubtitle:Ljava/lang/String;

    .line 1525
    iget-object v7, p0, Lorg/telegram/ui/VideoEditorActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-boolean v6, p0, Lorg/telegram/ui/VideoEditorActivity;->muteVideo:Z

    if-eqz v6, :cond_12

    const/4 v6, 0x0

    :goto_7
    invoke-virtual {v7, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1482
    .end local v0    # "height":I
    .end local v1    # "minutes":I
    .end local v2    # "seconds":I
    .end local v3    # "videoDimension":Ljava/lang/String;
    .end local v4    # "videoTimeSize":Ljava/lang/String;
    .end local v5    # "width":I
    :cond_5
    iget v6, p0, Lorg/telegram/ui/VideoEditorActivity;->selectedCompression:I

    if-ne v6, v10, :cond_6

    .line 1483
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->compressItem:Landroid/widget/ImageView;

    const v7, 0x7f02028a

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 1484
    :cond_6
    iget v6, p0, Lorg/telegram/ui/VideoEditorActivity;->selectedCompression:I

    if-ne v6, v11, :cond_7

    .line 1485
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->compressItem:Landroid/widget/ImageView;

    const v7, 0x7f02028b

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 1486
    :cond_7
    iget v6, p0, Lorg/telegram/ui/VideoEditorActivity;->selectedCompression:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_8

    .line 1487
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->compressItem:Landroid/widget/ImageView;

    const v7, 0x7f02028c

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 1488
    :cond_8
    iget v6, p0, Lorg/telegram/ui/VideoEditorActivity;->selectedCompression:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_1

    .line 1489
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->compressItem:Landroid/widget/ImageView;

    const v7, 0x7f020288

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 1498
    :cond_9
    iget v5, p0, Lorg/telegram/ui/VideoEditorActivity;->originalWidth:I

    goto/16 :goto_2

    .line 1499
    .restart local v5    # "width":I
    :cond_a
    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->originalHeight:I

    goto/16 :goto_3

    .line 1502
    .end local v5    # "width":I
    :cond_b
    iget v6, p0, Lorg/telegram/ui/VideoEditorActivity;->rotationValue:I

    if-eq v6, v8, :cond_c

    iget v6, p0, Lorg/telegram/ui/VideoEditorActivity;->rotationValue:I

    if-ne v6, v9, :cond_e

    :cond_c
    iget v5, p0, Lorg/telegram/ui/VideoEditorActivity;->resultHeight:I

    .line 1503
    .restart local v5    # "width":I
    :goto_8
    iget v6, p0, Lorg/telegram/ui/VideoEditorActivity;->rotationValue:I

    if-eq v6, v8, :cond_d

    iget v6, p0, Lorg/telegram/ui/VideoEditorActivity;->rotationValue:I

    if-ne v6, v9, :cond_f

    :cond_d
    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->resultWidth:I

    .line 1505
    .restart local v0    # "height":I
    :goto_9
    iget-wide v6, p0, Lorg/telegram/ui/VideoEditorActivity;->audioFramesSize:J

    iget-wide v8, p0, Lorg/telegram/ui/VideoEditorActivity;->videoFramesSize:J

    add-long/2addr v6, v8

    long-to-float v6, v6

    iget-wide v8, p0, Lorg/telegram/ui/VideoEditorActivity;->esimatedDuration:J

    long-to-float v7, v8

    iget v8, p0, Lorg/telegram/ui/VideoEditorActivity;->videoDuration:F

    div-float/2addr v7, v8

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lorg/telegram/ui/VideoEditorActivity;->estimatedSize:I

    .line 1506
    iget v6, p0, Lorg/telegram/ui/VideoEditorActivity;->estimatedSize:I

    iget v7, p0, Lorg/telegram/ui/VideoEditorActivity;->estimatedSize:I

    const v8, 0x8000

    div-int/2addr v7, v8

    mul-int/lit8 v7, v7, 0x10

    add-int/2addr v6, v7

    iput v6, p0, Lorg/telegram/ui/VideoEditorActivity;->estimatedSize:I

    goto/16 :goto_4

    .line 1502
    .end local v0    # "height":I
    .end local v5    # "width":I
    :cond_e
    iget v5, p0, Lorg/telegram/ui/VideoEditorActivity;->resultWidth:I

    goto :goto_8

    .line 1503
    .restart local v5    # "width":I
    :cond_f
    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->resultHeight:I

    goto :goto_9

    .line 1512
    .restart local v0    # "height":I
    :cond_10
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/VideoTimelineView;->getLeftProgress()F

    move-result v6

    iget v7, p0, Lorg/telegram/ui/VideoEditorActivity;->videoDuration:F

    mul-float/2addr v6, v7

    float-to-long v6, v6

    mul-long/2addr v6, v12

    iput-wide v6, p0, Lorg/telegram/ui/VideoEditorActivity;->startTime:J

    goto/16 :goto_5

    .line 1517
    :cond_11
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/VideoTimelineView;->getRightProgress()F

    move-result v6

    iget v7, p0, Lorg/telegram/ui/VideoEditorActivity;->videoDuration:F

    mul-float/2addr v6, v7

    float-to-long v6, v6

    mul-long/2addr v6, v12

    iput-wide v6, p0, Lorg/telegram/ui/VideoEditorActivity;->endTime:J

    goto/16 :goto_6

    .line 1525
    .restart local v1    # "minutes":I
    .restart local v2    # "seconds":I
    .restart local v3    # "videoDimension":Ljava/lang/String;
    .restart local v4    # "videoTimeSize":Ljava/lang/String;
    :cond_12
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->currentSubtitle:Ljava/lang/String;

    goto/16 :goto_7
.end method

.method private updateWidthHeightBitrateForCompression()V
    .locals 10

    .prologue
    const/16 v9, 0x500

    const/16 v8, 0x350

    const/16 v7, 0x280

    const/16 v6, 0x1e0

    const/high16 v5, 0x40000000    # 2.0f

    .line 1533
    iget v3, p0, Lorg/telegram/ui/VideoEditorActivity;->compressionsCount:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 1534
    iget v3, p0, Lorg/telegram/ui/VideoEditorActivity;->originalWidth:I

    if-gt v3, v9, :cond_0

    iget v3, p0, Lorg/telegram/ui/VideoEditorActivity;->originalHeight:I

    if-le v3, v9, :cond_4

    .line 1535
    :cond_0
    const/4 v3, 0x5

    iput v3, p0, Lorg/telegram/ui/VideoEditorActivity;->compressionsCount:I

    .line 1546
    :cond_1
    :goto_0
    iget v3, p0, Lorg/telegram/ui/VideoEditorActivity;->selectedCompression:I

    iget v4, p0, Lorg/telegram/ui/VideoEditorActivity;->compressionsCount:I

    if-lt v3, v4, :cond_2

    .line 1547
    iget v3, p0, Lorg/telegram/ui/VideoEditorActivity;->compressionsCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/telegram/ui/VideoEditorActivity;->selectedCompression:I

    .line 1549
    :cond_2
    iget v3, p0, Lorg/telegram/ui/VideoEditorActivity;->selectedCompression:I

    iget v4, p0, Lorg/telegram/ui/VideoEditorActivity;->compressionsCount:I

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_3

    .line 1552
    iget v3, p0, Lorg/telegram/ui/VideoEditorActivity;->selectedCompression:I

    packed-switch v3, :pswitch_data_0

    .line 1567
    const v2, 0x186a00

    .line 1568
    .local v2, "targetBitrate":I
    const/high16 v0, 0x44a00000    # 1280.0f

    .line 1571
    .local v0, "maxSize":F
    :goto_1
    iget v3, p0, Lorg/telegram/ui/VideoEditorActivity;->originalWidth:I

    iget v4, p0, Lorg/telegram/ui/VideoEditorActivity;->originalHeight:I

    if-le v3, v4, :cond_b

    iget v3, p0, Lorg/telegram/ui/VideoEditorActivity;->originalWidth:I

    int-to-float v3, v3

    div-float v1, v0, v3

    .line 1572
    .local v1, "scale":F
    :goto_2
    iget v3, p0, Lorg/telegram/ui/VideoEditorActivity;->originalWidth:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    div-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    iput v3, p0, Lorg/telegram/ui/VideoEditorActivity;->resultWidth:I

    .line 1573
    iget v3, p0, Lorg/telegram/ui/VideoEditorActivity;->originalHeight:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    div-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    iput v3, p0, Lorg/telegram/ui/VideoEditorActivity;->resultHeight:I

    .line 1574
    iget v3, p0, Lorg/telegram/ui/VideoEditorActivity;->bitrate:I

    if-eqz v3, :cond_3

    .line 1575
    iget v3, p0, Lorg/telegram/ui/VideoEditorActivity;->originalBitrate:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    float-to-int v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/VideoEditorActivity;->bitrate:I

    .line 1576
    iget v3, p0, Lorg/telegram/ui/VideoEditorActivity;->bitrate:I

    div-int/lit8 v3, v3, 0x8

    int-to-float v3, v3

    iget v4, p0, Lorg/telegram/ui/VideoEditorActivity;->videoDuration:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    float-to-long v4, v3

    iput-wide v4, p0, Lorg/telegram/ui/VideoEditorActivity;->videoFramesSize:J

    .line 1579
    .end local v0    # "maxSize":F
    .end local v1    # "scale":F
    .end local v2    # "targetBitrate":I
    :cond_3
    return-void

    .line 1536
    :cond_4
    iget v3, p0, Lorg/telegram/ui/VideoEditorActivity;->originalWidth:I

    if-gt v3, v8, :cond_5

    iget v3, p0, Lorg/telegram/ui/VideoEditorActivity;->originalHeight:I

    if-le v3, v8, :cond_6

    .line 1537
    :cond_5
    const/4 v3, 0x4

    iput v3, p0, Lorg/telegram/ui/VideoEditorActivity;->compressionsCount:I

    goto :goto_0

    .line 1538
    :cond_6
    iget v3, p0, Lorg/telegram/ui/VideoEditorActivity;->originalWidth:I

    if-gt v3, v7, :cond_7

    iget v3, p0, Lorg/telegram/ui/VideoEditorActivity;->originalHeight:I

    if-le v3, v7, :cond_8

    .line 1539
    :cond_7
    const/4 v3, 0x3

    iput v3, p0, Lorg/telegram/ui/VideoEditorActivity;->compressionsCount:I

    goto :goto_0

    .line 1540
    :cond_8
    iget v3, p0, Lorg/telegram/ui/VideoEditorActivity;->originalWidth:I

    if-gt v3, v6, :cond_9

    iget v3, p0, Lorg/telegram/ui/VideoEditorActivity;->originalHeight:I

    if-le v3, v6, :cond_a

    .line 1541
    :cond_9
    const/4 v3, 0x2

    iput v3, p0, Lorg/telegram/ui/VideoEditorActivity;->compressionsCount:I

    goto/16 :goto_0

    .line 1543
    :cond_a
    const/4 v3, 0x1

    iput v3, p0, Lorg/telegram/ui/VideoEditorActivity;->compressionsCount:I

    goto/16 :goto_0

    .line 1554
    :pswitch_0
    const/high16 v0, 0x43d80000    # 432.0f

    .line 1555
    .restart local v0    # "maxSize":F
    const v2, 0x61a80

    .line 1556
    .restart local v2    # "targetBitrate":I
    goto :goto_1

    .line 1558
    .end local v0    # "maxSize":F
    .end local v2    # "targetBitrate":I
    :pswitch_1
    const/high16 v0, 0x44200000    # 640.0f

    .line 1559
    .restart local v0    # "maxSize":F
    const v2, 0xdbba0

    .line 1560
    .restart local v2    # "targetBitrate":I
    goto :goto_1

    .line 1562
    .end local v0    # "maxSize":F
    .end local v2    # "targetBitrate":I
    :pswitch_2
    const/high16 v0, 0x44540000    # 848.0f

    .line 1563
    .restart local v0    # "maxSize":F
    const v2, 0x10c8e0

    .line 1564
    .restart local v2    # "targetBitrate":I
    goto :goto_1

    .line 1571
    :cond_b
    iget v3, p0, Lorg/telegram/ui/VideoEditorActivity;->originalHeight:I

    int-to-float v3, v3

    div-float v1, v0, v3

    goto :goto_2

    .line 1552
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 476
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 477
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 478
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v1, -0xc2c2c3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 479
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v1, 0x7f0200b6

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 480
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v1, "AttachVideo"

    const v2, 0x7f0700ad

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 481
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitleColor(I)V

    .line 482
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/VideoEditorActivity$3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/VideoEditorActivity$3;-><init>(Lorg/telegram/ui/VideoEditorActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 497
    new-instance v0, Lorg/telegram/ui/VideoEditorActivity$4;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/VideoEditorActivity$4;-><init>(Lorg/telegram/ui/VideoEditorActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->fragmentView:Landroid/view/View;

    .line 663
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->fragmentView:Landroid/view/View;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 664
    iget-object v9, p0, Lorg/telegram/ui/VideoEditorActivity;->fragmentView:Landroid/view/View;

    check-cast v9, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;

    .line 665
    .local v9, "frameLayout":Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->setWithoutWindow(Z)V

    .line 666
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->fragmentView:Landroid/view/View;

    new-instance v1, Lorg/telegram/ui/VideoEditorActivity$5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/VideoEditorActivity$5;-><init>(Lorg/telegram/ui/VideoEditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 673
    new-instance v0, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    .line 674
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->setBackgroundColor(I)V

    .line 675
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->updateSelectedCount(IZ)V

    .line 676
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const/4 v1, -0x1

    const/16 v2, 0x30

    const/16 v3, 0x53

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 677
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    iget-object v0, v0, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->cancelButton:Landroid/widget/TextView;

    new-instance v1, Lorg/telegram/ui/VideoEditorActivity$6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/VideoEditorActivity$6;-><init>(Lorg/telegram/ui/VideoEditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 683
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    iget-object v0, v0, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->doneButton:Landroid/widget/TextView;

    new-instance v1, Lorg/telegram/ui/VideoEditorActivity$7;

    invoke-direct {v1, p0}, Lorg/telegram/ui/VideoEditorActivity$7;-><init>(Lorg/telegram/ui/VideoEditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 715
    new-instance v10, Landroid/widget/LinearLayout;

    invoke-direct {v10, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 716
    .local v10, "itemsLayout":Landroid/widget/LinearLayout;
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 717
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const/4 v1, -0x2

    const/16 v2, 0x30

    const/16 v3, 0x31

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 719
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->captionItem:Landroid/widget/ImageView;

    .line 720
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->captionItem:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 721
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->captionItem:Landroid/widget/ImageView;

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->currentCaption:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f020211

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 722
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->captionItem:Landroid/widget/ImageView;

    const v1, 0x40ffffff    # 7.9999995f

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 723
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->captionItem:Landroid/widget/ImageView;

    const/16 v1, 0x38

    const/16 v2, 0x30

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 724
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->captionItem:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/VideoEditorActivity$8;

    invoke-direct {v1, p0}, Lorg/telegram/ui/VideoEditorActivity$8;-><init>(Lorg/telegram/ui/VideoEditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 740
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->compressItem:Landroid/widget/ImageView;

    .line 741
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->compressItem:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 742
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->compressItem:Landroid/widget/ImageView;

    const v1, 0x40ffffff    # 7.9999995f

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 743
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->compressItem:Landroid/widget/ImageView;

    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->compressionsCount:I

    const/4 v2, 0x1

    if-le v0, v2, :cond_4

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 744
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->compressItem:Landroid/widget/ImageView;

    const/16 v1, 0x38

    const/16 v2, 0x30

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 745
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->compressItem:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/VideoEditorActivity$9;

    invoke-direct {v1, p0}, Lorg/telegram/ui/VideoEditorActivity$9;-><init>(Lorg/telegram/ui/VideoEditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 752
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    .line 754
    :try_start_0
    const-string/jumbo v0, "video/avc"

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->selectCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v7

    .line 755
    .local v7, "codecInfo":Landroid/media/MediaCodecInfo;
    if-nez v7, :cond_5

    .line 756
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->compressItem:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 779
    .end local v7    # "codecInfo":Landroid/media/MediaCodecInfo;
    :cond_0
    :goto_2
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->muteItem:Landroid/widget/ImageView;

    .line 780
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->muteItem:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 781
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->muteItem:Landroid/widget/ImageView;

    const v1, 0x40ffffff    # 7.9999995f

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 783
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->muteItem:Landroid/widget/ImageView;

    const/16 v1, 0x38

    const/16 v2, 0x30

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 784
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->muteItem:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/VideoEditorActivity$10;

    invoke-direct {v1, p0}, Lorg/telegram/ui/VideoEditorActivity$10;-><init>(Lorg/telegram/ui/VideoEditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 792
    new-instance v0, Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/VideoTimelineView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    .line 793
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoTimelineView;->setVideoPath(Ljava/lang/String;)V

    .line 794
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    new-instance v1, Lorg/telegram/ui/VideoEditorActivity$11;

    invoke-direct {v1, p0}, Lorg/telegram/ui/VideoEditorActivity$11;-><init>(Lorg/telegram/ui/VideoEditorActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoTimelineView;->setDelegate(Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;)V

    .line 845
    iget-object v12, p0, Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    const/4 v0, -0x1

    const/high16 v1, 0x42300000    # 44.0f

    const/16 v2, 0x53

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x42860000    # 67.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v9, v12, v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 847
    new-instance v0, Lorg/telegram/ui/Components/VideoSeekBarView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/VideoSeekBarView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoSeekBarView:Lorg/telegram/ui/Components/VideoSeekBarView;

    .line 848
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoSeekBarView:Lorg/telegram/ui/Components/VideoSeekBarView;

    new-instance v1, Lorg/telegram/ui/VideoEditorActivity$12;

    invoke-direct {v1, p0}, Lorg/telegram/ui/VideoEditorActivity$12;-><init>(Lorg/telegram/ui/VideoEditorActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoSeekBarView;->setDelegate(Lorg/telegram/ui/Components/VideoSeekBarView$SeekBarDelegate;)V

    .line 869
    iget-object v12, p0, Lorg/telegram/ui/VideoEditorActivity;->videoSeekBarView:Lorg/telegram/ui/Components/VideoSeekBarView;

    const/4 v0, -0x1

    const/high16 v1, 0x42200000    # 40.0f

    const/16 v2, 0x53

    const/high16 v3, 0x41300000    # 11.0f

    const/4 v4, 0x0

    const/high16 v5, 0x41300000    # 11.0f

    const/high16 v6, 0x42e00000    # 112.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v9, v12, v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 871
    new-instance v0, Landroid/view/TextureView;

    invoke-direct {v0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->textureView:Landroid/view/TextureView;

    .line 872
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->textureView:Landroid/view/TextureView;

    new-instance v1, Lorg/telegram/ui/VideoEditorActivity$13;

    invoke-direct {v1, p0}, Lorg/telegram/ui/VideoEditorActivity$13;-><init>(Lorg/telegram/ui/VideoEditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 912
    iget-object v12, p0, Lorg/telegram/ui/VideoEditorActivity;->textureView:Landroid/view/TextureView;

    const/4 v0, -0x1

    const/high16 v1, -0x40800000    # -1.0f

    const/16 v2, 0x33

    const/4 v3, 0x0

    const/high16 v4, 0x41600000    # 14.0f

    const/4 v5, 0x0

    const/high16 v6, 0x430c0000    # 140.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v9, v12, v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 914
    new-instance v0, Lorg/telegram/ui/Components/RadialProgressView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/RadialProgressView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    .line 915
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RadialProgressView;->setProgressColor(I)V

    .line 916
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const v1, 0x7f02005a

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RadialProgressView;->setBackgroundResource(I)V

    .line 917
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RadialProgressView;->setVisibility(I)V

    .line 918
    iget-object v12, p0, Lorg/telegram/ui/VideoEditorActivity;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/16 v0, 0x36

    const/high16 v1, 0x42580000    # 54.0f

    const/16 v2, 0x11

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x428c0000    # 70.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v9, v12, v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 920
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->playButton:Landroid/widget/ImageView;

    .line 921
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->playButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 922
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->playButton:Landroid/widget/ImageView;

    const v1, 0x7f02028e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 923
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->playButton:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/VideoEditorActivity$14;

    invoke-direct {v1, p0}, Lorg/telegram/ui/VideoEditorActivity$14;-><init>(Lorg/telegram/ui/VideoEditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 994
    iget-object v12, p0, Lorg/telegram/ui/VideoEditorActivity;->playButton:Landroid/widget/ImageView;

    const/16 v0, 0x64

    const/high16 v1, 0x42c80000    # 100.0f

    const/16 v2, 0x11

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x428c0000    # 70.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v9, v12, v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 996
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    if-eqz v0, :cond_1

    .line 997
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->onDestroy()V

    .line 999
    :cond_1
    new-instance v0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v9, v1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    .line 1000
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->setForceFloatingEmoji(Z)V

    .line 1001
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    new-instance v1, Lorg/telegram/ui/VideoEditorActivity$15;

    invoke-direct {v1, p0}, Lorg/telegram/ui/VideoEditorActivity$15;-><init>(Lorg/telegram/ui/VideoEditorActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->setDelegate(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$PhotoViewerCaptionEnterViewDelegate;)V

    .line 1041
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/16 v3, 0x53

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1042
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->onCreate()V

    .line 1044
    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 1045
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setTag(Ljava/lang/Object;)V

    .line 1046
    new-instance v0, Lorg/telegram/ui/VideoEditorActivity$16;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/VideoEditorActivity$16;-><init>(Lorg/telegram/ui/VideoEditorActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->mentionLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    .line 1052
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->mentionLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->setOrientation(I)V

    .line 1053
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->mentionLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 1054
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v1, 0x7f000000

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setBackgroundColor(I)V

    .line 1055
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1056
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setClipToPadding(Z)V

    .line 1057
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOverScrollMode(I)V

    .line 1058
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, -0x1

    const/16 v2, 0x6e

    const/16 v3, 0x53

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1060
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Adapters/MentionsAdapter;

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    new-instance v6, Lorg/telegram/ui/VideoEditorActivity$17;

    invoke-direct {v6, p0}, Lorg/telegram/ui/VideoEditorActivity$17;-><init>(Lorg/telegram/ui/VideoEditorActivity;)V

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Adapters/MentionsAdapter;-><init>(Landroid/content/Context;ZJLorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;)V

    iput-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 1142
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setAllowNewMentions(Z)V

    .line 1144
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/VideoEditorActivity$18;

    invoke-direct {v1, p0}, Lorg/telegram/ui/VideoEditorActivity$18;-><init>(Lorg/telegram/ui/VideoEditorActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 1161
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/VideoEditorActivity$19;

    invoke-direct {v1, p0}, Lorg/telegram/ui/VideoEditorActivity$19;-><init>(Lorg/telegram/ui/VideoEditorActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 1186
    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->compressionsCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 1187
    new-instance v0, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    .line 1188
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->setBackgroundColor(I)V

    .line 1189
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->updateSelectedCount(IZ)V

    .line 1190
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const/high16 v1, 0x42f00000    # 120.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->setTranslationY(F)V

    .line 1191
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    iget-object v0, v0, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->doneButton:Landroid/widget/TextView;

    const-string/jumbo v1, "Done"

    const v2, 0x7f070207

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1192
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const/4 v1, -0x1

    const/16 v2, 0x30

    const/16 v3, 0x53

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1193
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    iget-object v0, v0, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->cancelButton:Landroid/widget/TextView;

    new-instance v1, Lorg/telegram/ui/VideoEditorActivity$20;

    invoke-direct {v1, p0}, Lorg/telegram/ui/VideoEditorActivity$20;-><init>(Lorg/telegram/ui/VideoEditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1202
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    iget-object v0, v0, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->doneButton:Landroid/widget/TextView;

    new-instance v1, Lorg/telegram/ui/VideoEditorActivity$21;

    invoke-direct {v1, p0}, Lorg/telegram/ui/VideoEditorActivity$21;-><init>(Lorg/telegram/ui/VideoEditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1210
    new-instance v0, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;-><init>(Lorg/telegram/ui/VideoEditorActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->qualityChooseView:Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;

    .line 1211
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->qualityChooseView:Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;

    const/high16 v1, 0x42f00000    # 120.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->setTranslationY(F)V

    .line 1212
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->qualityChooseView:Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->setVisibility(I)V

    .line 1213
    iget-object v12, p0, Lorg/telegram/ui/VideoEditorActivity;->qualityChooseView:Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;

    const/4 v0, -0x1

    const/high16 v1, 0x42b40000    # 90.0f

    const/16 v2, 0x53

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x42300000    # 44.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v9, v12, v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1216
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/VideoEditorActivity;->updateVideoInfo()V

    .line 1217
    invoke-virtual {p0}, Lorg/telegram/ui/VideoEditorActivity;->updateMuteButton()V

    .line 1219
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->fragmentView:Landroid/view/View;

    return-object v0

    .line 721
    :cond_3
    const v0, 0x7f020212

    goto/16 :goto_0

    .line 743
    :cond_4
    const/16 v0, 0x8

    goto/16 :goto_1

    .line 758
    .restart local v7    # "codecInfo":Landroid/media/MediaCodecInfo;
    :cond_5
    :try_start_1
    invoke-virtual {v7}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v11

    .line 759
    .local v11, "name":Ljava/lang/String;
    const-string/jumbo v0, "OMX.google.h264.encoder"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string/jumbo v0, "OMX.ST.VFM.H264Enc"

    .line 760
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string/jumbo v0, "OMX.Exynos.avc.enc"

    .line 761
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string/jumbo v0, "OMX.MARVELL.VIDEO.HW.CODA7542ENCODER"

    .line 762
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string/jumbo v0, "OMX.MARVELL.VIDEO.H264ENCODER"

    .line 763
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string/jumbo v0, "OMX.k3.video.encoder.avc"

    .line 764
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string/jumbo v0, "OMX.TI.DUCATI1.VIDEO.H264E"

    .line 765
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 766
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->compressItem:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 773
    .end local v7    # "codecInfo":Landroid/media/MediaCodecInfo;
    .end local v11    # "name":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 774
    .local v8, "e":Ljava/lang/Exception;
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->compressItem:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 775
    invoke-static {v8}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 768
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v7    # "codecInfo":Landroid/media/MediaCodecInfo;
    .restart local v11    # "name":Ljava/lang/String;
    :cond_7
    :try_start_2
    const-string/jumbo v0, "video/avc"

    invoke-static {v7, v0}, Lorg/telegram/messenger/MediaController;->selectColorFormat(Landroid/media/MediaCodecInfo;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 769
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->compressItem:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 9
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v8, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1389
    sget v6, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    if-ne p1, v6, :cond_1

    .line 1390
    invoke-virtual {p0}, Lorg/telegram/ui/VideoEditorActivity;->removeSelfFromStack()V

    .line 1417
    :cond_0
    :goto_0
    return-void

    .line 1391
    :cond_1
    sget v6, Lorg/telegram/messenger/NotificationCenter;->FilePreparingFailed:I

    if-ne p1, v6, :cond_5

    .line 1392
    aget-object v1, p2, v5

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    .line 1393
    .local v1, "messageObject":Lorg/telegram/messenger/MessageObject;
    iget-boolean v6, p0, Lorg/telegram/ui/VideoEditorActivity;->loadInitialVideo:Z

    if-eqz v6, :cond_2

    .line 1394
    iput-boolean v5, p0, Lorg/telegram/ui/VideoEditorActivity;->loadInitialVideo:Z

    .line 1395
    iget-object v4, p0, Lorg/telegram/ui/VideoEditorActivity;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v4, v8}, Lorg/telegram/ui/Components/RadialProgressView;->setVisibility(I)V

    .line 1396
    iget-object v4, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPath:Ljava/lang/String;

    invoke-direct {p0, v4}, Lorg/telegram/ui/VideoEditorActivity;->reinitPlayer(Ljava/lang/String;)Z

    goto :goto_0

    .line 1397
    :cond_2
    iget-boolean v6, p0, Lorg/telegram/ui/VideoEditorActivity;->tryStartRequestPreviewOnFinish:Z

    if-eqz v6, :cond_4

    .line 1398
    invoke-direct {p0}, Lorg/telegram/ui/VideoEditorActivity;->destroyPlayer()V

    .line 1399
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v6, v7, v4}, Lorg/telegram/messenger/MediaController;->scheduleVideoConvert(Lorg/telegram/messenger/MessageObject;Z)Z

    move-result v6

    if-nez v6, :cond_3

    :goto_1
    iput-boolean v4, p0, Lorg/telegram/ui/VideoEditorActivity;->tryStartRequestPreviewOnFinish:Z

    goto :goto_0

    :cond_3
    move v4, v5

    goto :goto_1

    .line 1400
    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    if-ne v1, v4, :cond_0

    .line 1401
    iput-boolean v5, p0, Lorg/telegram/ui/VideoEditorActivity;->requestingPreview:Z

    .line 1402
    iget-object v4, p0, Lorg/telegram/ui/VideoEditorActivity;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v4, v8}, Lorg/telegram/ui/Components/RadialProgressView;->setVisibility(I)V

    .line 1403
    iget-object v4, p0, Lorg/telegram/ui/VideoEditorActivity;->playButton:Landroid/widget/ImageView;

    const v5, 0x7f02028e

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1405
    .end local v1    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_5
    sget v6, Lorg/telegram/messenger/NotificationCenter;->FileNewChunkAvailable:I

    if-ne p1, v6, :cond_0

    .line 1406
    aget-object v1, p2, v5

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    .line 1407
    .restart local v1    # "messageObject":Lorg/telegram/messenger/MessageObject;
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    if-ne v1, v6, :cond_0

    .line 1408
    aget-object v0, p2, v4

    check-cast v0, Ljava/lang/String;

    .line 1409
    .local v0, "finalPath":Ljava/lang/String;
    const/4 v4, 0x2

    aget-object v4, p2, v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1410
    .local v2, "finalSize":J
    const-wide/16 v6, 0x0

    cmp-long v4, v2, v6

    if-eqz v4, :cond_0

    .line 1411
    iput-boolean v5, p0, Lorg/telegram/ui/VideoEditorActivity;->requestingPreview:Z

    .line 1412
    iget-object v4, p0, Lorg/telegram/ui/VideoEditorActivity;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v4, v8}, Lorg/telegram/ui/Components/RadialProgressView;->setVisibility(I)V

    .line 1413
    invoke-direct {p0, v0}, Lorg/telegram/ui/VideoEditorActivity;->reinitPlayer(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public onFragmentCreate()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 426
    iget-boolean v2, p0, Lorg/telegram/ui/VideoEditorActivity;->created:Z

    if-eqz v2, :cond_0

    .line 442
    :goto_0
    return v0

    .line 429
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPath:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/VideoEditorActivity;->processOpenVideo()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    move v0, v1

    .line 430
    goto :goto_0

    .line 432
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPath:Ljava/lang/String;

    invoke-direct {p0, v2}, Lorg/telegram/ui/VideoEditorActivity;->reinitPlayer(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    .line 433
    goto :goto_0

    .line 436
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 437
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->FilePreparingFailed:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 438
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->FileNewChunkAvailable:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 440
    iput-boolean v0, p0, Lorg/telegram/ui/VideoEditorActivity;->created:Z

    .line 442
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    goto :goto_0
.end method

.method public onFragmentDestroy()V
    .locals 3

    .prologue
    .line 448
    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/ui/VideoEditorActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 452
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    if-eqz v1, :cond_0

    .line 453
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoTimelineView;->destroy()V

    .line 455
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    .line 457
    :try_start_1
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 458
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 459
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 464
    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    if-eqz v1, :cond_2

    .line 465
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->onDestroy()V

    .line 467
    :cond_2
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/telegram/ui/VideoEditorActivity;->requestVideoPreview(I)V

    .line 468
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 469
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->FilePreparingFailed:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 470
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->FileNewChunkAvailable:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 471
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 472
    return-void

    .line 449
    :catch_0
    move-exception v0

    .line 450
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 460
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 461
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1236
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    .line 1237
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 1238
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/ui/VideoEditorActivity;->closeCaptionEnter(Z)V

    .line 1240
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 1244
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 1245
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->textureView:Landroid/view/TextureView;

    if-eqz v1, :cond_0

    .line 1247
    :try_start_0
    iget-boolean v1, p0, Lorg/telegram/ui/VideoEditorActivity;->playerPrepared:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1248
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity;->videoSeekBarView:Lorg/telegram/ui/Components/VideoSeekBarView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/VideoSeekBarView;->getProgress()F

    move-result v2

    iget v3, p0, Lorg/telegram/ui/VideoEditorActivity;->videoDuration:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1254
    :cond_0
    :goto_0
    return-void

    .line 1250
    :catch_0
    move-exception v0

    .line 1251
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setDelegate(Lorg/telegram/ui/VideoEditorActivity$VideoEditorActivityDelegate;)V
    .locals 0
    .param p1, "videoEditorActivityDelegate"    # Lorg/telegram/ui/VideoEditorActivity$VideoEditorActivityDelegate;

    .prologue
    .line 1529
    iput-object p1, p0, Lorg/telegram/ui/VideoEditorActivity;->delegate:Lorg/telegram/ui/VideoEditorActivity$VideoEditorActivityDelegate;

    .line 1530
    return-void
.end method

.method public setParentChatActivity(Lorg/telegram/ui/ChatActivity;)V
    .locals 0
    .param p1, "chatActivity"    # Lorg/telegram/ui/ChatActivity;

    .prologue
    .line 1300
    iput-object p1, p0, Lorg/telegram/ui/VideoEditorActivity;->parentChatActivity:Lorg/telegram/ui/ChatActivity;

    .line 1301
    return-void
.end method

.method public updateMuteButton()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1420
    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    .line 1421
    iget-boolean v2, p0, Lorg/telegram/ui/VideoEditorActivity;->muteVideo:Z

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    .line 1422
    .local v0, "volume":F
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    .line 1423
    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 1426
    .end local v0    # "volume":F
    :cond_0
    iget-boolean v2, p0, Lorg/telegram/ui/VideoEditorActivity;->muteVideo:Z

    if-eqz v2, :cond_3

    .line 1427
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v2, "AttachGif"

    const v3, 0x7f0700a7

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1428
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 1429
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->muteItem:Landroid/widget/ImageView;

    const v2, 0x7f020292

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1430
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->compressItem:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 1431
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->compressItem:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 1432
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->compressItem:Landroid/widget/ImageView;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1433
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->compressItem:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1435
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    const v2, 0x46ea6000    # 30000.0f

    iget v3, p0, Lorg/telegram/ui/VideoEditorActivity;->videoDuration:F

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/VideoTimelineView;->setMaxProgressDiff(F)V

    .line 1447
    :goto_1
    return-void

    :cond_2
    move v0, v1

    .line 1421
    goto :goto_0

    .line 1437
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v3, "AttachVideo"

    const v4, 0x7f0700ad

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1438
    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v3, p0, Lorg/telegram/ui/VideoEditorActivity;->currentSubtitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 1439
    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity;->muteItem:Landroid/widget/ImageView;

    const v3, 0x7f020293

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1440
    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity;->compressItem:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4

    .line 1441
    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity;->compressItem:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 1442
    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity;->compressItem:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1443
    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity;->compressItem:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1445
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/VideoTimelineView;->setMaxProgressDiff(F)V

    goto :goto_1
.end method
