.class public Lorg/telegram/ui/PhotoViewer;
.super Ljava/lang/Object;
.source "PhotoViewer.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/PhotoViewer$QualityChooseView;,
        Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;,
        Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;,
        Lorg/telegram/ui/PhotoViewer$EmptyPhotoViewerProvider;,
        Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;,
        Lorg/telegram/ui/PhotoViewer$PhotoProgressView;,
        Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;
    }
.end annotation


# static fields
.field private static volatile Instance:Lorg/telegram/ui/PhotoViewer; = null
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator; = null

.field private static final gallery_menu_delete:I = 0x6

.field private static final gallery_menu_gotomsg:I = 0x14

.field private static final gallery_menu_masks:I = 0xd

.field private static final gallery_menu_openin:I = 0xb

.field private static final gallery_menu_save:I = 0x1

.field private static final gallery_menu_send:I = 0x3

.field private static final gallery_menu_share:I = 0xa

.field private static final gallery_menu_showall:I = 0x2

.field private static progressDrawables:[Landroid/graphics/drawable/Drawable;

.field private static progressPaint:Landroid/graphics/Paint;


# instance fields
.field private actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

.field private actvityContext:Landroid/content/Context;

.field private allowMentions:Z

.field private allowShare:Z

.field private animateToScale:F

.field private animateToX:F

.field private animateToY:F

.field private animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

.field private animationEndRunnable:Ljava/lang/Runnable;

.field private animationInProgress:I

.field private animationStartTime:J

.field private animationValue:F

.field private animationValues:[[F

.field private applying:Z

.field private aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

.field private attachedToWindow:Z

.field private audioFramesSize:J

.field private avatarsArr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Photo;",
            ">;"
        }
    .end annotation
.end field

.field private avatarsDialogId:I

.field private backgroundDrawable:Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;

.field private barQualityValue:I

.field private bitrate:I

.field private blackPaint:Landroid/graphics/Paint;

.field private bottomLayout:Landroid/widget/FrameLayout;

.field private bottomTouchEnabled:Z

.field private canDragDown:Z

.field private canShowBottom:Z

.field private canZoom:Z

.field private captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

.field private captionItem:Landroid/widget/ImageView;

.field private captionTextView:Landroid/widget/TextView;

.field private captionTextViewNew:Landroid/widget/TextView;

.field private captionTextViewOld:Landroid/widget/TextView;

.field private centerImage:Lorg/telegram/messenger/ImageReceiver;

.field private changeModeAnimation:Landroid/animation/AnimatorSet;

.field private changingPage:Z

.field private checkImageView:Lorg/telegram/ui/Components/CheckBox;

.field private classGuid:I

.field private compressItem:Landroid/widget/ImageView;

.field private compressionsCount:I

.field private containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

.field private cropItem:Landroid/widget/ImageView;

.field private currentActionBarAnimation:Landroid/animation/AnimatorSet;

.field private currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

.field private currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

.field private currentDialogId:J

.field private currentEditMode:I

.field private currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

.field private currentFileNames:[Ljava/lang/String;

.field private currentIndex:I

.field private currentMessageObject:Lorg/telegram/messenger/MessageObject;

.field private currentPathObject:Ljava/lang/String;

.field private currentPlaceObject:Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

.field private currentPlayingVideoFile:Ljava/io/File;

.field private currentSubtitle:Ljava/lang/String;

.field private currentThumb:Landroid/graphics/Bitmap;

.field private currentUserAvatarLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

.field private dateTextView:Landroid/widget/TextView;

.field private disableShowCheck:Z

.field private discardTap:Z

.field private doneButtonPressed:Z

.field private dontResetZoomOnFirstLayout:Z

.field private doubleTap:Z

.field private dragY:F

.field private draggingDown:Z

.field private editorDoneLayout:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

.field private endReached:[Z

.field private endTime:J

.field private estimatedDuration:J

.field private estimatedSize:I

.field private gestureDetector:Landroid/view/GestureDetector;

.field private hideAfterAnimation:Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

.field private ignoreDidSetImage:Z

.field private imageMoveAnimation:Landroid/animation/AnimatorSet;

.field private imagesArr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private imagesArrLocals:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private imagesArrLocations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$FileLocation;",
            ">;"
        }
    .end annotation
.end field

.field private imagesArrLocationsSizes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private imagesArrTemp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private imagesByIds:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private imagesByIdsTemp:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private inPreview:Z

.field private interpolator:Landroid/view/animation/DecelerateInterpolator;

.field private invalidCoords:Z

.field private isActionBarVisible:Z

.field private isFirstLoading:Z

.field private isPlaying:Z

.field private isVisible:Z

.field private lastInsets:Ljava/lang/Object;

.field private lastTitle:Ljava/lang/String;

.field private leftImage:Lorg/telegram/messenger/ImageReceiver;

.field private loadInitialVideo:Z

.field private loadingMoreImages:Z

.field private masksItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private maxX:F

.field private maxY:F

.field private mentionLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

.field private mentionListAnimation:Landroid/animation/AnimatorSet;

.field private mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

.field private mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;

.field private menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private mergeDialogId:J

.field private minX:F

.field private minY:F

.field private moveStartX:F

.field private moveStartY:F

.field private moving:Z

.field private muteItem:Landroid/widget/ImageView;

.field private muteItemAvailable:Z

.field private muteVideo:Z

.field private nameTextView:Landroid/widget/TextView;

.field private needCaptionLayout:Z

.field private needSearchImageInArr:Z

.field private opennedFromMedia:Z

.field private originalBitrate:I

.field private originalHeight:I

.field private originalSize:J

.field private originalWidth:I

.field private paintItem:Landroid/widget/ImageView;

.field private parentActivity:Landroid/app/Activity;

.field private parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

.field private parentChatActivity:Lorg/telegram/ui/ChatActivity;

.field private photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

.field private photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

.field private photoPaintView:Lorg/telegram/ui/Components/PhotoPaintView;

.field private photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

.field private photoQualityLayout:Landroid/widget/FrameLayout;

.field private photoQualityLayoutSize:I

.field private pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

.field private pinchCenterX:F

.field private pinchCenterY:F

.field private pinchStartDistance:F

.field private pinchStartScale:F

.field private pinchStartX:F

.field private pinchStartY:F

.field private placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

.field private previewViewEnd:I

.field private previousCompression:I

.field private progressView:Lorg/telegram/ui/Components/RadialProgressView;

.field private qualityBar:Landroid/widget/SeekBar;

.field private qualityChooseView:Lorg/telegram/ui/PhotoViewer$QualityChooseView;

.field private qualityChooseViewAnimation:Landroid/animation/AnimatorSet;

.field private qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

.field private requestingPreview:Z

.field private resetButton:Landroid/widget/TextView;

.field private resultHeight:I

.field private resultWidth:I

.field private rightImage:Lorg/telegram/messenger/ImageReceiver;

.field private rotationValue:I

.field private scale:F

.field private scroller:Landroid/widget/Scroller;

.field private selectedCompression:I

.field private sendPhotoType:I

.field private shareButton:Landroid/widget/ImageView;

.field private showAfterAnimation:Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

.field private startTime:J

.field private switchImageAfterAnimation:I

.field private textureUploaded:Z

.field private totalImagesCount:I

.field private totalImagesCountMerge:I

.field private transitionAnimationStartTime:J

.field private translationX:F

.field private translationY:F

.field private tryStartRequestPreviewOnFinish:Z

.field private tuneItem:Landroid/widget/ImageView;

.field private updateProgressRunnable:Ljava/lang/Runnable;

.field private velocityTracker:Landroid/view/VelocityTracker;

.field private videoCrossfadeAlpha:F

.field private videoCrossfadeAlphaLastTime:J

.field private videoCrossfadeStarted:Z

.field private videoDuration:F

.field private videoFramesSize:J

.field private videoPlayButton:Landroid/widget/ImageView;

.field private videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

.field private videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

.field private videoPlayerSeekbar:Lorg/telegram/ui/Components/SeekBar;

.field private videoPlayerTime:Landroid/widget/TextView;

.field private videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

.field private videoTextureView:Landroid/view/TextureView;

.field private videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

.field private videoTimelineViewContainer:Landroid/widget/FrameLayout;

.field private visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

.field private wasLayout:Z

.field private windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private windowView:Landroid/widget/FrameLayout;

.field private zoomAnimation:Z

.field private zooming:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 784
    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/ui/PhotoViewer;->Instance:Lorg/telegram/ui/PhotoViewer;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/high16 v5, -0x1000000

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 799
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-boolean v2, p0, Lorg/telegram/ui/PhotoViewer;->isActionBarVisible:Z

    .line 165
    new-instance v0, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;

    invoke-direct {v0, p0, v5}, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;-><init>(Lorg/telegram/ui/PhotoViewer;I)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->backgroundDrawable:Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;

    .line 166
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->blackPaint:Landroid/graphics/Paint;

    .line 171
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    .line 189
    iput-boolean v2, p0, Lorg/telegram/ui/PhotoViewer;->canShowBottom:Z

    .line 211
    new-instance v0, Lorg/telegram/ui/PhotoViewer$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PhotoViewer$1;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->updateProgressRunnable:Ljava/lang/Runnable;

    .line 246
    const/16 v0, 0x8

    filled-new-array {v3, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    .line 266
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    .line 267
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    .line 268
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    .line 274
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    .line 288
    new-array v0, v3, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->endReached:[Z

    .line 300
    iput v4, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    .line 310
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 312
    iput v4, p0, Lorg/telegram/ui/PhotoViewer;->pinchStartScale:F

    .line 323
    iput-boolean v2, p0, Lorg/telegram/ui/PhotoViewer;->canZoom:Z

    .line 329
    iput-boolean v2, p0, Lorg/telegram/ui/PhotoViewer;->canDragDown:Z

    .line 336
    iput-boolean v2, p0, Lorg/telegram/ui/PhotoViewer;->bottomTouchEnabled:Z

    .line 338
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrTemp:Ljava/util/ArrayList;

    .line 339
    new-array v0, v3, [Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    aput-object v1, v0, v6

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    aput-object v1, v0, v2

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesByIdsTemp:[Ljava/util/HashMap;

    .line 340
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    .line 341
    new-array v0, v3, [Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    aput-object v1, v0, v6

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    aput-object v1, v0, v2

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesByIds:[Ljava/util/HashMap;

    .line 342
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    .line 343
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->avatarsArr:Ljava/util/ArrayList;

    .line 344
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocationsSizes:Ljava/util/ArrayList;

    .line 345
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    .line 346
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentUserAvatarLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 360
    const/16 v0, 0x1e

    iput v0, p0, Lorg/telegram/ui/PhotoViewer;->photoQualityLayoutSize:I

    .line 5665
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/PhotoViewer;->compressionsCount:I

    .line 800
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->blackPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 801
    return-void

    .line 288
    :array_0
    .array-data 1
        0x0t
        0x1t
    .end array-data
.end method

.method static synthetic access$000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/SeekBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerSeekbar:Lorg/telegram/ui/Components/SeekBar;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/PhotoViewer;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->isVisible:Z

    return v0
.end method

.method static synthetic access$10000(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->mentionListAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$10002(Lorg/telegram/ui/PhotoViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 139
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer;->mentionListAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$10100(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->mentionLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    return-object v0
.end method

.method static synthetic access$10200(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$10300(Lorg/telegram/ui/PhotoViewer;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->textureUploaded:Z

    return v0
.end method

.method static synthetic access$10302(Lorg/telegram/ui/PhotoViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lorg/telegram/ui/PhotoViewer;->textureUploaded:Z

    return p1
.end method

.method static synthetic access$10402(Lorg/telegram/ui/PhotoViewer;Lorg/telegram/ui/ActionBar/AlertDialog;)Lorg/telegram/ui/ActionBar/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Lorg/telegram/ui/ActionBar/AlertDialog;

    .prologue
    .line 139
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    return-object p1
.end method

.method static synthetic access$10600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PickerBottomLayoutViewer;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->editorDoneLayout:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    return-object v0
.end method

.method static synthetic access$10700(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoFilterView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    return-object v0
.end method

.method static synthetic access$10702(Lorg/telegram/ui/PhotoViewer;Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoFilterView;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 139
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    return-object p1
.end method

.method static synthetic access$10800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoPaintView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoPaintView:Lorg/telegram/ui/Components/PhotoPaintView;

    return-object v0
.end method

.method static synthetic access$10802(Lorg/telegram/ui/PhotoViewer;Lorg/telegram/ui/Components/PhotoPaintView;)Lorg/telegram/ui/Components/PhotoPaintView;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Lorg/telegram/ui/Components/PhotoPaintView;

    .prologue
    .line 139
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer;->photoPaintView:Lorg/telegram/ui/Components/PhotoPaintView;

    return-object p1
.end method

.method static synthetic access$10900(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$10902(Lorg/telegram/ui/PhotoViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 139
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/ChatAttachAlert;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    return-object v0
.end method

.method static synthetic access$11002(Lorg/telegram/ui/PhotoViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lorg/telegram/ui/PhotoViewer;->applying:Z

    return p1
.end method

.method static synthetic access$11102(Lorg/telegram/ui/PhotoViewer;F)F
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # F

    .prologue
    .line 139
    iput p1, p0, Lorg/telegram/ui/PhotoViewer;->animateToScale:F

    return p1
.end method

.method static synthetic access$11202(Lorg/telegram/ui/PhotoViewer;F)F
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # F

    .prologue
    .line 139
    iput p1, p0, Lorg/telegram/ui/PhotoViewer;->animateToX:F

    return p1
.end method

.method static synthetic access$11302(Lorg/telegram/ui/PhotoViewer;F)F
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # F

    .prologue
    .line 139
    iput p1, p0, Lorg/telegram/ui/PhotoViewer;->animateToY:F

    return p1
.end method

.method static synthetic access$11400(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$11500(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$11600(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoQualityLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$11700(Lorg/telegram/ui/PhotoViewer;FFFZ)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # F
    .param p4, "x4"    # Z

    .prologue
    .line 139
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/PhotoViewer;->animateTo(FFFZ)V

    return-void
.end method

.method static synthetic access$11800(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->resetButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$11902(Lorg/telegram/ui/PhotoViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 139
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$12000(Lorg/telegram/ui/PhotoViewer;I)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # I

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$12100(Lorg/telegram/ui/PhotoViewer;I)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # I

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$12202(Lorg/telegram/ui/PhotoViewer;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # J

    .prologue
    .line 139
    iput-wide p1, p0, Lorg/telegram/ui/PhotoViewer;->animationStartTime:J

    return-wide p1
.end method

.method static synthetic access$12302(Lorg/telegram/ui/PhotoViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lorg/telegram/ui/PhotoViewer;->zoomAnimation:Z

    return p1
.end method

.method static synthetic access$12400(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentActionBarAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$12402(Lorg/telegram/ui/PhotoViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 139
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer;->currentActionBarAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$12500(Lorg/telegram/ui/PhotoViewer;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->canShowBottom:Z

    return v0
.end method

.method static synthetic access$12602(Lorg/telegram/ui/PhotoViewer;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # I

    .prologue
    .line 139
    iput p1, p0, Lorg/telegram/ui/PhotoViewer;->animationInProgress:I

    return p1
.end method

.method static synthetic access$12702(Lorg/telegram/ui/PhotoViewer;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # J

    .prologue
    .line 139
    iput-wide p1, p0, Lorg/telegram/ui/PhotoViewer;->transitionAnimationStartTime:J

    return-wide p1
.end method

.method static synthetic access$12800(Lorg/telegram/ui/PhotoViewer;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->setImages()V

    return-void
.end method

.method static synthetic access$12900(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->showAfterAnimation:Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    return-object v0
.end method

.method static synthetic access$1300()Landroid/view/animation/DecelerateInterpolator;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lorg/telegram/ui/PhotoViewer;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    return-object v0
.end method

.method static synthetic access$13000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->hideAfterAnimation:Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    return-object v0
.end method

.method static synthetic access$1302(Landroid/view/animation/DecelerateInterpolator;)Landroid/view/animation/DecelerateInterpolator;
    .locals 0
    .param p0, "x0"    # Landroid/view/animation/DecelerateInterpolator;

    .prologue
    .line 139
    sput-object p0, Lorg/telegram/ui/PhotoViewer;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    return-object p0
.end method

.method static synthetic access$13100(Lorg/telegram/ui/PhotoViewer;)Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$13200(Lorg/telegram/ui/PhotoViewer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->animationEndRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$13202(Lorg/telegram/ui/PhotoViewer;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 139
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer;->animationEndRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$13400(Lorg/telegram/ui/PhotoViewer;Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoViewer;->onPhotoClosed(Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V

    return-void
.end method

.method static synthetic access$13500(Lorg/telegram/ui/PhotoViewer;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # I

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoViewer;->redraw(I)V

    return-void
.end method

.method static synthetic access$13600(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->qualityChooseViewAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$13602(Lorg/telegram/ui/PhotoViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 139
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer;->qualityChooseViewAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$13700(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$QualityChooseView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->qualityChooseView:Lorg/telegram/ui/PhotoViewer$QualityChooseView;

    return-object v0
.end method

.method static synthetic access$13800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PickerBottomLayoutViewer;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    return-object v0
.end method

.method static synthetic access$1400()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lorg/telegram/ui/PhotoViewer;->progressPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1402(Landroid/graphics/Paint;)Landroid/graphics/Paint;
    .locals 0
    .param p0, "x0"    # Landroid/graphics/Paint;

    .prologue
    .line 139
    sput-object p0, Lorg/telegram/ui/PhotoViewer;->progressPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/PhotoViewer;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/PhotoViewer;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v0

    return v0
.end method

.method static synthetic access$1700()[Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lorg/telegram/ui/PhotoViewer;->progressDrawables:[Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/PhotoViewer;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->inPreview:Z

    return v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/PhotoViewer;Landroid/graphics/Canvas;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Landroid/graphics/Canvas;

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoViewer;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static synthetic access$2200(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PickerBottomLayoutViewer;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    return-object v0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewNew:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewOld:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/CheckBox;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    return-object v0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->muteItem:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/PhotoViewer;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->bottomTouchEnabled:Z

    return v0
.end method

.method static synthetic access$2802(Lorg/telegram/ui/PhotoViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lorg/telegram/ui/PhotoViewer;->bottomTouchEnabled:Z

    return p1
.end method

.method static synthetic access$2900(Lorg/telegram/ui/PhotoViewer;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoViewer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineViewContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/ClippingImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    return-object v0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/PhotoViewer;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->lastInsets:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3102(Lorg/telegram/ui/PhotoViewer;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 139
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer;->lastInsets:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3200(Lorg/telegram/ui/PhotoViewer;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->blackPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    return-object v0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/PhotoViewer;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->wasLayout:Z

    return v0
.end method

.method static synthetic access$3402(Lorg/telegram/ui/PhotoViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lorg/telegram/ui/PhotoViewer;->wasLayout:Z

    return p1
.end method

.method static synthetic access$3500(Lorg/telegram/ui/PhotoViewer;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->dontResetZoomOnFirstLayout:Z

    return v0
.end method

.method static synthetic access$3502(Lorg/telegram/ui/PhotoViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lorg/telegram/ui/PhotoViewer;->dontResetZoomOnFirstLayout:Z

    return p1
.end method

.method static synthetic access$3600(Lorg/telegram/ui/PhotoViewer;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    return v0
.end method

.method static synthetic access$3602(Lorg/telegram/ui/PhotoViewer;F)F
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # F

    .prologue
    .line 139
    iput p1, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    return p1
.end method

.method static synthetic access$3702(Lorg/telegram/ui/PhotoViewer;F)F
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # F

    .prologue
    .line 139
    iput p1, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    return p1
.end method

.method static synthetic access$3802(Lorg/telegram/ui/PhotoViewer;F)F
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # F

    .prologue
    .line 139
    iput p1, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    return p1
.end method

.method static synthetic access$3900(Lorg/telegram/ui/PhotoViewer;F)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # F

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoViewer;->updateMinMax(F)V

    return-void
.end method

.method static synthetic access$400(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoTimelineView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    return-object v0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/PhotoViewer;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->setScaleToFill()V

    return-void
.end method

.method static synthetic access$4102(Lorg/telegram/ui/PhotoViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lorg/telegram/ui/PhotoViewer;->attachedToWindow:Z

    return p1
.end method

.method static synthetic access$4200(Lorg/telegram/ui/PhotoViewer;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoViewer;->closeCaptionEnter(Z)V

    return-void
.end method

.method static synthetic access$4300(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->windowView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/PhotoViewer;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->needCaptionLayout:Z

    return v0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/tgnet/TLRPC$FileLocation;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    return-object v0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/PhotoViewer;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->avatarsDialogId:I

    return v0
.end method

.method static synthetic access$4800(Lorg/telegram/ui/PhotoViewer;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->opennedFromMedia:Z

    return v0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/PhotoViewer;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget-wide v0, p0, Lorg/telegram/ui/PhotoViewer;->currentDialogId:J

    return-wide v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$5002(Lorg/telegram/ui/PhotoViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lorg/telegram/ui/PhotoViewer;->disableShowCheck:Z

    return p1
.end method

.method static synthetic access$5100(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChatActivity;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->parentChatActivity:Lorg/telegram/ui/ChatActivity;

    return-object v0
.end method

.method static synthetic access$5200(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5300(Lorg/telegram/ui/PhotoViewer;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    return v0
.end method

.method static synthetic access$5302(Lorg/telegram/ui/PhotoViewer;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # I

    .prologue
    .line 139
    iput p1, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    return p1
.end method

.method static synthetic access$5400(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->avatarsArr:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5500(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/tgnet/TLRPC$FileLocation;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentUserAvatarLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    return-object v0
.end method

.method static synthetic access$5700(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocationsSizes:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5800(Lorg/telegram/ui/PhotoViewer;IZ)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 139
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PhotoViewer;->setImageIndex(IZ)V

    return-void
.end method

.method static synthetic access$5900(Lorg/telegram/ui/PhotoViewer;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->onSharePressed()V

    return-void
.end method

.method static synthetic access$600(Lorg/telegram/ui/PhotoViewer;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->updateVideoPlayerTime()V

    return-void
.end method

.method static synthetic access$6000(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->cropItem:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$6100(Lorg/telegram/ui/PhotoViewer;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->openCaptionEnter()V

    return-void
.end method

.method static synthetic access$6200(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6300(Lorg/telegram/ui/PhotoViewer;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->videoDuration:F

    return v0
.end method

.method static synthetic access$6400(Lorg/telegram/ui/PhotoViewer;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->updateVideoInfo()V

    return-void
.end method

.method static synthetic access$6500(Lorg/telegram/ui/PhotoViewer;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->selectedCompression:I

    return v0
.end method

.method static synthetic access$6502(Lorg/telegram/ui/PhotoViewer;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # I

    .prologue
    .line 139
    iput p1, p0, Lorg/telegram/ui/PhotoViewer;->selectedCompression:I

    return p1
.end method

.method static synthetic access$6600(Lorg/telegram/ui/PhotoViewer;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->previousCompression:I

    return v0
.end method

.method static synthetic access$6700(Lorg/telegram/ui/PhotoViewer;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoViewer;->didChangedCompressionLevel(Z)V

    return-void
.end method

.method static synthetic access$6800(Lorg/telegram/ui/PhotoViewer;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoViewer;->showQualityView(Z)V

    return-void
.end method

.method static synthetic access$6900(Lorg/telegram/ui/PhotoViewer;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # I

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoViewer;->requestVideoPreview(I)V

    return-void
.end method

.method static synthetic access$700(Lorg/telegram/ui/PhotoViewer;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->isPlaying:Z

    return v0
.end method

.method static synthetic access$7000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    return-object v0
.end method

.method static synthetic access$702(Lorg/telegram/ui/PhotoViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lorg/telegram/ui/PhotoViewer;->isPlaying:Z

    return p1
.end method

.method static synthetic access$7100(Lorg/telegram/ui/PhotoViewer;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->doneButtonPressed:Z

    return v0
.end method

.method static synthetic access$7102(Lorg/telegram/ui/PhotoViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lorg/telegram/ui/PhotoViewer;->doneButtonPressed:Z

    return p1
.end method

.method static synthetic access$7200(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionItem:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$7300(Lorg/telegram/ui/PhotoViewer;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget-wide v0, p0, Lorg/telegram/ui/PhotoViewer;->startTime:J

    return-wide v0
.end method

.method static synthetic access$7400(Lorg/telegram/ui/PhotoViewer;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget-wide v0, p0, Lorg/telegram/ui/PhotoViewer;->endTime:J

    return-wide v0
.end method

.method static synthetic access$7500(Lorg/telegram/ui/PhotoViewer;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->rotationValue:I

    return v0
.end method

.method static synthetic access$7600(Lorg/telegram/ui/PhotoViewer;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->originalWidth:I

    return v0
.end method

.method static synthetic access$7700(Lorg/telegram/ui/PhotoViewer;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->originalHeight:I

    return v0
.end method

.method static synthetic access$7800(Lorg/telegram/ui/PhotoViewer;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->bitrate:I

    return v0
.end method

.method static synthetic access$7900(Lorg/telegram/ui/PhotoViewer;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentPlayingVideoFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/PhotoViewer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->updateProgressRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$8000(Lorg/telegram/ui/PhotoViewer;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->estimatedSize:I

    return v0
.end method

.method static synthetic access$8100(Lorg/telegram/ui/PhotoViewer;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget-wide v0, p0, Lorg/telegram/ui/PhotoViewer;->estimatedDuration:J

    return-wide v0
.end method

.method static synthetic access$8200(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$8300(Lorg/telegram/ui/PhotoViewer;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->compressionsCount:I

    return v0
.end method

.method static synthetic access$8400(Lorg/telegram/ui/PhotoViewer;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->muteVideo:Z

    return v0
.end method

.method static synthetic access$8402(Lorg/telegram/ui/PhotoViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lorg/telegram/ui/PhotoViewer;->muteVideo:Z

    return p1
.end method

.method static synthetic access$8500(Lorg/telegram/ui/PhotoViewer;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->originalBitrate:I

    return v0
.end method

.method static synthetic access$8600(Lorg/telegram/ui/PhotoViewer;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->updateWidthHeightBitrateForCompression()V

    return-void
.end method

.method static synthetic access$8700(Lorg/telegram/ui/PhotoViewer;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->resultWidth:I

    return v0
.end method

.method static synthetic access$8800(Lorg/telegram/ui/PhotoViewer;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->resultHeight:I

    return v0
.end method

.method static synthetic access$8900(Lorg/telegram/ui/PhotoViewer;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->barQualityValue:I

    return v0
.end method

.method static synthetic access$8902(Lorg/telegram/ui/PhotoViewer;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # I

    .prologue
    .line 139
    iput p1, p0, Lorg/telegram/ui/PhotoViewer;->barQualityValue:I

    return p1
.end method

.method static synthetic access$900(Lorg/telegram/ui/PhotoViewer;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$9000(Lorg/telegram/ui/PhotoViewer;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # I

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoViewer;->switchToEditMode(I)V

    return-void
.end method

.method static synthetic access$9100(Lorg/telegram/ui/PhotoViewer;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    return v0
.end method

.method static synthetic access$9102(Lorg/telegram/ui/PhotoViewer;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # I

    .prologue
    .line 139
    iput p1, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    return p1
.end method

.method static synthetic access$9200(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoCropView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    return-object v0
.end method

.method static synthetic access$9300(Lorg/telegram/ui/PhotoViewer;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->applyCurrentEditMode()V

    return-void
.end method

.method static synthetic access$9400(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/ImageReceiver;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    return-object v0
.end method

.method static synthetic access$9500(Lorg/telegram/ui/PhotoViewer;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->sendPhotoType:I

    return v0
.end method

.method static synthetic access$9600(Lorg/telegram/ui/PhotoViewer;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->ignoreDidSetImage:Z

    return v0
.end method

.method static synthetic access$9700(Lorg/telegram/ui/PhotoViewer;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->updateSelectedCount()V

    return-void
.end method

.method static synthetic access$9800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Adapters/MentionsAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;

    return-object v0
.end method

.method static synthetic access$9900(Lorg/telegram/ui/PhotoViewer;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 139
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->allowMentions:Z

    return v0
.end method

.method static synthetic access$9902(Lorg/telegram/ui/PhotoViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lorg/telegram/ui/PhotoViewer;->allowMentions:Z

    return p1
.end method

.method private animateTo(FFFZ)V
    .locals 6
    .param p1, "newScale"    # F
    .param p2, "newTx"    # F
    .param p3, "newTy"    # F
    .param p4, "isZoom"    # Z

    .prologue
    .line 5209
    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/PhotoViewer;->animateTo(FFFZI)V

    .line 5210
    return-void
.end method

.method private animateTo(FFFZI)V
    .locals 5
    .param p1, "newScale"    # F
    .param p2, "newTx"    # F
    .param p3, "newTy"    # F
    .param p4, "isZoom"    # Z
    .param p5, "duration"    # I

    .prologue
    .line 5213
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    cmpl-float v0, v0, p3

    if-nez v0, :cond_0

    .line 5235
    :goto_0
    return-void

    .line 5216
    :cond_0
    iput-boolean p4, p0, Lorg/telegram/ui/PhotoViewer;->zoomAnimation:Z

    .line 5217
    iput p1, p0, Lorg/telegram/ui/PhotoViewer;->animateToScale:F

    .line 5218
    iput p2, p0, Lorg/telegram/ui/PhotoViewer;->animateToX:F

    .line 5219
    iput p3, p0, Lorg/telegram/ui/PhotoViewer;->animateToY:F

    .line 5220
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/PhotoViewer;->animationStartTime:J

    .line 5221
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    .line 5222
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    const-string/jumbo v3, "animationValue"

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    .line 5223
    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    .line 5222
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 5225
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5226
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    int-to-long v2, p5

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 5227
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/PhotoViewer$63;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PhotoViewer$63;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5234
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 5222
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private applyCurrentEditMode()V
    .locals 13

    .prologue
    .line 2715
    const/4 v0, 0x0

    .line 2716
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v12, 0x0

    .line 2717
    .local v12, "stickers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputDocument;>;"
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 2718
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PhotoCropView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2725
    :cond_0
    :goto_0
    if-eqz v0, :cond_5

    .line 2726
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v2

    int-to-float v2, v2

    const/16 v3, 0x50

    const/4 v4, 0x0

    const/16 v5, 0x65

    const/16 v6, 0x65

    invoke-static/range {v0 .. v6}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Landroid/graphics/Bitmap;FFIZII)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v11

    .line 2727
    .local v11, "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v11, :cond_5

    .line 2728
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 2729
    .local v8, "object":Ljava/lang/Object;
    instance-of v1, v8, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v1, :cond_8

    move-object v7, v8

    .line 2730
    check-cast v7, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 2731
    .local v7, "entry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    const/4 v1, 0x1

    invoke-static {v11, v1}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lorg/telegram/messenger/MediaController$PhotoEntry;->imagePath:Ljava/lang/String;

    .line 2732
    const/high16 v1, 0x42f00000    # 120.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42f00000    # 120.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/16 v3, 0x46

    const/4 v4, 0x0

    const/16 v5, 0x65

    const/16 v6, 0x65

    invoke-static/range {v0 .. v6}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Landroid/graphics/Bitmap;FFIZII)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v11

    .line 2733
    if-eqz v11, :cond_1

    .line 2734
    const/4 v1, 0x1

    invoke-static {v11, v1}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lorg/telegram/messenger/MediaController$PhotoEntry;->thumbPath:Ljava/lang/String;

    .line 2736
    :cond_1
    if-eqz v12, :cond_2

    .line 2737
    iget-object v1, v7, Lorg/telegram/messenger/MediaController$PhotoEntry;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2750
    .end local v7    # "entry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    :cond_2
    :goto_1
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->sendPhotoType:I

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    if-eqz v1, :cond_3

    .line 2751
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    invoke-interface {v1, v2}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->updatePhotoAtIndex(I)V

    .line 2752
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    invoke-interface {v1, v2}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->isPhotoChecked(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2753
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    invoke-interface {v1, v2}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->setPhotoChecked(I)V

    .line 2754
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    invoke-interface {v2, v3}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->isPhotoChecked(I)Z

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/CheckBox;->setChecked(ZZ)V

    .line 2755
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->updateSelectedCount()V

    .line 2758
    :cond_3
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 2759
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PhotoCropView;->getRectSizeX()F

    move-result v1

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v9, v1, v2

    .line 2760
    .local v9, "scaleX":F
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PhotoCropView;->getRectSizeY()F

    move-result v1

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v10, v1, v2

    .line 2761
    .local v10, "scaleY":F
    cmpl-float v1, v9, v10

    if-lez v1, :cond_a

    .end local v9    # "scaleX":F
    :goto_2
    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    .line 2762
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PhotoCropView;->getRectX()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoCropView;->getRectSizeX()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    .line 2763
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PhotoCropView;->getRectY()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoCropView;->getRectSizeY()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    .line 2764
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/ui/PhotoViewer;->zoomAnimation:Z

    .line 2765
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/ui/PhotoViewer;->applying:Z

    .line 2767
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PhotoCropView;->onDisappear()V

    .line 2769
    .end local v10    # "scaleY":F
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    .line 2770
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setOrientation(IZ)V

    .line 2771
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/ui/PhotoViewer;->ignoreDidSetImage:Z

    .line 2772
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2773
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/telegram/ui/PhotoViewer;->ignoreDidSetImage:Z

    .line 2774
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    .line 2777
    .end local v8    # "object":Ljava/lang/Object;
    .end local v11    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_5
    return-void

    .line 2719
    :cond_6
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    .line 2720
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_0

    .line 2721
    :cond_7
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 2722
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->photoPaintView:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PhotoPaintView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2723
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->photoPaintView:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PhotoPaintView;->getMasks()Ljava/util/ArrayList;

    move-result-object v12

    goto/16 :goto_0

    .line 2739
    .restart local v8    # "object":Ljava/lang/Object;
    .restart local v11    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_8
    instance-of v1, v8, Lorg/telegram/messenger/MediaController$SearchImage;

    if-eqz v1, :cond_2

    move-object v7, v8

    .line 2740
    check-cast v7, Lorg/telegram/messenger/MediaController$SearchImage;

    .line 2741
    .local v7, "entry":Lorg/telegram/messenger/MediaController$SearchImage;
    const/4 v1, 0x1

    invoke-static {v11, v1}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lorg/telegram/messenger/MediaController$SearchImage;->imagePath:Ljava/lang/String;

    .line 2742
    const/high16 v1, 0x42f00000    # 120.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42f00000    # 120.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/16 v3, 0x46

    const/4 v4, 0x0

    const/16 v5, 0x65

    const/16 v6, 0x65

    invoke-static/range {v0 .. v6}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Landroid/graphics/Bitmap;FFIZII)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v11

    .line 2743
    if-eqz v11, :cond_9

    .line 2744
    const/4 v1, 0x1

    invoke-static {v11, v1}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lorg/telegram/messenger/MediaController$SearchImage;->thumbPath:Ljava/lang/String;

    .line 2746
    :cond_9
    if-eqz v12, :cond_2

    .line 2747
    iget-object v1, v7, Lorg/telegram/messenger/MediaController$SearchImage;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .end local v7    # "entry":Lorg/telegram/messenger/MediaController$SearchImage;
    .restart local v9    # "scaleX":F
    .restart local v10    # "scaleY":F
    :cond_a
    move v9, v10

    .line 2761
    goto/16 :goto_2
.end method

.method private checkAnimation()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 4270
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->animationInProgress:I

    if-eqz v1, :cond_1

    .line 4271
    iget-wide v2, p0, Lorg/telegram/ui/PhotoViewer;->transitionAnimationStartTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1

    .line 4272
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->animationEndRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 4273
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->animationEndRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 4274
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/PhotoViewer;->animationEndRunnable:Ljava/lang/Runnable;

    .line 4276
    :cond_0
    iput v0, p0, Lorg/telegram/ui/PhotoViewer;->animationInProgress:I

    .line 4279
    :cond_1
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->animationInProgress:I

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private checkMinMax(Z)V
    .locals 4
    .param p1, "zoom"    # Z

    .prologue
    .line 5174
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    .line 5175
    .local v0, "moveToX":F
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    .line 5176
    .local v1, "moveToY":F
    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    invoke-direct {p0, v2}, Lorg/telegram/ui/PhotoViewer;->updateMinMax(F)V

    .line 5177
    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->minX:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 5178
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->minX:F

    .line 5182
    :cond_0
    :goto_0
    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->minY:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    .line 5183
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->minY:F

    .line 5187
    :cond_1
    :goto_1
    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    invoke-direct {p0, v2, v0, v1, p1}, Lorg/telegram/ui/PhotoViewer;->animateTo(FFFZ)V

    .line 5188
    return-void

    .line 5179
    :cond_2
    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 5180
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    goto :goto_0

    .line 5184
    :cond_3
    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 5185
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    goto :goto_1
.end method

.method private checkProgress(IZ)V
    .locals 11
    .param p1, "a"    # I
    .param p2, "animated"    # Z

    .prologue
    .line 4025
    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v7, v7, p1

    if-eqz v7, :cond_18

    .line 4026
    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    .line 4027
    .local v2, "index":I
    const/4 v7, 0x1

    if-ne p1, v7, :cond_6

    .line 4028
    add-int/lit8 v2, v2, 0x1

    .line 4032
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 4033
    .local v1, "f":Ljava/io/File;
    const/4 v3, 0x0

    .line 4034
    .local v3, "isVideo":Z
    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v7, :cond_7

    .line 4035
    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessageObject;

    .line 4036
    .local v5, "messageObject":Lorg/telegram/messenger/MessageObject;
    iget-object v7, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 4037
    new-instance v1, Ljava/io/File;

    .end local v1    # "f":Ljava/io/File;
    iget-object v7, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4038
    .restart local v1    # "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 4039
    const/4 v1, 0x0

    .line 4042
    :cond_1
    if-nez v1, :cond_2

    .line 4043
    iget-object v7, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v7}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v1

    .line 4045
    :cond_2
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v3

    .line 4072
    .end local v5    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_3
    :goto_1
    if-eqz v1, :cond_13

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_13

    .line 4073
    if-eqz v3, :cond_12

    .line 4074
    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    aget-object v7, v7, p1

    const/4 v8, 0x3

    invoke-virtual {v7, v8, p2}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setBackgroundState(IZ)V

    .line 4094
    :goto_2
    if-nez p1, :cond_5

    .line 4095
    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    if-eqz v7, :cond_17

    if-nez v3, :cond_17

    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-static {v7}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->access$10500(Lorg/telegram/ui/PhotoViewer$PhotoProgressView;)I

    move-result v7

    if-eqz v7, :cond_17

    :cond_4
    const/4 v7, 0x1

    :goto_3
    iput-boolean v7, p0, Lorg/telegram/ui/PhotoViewer;->canZoom:Z

    .line 4100
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "index":I
    .end local v3    # "isVideo":Z
    :cond_5
    :goto_4
    return-void

    .line 4029
    .restart local v2    # "index":I
    :cond_6
    const/4 v7, 0x2

    if-ne p1, v7, :cond_0

    .line 4030
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 4046
    .restart local v1    # "f":Ljava/io/File;
    .restart local v3    # "isVideo":Z
    :cond_7
    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-eqz v7, :cond_f

    .line 4047
    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    .line 4048
    .local v0, "botInlineResult":Lorg/telegram/tgnet/TLRPC$BotInlineResult;
    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    const-string/jumbo v8, "video"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v7}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 4049
    :cond_8
    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v7, :cond_c

    .line 4050
    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v7}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v1

    .line 4054
    :cond_9
    :goto_5
    const/4 v3, 0x1

    .line 4060
    :cond_a
    :goto_6
    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_3

    .line 4061
    :cond_b
    new-instance v1, Ljava/io/File;

    .end local v1    # "f":Ljava/io/File;
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v7

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v8, v8, p1

    invoke-direct {v1, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v1    # "f":Ljava/io/File;
    goto :goto_1

    .line 4051
    :cond_c
    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    if-eqz v7, :cond_9

    .line 4052
    new-instance v1, Ljava/io/File;

    .end local v1    # "f":Ljava/io/File;
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v7

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    invoke-static {v9}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    const-string/jumbo v10, "mp4"

    invoke-static {v9, v10}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v1    # "f":Ljava/io/File;
    goto :goto_5

    .line 4055
    :cond_d
    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v7, :cond_e

    .line 4056
    new-instance v1, Ljava/io/File;

    .end local v1    # "f":Ljava/io/File;
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v7

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v8, v8, p1

    invoke-direct {v1, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v1    # "f":Ljava/io/File;
    goto :goto_6

    .line 4057
    :cond_e
    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v7, :cond_a

    .line 4058
    new-instance v1, Ljava/io/File;

    .end local v1    # "f":Ljava/io/File;
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v8, v8, p1

    invoke-direct {v1, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v1    # "f":Ljava/io/File;
    goto/16 :goto_6

    .line 4063
    .end local v0    # "botInlineResult":Lorg/telegram/tgnet/TLRPC$BotInlineResult;
    :cond_f
    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v7, :cond_11

    .line 4064
    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 4065
    .local v4, "location":Lorg/telegram/tgnet/TLRPC$FileLocation;
    iget v7, p0, Lorg/telegram/ui/PhotoViewer;->avatarsDialogId:I

    if-eqz v7, :cond_10

    const/4 v7, 0x1

    :goto_7
    invoke-static {v4, v7}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v1

    .line 4066
    goto/16 :goto_1

    .line 4065
    :cond_10
    const/4 v7, 0x0

    goto :goto_7

    .line 4066
    .end local v4    # "location":Lorg/telegram/tgnet/TLRPC$FileLocation;
    :cond_11
    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->currentPathObject:Ljava/lang/String;

    if-eqz v7, :cond_3

    .line 4067
    new-instance v1, Ljava/io/File;

    .end local v1    # "f":Ljava/io/File;
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v7

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v8, v8, p1

    invoke-direct {v1, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4068
    .restart local v1    # "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_3

    .line 4069
    new-instance v1, Ljava/io/File;

    .end local v1    # "f":Ljava/io/File;
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v7

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v8, v8, p1

    invoke-direct {v1, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v1    # "f":Ljava/io/File;
    goto/16 :goto_1

    .line 4076
    :cond_12
    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    aget-object v7, v7, p1

    const/4 v8, -0x1

    invoke-virtual {v7, v8, p2}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setBackgroundState(IZ)V

    goto/16 :goto_2

    .line 4079
    :cond_13
    if-eqz v3, :cond_16

    .line 4080
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v8, v8, p1

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/FileLoader;->isLoadingFile(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_15

    .line 4081
    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    aget-object v7, v7, p1

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setBackgroundState(IZ)V

    .line 4088
    :goto_8
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v8, v8, p1

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/ImageLoader;->getFileProgress(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    .line 4089
    .local v6, "progress":Ljava/lang/Float;
    if-nez v6, :cond_14

    .line 4090
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    .line 4092
    :cond_14
    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    aget-object v7, v7, p1

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setProgress(FZ)V

    goto/16 :goto_2

    .line 4083
    .end local v6    # "progress":Ljava/lang/Float;
    :cond_15
    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    aget-object v7, v7, p1

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setBackgroundState(IZ)V

    goto :goto_8

    .line 4086
    :cond_16
    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    aget-object v7, v7, p1

    const/4 v8, 0x0

    invoke-virtual {v7, v8, p2}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setBackgroundState(IZ)V

    goto :goto_8

    .line 4095
    :cond_17
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 4098
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "index":I
    .end local v3    # "isVideo":Z
    :cond_18
    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    aget-object v7, v7, p1

    const/4 v8, -0x1

    invoke-virtual {v7, v8, p2}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setBackgroundState(IZ)V

    goto/16 :goto_4
.end method

.method private closeCaptionEnter(Z)V
    .locals 5
    .param p1, "apply"    # Z

    .prologue
    const/4 v2, 0x0

    .line 2437
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    if-ltz v1, :cond_0

    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 2471
    :cond_0
    :goto_0
    return-void

    .line 2440
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 2441
    .local v0, "object":Ljava/lang/Object;
    if-eqz p1, :cond_3

    .line 2442
    instance-of v1, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v1, :cond_8

    move-object v1, v0

    .line 2443
    check-cast v1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->getFieldCharSequence()Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->caption:Ljava/lang/CharSequence;

    .line 2448
    :cond_2
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->getFieldCharSequence()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    invoke-interface {v1, v3}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->isPhotoChecked(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2449
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    invoke-interface {v1, v3}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->setPhotoChecked(I)V

    .line 2450
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    iget v4, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    invoke-interface {v3, v4}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->isPhotoChecked(I)Z

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lorg/telegram/ui/Components/CheckBox;->setChecked(ZZ)V

    .line 2451
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->updateSelectedCount()V

    .line 2454
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->setTag(Ljava/lang/Object;)V

    .line 2455
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->lastTitle:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 2456
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->lastTitle:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 2457
    iput-object v2, p0, Lorg/telegram/ui/PhotoViewer;->lastTitle:Ljava/lang/String;

    .line 2459
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionItem:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    .line 2460
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-boolean v1, p0, Lorg/telegram/ui/PhotoViewer;->muteVideo:Z

    if-eqz v1, :cond_9

    const-string/jumbo v1, "AttachGif"

    const v4, 0x7f0700a7

    invoke-static {v1, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v3, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 2461
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-boolean v1, p0, Lorg/telegram/ui/PhotoViewer;->muteVideo:Z

    if-eqz v1, :cond_a

    move-object v1, v2

    :goto_3
    invoke-virtual {v3, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 2462
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->captionItem:Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->getFieldCharSequence()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_b

    const v1, 0x7f020211

    :goto_4
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2464
    :cond_5
    sget-boolean v1, Lorg/telegram/ui/ActionBar/Theme;->plusShowPhotoQualityBar:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->photoQualityLayout:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2465
    :cond_6
    invoke-direct {p0, v0}, Lorg/telegram/ui/PhotoViewer;->updateCaptionTextForCurrentPhoto(Ljava/lang/Object;)V

    .line 2466
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->getFieldCharSequence()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/telegram/ui/PhotoViewer;->setCurrentCaption(Ljava/lang/CharSequence;)V

    .line 2467
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->isPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2468
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->hidePopup()V

    .line 2470
    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->closeKeyboard()V

    goto/16 :goto_0

    .line 2444
    :cond_8
    instance-of v1, v0, Lorg/telegram/messenger/MediaController$SearchImage;

    if-eqz v1, :cond_2

    move-object v1, v0

    .line 2445
    check-cast v1, Lorg/telegram/messenger/MediaController$SearchImage;

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->getFieldCharSequence()Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/messenger/MediaController$SearchImage;->caption:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .line 2460
    :cond_9
    const-string/jumbo v1, "AttachVideo"

    const v4, 0x7f0700ad

    invoke-static {v1, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 2461
    :cond_a
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentSubtitle:Ljava/lang/String;

    goto :goto_3

    .line 2462
    :cond_b
    const v1, 0x7f020212

    goto :goto_4
.end method

.method private didChangedCompressionLevel(Z)V
    .locals 5
    .param p1, "request"    # Z

    .prologue
    .line 5847
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

    .line 5848
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 5849
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "compress_video2"

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->selectedCompression:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 5850
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 5851
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->updateWidthHeightBitrateForCompression()V

    .line 5852
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->updateVideoInfo()V

    .line 5853
    if-eqz p1, :cond_0

    .line 5854
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lorg/telegram/ui/PhotoViewer;->requestVideoPreview(I)V

    .line 5856
    :cond_0
    return-void
.end method

.method private getAdditionX()I
    .locals 2

    .prologue
    .line 4909
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 4910
    const/high16 v0, 0x41600000    # 14.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 4912
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getAdditionY()I
    .locals 4

    .prologue
    const/16 v3, 0x15

    const/4 v0, 0x0

    .line 4916
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 4917
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_0

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :cond_0
    add-int/2addr v0, v1

    .line 4921
    :cond_1
    :goto_0
    return v0

    .line 4918
    :cond_2
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    if-eqz v1, :cond_1

    .line 4919
    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_3

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :cond_3
    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private getContainerViewHeight()I
    .locals 1

    .prologue
    .line 4937
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    invoke-direct {p0, v0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight(I)I

    move-result v0

    return v0
.end method

.method private getContainerViewHeight(I)I
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 4941
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v1, Landroid/graphics/Point;->y:I

    .line 4942
    .local v0, "height":I
    if-nez p1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 4943
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v0, v1

    .line 4945
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 4946
    const/high16 v1, 0x43100000    # 144.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    .line 4952
    :cond_1
    :goto_0
    return v0

    .line 4947
    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 4948
    const/high16 v1, 0x431a0000    # 154.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    .line 4949
    :cond_3
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 4950
    const/high16 v1, 0x42400000    # 48.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private getContainerViewWidth()I
    .locals 1

    .prologue
    .line 4925
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    invoke-direct {p0, v0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth(I)I

    move-result v0

    return v0
.end method

.method private getContainerViewWidth(I)I
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 4929
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v1}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getWidth()I

    move-result v0

    .line 4930
    .local v0, "width":I
    if-eqz p1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    .line 4931
    const/high16 v1, 0x41e00000    # 28.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    .line 4933
    :cond_0
    return v0
.end method

.method private getFileLocation(I[I)Lorg/telegram/tgnet/TLObject;
    .locals 7
    .param p1, "index"    # I
    .param p2, "size"    # [I

    .prologue
    const/4 v2, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 3367
    if-gez p1, :cond_1

    .line 3417
    :cond_0
    :goto_0
    return-object v2

    .line 3370
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3371
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_0

    .line 3374
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocationsSizes:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, p2, v5

    .line 3375
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLObject;

    goto :goto_0

    .line 3376
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3377
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_0

    .line 3380
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    .line 3381
    .local v0, "message":Lorg/telegram/messenger/MessageObject;
    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    if-eqz v3, :cond_6

    .line 3382
    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageActionUserUpdatedPhoto;

    if-eqz v3, :cond_3

    .line 3383
    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->newUserPhoto:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto :goto_0

    .line 3385
    :cond_3
    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v4

    invoke-static {v3, v4}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    .line 3386
    .local v1, "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v1, :cond_5

    .line 3387
    iget v2, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    aput v2, p2, v5

    .line 3388
    aget v2, p2, v5

    if-nez v2, :cond_4

    .line 3389
    aput v6, p2, v5

    .line 3391
    :cond_4
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto :goto_0

    .line 3393
    :cond_5
    aput v6, p2, v5

    goto :goto_0

    .line 3396
    .end local v1    # "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_6
    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v3, :cond_7

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-nez v3, :cond_8

    :cond_7
    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v3, :cond_b

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v3, :cond_b

    .line 3397
    :cond_8
    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v4

    invoke-static {v3, v4}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    .line 3398
    .restart local v1    # "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v1, :cond_a

    .line 3399
    iget v2, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    aput v2, p2, v5

    .line 3400
    aget v2, p2, v5

    if-nez v2, :cond_9

    .line 3401
    aput v6, p2, v5

    .line 3403
    :cond_9
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto/16 :goto_0

    .line 3405
    :cond_a
    aput v6, p2, v5

    goto/16 :goto_0

    .line 3407
    .end local v1    # "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_b
    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    if-eqz v3, :cond_c

    .line 3408
    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;->photo:Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    goto/16 :goto_0

    .line 3409
    :cond_c
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v3, :cond_0

    .line 3410
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    aput v2, p2, v5

    .line 3411
    aget v2, p2, v5

    if-nez v2, :cond_d

    .line 3412
    aput v6, p2, v5

    .line 3414
    :cond_d
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto/16 :goto_0
.end method

.method private getFileName(I)Ljava/lang/String;
    .locals 10
    .param p1, "index"    # I

    .prologue
    const/4 v6, 0x0

    .line 3317
    if-gez p1, :cond_1

    .line 3363
    :cond_0
    :goto_0
    return-object v6

    .line 3320
    :cond_1
    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 3321
    :cond_2
    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 3322
    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge p1, v7, :cond_0

    .line 3325
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 3326
    .local v2, "location":Lorg/telegram/tgnet/TLRPC$FileLocation;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ".jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 3327
    .end local v2    # "location":Lorg/telegram/tgnet/TLRPC$FileLocation;
    :cond_3
    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 3328
    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge p1, v7, :cond_0

    .line 3331
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->getMessageFileName(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 3333
    :cond_4
    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 3334
    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge p1, v7, :cond_0

    .line 3337
    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 3338
    .local v3, "object":Ljava/lang/Object;
    instance-of v7, v3, Lorg/telegram/messenger/MediaController$SearchImage;

    if-eqz v7, :cond_8

    move-object v4, v3

    .line 3339
    check-cast v4, Lorg/telegram/messenger/MediaController$SearchImage;

    .line 3340
    .local v4, "searchImage":Lorg/telegram/messenger/MediaController$SearchImage;
    iget-object v6, v4, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v6, :cond_5

    .line 3341
    iget-object v6, v4, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 3342
    :cond_5
    iget v6, v4, Lorg/telegram/messenger/MediaController$SearchImage;->type:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_7

    iget-object v6, v4, Lorg/telegram/messenger/MediaController$SearchImage;->localUrl:Ljava/lang/String;

    if-eqz v6, :cond_7

    iget-object v6, v4, Lorg/telegram/messenger/MediaController$SearchImage;->localUrl:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_7

    .line 3343
    new-instance v1, Ljava/io/File;

    iget-object v6, v4, Lorg/telegram/messenger/MediaController$SearchImage;->localUrl:Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3344
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 3345
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 3347
    :cond_6
    const-string/jumbo v6, ""

    iput-object v6, v4, Lorg/telegram/messenger/MediaController$SearchImage;->localUrl:Ljava/lang/String;

    .line 3350
    .end local v1    # "file":Ljava/io/File;
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v4, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    invoke-static {v7}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    const-string/jumbo v8, "jpg"

    invoke-static {v7, v8}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 3351
    .end local v4    # "searchImage":Lorg/telegram/messenger/MediaController$SearchImage;
    :cond_8
    instance-of v7, v3, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-eqz v7, :cond_0

    move-object v0, v3

    .line 3352
    check-cast v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    .line 3353
    .local v0, "botInlineResult":Lorg/telegram/tgnet/TLRPC$BotInlineResult;
    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v7, :cond_9

    .line 3354
    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 3355
    :cond_9
    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v7, :cond_a

    .line 3356
    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v7

    invoke-static {v6, v7}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v5

    .line 3357
    .local v5, "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    invoke-static {v5}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 3358
    .end local v5    # "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_a
    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 3359
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    invoke-static {v7}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    const-string/jumbo v8, "jpg"

    invoke-static {v7, v8}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0
.end method

.method public static getInstance()Lorg/telegram/ui/PhotoViewer;
    .locals 4

    .prologue
    .line 787
    sget-object v0, Lorg/telegram/ui/PhotoViewer;->Instance:Lorg/telegram/ui/PhotoViewer;

    .line 788
    .local v0, "localInstance":Lorg/telegram/ui/PhotoViewer;
    if-nez v0, :cond_1

    .line 789
    const-class v3, Lorg/telegram/ui/PhotoViewer;

    monitor-enter v3

    .line 790
    :try_start_0
    sget-object v0, Lorg/telegram/ui/PhotoViewer;->Instance:Lorg/telegram/ui/PhotoViewer;

    .line 791
    if-nez v0, :cond_0

    .line 792
    new-instance v1, Lorg/telegram/ui/PhotoViewer;

    invoke-direct {v1}, Lorg/telegram/ui/PhotoViewer;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "localInstance":Lorg/telegram/ui/PhotoViewer;
    .local v1, "localInstance":Lorg/telegram/ui/PhotoViewer;
    :try_start_1
    sput-object v1, Lorg/telegram/ui/PhotoViewer;->Instance:Lorg/telegram/ui/PhotoViewer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 794
    .end local v1    # "localInstance":Lorg/telegram/ui/PhotoViewer;
    .restart local v0    # "localInstance":Lorg/telegram/ui/PhotoViewer;
    :cond_0
    :try_start_2
    monitor-exit v3

    .line 796
    :cond_1
    return-object v0

    .line 794
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "localInstance":Lorg/telegram/ui/PhotoViewer;
    .restart local v1    # "localInstance":Lorg/telegram/ui/PhotoViewer;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "localInstance":Lorg/telegram/ui/PhotoViewer;
    .restart local v0    # "localInstance":Lorg/telegram/ui/PhotoViewer;
    goto :goto_0
.end method

.method private goToNext()V
    .locals 5

    .prologue
    .line 5191
    const/4 v0, 0x0

    .line 5192
    .local v0, "extra":F
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 5193
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    mul-float v0, v1, v2

    .line 5195
    :cond_0
    const/4 v1, 0x1

    iput v1, p0, Lorg/telegram/ui/PhotoViewer;->switchImageAfterAnimation:I

    .line 5196
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->minX:F

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    sub-float/2addr v2, v0

    const/high16 v3, 0x41f00000    # 30.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    const/4 v4, 0x0

    invoke-direct {p0, v1, v2, v3, v4}, Lorg/telegram/ui/PhotoViewer;->animateTo(FFFZ)V

    .line 5197
    return-void
.end method

.method private goToPrev()V
    .locals 5

    .prologue
    .line 5200
    const/4 v0, 0x0

    .line 5201
    .local v0, "extra":F
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 5202
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    mul-float v0, v1, v2

    .line 5204
    :cond_0
    const/4 v1, 0x2

    iput v1, p0, Lorg/telegram/ui/PhotoViewer;->switchImageAfterAnimation:I

    .line 5205
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    add-float/2addr v2, v0

    const/high16 v3, 0x41f00000    # 30.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    const/4 v4, 0x0

    invoke-direct {p0, v1, v2, v3, v4}, Lorg/telegram/ui/PhotoViewer;->animateTo(FFFZ)V

    .line 5206
    return-void
.end method

.method private onActionClick(Z)V
    .locals 8
    .param p1, "download"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 5477
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v2, v2, v6

    if-nez v2, :cond_2

    .line 5545
    :cond_1
    :goto_0
    return-void

    .line 5480
    :cond_2
    const/4 v0, 0x0

    .line 5481
    .local v0, "file":Ljava/io/File;
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_5

    .line 5482
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    .line 5483
    new-instance v0, Ljava/io/File;

    .end local v0    # "file":Ljava/io/File;
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5484
    .restart local v0    # "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    .line 5485
    const/4 v0, 0x0

    .line 5488
    :cond_3
    if-nez v0, :cond_4

    .line 5489
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v0

    .line 5490
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    .line 5491
    const/4 v0, 0x0

    .line 5507
    :cond_4
    :goto_1
    if-nez v0, :cond_c

    .line 5508
    if-eqz p1, :cond_1

    .line 5509
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_8

    .line 5510
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/FileLoader;->isLoadingFile(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 5511
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    invoke-virtual {v2, v3, v7, v6}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;ZZ)V

    goto :goto_0

    .line 5494
    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-eqz v2, :cond_4

    .line 5495
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v2, :cond_6

    .line 5496
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v0

    .line 5497
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    .line 5498
    const/4 v0, 0x0

    goto :goto_1

    .line 5501
    :cond_6
    new-instance v0, Ljava/io/File;

    .end local v0    # "file":Ljava/io/File;
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    const-string/jumbo v5, "mp4"

    invoke-static {v4, v5}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5502
    .restart local v0    # "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    .line 5503
    const/4 v0, 0x0

    goto :goto_1

    .line 5513
    :cond_7
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    goto/16 :goto_0

    .line 5515
    :cond_8
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-eqz v2, :cond_1

    .line 5516
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v2, :cond_a

    .line 5517
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/FileLoader;->isLoadingFile(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 5518
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v2, v3, v7, v6}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;ZZ)V

    goto/16 :goto_0

    .line 5520
    :cond_9
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    goto/16 :goto_0

    .line 5523
    :cond_a
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageLoader;->isLoadingHttpFile(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 5524
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    const-string/jumbo v4, "mp4"

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/ImageLoader;->loadHttpFile(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5526
    :cond_b
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageLoader;->cancelLoadHttpFile(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5532
    :cond_c
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_d

    .line 5533
    invoke-direct {p0, v0, v7, v6}, Lorg/telegram/ui/PhotoViewer;->preparePlayer(Ljava/io/File;ZZ)V

    goto/16 :goto_0

    .line 5535
    :cond_d
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5536
    .local v1, "intent":Landroid/content/Intent;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_e

    .line 5537
    invoke-virtual {v1, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5538
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    const-string/jumbo v3, "org.telegram.plus.provider"

    invoke-static {v2, v3, v0}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo v3, "video/mp4"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 5542
    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    const/16 v3, 0x1f4

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 5540
    :cond_e
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo v3, "video/mp4"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2
.end method

.method private onDraw(Landroid/graphics/Canvas;)V
    .locals 36
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 5248
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->animationInProgress:I

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/PhotoViewer;->isVisible:Z

    move/from16 v31, v0

    if-nez v31, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->animationInProgress:I

    move/from16 v31, v0

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_1

    .line 5474
    :cond_0
    :goto_0
    return-void

    .line 5255
    :cond_1
    const/high16 v5, -0x40800000    # -1.0f

    .line 5257
    .local v5, "aty":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v31, v0

    if-eqz v31, :cond_16

    .line 5258
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->scroller:Landroid/widget/Scroller;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/Scroller;->isFinished()Z

    move-result v31

    if-nez v31, :cond_2

    .line 5259
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->scroller:Landroid/widget/Scroller;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/Scroller;->abortAnimation()V

    .line 5262
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->scale:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->animateToScale:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->scale:F

    move/from16 v33, v0

    sub-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->animationValue:F

    move/from16 v33, v0

    mul-float v32, v32, v33

    add-float v27, v31, v32

    .line 5263
    .local v27, "ts":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->animateToX:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    move/from16 v33, v0

    sub-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->animationValue:F

    move/from16 v33, v0

    mul-float v32, v32, v33

    add-float v28, v31, v32

    .line 5264
    .local v28, "tx":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->animateToY:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    move/from16 v33, v0

    sub-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->animationValue:F

    move/from16 v33, v0

    mul-float v32, v32, v33

    add-float v29, v31, v32

    .line 5265
    .local v29, "ty":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_3

    .line 5266
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->animationValue:F

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Lorg/telegram/ui/Components/PhotoCropView;->setAnimationProgress(F)V

    .line 5269
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->animateToScale:F

    move/from16 v31, v0

    const/high16 v32, 0x3f800000    # 1.0f

    cmpl-float v31, v31, v32

    if-nez v31, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->scale:F

    move/from16 v31, v0

    const/high16 v32, 0x3f800000    # 1.0f

    cmpl-float v31, v31, v32

    if-nez v31, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    move/from16 v31, v0

    const/16 v32, 0x0

    cmpl-float v31, v31, v32

    if-nez v31, :cond_4

    .line 5270
    move/from16 v5, v29

    .line 5272
    :cond_4
    move/from16 v8, v27

    .line 5273
    .local v8, "currentScale":F
    move/from16 v10, v29

    .line 5274
    .local v10, "currentTranslationY":F
    move/from16 v9, v28

    .line 5275
    .local v9, "currentTranslationX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->invalidate()V

    .line 5315
    .end local v27    # "ts":F
    .end local v28    # "tx":F
    .end local v29    # "ty":F
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    move/from16 v31, v0

    if-nez v31, :cond_1f

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->scale:F

    move/from16 v31, v0

    const/high16 v32, 0x3f800000    # 1.0f

    cmpl-float v31, v31, v32

    if-nez v31, :cond_1f

    const/high16 v31, -0x40800000    # -1.0f

    cmpl-float v31, v5, v31

    if-eqz v31, :cond_1f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/PhotoViewer;->zoomAnimation:Z

    move/from16 v31, v0

    if-nez v31, :cond_1f

    .line 5316
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    const/high16 v32, 0x40800000    # 4.0f

    div-float v15, v31, v32

    .line 5317
    .local v15, "maxValue":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->backgroundDrawable:Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;

    move-object/from16 v31, v0

    const/high16 v32, 0x42fe0000    # 127.0f

    const/high16 v33, 0x437f0000    # 255.0f

    const/high16 v34, 0x3f800000    # 1.0f

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v35

    move/from16 v0, v35

    invoke-static {v0, v15}, Ljava/lang/Math;->min(FF)F

    move-result v35

    div-float v35, v35, v15

    sub-float v34, v34, v35

    mul-float v33, v33, v34

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->max(FF)F

    move-result v32

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;->setAlpha(I)V

    .line 5322
    .end local v15    # "maxValue":F
    :goto_2
    const/16 v24, 0x0

    .line 5323
    .local v24, "sideImage":Lorg/telegram/messenger/ImageReceiver;
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    move/from16 v31, v0

    if-nez v31, :cond_7

    .line 5324
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->scale:F

    move/from16 v31, v0

    const/high16 v32, 0x3f800000    # 1.0f

    cmpl-float v31, v31, v32

    if-ltz v31, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/PhotoViewer;->zoomAnimation:Z

    move/from16 v31, v0

    if-nez v31, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/PhotoViewer;->zooming:Z

    move/from16 v31, v0

    if-nez v31, :cond_6

    .line 5325
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    move/from16 v31, v0

    const/high16 v32, 0x40a00000    # 5.0f

    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    add-float v31, v31, v32

    cmpl-float v31, v9, v31

    if-lez v31, :cond_20

    .line 5326
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v24, v0

    .line 5331
    :cond_6
    :goto_3
    if-eqz v24, :cond_21

    const/16 v31, 0x1

    :goto_4
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/PhotoViewer;->changingPage:Z

    .line 5334
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v31, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_a

    .line 5335
    move/from16 v25, v9

    .line 5336
    .local v25, "tranlateX":F
    const/16 v21, 0x0

    .line 5337
    .local v21, "scaleDiff":F
    const/high16 v4, 0x3f800000    # 1.0f

    .line 5338
    .local v4, "alpha":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/PhotoViewer;->zoomAnimation:Z

    move/from16 v31, v0

    if-nez v31, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->minX:F

    move/from16 v31, v0

    cmpg-float v31, v25, v31

    if-gez v31, :cond_8

    .line 5339
    const/high16 v31, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->minX:F

    move/from16 v32, v0

    sub-float v32, v32, v25

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    div-float v32, v32, v33

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 5340
    const/high16 v31, 0x3f800000    # 1.0f

    sub-float v31, v31, v4

    const v32, 0x3e99999a    # 0.3f

    mul-float v21, v31, v32

    .line 5341
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v31

    move/from16 v0, v31

    neg-int v0, v0

    move/from16 v31, v0

    const/high16 v32, 0x41f00000    # 30.0f

    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v32

    div-int/lit8 v32, v32, 0x2

    sub-int v31, v31, v32

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v25, v0

    .line 5344
    :cond_8
    invoke-virtual/range {v24 .. v24}, Lorg/telegram/messenger/ImageReceiver;->hasBitmapImage()Z

    move-result v31

    if-eqz v31, :cond_9

    .line 5345
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 5346
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v31

    div-int/lit8 v31, v31, 0x2

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v32

    div-int/lit8 v32, v32, 0x2

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p1

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5347
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v31

    const/high16 v32, 0x41f00000    # 30.0f

    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v32

    div-int/lit8 v32, v32, 0x2

    add-int v31, v31, v32

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    add-float v31, v31, v25

    const/16 v32, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5348
    const/high16 v31, 0x3f800000    # 1.0f

    sub-float v31, v31, v21

    const/high16 v32, 0x3f800000    # 1.0f

    sub-float v32, v32, v21

    move-object/from16 v0, p1

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 5349
    invoke-virtual/range {v24 .. v24}, Lorg/telegram/messenger/ImageReceiver;->getBitmapWidth()I

    move-result v7

    .line 5350
    .local v7, "bitmapWidth":I
    invoke-virtual/range {v24 .. v24}, Lorg/telegram/messenger/ImageReceiver;->getBitmapHeight()I

    move-result v6

    .line 5352
    .local v6, "bitmapHeight":I
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    int-to-float v0, v7

    move/from16 v32, v0

    div-float v22, v31, v32

    .line 5353
    .local v22, "scaleX":F
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    int-to-float v0, v6

    move/from16 v32, v0

    div-float v23, v31, v32

    .line 5354
    .local v23, "scaleY":F
    cmpl-float v31, v22, v23

    if-lez v31, :cond_22

    move/from16 v18, v23

    .line 5355
    .local v18, "scale":F
    :goto_5
    int-to-float v0, v7

    move/from16 v31, v0

    mul-float v31, v31, v18

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v30, v0

    .line 5356
    .local v30, "width":I
    int-to-float v0, v6

    move/from16 v31, v0

    mul-float v31, v31, v18

    move/from16 v0, v31

    float-to-int v14, v0

    .line 5358
    .local v14, "height":I
    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 5359
    move/from16 v0, v30

    neg-int v0, v0

    move/from16 v31, v0

    div-int/lit8 v31, v31, 0x2

    neg-int v0, v14

    move/from16 v32, v0

    div-int/lit8 v32, v32, 0x2

    move-object/from16 v0, v24

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3, v14}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(IIII)V

    .line 5360
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 5361
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 5364
    .end local v6    # "bitmapHeight":I
    .end local v7    # "bitmapWidth":I
    .end local v14    # "height":I
    .end local v18    # "scale":F
    .end local v22    # "scaleX":F
    .end local v23    # "scaleY":F
    .end local v30    # "width":I
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 5365
    div-float v31, v10, v8

    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5366
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->scale:F

    move/from16 v32, v0

    const/high16 v33, 0x3f800000    # 1.0f

    add-float v32, v32, v33

    mul-float v31, v31, v32

    const/high16 v32, 0x41f00000    # 30.0f

    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    add-float v31, v31, v32

    const/high16 v32, 0x40000000    # 2.0f

    div-float v31, v31, v32

    neg-float v0, v10

    move/from16 v32, v0

    div-float v32, v32, v8

    move-object/from16 v0, p1

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5367
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    aget-object v31, v31, v32

    const/high16 v32, 0x3f800000    # 1.0f

    sub-float v32, v32, v21

    invoke-virtual/range {v31 .. v32}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setScale(F)V

    .line 5368
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    aget-object v31, v31, v32

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setAlpha(F)V

    .line 5369
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    aget-object v31, v31, v32

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->onDraw(Landroid/graphics/Canvas;)V

    .line 5370
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 5373
    .end local v4    # "alpha":F
    .end local v21    # "scaleDiff":F
    .end local v25    # "tranlateX":F
    :cond_a
    move/from16 v26, v9

    .line 5374
    .local v26, "translateX":F
    const/16 v21, 0x0

    .line 5375
    .restart local v21    # "scaleDiff":F
    const/high16 v4, 0x3f800000    # 1.0f

    .line 5376
    .restart local v4    # "alpha":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/PhotoViewer;->zoomAnimation:Z

    move/from16 v31, v0

    if-nez v31, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    move/from16 v31, v0

    cmpl-float v31, v26, v31

    if-lez v31, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    move/from16 v31, v0

    if-nez v31, :cond_b

    .line 5377
    const/high16 v31, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    move/from16 v32, v0

    sub-float v32, v26, v32

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    div-float v32, v32, v33

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 5378
    const v31, 0x3e99999a    # 0.3f

    mul-float v21, v4, v31

    .line 5379
    const/high16 v31, 0x3f800000    # 1.0f

    sub-float v4, v31, v4

    .line 5380
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    move/from16 v26, v0

    .line 5382
    :cond_b
    sget v31, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v32, 0x10

    move/from16 v0, v31

    move/from16 v1, v32

    if-lt v0, v1, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    move-object/from16 v31, v0

    if-eqz v31, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->getVisibility()I

    move-result v31

    if-nez v31, :cond_23

    const/4 v11, 0x1

    .line 5383
    .local v11, "drawTextureView":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lorg/telegram/messenger/ImageReceiver;->hasBitmapImage()Z

    move-result v31

    if-eqz v31, :cond_12

    .line 5384
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 5385
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v31

    div-int/lit8 v31, v31, 0x2

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->getAdditionX()I

    move-result v32

    add-int v31, v31, v32

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v32

    div-int/lit8 v32, v32, 0x2

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->getAdditionY()I

    move-result v33

    add-int v32, v32, v33

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p1

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5386
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5387
    sub-float v31, v8, v21

    sub-float v32, v8, v21

    move-object/from16 v0, p1

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 5389
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_c

    .line 5390
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v26

    invoke-virtual {v0, v8, v1, v10}, Lorg/telegram/ui/Components/PhotoCropView;->setBitmapParams(FFF)V

    .line 5393
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lorg/telegram/messenger/ImageReceiver;->getBitmapWidth()I

    move-result v7

    .line 5394
    .restart local v7    # "bitmapWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lorg/telegram/messenger/ImageReceiver;->getBitmapHeight()I

    move-result v6

    .line 5395
    .restart local v6    # "bitmapHeight":I
    if-eqz v11, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/PhotoViewer;->textureUploaded:Z

    move/from16 v31, v0

    if-eqz v31, :cond_d

    .line 5396
    int-to-float v0, v7

    move/from16 v31, v0

    int-to-float v0, v6

    move/from16 v32, v0

    div-float v19, v31, v32

    .line 5397
    .local v19, "scale1":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->videoTextureView:Landroid/view/TextureView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/TextureView;->getMeasuredWidth()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->videoTextureView:Landroid/view/TextureView;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/view/TextureView;->getMeasuredHeight()I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    div-float v20, v31, v32

    .line 5398
    .local v20, "scale2":F
    sub-float v31, v19, v20

    invoke-static/range {v31 .. v31}, Ljava/lang/Math;->abs(F)F

    move-result v31

    const v32, 0x3c23d70a    # 0.01f

    cmpl-float v31, v31, v32

    if-lez v31, :cond_d

    .line 5399
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->videoTextureView:Landroid/view/TextureView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/TextureView;->getMeasuredWidth()I

    move-result v7

    .line 5400
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->videoTextureView:Landroid/view/TextureView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/TextureView;->getMeasuredHeight()I

    move-result v6

    .line 5404
    .end local v19    # "scale1":F
    .end local v20    # "scale2":F
    :cond_d
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    int-to-float v0, v7

    move/from16 v32, v0

    div-float v22, v31, v32

    .line 5405
    .restart local v22    # "scaleX":F
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    int-to-float v0, v6

    move/from16 v32, v0

    div-float v23, v31, v32

    .line 5406
    .restart local v23    # "scaleY":F
    cmpl-float v31, v22, v23

    if-lez v31, :cond_24

    move/from16 v18, v23

    .line 5407
    .restart local v18    # "scale":F
    :goto_7
    int-to-float v0, v7

    move/from16 v31, v0

    mul-float v31, v31, v18

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v30, v0

    .line 5408
    .restart local v30    # "width":I
    int-to-float v0, v6

    move/from16 v31, v0

    mul-float v31, v31, v18

    move/from16 v0, v31

    float-to-int v14, v0

    .line 5410
    .restart local v14    # "height":I
    if-eqz v11, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/PhotoViewer;->textureUploaded:Z

    move/from16 v31, v0

    if-eqz v31, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/PhotoViewer;->videoCrossfadeStarted:Z

    move/from16 v31, v0

    if-eqz v31, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->videoCrossfadeAlpha:F

    move/from16 v31, v0

    const/high16 v32, 0x3f800000    # 1.0f

    cmpl-float v31, v31, v32

    if-eqz v31, :cond_f

    .line 5411
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 5412
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v31, v0

    move/from16 v0, v30

    neg-int v0, v0

    move/from16 v32, v0

    div-int/lit8 v32, v32, 0x2

    neg-int v0, v14

    move/from16 v33, v0

    div-int/lit8 v33, v33, 0x2

    move-object/from16 v0, v31

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3, v14}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(IIII)V

    .line 5413
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 5415
    :cond_f
    if-eqz v11, :cond_11

    .line 5416
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/PhotoViewer;->videoCrossfadeStarted:Z

    move/from16 v31, v0

    if-nez v31, :cond_10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/PhotoViewer;->textureUploaded:Z

    move/from16 v31, v0

    if-eqz v31, :cond_10

    .line 5417
    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/PhotoViewer;->videoCrossfadeStarted:Z

    .line 5418
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->videoCrossfadeAlpha:F

    .line 5419
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/ui/PhotoViewer;->videoCrossfadeAlphaLastTime:J

    .line 5421
    :cond_10
    move/from16 v0, v30

    neg-int v0, v0

    move/from16 v31, v0

    div-int/lit8 v31, v31, 0x2

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    neg-int v0, v14

    move/from16 v32, v0

    div-int/lit8 v32, v32, 0x2

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p1

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5422
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->videoTextureView:Landroid/view/TextureView;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->videoCrossfadeAlpha:F

    move/from16 v32, v0

    mul-float v32, v32, v4

    invoke-virtual/range {v31 .. v32}, Landroid/view/TextureView;->setAlpha(F)V

    .line 5423
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 5424
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/PhotoViewer;->videoCrossfadeStarted:Z

    move/from16 v31, v0

    if-eqz v31, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->videoCrossfadeAlpha:F

    move/from16 v31, v0

    const/high16 v32, 0x3f800000    # 1.0f

    cmpg-float v31, v31, v32

    if-gez v31, :cond_11

    .line 5425
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 5426
    .local v16, "newUpdateTime":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/ui/PhotoViewer;->videoCrossfadeAlphaLastTime:J

    move-wide/from16 v32, v0

    sub-long v12, v16, v32

    .line 5427
    .local v12, "dt":J
    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/ui/PhotoViewer;->videoCrossfadeAlphaLastTime:J

    .line 5428
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->videoCrossfadeAlpha:F

    move/from16 v31, v0

    long-to-float v0, v12

    move/from16 v32, v0

    const/high16 v33, 0x43960000    # 300.0f

    div-float v32, v32, v33

    add-float v31, v31, v32

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->videoCrossfadeAlpha:F

    .line 5429
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->invalidate()V

    .line 5430
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->videoCrossfadeAlpha:F

    move/from16 v31, v0

    const/high16 v32, 0x3f800000    # 1.0f

    cmpl-float v31, v31, v32

    if-lez v31, :cond_11

    .line 5431
    const/high16 v31, 0x3f800000    # 1.0f

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->videoCrossfadeAlpha:F

    .line 5435
    .end local v12    # "dt":J
    .end local v16    # "newUpdateTime":J
    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 5437
    .end local v6    # "bitmapHeight":I
    .end local v7    # "bitmapWidth":I
    .end local v14    # "height":I
    .end local v18    # "scale":F
    .end local v22    # "scaleX":F
    .end local v23    # "scaleY":F
    .end local v30    # "width":I
    :cond_12
    if-nez v11, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v31, v0

    if-eqz v31, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v31

    if-eqz v31, :cond_14

    .line 5438
    :cond_13
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 5439
    div-float v31, v10, v8

    move-object/from16 v0, p1

    move/from16 v1, v26

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5440
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aget-object v31, v31, v32

    const/high16 v32, 0x3f800000    # 1.0f

    sub-float v32, v32, v21

    invoke-virtual/range {v31 .. v32}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setScale(F)V

    .line 5441
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aget-object v31, v31, v32

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setAlpha(F)V

    .line 5442
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aget-object v31, v31, v32

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->onDraw(Landroid/graphics/Canvas;)V

    .line 5443
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 5446
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v31, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_0

    .line 5447
    invoke-virtual/range {v24 .. v24}, Lorg/telegram/messenger/ImageReceiver;->hasBitmapImage()Z

    move-result v31

    if-eqz v31, :cond_15

    .line 5448
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 5449
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v31

    div-int/lit8 v31, v31, 0x2

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v32

    div-int/lit8 v32, v32, 0x2

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p1

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5450
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->scale:F

    move/from16 v32, v0

    const/high16 v33, 0x3f800000    # 1.0f

    add-float v32, v32, v33

    mul-float v31, v31, v32

    const/high16 v32, 0x41f00000    # 30.0f

    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    add-float v31, v31, v32

    move/from16 v0, v31

    neg-float v0, v0

    move/from16 v31, v0

    const/high16 v32, 0x40000000    # 2.0f

    div-float v31, v31, v32

    add-float v31, v31, v9

    const/16 v32, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5451
    invoke-virtual/range {v24 .. v24}, Lorg/telegram/messenger/ImageReceiver;->getBitmapWidth()I

    move-result v7

    .line 5452
    .restart local v7    # "bitmapWidth":I
    invoke-virtual/range {v24 .. v24}, Lorg/telegram/messenger/ImageReceiver;->getBitmapHeight()I

    move-result v6

    .line 5454
    .restart local v6    # "bitmapHeight":I
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    int-to-float v0, v7

    move/from16 v32, v0

    div-float v22, v31, v32

    .line 5455
    .restart local v22    # "scaleX":F
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    int-to-float v0, v6

    move/from16 v32, v0

    div-float v23, v31, v32

    .line 5456
    .restart local v23    # "scaleY":F
    cmpl-float v31, v22, v23

    if-lez v31, :cond_25

    move/from16 v18, v23

    .line 5457
    .restart local v18    # "scale":F
    :goto_8
    int-to-float v0, v7

    move/from16 v31, v0

    mul-float v31, v31, v18

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v30, v0

    .line 5458
    .restart local v30    # "width":I
    int-to-float v0, v6

    move/from16 v31, v0

    mul-float v31, v31, v18

    move/from16 v0, v31

    float-to-int v14, v0

    .line 5460
    .restart local v14    # "height":I
    const/high16 v31, 0x3f800000    # 1.0f

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 5461
    move/from16 v0, v30

    neg-int v0, v0

    move/from16 v31, v0

    div-int/lit8 v31, v31, 0x2

    neg-int v0, v14

    move/from16 v32, v0

    div-int/lit8 v32, v32, 0x2

    move-object/from16 v0, v24

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3, v14}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(IIII)V

    .line 5462
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 5463
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 5466
    .end local v6    # "bitmapHeight":I
    .end local v7    # "bitmapWidth":I
    .end local v14    # "height":I
    .end local v18    # "scale":F
    .end local v22    # "scaleX":F
    .end local v23    # "scaleY":F
    .end local v30    # "width":I
    :cond_15
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 5467
    div-float v31, v10, v8

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v9, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5468
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->scale:F

    move/from16 v32, v0

    const/high16 v33, 0x3f800000    # 1.0f

    add-float v32, v32, v33

    mul-float v31, v31, v32

    const/high16 v32, 0x41f00000    # 30.0f

    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    add-float v31, v31, v32

    move/from16 v0, v31

    neg-float v0, v0

    move/from16 v31, v0

    const/high16 v32, 0x40000000    # 2.0f

    div-float v31, v31, v32

    neg-float v0, v10

    move/from16 v32, v0

    div-float v32, v32, v8

    move-object/from16 v0, p1

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5469
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    move-object/from16 v31, v0

    const/16 v32, 0x2

    aget-object v31, v31, v32

    const/high16 v32, 0x3f800000    # 1.0f

    invoke-virtual/range {v31 .. v32}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setScale(F)V

    .line 5470
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    move-object/from16 v31, v0

    const/16 v32, 0x2

    aget-object v31, v31, v32

    const/high16 v32, 0x3f800000    # 1.0f

    invoke-virtual/range {v31 .. v32}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setAlpha(F)V

    .line 5471
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    move-object/from16 v31, v0

    const/16 v32, 0x2

    aget-object v31, v31, v32

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->onDraw(Landroid/graphics/Canvas;)V

    .line 5472
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 5277
    .end local v4    # "alpha":F
    .end local v8    # "currentScale":F
    .end local v9    # "currentTranslationX":F
    .end local v10    # "currentTranslationY":F
    .end local v11    # "drawTextureView":Z
    .end local v21    # "scaleDiff":F
    .end local v24    # "sideImage":Lorg/telegram/messenger/ImageReceiver;
    .end local v26    # "translateX":F
    :cond_16
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/ui/PhotoViewer;->animationStartTime:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x0

    cmp-long v31, v32, v34

    if-eqz v31, :cond_18

    .line 5278
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->animateToX:F

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->translationX:F

    .line 5279
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->animateToY:F

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->translationY:F

    .line 5280
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->animateToScale:F

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->scale:F

    .line 5281
    const-wide/16 v32, 0x0

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/ui/PhotoViewer;->animationStartTime:J

    .line 5282
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_17

    .line 5283
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    move-object/from16 v31, v0

    const/high16 v32, 0x3f800000    # 1.0f

    invoke-virtual/range {v31 .. v32}, Lorg/telegram/ui/Components/PhotoCropView;->setAnimationProgress(F)V

    .line 5285
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->scale:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1}, Lorg/telegram/ui/PhotoViewer;->updateMinMax(F)V

    .line 5286
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/PhotoViewer;->zoomAnimation:Z

    .line 5288
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->scroller:Landroid/widget/Scroller;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/Scroller;->isFinished()Z

    move-result v31

    if-nez v31, :cond_1b

    .line 5289
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->scroller:Landroid/widget/Scroller;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v31

    if-eqz v31, :cond_1b

    .line 5290
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->scroller:Landroid/widget/Scroller;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/Scroller;->getStartX()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    move/from16 v32, v0

    cmpg-float v31, v31, v32

    if-gez v31, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->scroller:Landroid/widget/Scroller;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/Scroller;->getStartX()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->minX:F

    move/from16 v32, v0

    cmpl-float v31, v31, v32

    if-lez v31, :cond_19

    .line 5291
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->scroller:Landroid/widget/Scroller;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/Scroller;->getCurrX()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->translationX:F

    .line 5293
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->scroller:Landroid/widget/Scroller;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/Scroller;->getStartY()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    move/from16 v32, v0

    cmpg-float v31, v31, v32

    if-gez v31, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->scroller:Landroid/widget/Scroller;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/Scroller;->getStartY()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->minY:F

    move/from16 v32, v0

    cmpl-float v31, v31, v32

    if-lez v31, :cond_1a

    .line 5294
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->scroller:Landroid/widget/Scroller;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/Scroller;->getCurrY()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->translationY:F

    .line 5296
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->invalidate()V

    .line 5299
    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->switchImageAfterAnimation:I

    move/from16 v31, v0

    if-eqz v31, :cond_1d

    .line 5300
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->switchImageAfterAnimation:I

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_1e

    .line 5301
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, 0x1

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer;->setImageIndex(IZ)V

    .line 5305
    :cond_1c
    :goto_9
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->switchImageAfterAnimation:I

    .line 5307
    :cond_1d
    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/ui/PhotoViewer;->scale:F

    .line 5308
    .restart local v8    # "currentScale":F
    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    .line 5309
    .restart local v10    # "currentTranslationY":F
    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    .line 5310
    .restart local v9    # "currentTranslationX":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/PhotoViewer;->moving:Z

    move/from16 v31, v0

    if-nez v31, :cond_5

    .line 5311
    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    goto/16 :goto_1

    .line 5302
    .end local v8    # "currentScale":F
    .end local v9    # "currentTranslationX":F
    .end local v10    # "currentTranslationY":F
    :cond_1e
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->switchImageAfterAnimation:I

    move/from16 v31, v0

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_1c

    .line 5303
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, -0x1

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer;->setImageIndex(IZ)V

    goto :goto_9

    .line 5319
    .restart local v8    # "currentScale":F
    .restart local v9    # "currentTranslationX":F
    .restart local v10    # "currentTranslationY":F
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->backgroundDrawable:Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;

    move-object/from16 v31, v0

    const/16 v32, 0xff

    invoke-virtual/range {v31 .. v32}, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;->setAlpha(I)V

    goto/16 :goto_2

    .line 5327
    .restart local v24    # "sideImage":Lorg/telegram/messenger/ImageReceiver;
    :cond_20
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->minX:F

    move/from16 v31, v0

    const/high16 v32, 0x40a00000    # 5.0f

    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v31, v31, v32

    cmpg-float v31, v9, v31

    if-gez v31, :cond_6

    .line 5328
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v24, v0

    goto/16 :goto_3

    .line 5331
    :cond_21
    const/16 v31, 0x0

    goto/16 :goto_4

    .restart local v4    # "alpha":F
    .restart local v6    # "bitmapHeight":I
    .restart local v7    # "bitmapWidth":I
    .restart local v21    # "scaleDiff":F
    .restart local v22    # "scaleX":F
    .restart local v23    # "scaleY":F
    .restart local v25    # "tranlateX":F
    :cond_22
    move/from16 v18, v22

    .line 5354
    goto/16 :goto_5

    .line 5382
    .end local v6    # "bitmapHeight":I
    .end local v7    # "bitmapWidth":I
    .end local v22    # "scaleX":F
    .end local v23    # "scaleY":F
    .end local v25    # "tranlateX":F
    .restart local v26    # "translateX":F
    :cond_23
    const/4 v11, 0x0

    goto/16 :goto_6

    .restart local v6    # "bitmapHeight":I
    .restart local v7    # "bitmapWidth":I
    .restart local v11    # "drawTextureView":Z
    .restart local v22    # "scaleX":F
    .restart local v23    # "scaleY":F
    :cond_24
    move/from16 v18, v22

    .line 5406
    goto/16 :goto_7

    :cond_25
    move/from16 v18, v22

    .line 5456
    goto/16 :goto_8
.end method

.method private onPhotoClosed(Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V
    .locals 6
    .param p1, "object"    # Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 4798
    iput-boolean v4, p0, Lorg/telegram/ui/PhotoViewer;->isVisible:Z

    .line 4799
    iput-boolean v5, p0, Lorg/telegram/ui/PhotoViewer;->disableShowCheck:Z

    .line 4800
    iput-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 4801
    iput-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    .line 4802
    iput-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 4803
    iput-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentPathObject:Ljava/lang/String;

    .line 4804
    iput-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentThumb:Landroid/graphics/Bitmap;

    .line 4805
    iput-object v2, p0, Lorg/telegram/ui/PhotoViewer;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    .line 4806
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v1, :cond_0

    .line 4807
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setSecondParentView(Landroid/view/View;)V

    .line 4808
    iput-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    .line 4810
    :cond_0
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    .line 4811
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 4812
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    aget-object v1, v1, v0

    const/4 v3, -0x1

    invoke-virtual {v1, v3, v4}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setBackgroundState(IZ)V

    .line 4810
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4815
    :cond_2
    invoke-direct {p0, v4}, Lorg/telegram/ui/PhotoViewer;->requestVideoPreview(I)V

    .line 4816
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    if-eqz v1, :cond_3

    .line 4817
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoTimelineView;->destroy()V

    .line 4819
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object v1, v2

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v3, v1}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 4820
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    move-object v1, v2

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v3, v1}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 4821
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    move-object v1, v2

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v3, v1}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 4822
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    new-instance v3, Lorg/telegram/ui/PhotoViewer$61;

    invoke-direct {v3, p0}, Lorg/telegram/ui/PhotoViewer$61;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->post(Ljava/lang/Runnable;)Z

    .line 4836
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    if-eqz v1, :cond_4

    .line 4837
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    invoke-interface {v1}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->willHidePhotoViewer()V

    .line 4839
    :cond_4
    iput-object v2, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    .line 4840
    iput-boolean v4, p0, Lorg/telegram/ui/PhotoViewer;->disableShowCheck:Z

    .line 4841
    if-eqz p1, :cond_5

    .line 4842
    iget-object v1, p1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v5, v5}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 4844
    :cond_5
    return-void
.end method

.method private onPhotoShow(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/util/ArrayList;Ljava/util/ArrayList;ILorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V
    .locals 17
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "fileLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p5, "index"    # I
    .param p6, "object"    # Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/MessageObject;",
            "Lorg/telegram/tgnet/TLRPC$FileLocation;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;I",
            "Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3428
    .local p3, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .local p4, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->generateClassGuid()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->classGuid:I

    .line 3429
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 3430
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 3431
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentPathObject:Ljava/lang/String;

    .line 3432
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    .line 3433
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    .line 3434
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 3435
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 3436
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 3437
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->avatarsDialogId:I

    .line 3438
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCount:I

    .line 3439
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCountMerge:I

    .line 3440
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    .line 3441
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->isFirstLoading:Z

    .line 3442
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->needSearchImageInArr:Z

    .line 3443
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->loadingMoreImages:Z

    .line 3444
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->endReached:[Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-boolean v4, v2, v3

    .line 3445
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->endReached:[Z

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    aput-boolean v2, v3, v4

    .line 3446
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->opennedFromMedia:Z

    .line 3447
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->needCaptionLayout:Z

    .line 3448
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->canShowBottom:Z

    .line 3449
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3450
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3451
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocationsSizes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3452
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->avatarsArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3453
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3454
    const/4 v10, 0x0

    .local v10, "a":I
    :goto_1
    const/4 v2, 0x2

    if-ge v10, v2, :cond_1

    .line 3455
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesByIds:[Ljava/util/HashMap;

    aget-object v2, v2, v10

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 3456
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesByIdsTemp:[Ljava/util/HashMap;

    aget-object v2, v2, v10

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 3454
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 3445
    .end local v10    # "a":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 3458
    .restart local v10    # "a":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrTemp:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3459
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentUserAvatarLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 3460
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->setPadding(IIII)V

    .line 3461
    if-eqz p6, :cond_8

    move-object/from16 v0, p6

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->thumb:Landroid/graphics/Bitmap;

    :goto_2
    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentThumb:Landroid/graphics/Bitmap;

    .line 3462
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 3463
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3464
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 3465
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionTextViewOld:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 3466
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionTextViewNew:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 3467
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 3468
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->shareButton:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3469
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->qualityChooseView:Lorg/telegram/ui/PhotoViewer$QualityChooseView;

    if-eqz v2, :cond_2

    .line 3470
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->qualityChooseView:Lorg/telegram/ui/PhotoViewer$QualityChooseView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->setVisibility(I)V

    .line 3471
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->setVisibility(I)V

    .line 3472
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->qualityChooseView:Lorg/telegram/ui/PhotoViewer$QualityChooseView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->setTag(Ljava/lang/Object;)V

    .line 3474
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->qualityChooseViewAnimation:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_3

    .line 3475
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->qualityChooseViewAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 3476
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->qualityChooseViewAnimation:Landroid/animation/AnimatorSet;

    .line 3478
    :cond_3
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->allowShare:Z

    .line 3479
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 3480
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 3481
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->muteItemAvailable:Z

    .line 3482
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 3483
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 3484
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTranslationY(F)V

    .line 3485
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->setTranslationY(F)V

    .line 3486
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/CheckBox;->setAlpha(F)V

    .line 3487
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->setAlpha(F)V

    .line 3488
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoQualityLayout:Landroid/widget/FrameLayout;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 3489
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/CheckBox;->setVisibility(I)V

    .line 3490
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->setVisibility(I)V

    .line 3491
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoQualityLayout:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3492
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/CheckBox;->setVisibility(I)V

    .line 3493
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->setVisibility(I)V

    .line 3494
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->paintItem:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3495
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->cropItem:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3496
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->tuneItem:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3497
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->videoTimelineViewContainer:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_4

    .line 3498
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->videoTimelineViewContainer:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3500
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionItem:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3501
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionItem:Landroid/widget/ImageView;

    const v3, 0x7f020211

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3502
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3503
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->setVisibility(I)V

    .line 3504
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 3505
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->muteItem:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3506
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 3507
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->masksItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 3508
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->muteVideo:Z

    .line 3509
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->muteItem:Landroid/widget/ImageView;

    const v3, 0x7f020293

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3510
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->editorDoneLayout:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->setVisibility(I)V

    .line 3511
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 3512
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3513
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    if-eqz v2, :cond_5

    .line 3514
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PhotoCropView;->setVisibility(I)V

    .line 3516
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    if-eqz v2, :cond_6

    .line 3517
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PhotoFilterView;->setVisibility(I)V

    .line 3520
    :cond_6
    const/4 v10, 0x0

    :goto_3
    const/4 v2, 0x3

    if-ge v10, v2, :cond_9

    .line 3521
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    aget-object v2, v2, v10

    if-eqz v2, :cond_7

    .line 3522
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    aget-object v2, v2, v10

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setBackgroundState(IZ)V

    .line 3520
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 3461
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 3526
    :cond_9
    if-eqz p1, :cond_12

    if-nez p3, :cond_12

    .line 3527
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3528
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v2, :cond_10

    .line 3529
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->needSearchImageInArr:Z

    .line 3538
    :cond_a
    :goto_4
    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/PhotoViewer;->setImageIndex(IZ)V

    .line 3624
    :cond_b
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-nez v2, :cond_c

    .line 3625
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->currentDialogId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2a

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCount:I

    if-nez v2, :cond_2a

    .line 3626
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->currentDialogId:J

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/ui/PhotoViewer;->classGuid:I

    const/4 v6, 0x1

    invoke-static {v2, v3, v4, v5, v6}, Lorg/telegram/messenger/query/SharedMediaQuery;->getMediaCount(JIIZ)V

    .line 3627
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_c

    .line 3628
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/ui/PhotoViewer;->classGuid:I

    const/4 v6, 0x1

    invoke-static {v2, v3, v4, v5, v6}, Lorg/telegram/messenger/query/SharedMediaQuery;->getMediaCount(JIIZ)V

    .line 3634
    :cond_c
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v2

    if-nez v2, :cond_e

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-eqz v2, :cond_2b

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    const-string/jumbo v3, "video"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 3635
    :cond_e
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/ui/PhotoViewer;->onActionClick(Z)V

    .line 3646
    :cond_f
    :goto_7
    return-void

    .line 3530
    :cond_10
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    if-nez v2, :cond_a

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-nez v2, :cond_a

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    if-eqz v2, :cond_11

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionEmpty;

    if-eqz v2, :cond_a

    .line 3531
    :cond_11
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->needSearchImageInArr:Z

    .line 3532
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesByIds:[Ljava/util/HashMap;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3533
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    .line 3535
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    goto/16 :goto_4

    .line 3539
    :cond_12
    if-eqz p2, :cond_16

    .line 3540
    move-object/from16 v0, p6

    iget v2, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->dialogId:I

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->avatarsDialogId:I

    .line 3541
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3542
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocationsSizes:Ljava/util/ArrayList;

    move-object/from16 v0, p6

    iget v3, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->size:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3543
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->avatarsArr:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_photoEmpty;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_photoEmpty;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3544
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->shareButton:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_14

    :cond_13
    const/4 v2, 0x0

    :goto_8
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3545
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->allowShare:Z

    .line 3546
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 3547
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->shareButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_15

    .line 3548
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 3552
    :goto_9
    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/PhotoViewer;->setImageIndex(IZ)V

    .line 3553
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/PhotoViewer;->currentUserAvatarLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto/16 :goto_5

    .line 3544
    :cond_14
    const/16 v2, 0x8

    goto :goto_8

    .line 3550
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    goto :goto_9

    .line 3554
    :cond_16
    if-eqz p3, :cond_1a

    .line 3555
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    .line 3557
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    .line 3559
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->opennedFromMedia:Z

    .line 3560
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3561
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->opennedFromMedia:Z

    if-nez v2, :cond_17

    .line 3562
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 3563
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int v2, v2, p5

    add-int/lit8 p5, v2, -0x1

    .line 3565
    :cond_17
    const/4 v10, 0x0

    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v10, v2, :cond_19

    .line 3566
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/messenger/MessageObject;

    .line 3567
    .local v14, "message":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->imagesByIds:[Ljava/util/HashMap;

    invoke-virtual {v14}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/ui/PhotoViewer;->currentDialogId:J

    cmp-long v2, v4, v6

    if-nez v2, :cond_18

    const/4 v2, 0x0

    :goto_b
    aget-object v2, v3, v2

    invoke-virtual {v14}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3565
    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    .line 3567
    :cond_18
    const/4 v2, 0x1

    goto :goto_b

    .line 3569
    .end local v14    # "message":Lorg/telegram/messenger/MessageObject;
    :cond_19
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer;->setImageIndex(IZ)V

    goto/16 :goto_5

    .line 3570
    :cond_1a
    if-eqz p4, :cond_b

    .line 3571
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->sendPhotoType:I

    if-nez v2, :cond_1b

    .line 3572
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/CheckBox;->setVisibility(I)V

    .line 3574
    :cond_1b
    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->plusShowPhotoQualityBar:Z

    if-eqz v2, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoQualityLayout:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3575
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 3576
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3577
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer;->setImageIndex(IZ)V

    .line 3578
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->setVisibility(I)V

    .line 3579
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3580
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->canShowBottom:Z

    .line 3581
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    .line 3583
    .local v15, "obj":Ljava/lang/Object;
    instance-of v2, v15, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v2, :cond_22

    .line 3584
    check-cast v15, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .end local v15    # "obj":Ljava/lang/Object;
    iget-boolean v2, v15, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    if-eqz v2, :cond_21

    .line 3585
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->cropItem:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3586
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3587
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    const/high16 v3, 0x42400000    # 48.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 3591
    :goto_c
    const/4 v11, 0x1

    .line 3599
    .local v11, "allowCaption":Z
    :goto_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->parentChatActivity:Lorg/telegram/ui/ChatActivity;

    if-eqz v2, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->parentChatActivity:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v2, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->parentChatActivity:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v2

    const/16 v3, 0x2e

    if-lt v2, v3, :cond_1f

    .line 3600
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->parentChatActivity:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 3601
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->parentChatActivity:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_26

    const/4 v2, 0x1

    :goto_e
    invoke-virtual {v3, v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setNeedUsernames(Z)V

    .line 3602
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setNeedBotContext(Z)V

    .line 3603
    if-eqz v11, :cond_27

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    if-eqz v2, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    if-eqz v2, :cond_27

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    invoke-interface {v2}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->allowCaption()Z

    move-result v2

    if-eqz v2, :cond_27

    :cond_1e
    const/4 v2, 0x1

    :goto_f
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->needCaptionLayout:Z

    .line 3604
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->needCaptionLayout:Z

    if-eqz v2, :cond_28

    const/4 v2, 0x0

    :goto_10
    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->setVisibility(I)V

    .line 3605
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_29

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->needCaptionLayout:Z

    if-eqz v2, :cond_29

    .line 3606
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const-string/jumbo v3, "AddCaption"

    const v4, 0x7f070045

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3607
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const-string/jumbo v3, "empty"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 3608
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const v3, -0x4d000001

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3609
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3613
    :goto_11
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->needCaptionLayout:Z

    if-eqz v2, :cond_1f

    .line 3614
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->onCreate()V

    .line 3617
    :cond_1f
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_20

    .line 3618
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->paintItem:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->cropItem:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3619
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->tuneItem:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->cropItem:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3621
    :cond_20
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->updateSelectedCount()V

    goto/16 :goto_5

    .line 3589
    .end local v11    # "allowCaption":Z
    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->cropItem:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_c

    .line 3592
    .restart local v15    # "obj":Ljava/lang/Object;
    :cond_22
    instance-of v2, v15, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-eqz v2, :cond_23

    .line 3593
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->cropItem:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3594
    const/4 v11, 0x0

    .restart local v11    # "allowCaption":Z
    goto/16 :goto_d

    .line 3596
    .end local v11    # "allowCaption":Z
    :cond_23
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->cropItem:Landroid/widget/ImageView;

    instance-of v2, v15, Lorg/telegram/messenger/MediaController$SearchImage;

    if-eqz v2, :cond_24

    check-cast v15, Lorg/telegram/messenger/MediaController$SearchImage;

    .end local v15    # "obj":Ljava/lang/Object;
    iget v2, v15, Lorg/telegram/messenger/MediaController$SearchImage;->type:I

    if-nez v2, :cond_24

    const/4 v2, 0x0

    :goto_12
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3597
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->cropItem:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_25

    const/4 v11, 0x1

    .restart local v11    # "allowCaption":Z
    :goto_13
    goto/16 :goto_d

    .line 3596
    .end local v11    # "allowCaption":Z
    :cond_24
    const/16 v2, 0x8

    goto :goto_12

    .line 3597
    :cond_25
    const/4 v11, 0x0

    goto :goto_13

    .line 3601
    .restart local v11    # "allowCaption":Z
    :cond_26
    const/4 v2, 0x0

    goto/16 :goto_e

    .line 3603
    :cond_27
    const/4 v2, 0x0

    goto/16 :goto_f

    .line 3604
    :cond_28
    const/16 v2, 0x8

    goto/16 :goto_10

    .line 3611
    :cond_29
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_11

    .line 3630
    .end local v11    # "allowCaption":Z
    :cond_2a
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->avatarsDialogId:I

    if-eqz v2, :cond_c

    .line 3631
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/PhotoViewer;->avatarsDialogId:I

    const/4 v4, 0x0

    const/16 v5, 0x50

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/ui/PhotoViewer;->classGuid:I

    invoke-virtual/range {v2 .. v9}, Lorg/telegram/messenger/MessagesController;->loadDialogPhotos(IIIJZI)V

    goto/16 :goto_6

    .line 3636
    :cond_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f

    .line 3637
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    .line 3638
    .local v13, "entry":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 3639
    .local v12, "caption":Ljava/lang/CharSequence;
    instance-of v2, v13, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v2, :cond_f

    move-object/from16 v16, v13

    .line 3640
    check-cast v16, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 3641
    .local v16, "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    move-object/from16 v0, v16

    iget-boolean v2, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    if-eqz v2, :cond_f

    .line 3642
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, v16

    iget-object v3, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lorg/telegram/ui/PhotoViewer;->preparePlayer(Ljava/io/File;ZZ)V

    goto/16 :goto_7
.end method

.method private onSharePressed()V
    .locals 9

    .prologue
    .line 1063
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lorg/telegram/ui/PhotoViewer;->allowShare:Z

    if-nez v6, :cond_1

    .line 1113
    :cond_0
    :goto_0
    return-void

    .line 1067
    :cond_1
    const/4 v2, 0x0

    .line 1068
    .local v2, "f":Ljava/io/File;
    const/4 v5, 0x0

    .line 1070
    .local v5, "isVideo":Z
    :try_start_0
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v6, :cond_4

    .line 1071
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v5

    .line 1076
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1077
    new-instance v3, Ljava/io/File;

    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1078
    .end local v2    # "f":Ljava/io/File;
    .local v3, "f":Ljava/io/File;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    if-nez v6, :cond_9

    .line 1079
    const/4 v2, 0x0

    .line 1082
    .end local v3    # "f":Ljava/io/File;
    .restart local v2    # "f":Ljava/io/File;
    :cond_2
    :goto_1
    if-nez v2, :cond_3

    .line 1083
    :try_start_2
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v2

    .line 1089
    :cond_3
    :goto_2
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1090
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.SEND"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1091
    .local v4, "intent":Landroid/content/Intent;
    if-eqz v5, :cond_6

    .line 1092
    const-string/jumbo v6, "video/mp4"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1100
    :goto_3
    const-string/jumbo v6, "android.intent.extra.STREAM"

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1102
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    const-string/jumbo v7, "ShareFile"

    const v8, 0x7f0705bd

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v7

    const/16 v8, 0x1f4

    invoke-virtual {v6, v7, v8}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1110
    .end local v4    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 1111
    .local v1, "e":Ljava/lang/Exception;
    :goto_4
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1085
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_3
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v6, :cond_3

    .line 1086
    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->avatarsDialogId:I

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    :goto_5
    invoke-static {v7, v6}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v2

    goto :goto_2

    :cond_5
    const/4 v6, 0x0

    goto :goto_5

    .line 1094
    .restart local v4    # "intent":Landroid/content/Intent;
    :cond_6
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v6, :cond_7

    .line 1095
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getMimeType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 1097
    :cond_7
    const-string/jumbo v6, "image/jpeg"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 1104
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_8
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v0, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1105
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v6, "AppName"

    const v7, 0x7f070078

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1106
    const-string/jumbo v6, "OK"

    const v7, 0x7f070452

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1107
    const-string/jumbo v6, "PleaseDownload"

    const v7, 0x7f0704e6

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1108
    invoke-virtual {p0, v0}, Lorg/telegram/ui/PhotoViewer;->showAlertDialog(Lorg/telegram/ui/ActionBar/AlertDialog$Builder;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 1110
    .end local v0    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v2    # "f":Ljava/io/File;
    .restart local v3    # "f":Ljava/io/File;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3    # "f":Ljava/io/File;
    .restart local v2    # "f":Ljava/io/File;
    goto :goto_4

    .end local v2    # "f":Ljava/io/File;
    .restart local v3    # "f":Ljava/io/File;
    :cond_9
    move-object v2, v3

    .end local v3    # "f":Ljava/io/File;
    .restart local v2    # "f":Ljava/io/File;
    goto/16 :goto_1
.end method

.method private onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 4956
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->animationInProgress:I

    if-nez v9, :cond_0

    iget-wide v10, p0, Lorg/telegram/ui/PhotoViewer;->animationStartTime:J

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-eqz v9, :cond_1

    .line 4957
    :cond_0
    const/4 v9, 0x0

    .line 5170
    :goto_0
    return v9

    .line 4960
    :cond_1
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_2

    .line 4961
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v9, p1}, Lorg/telegram/ui/Components/PhotoFilterView;->onTouch(Landroid/view/MotionEvent;)V

    .line 4962
    const/4 v9, 0x1

    goto :goto_0

    .line 4965
    :cond_2
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    .line 4966
    const/4 v9, 0x1

    goto :goto_0

    .line 4969
    :cond_3
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->isPopupShowing()Z

    move-result v9

    if-nez v9, :cond_4

    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->isKeyboardVisible()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 4970
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_5

    .line 4971
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lorg/telegram/ui/PhotoViewer;->closeCaptionEnter(Z)V

    .line 4973
    :cond_5
    const/4 v9, 0x1

    goto :goto_0

    .line 4976
    :cond_6
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    if-nez v9, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_7

    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v9, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 4977
    iget-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->doubleTap:Z

    if-eqz v9, :cond_7

    .line 4978
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->doubleTap:Z

    .line 4979
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->moving:Z

    .line 4980
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->zooming:Z

    .line 4981
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lorg/telegram/ui/PhotoViewer;->checkMinMax(Z)V

    .line 4982
    const/4 v9, 0x1

    goto :goto_0

    .line 4986
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    if-eqz v9, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    const/4 v10, 0x5

    if-ne v9, v10, :cond_d

    .line 4987
    :cond_8
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_9

    .line 4988
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/PhotoCropView;->cancelAnimationRunnable()V

    .line 4990
    :cond_9
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->discardTap:Z

    .line 4991
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->isFinished()Z

    move-result v9

    if-nez v9, :cond_a

    .line 4992
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->abortAnimation()V

    .line 4994
    :cond_a
    iget-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->draggingDown:Z

    if-nez v9, :cond_b

    iget-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->changingPage:Z

    if-nez v9, :cond_b

    .line 4995
    iget-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->canZoom:Z

    if-eqz v9, :cond_c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_c

    .line 4996
    const/4 v9, 0x1

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    sub-float/2addr v9, v10

    float-to-double v10, v9

    const/4 v9, 0x1

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    const/4 v12, 0x0

    invoke-virtual {p1, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    sub-float/2addr v9, v12

    float-to-double v12, v9

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v10

    double-to-float v9, v10

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->pinchStartDistance:F

    .line 4997
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->pinchStartScale:F

    .line 4998
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    add-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->pinchCenterX:F

    .line 4999
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    add-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->pinchCenterY:F

    .line 5000
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->pinchStartX:F

    .line 5001
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->pinchStartY:F

    .line 5002
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->zooming:Z

    .line 5003
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->moving:Z

    .line 5004
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_b

    .line 5005
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->clear()V

    .line 5170
    :cond_b
    :goto_1
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 5007
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_b

    .line 5008
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->moveStartX:F

    .line 5009
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->moveStartY:F

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->dragY:F

    .line 5010
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->draggingDown:Z

    .line 5011
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->canDragDown:Z

    .line 5012
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_b

    .line 5013
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_1

    .line 5017
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_24

    .line 5018
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_e

    .line 5019
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/PhotoCropView;->cancelAnimationRunnable()V

    .line 5021
    :cond_e
    iget-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->canZoom:Z

    if-eqz v9, :cond_f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_f

    iget-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->draggingDown:Z

    if-nez v9, :cond_f

    iget-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->zooming:Z

    if-eqz v9, :cond_f

    iget-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->changingPage:Z

    if-nez v9, :cond_f

    .line 5022
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->discardTap:Z

    .line 5023
    const/4 v9, 0x1

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    sub-float/2addr v9, v10

    float-to-double v10, v9

    const/4 v9, 0x1

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    const/4 v12, 0x0

    invoke-virtual {p1, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    sub-float/2addr v9, v12

    float-to-double v12, v9

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v10

    double-to-float v9, v10

    iget v10, p0, Lorg/telegram/ui/PhotoViewer;->pinchStartDistance:F

    div-float/2addr v9, v10

    iget v10, p0, Lorg/telegram/ui/PhotoViewer;->pinchStartScale:F

    mul-float/2addr v9, v10

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    .line 5024
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->pinchCenterX:F

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    sub-float/2addr v9, v10

    iget v10, p0, Lorg/telegram/ui/PhotoViewer;->pinchCenterX:F

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    sub-float/2addr v10, v11

    iget v11, p0, Lorg/telegram/ui/PhotoViewer;->pinchStartX:F

    sub-float/2addr v10, v11

    iget v11, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    iget v12, p0, Lorg/telegram/ui/PhotoViewer;->pinchStartScale:F

    div-float/2addr v11, v12

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    .line 5025
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->pinchCenterY:F

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    sub-float/2addr v9, v10

    iget v10, p0, Lorg/telegram/ui/PhotoViewer;->pinchCenterY:F

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    sub-float/2addr v10, v11

    iget v11, p0, Lorg/telegram/ui/PhotoViewer;->pinchStartY:F

    sub-float/2addr v10, v11

    iget v11, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    iget v12, p0, Lorg/telegram/ui/PhotoViewer;->pinchStartScale:F

    div-float/2addr v11, v12

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    .line 5026
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    invoke-direct {p0, v9}, Lorg/telegram/ui/PhotoViewer;->updateMinMax(F)V

    .line 5027
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v9}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->invalidate()V

    goto/16 :goto_1

    .line 5028
    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_b

    .line 5029
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_10

    .line 5030
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 5032
    :cond_10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iget v10, p0, Lorg/telegram/ui/PhotoViewer;->moveStartX:F

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 5033
    .local v2, "dx":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iget v10, p0, Lorg/telegram/ui/PhotoViewer;->dragY:F

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 5034
    .local v3, "dy":F
    const/high16 v9, 0x40400000    # 3.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    cmpl-float v9, v2, v9

    if-gtz v9, :cond_11

    const/high16 v9, 0x40400000    # 3.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    cmpl-float v9, v3, v9

    if-lez v9, :cond_12

    .line 5035
    :cond_11
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->discardTap:Z

    .line 5037
    :cond_12
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    instance-of v9, v9, Lorg/telegram/ui/PhotoViewer$EmptyPhotoViewerProvider;

    if-nez v9, :cond_15

    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    if-nez v9, :cond_15

    iget-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->canDragDown:Z

    if-eqz v9, :cond_15

    iget-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->draggingDown:Z

    if-nez v9, :cond_15

    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v9, v9, v10

    if-nez v9, :cond_15

    const/high16 v9, 0x41f00000    # 30.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    cmpl-float v9, v3, v9

    if-ltz v9, :cond_15

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v3, v9

    cmpl-float v9, v9, v2

    if-lez v9, :cond_15

    .line 5038
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->draggingDown:Z

    .line 5039
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->moving:Z

    .line 5040
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->dragY:F

    .line 5041
    iget-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->isActionBarVisible:Z

    if-eqz v9, :cond_14

    iget-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->canShowBottom:Z

    if-eqz v9, :cond_14

    .line 5042
    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-direct {p0, v9, v10}, Lorg/telegram/ui/PhotoViewer;->toggleActionBar(ZZ)V

    .line 5047
    :cond_13
    :goto_2
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 5043
    :cond_14
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->getVisibility()I

    move-result v9

    if-nez v9, :cond_13

    .line 5044
    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-direct {p0, v9, v10}, Lorg/telegram/ui/PhotoViewer;->toggleActionBar(ZZ)V

    .line 5045
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lorg/telegram/ui/PhotoViewer;->toggleCheckImageView(Z)V

    goto :goto_2

    .line 5048
    :cond_15
    iget-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->draggingDown:Z

    if-eqz v9, :cond_16

    .line 5049
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iget v10, p0, Lorg/telegram/ui/PhotoViewer;->dragY:F

    sub-float/2addr v9, v10

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    .line 5050
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v9}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->invalidate()V

    goto/16 :goto_1

    .line 5051
    :cond_16
    iget-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->invalidCoords:Z

    if-nez v9, :cond_23

    iget-wide v10, p0, Lorg/telegram/ui/PhotoViewer;->animationStartTime:J

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-nez v9, :cond_23

    .line 5052
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->moveStartX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    sub-float v4, v9, v10

    .line 5053
    .local v4, "moveDx":F
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->moveStartY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    sub-float v5, v9, v10

    .line 5054
    .local v5, "moveDy":F
    iget-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->moving:Z

    if-nez v9, :cond_18

    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    if-nez v9, :cond_18

    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v9, v9, v10

    if-nez v9, :cond_17

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/high16 v10, 0x41400000    # 12.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v10

    cmpg-float v9, v9, v10

    if-ltz v9, :cond_18

    :cond_17
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_b

    .line 5055
    :cond_18
    iget-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->moving:Z

    if-nez v9, :cond_19

    .line 5056
    const/4 v4, 0x0

    .line 5057
    const/4 v5, 0x0

    .line 5058
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->moving:Z

    .line 5059
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->canDragDown:Z

    .line 5062
    :cond_19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->moveStartX:F

    .line 5063
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->moveStartY:F

    .line 5064
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    invoke-direct {p0, v9}, Lorg/telegram/ui/PhotoViewer;->updateMinMax(F)V

    .line 5065
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    iget v10, p0, Lorg/telegram/ui/PhotoViewer;->minX:F

    cmpg-float v9, v9, v10

    if-gez v9, :cond_1a

    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    if-nez v9, :cond_1b

    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v9}, Lorg/telegram/messenger/ImageReceiver;->hasImage()Z

    move-result v9

    if-eqz v9, :cond_1b

    :cond_1a
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    iget v10, p0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_1c

    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    if-nez v9, :cond_1b

    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v9}, Lorg/telegram/messenger/ImageReceiver;->hasImage()Z

    move-result v9

    if-nez v9, :cond_1c

    .line 5066
    :cond_1b
    const/high16 v9, 0x40400000    # 3.0f

    div-float/2addr v4, v9

    .line 5068
    :cond_1c
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-nez v9, :cond_21

    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->minY:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-nez v9, :cond_21

    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    if-nez v9, :cond_21

    .line 5069
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    sub-float/2addr v9, v5

    iget v10, p0, Lorg/telegram/ui/PhotoViewer;->minY:F

    cmpg-float v9, v9, v10

    if-gez v9, :cond_20

    .line 5070
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->minY:F

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    .line 5071
    const/4 v5, 0x0

    .line 5082
    :cond_1d
    :goto_3
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    sub-float/2addr v9, v4

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    .line 5083
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v9, v9, v10

    if-nez v9, :cond_1e

    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    if-eqz v9, :cond_1f

    .line 5084
    :cond_1e
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    sub-float/2addr v9, v5

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    .line 5087
    :cond_1f
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v9}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->invalidate()V

    goto/16 :goto_1

    .line 5072
    :cond_20
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    sub-float/2addr v9, v5

    iget v10, p0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_1d

    .line 5073
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    .line 5074
    const/4 v5, 0x0

    goto :goto_3

    .line 5077
    :cond_21
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    iget v10, p0, Lorg/telegram/ui/PhotoViewer;->minY:F

    cmpg-float v9, v9, v10

    if-ltz v9, :cond_22

    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    iget v10, p0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_1d

    .line 5078
    :cond_22
    const/high16 v9, 0x40400000    # 3.0f

    div-float/2addr v5, v9

    goto :goto_3

    .line 5090
    .end local v4    # "moveDx":F
    .end local v5    # "moveDy":F
    :cond_23
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->invalidCoords:Z

    .line 5091
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->moveStartX:F

    .line 5092
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->moveStartY:F

    goto/16 :goto_1

    .line 5095
    .end local v2    # "dx":F
    .end local v3    # "dy":F
    :cond_24
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    const/4 v10, 0x3

    if-eq v9, v10, :cond_25

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_25

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    const/4 v10, 0x6

    if-ne v9, v10, :cond_b

    .line 5096
    :cond_25
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_26

    .line 5097
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/PhotoCropView;->startAnimationRunnable()V

    .line 5099
    :cond_26
    iget-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->zooming:Z

    if-eqz v9, :cond_2d

    .line 5100
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->invalidCoords:Z

    .line 5101
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    const/high16 v10, 0x3f800000    # 1.0f

    cmpg-float v9, v9, v10

    if-gez v9, :cond_27

    .line 5102
    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {p0, v9}, Lorg/telegram/ui/PhotoViewer;->updateMinMax(F)V

    .line 5103
    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-direct {p0, v9, v10, v11, v12}, Lorg/telegram/ui/PhotoViewer;->animateTo(FFFZ)V

    .line 5122
    :goto_4
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->zooming:Z

    goto/16 :goto_1

    .line 5104
    :cond_27
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    const/high16 v10, 0x40400000    # 3.0f

    cmpl-float v9, v9, v10

    if-lez v9, :cond_2c

    .line 5105
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->pinchCenterX:F

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    sub-float/2addr v9, v10

    iget v10, p0, Lorg/telegram/ui/PhotoViewer;->pinchCenterX:F

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    sub-float/2addr v10, v11

    iget v11, p0, Lorg/telegram/ui/PhotoViewer;->pinchStartX:F

    sub-float/2addr v10, v11

    const/high16 v11, 0x40400000    # 3.0f

    iget v12, p0, Lorg/telegram/ui/PhotoViewer;->pinchStartScale:F

    div-float/2addr v11, v12

    mul-float/2addr v10, v11

    sub-float v0, v9, v10

    .line 5106
    .local v0, "atx":F
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->pinchCenterY:F

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    sub-float/2addr v9, v10

    iget v10, p0, Lorg/telegram/ui/PhotoViewer;->pinchCenterY:F

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    sub-float/2addr v10, v11

    iget v11, p0, Lorg/telegram/ui/PhotoViewer;->pinchStartY:F

    sub-float/2addr v10, v11

    const/high16 v11, 0x40400000    # 3.0f

    iget v12, p0, Lorg/telegram/ui/PhotoViewer;->pinchStartScale:F

    div-float/2addr v11, v12

    mul-float/2addr v10, v11

    sub-float v1, v9, v10

    .line 5107
    .local v1, "aty":F
    const/high16 v9, 0x40400000    # 3.0f

    invoke-direct {p0, v9}, Lorg/telegram/ui/PhotoViewer;->updateMinMax(F)V

    .line 5108
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->minX:F

    cmpg-float v9, v0, v9

    if-gez v9, :cond_2a

    .line 5109
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->minX:F

    .line 5113
    :cond_28
    :goto_5
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->minY:F

    cmpg-float v9, v1, v9

    if-gez v9, :cond_2b

    .line 5114
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->minY:F

    .line 5118
    :cond_29
    :goto_6
    const/high16 v9, 0x40400000    # 3.0f

    const/4 v10, 0x1

    invoke-direct {p0, v9, v0, v1, v10}, Lorg/telegram/ui/PhotoViewer;->animateTo(FFFZ)V

    goto :goto_4

    .line 5110
    :cond_2a
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    cmpl-float v9, v0, v9

    if-lez v9, :cond_28

    .line 5111
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    goto :goto_5

    .line 5115
    :cond_2b
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    cmpl-float v9, v1, v9

    if-lez v9, :cond_29

    .line 5116
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    goto :goto_6

    .line 5120
    .end local v0    # "atx":F
    .end local v1    # "aty":F
    :cond_2c
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lorg/telegram/ui/PhotoViewer;->checkMinMax(Z)V

    goto :goto_4

    .line 5123
    :cond_2d
    iget-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->draggingDown:Z

    if-eqz v9, :cond_30

    .line 5124
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->dragY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x40c00000    # 6.0f

    div-float/2addr v10, v11

    cmpl-float v9, v9, v10

    if-lez v9, :cond_2e

    .line 5125
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    .line 5133
    :goto_7
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->draggingDown:Z

    goto/16 :goto_1

    .line 5127
    :cond_2e
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->getVisibility()I

    move-result v9

    if-nez v9, :cond_2f

    .line 5128
    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-direct {p0, v9, v10}, Lorg/telegram/ui/PhotoViewer;->toggleActionBar(ZZ)V

    .line 5129
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lorg/telegram/ui/PhotoViewer;->toggleCheckImageView(Z)V

    .line 5131
    :cond_2f
    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {p0, v9, v10, v11, v12}, Lorg/telegram/ui/PhotoViewer;->animateTo(FFFZ)V

    goto :goto_7

    .line 5134
    :cond_30
    iget-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->moving:Z

    if-eqz v9, :cond_b

    .line 5135
    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    .line 5136
    .local v6, "moveToX":F
    iget v7, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    .line 5137
    .local v7, "moveToY":F
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    invoke-direct {p0, v9}, Lorg/telegram/ui/PhotoViewer;->updateMinMax(F)V

    .line 5138
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->moving:Z

    .line 5139
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->canDragDown:Z

    .line 5140
    const/4 v8, 0x0

    .line 5141
    .local v8, "velocity":F
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_31

    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v9, v9, v10

    if-nez v9, :cond_31

    .line 5142
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->velocityTracker:Landroid/view/VelocityTracker;

    const/16 v10, 0x3e8

    invoke-virtual {v9, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 5143
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v8

    .line 5146
    :cond_31
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    if-nez v9, :cond_35

    .line 5147
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    iget v10, p0, Lorg/telegram/ui/PhotoViewer;->minX:F

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x3

    int-to-float v11, v11

    sub-float/2addr v10, v11

    cmpg-float v9, v9, v10

    if-ltz v9, :cond_32

    const v9, 0x44228000    # 650.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    cmpg-float v9, v8, v9

    if-gez v9, :cond_33

    :cond_32
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v9}, Lorg/telegram/messenger/ImageReceiver;->hasImage()Z

    move-result v9

    if-eqz v9, :cond_33

    .line 5148
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->goToNext()V

    .line 5149
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 5151
    :cond_33
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    iget v10, p0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x3

    int-to-float v11, v11

    add-float/2addr v10, v11

    cmpl-float v9, v9, v10

    if-gtz v9, :cond_34

    const v9, 0x44228000    # 650.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    cmpl-float v9, v8, v9

    if-lez v9, :cond_35

    :cond_34
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v9}, Lorg/telegram/messenger/ImageReceiver;->hasImage()Z

    move-result v9

    if-eqz v9, :cond_35

    .line 5152
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->goToPrev()V

    .line 5153
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 5157
    :cond_35
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    iget v10, p0, Lorg/telegram/ui/PhotoViewer;->minX:F

    cmpg-float v9, v9, v10

    if-gez v9, :cond_38

    .line 5158
    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->minX:F

    .line 5162
    :cond_36
    :goto_8
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    iget v10, p0, Lorg/telegram/ui/PhotoViewer;->minY:F

    cmpg-float v9, v9, v10

    if-gez v9, :cond_39

    .line 5163
    iget v7, p0, Lorg/telegram/ui/PhotoViewer;->minY:F

    .line 5167
    :cond_37
    :goto_9
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    const/4 v10, 0x0

    invoke-direct {p0, v9, v6, v7, v10}, Lorg/telegram/ui/PhotoViewer;->animateTo(FFFZ)V

    goto/16 :goto_1

    .line 5159
    :cond_38
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    iget v10, p0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_36

    .line 5160
    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    goto :goto_8

    .line 5164
    :cond_39
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    iget v10, p0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_37

    .line 5165
    iget v7, p0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    goto :goto_9
.end method

.method private openCaptionEnter()V
    .locals 3

    .prologue
    .line 2421
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    if-eqz v0, :cond_1

    .line 2434
    :cond_0
    :goto_0
    return-void

    .line 2424
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->setTag(Ljava/lang/Object;)V

    .line 2425
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->openKeyboard()V

    .line 2426
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->lastTitle:Ljava/lang/String;

    .line 2427
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionItem:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 2428
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->muteVideo:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "GifCaption"

    const v2, 0x7f0702a3

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 2429
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 2433
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoQualityLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 2428
    :cond_2
    const-string/jumbo v0, "VideoCaption"

    const v2, 0x7f070674

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2431
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v1, "PhotoCaption"

    const v2, 0x7f0704d5

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private preparePlayer(Ljava/io/File;ZZ)V
    .locals 12
    .param p1, "file"    # Ljava/io/File;
    .param p2, "playWhenReady"    # Z
    .param p3, "preview"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    const/16 v9, 0x8

    const-wide/16 v10, 0x3c

    const/4 v5, -0x1

    const/4 v8, 0x0

    .line 2502
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    if-nez v2, :cond_0

    .line 2637
    :goto_0
    return-void

    .line 2505
    :cond_0
    if-nez p3, :cond_1

    .line 2506
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer;->currentPlayingVideoFile:Ljava/io/File;

    .line 2508
    :cond_1
    iput-boolean p3, p0, Lorg/telegram/ui/PhotoViewer;->inPreview:Z

    .line 2509
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->releasePlayer()V

    .line 2510
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->videoTextureView:Landroid/view/TextureView;

    if-nez v2, :cond_2

    .line 2511
    new-instance v2, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/PhotoViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    .line 2512
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v2, v6}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->setVisibility(I)V

    .line 2513
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    const/16 v4, 0x11

    invoke-static {v5, v5, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v8, v4}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2515
    new-instance v2, Landroid/view/TextureView;

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/PhotoViewer;->videoTextureView:Landroid/view/TextureView;

    .line 2516
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->videoTextureView:Landroid/view/TextureView;

    invoke-virtual {v2, v8}, Landroid/view/TextureView;->setOpaque(Z)V

    .line 2517
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->videoTextureView:Landroid/view/TextureView;

    const/16 v4, 0x11

    invoke-static {v5, v5, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2519
    :cond_2
    iput-boolean v8, p0, Lorg/telegram/ui/PhotoViewer;->textureUploaded:Z

    .line 2520
    iput-boolean v8, p0, Lorg/telegram/ui/PhotoViewer;->videoCrossfadeStarted:Z

    .line 2521
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->videoTextureView:Landroid/view/TextureView;

    const/4 v3, 0x0

    iput v3, p0, Lorg/telegram/ui/PhotoViewer;->videoCrossfadeAlpha:F

    invoke-virtual {v2, v3}, Landroid/view/TextureView;->setAlpha(F)V

    .line 2522
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayButton:Landroid/widget/ImageView;

    const v3, 0x7f020115

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2523
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-nez v2, :cond_4

    .line 2524
    new-instance v2, Lorg/telegram/ui/Components/VideoPlayer;

    invoke-direct {v2}, Lorg/telegram/ui/Components/VideoPlayer;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    .line 2525
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->videoTextureView:Landroid/view/TextureView;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/VideoPlayer;->setTextureView(Landroid/view/TextureView;)V

    .line 2526
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    new-instance v3, Lorg/telegram/ui/PhotoViewer$39;

    invoke-direct {v3, p0}, Lorg/telegram/ui/PhotoViewer$39;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/VideoPlayer;->setDelegate(Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;)V

    .line 2610
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v2, :cond_8

    .line 2611
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v0

    .line 2612
    .local v0, "duration":J
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-nez v2, :cond_3

    .line 2613
    const-wide/16 v0, 0x0

    .line 2618
    :cond_3
    :goto_1
    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 2619
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerTime:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    const-string/jumbo v3, "%02d:%02d / %02d:%02d"

    new-array v4, v6, [Ljava/lang/Object;

    div-long v6, v0, v10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x1

    rem-long v6, v0, v10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    div-long v6, v0, v10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    rem-long v6, v0, v10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 2621
    .end local v0    # "duration":J
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    const-string/jumbo v4, "other"

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Components/VideoPlayer;->preparePlayer(Landroid/net/Uri;Ljava/lang/String;)V

    .line 2622
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_7

    .line 2623
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    const-string/jumbo v3, "video"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2624
    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2625
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    const/high16 v3, 0x42400000    # 48.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 2627
    :cond_6
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2628
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->dateTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2629
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2630
    iget-boolean v2, p0, Lorg/telegram/ui/PhotoViewer;->allowShare:Z

    if-eqz v2, :cond_7

    .line 2631
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->shareButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2632
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    .line 2635
    :cond_7
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v2, p2}, Lorg/telegram/ui/Components/VideoPlayer;->setPlayWhenReady(Z)V

    .line 2636
    iput-boolean p3, p0, Lorg/telegram/ui/PhotoViewer;->inPreview:Z

    goto/16 :goto_0

    .line 2616
    :cond_8
    const-wide/16 v0, 0x0

    .restart local v0    # "duration":J
    goto/16 :goto_1
.end method

.method private processOpenVideo(Ljava/lang/String;)Z
    .locals 34
    .param p1, "videoPath"    # Ljava/lang/String;

    .prologue
    .line 6084
    const/16 v29, 0x0

    :try_start_0
    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/PhotoViewer;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 6085
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    move-object/from16 v29, v0

    const/16 v30, 0x8

    invoke-virtual/range {v29 .. v30}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6086
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/PhotoViewer;->muteVideo:Z

    .line 6087
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoTimelineView;->setVideoPath(Ljava/lang/String;)V

    .line 6088
    const/16 v29, -0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->compressionsCount:I

    .line 6089
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6090
    .local v11, "file":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v30

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/ui/PhotoViewer;->originalSize:J

    .line 6092
    new-instance v15, Lcom/coremedia/iso/IsoFile;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Lcom/coremedia/iso/IsoFile;-><init>(Ljava/lang/String;)V

    .line 6093
    .local v15, "isoFile":Lcom/coremedia/iso/IsoFile;
    const-string/jumbo v29, "/moov/trak/"

    move-object/from16 v0, v29

    invoke-static {v15, v0}, Lcom/googlecode/mp4parser/util/Path;->getPaths(Lcom/coremedia/iso/boxes/Container;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 6094
    .local v8, "boxes":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/Box;>;"
    const/16 v28, 0x0

    .line 6095
    .local v28, "trackHeaderBox":Lcom/coremedia/iso/boxes/TrackHeaderBox;
    const/4 v13, 0x1

    .line 6096
    .local v13, "isAvc":Z
    const/4 v14, 0x1

    .line 6098
    .local v14, "isMp4A":Z
    const-string/jumbo v29, "/moov/trak/mdia/minf/stbl/stsd/mp4a/"

    move-object/from16 v0, v29

    invoke-static {v15, v0}, Lcom/googlecode/mp4parser/util/Path;->getPath(Lcom/coremedia/iso/boxes/Container;Ljava/lang/String;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v7

    .line 6099
    .local v7, "boxTest":Lcom/coremedia/iso/boxes/Box;
    if-nez v7, :cond_0

    .line 6100
    const/4 v14, 0x0

    .line 6103
    :cond_0
    if-nez v14, :cond_1

    .line 6104
    const/16 v29, 0x0

    .line 6213
    .end local v7    # "boxTest":Lcom/coremedia/iso/boxes/Box;
    .end local v8    # "boxes":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/Box;>;"
    .end local v11    # "file":Ljava/io/File;
    .end local v13    # "isAvc":Z
    .end local v14    # "isMp4A":Z
    .end local v15    # "isoFile":Lcom/coremedia/iso/IsoFile;
    .end local v28    # "trackHeaderBox":Lcom/coremedia/iso/boxes/TrackHeaderBox;
    :goto_0
    return v29

    .line 6107
    .restart local v7    # "boxTest":Lcom/coremedia/iso/boxes/Box;
    .restart local v8    # "boxes":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/Box;>;"
    .restart local v11    # "file":Ljava/io/File;
    .restart local v13    # "isAvc":Z
    .restart local v14    # "isMp4A":Z
    .restart local v15    # "isoFile":Lcom/coremedia/iso/IsoFile;
    .restart local v28    # "trackHeaderBox":Lcom/coremedia/iso/boxes/TrackHeaderBox;
    :cond_1
    const-string/jumbo v29, "/moov/trak/mdia/minf/stbl/stsd/avc1/"

    move-object/from16 v0, v29

    invoke-static {v15, v0}, Lcom/googlecode/mp4parser/util/Path;->getPath(Lcom/coremedia/iso/boxes/Container;Ljava/lang/String;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v7

    .line 6108
    if-nez v7, :cond_2

    .line 6109
    const/4 v13, 0x0

    .line 6112
    :cond_2
    const/4 v5, 0x0

    .local v5, "b":I
    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v29

    move/from16 v0, v29

    if-ge v5, v0, :cond_6

    .line 6113
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/coremedia/iso/boxes/Box;

    .line 6114
    .local v6, "box":Lcom/coremedia/iso/boxes/Box;
    move-object v0, v6

    check-cast v0, Lcom/coremedia/iso/boxes/TrackBox;

    move-object/from16 v25, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 6115
    .local v25, "trackBox":Lcom/coremedia/iso/boxes/TrackBox;
    const-wide/16 v22, 0x0

    .line 6116
    .local v22, "sampleSizes":J
    const-wide/16 v26, 0x0

    .line 6118
    .local v26, "trackBitrate":J
    :try_start_1
    invoke-virtual/range {v25 .. v25}, Lcom/coremedia/iso/boxes/TrackBox;->getMediaBox()Lcom/coremedia/iso/boxes/MediaBox;

    move-result-object v17

    .line 6119
    .local v17, "mediaBox":Lcom/coremedia/iso/boxes/MediaBox;
    invoke-virtual/range {v17 .. v17}, Lcom/coremedia/iso/boxes/MediaBox;->getMediaHeaderBox()Lcom/coremedia/iso/boxes/MediaHeaderBox;

    move-result-object v18

    .line 6120
    .local v18, "mediaHeaderBox":Lcom/coremedia/iso/boxes/MediaHeaderBox;
    invoke-virtual/range {v17 .. v17}, Lcom/coremedia/iso/boxes/MediaBox;->getMediaInformationBox()Lcom/coremedia/iso/boxes/MediaInformationBox;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/coremedia/iso/boxes/MediaInformationBox;->getSampleTableBox()Lcom/coremedia/iso/boxes/SampleTableBox;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/coremedia/iso/boxes/SampleTableBox;->getSampleSizeBox()Lcom/coremedia/iso/boxes/SampleSizeBox;

    move-result-object v21

    .line 6121
    .local v21, "sampleSizeBox":Lcom/coremedia/iso/boxes/SampleSizeBox;
    invoke-virtual/range {v21 .. v21}, Lcom/coremedia/iso/boxes/SampleSizeBox;->getSampleSizes()[J

    move-result-object v24

    .line 6122
    .local v24, "sizes":[J
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_2
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v4, v0, :cond_3

    .line 6123
    aget-wide v30, v24, v4

    add-long v22, v22, v30

    .line 6122
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 6125
    :cond_3
    invoke-virtual/range {v18 .. v18}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->getDuration()J

    move-result-wide v30

    move-wide/from16 v0, v30

    long-to-float v0, v0

    move/from16 v29, v0

    invoke-virtual/range {v18 .. v18}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->getTimescale()J

    move-result-wide v30

    move-wide/from16 v0, v30

    long-to-float v0, v0

    move/from16 v30, v0

    div-float v29, v29, v30

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->videoDuration:F

    .line 6126
    const-wide/16 v30, 0x8

    mul-long v30, v30, v22

    move-wide/from16 v0, v30

    long-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->videoDuration:F

    move/from16 v30, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    div-float v29, v29, v30

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v26, v0

    .line 6130
    .end local v4    # "a":I
    .end local v17    # "mediaBox":Lcom/coremedia/iso/boxes/MediaBox;
    .end local v18    # "mediaHeaderBox":Lcom/coremedia/iso/boxes/MediaHeaderBox;
    .end local v21    # "sampleSizeBox":Lcom/coremedia/iso/boxes/SampleSizeBox;
    .end local v24    # "sizes":[J
    :goto_3
    :try_start_2
    invoke-virtual/range {v25 .. v25}, Lcom/coremedia/iso/boxes/TrackBox;->getTrackHeaderBox()Lcom/coremedia/iso/boxes/TrackHeaderBox;

    move-result-object v12

    .line 6131
    .local v12, "headerBox":Lcom/coremedia/iso/boxes/TrackHeaderBox;
    invoke-virtual {v12}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getWidth()D

    move-result-wide v30

    const-wide/16 v32, 0x0

    cmpl-double v29, v30, v32

    if-eqz v29, :cond_5

    invoke-virtual {v12}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getHeight()D

    move-result-wide v30

    const-wide/16 v32, 0x0

    cmpl-double v29, v30, v32

    if-eqz v29, :cond_5

    .line 6132
    move-object/from16 v28, v12

    .line 6133
    const-wide/32 v30, 0x186a0

    div-long v30, v26, v30

    const-wide/32 v32, 0x186a0

    mul-long v30, v30, v32

    move-wide/from16 v0, v30

    long-to-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->bitrate:I

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->originalBitrate:I

    .line 6134
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->bitrate:I

    move/from16 v29, v0

    const v30, 0xdbba0

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_4

    .line 6135
    const v29, 0xdbba0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->bitrate:I

    .line 6137
    :cond_4
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/ui/PhotoViewer;->videoFramesSize:J

    move-wide/from16 v30, v0

    add-long v30, v30, v22

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/ui/PhotoViewer;->videoFramesSize:J

    .line 6112
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 6127
    .end local v12    # "headerBox":Lcom/coremedia/iso/boxes/TrackHeaderBox;
    :catch_0
    move-exception v10

    .line 6128
    .local v10, "e":Ljava/lang/Exception;
    invoke-static {v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 6177
    .end local v5    # "b":I
    .end local v6    # "box":Lcom/coremedia/iso/boxes/Box;
    .end local v7    # "boxTest":Lcom/coremedia/iso/boxes/Box;
    .end local v8    # "boxes":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/Box;>;"
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v11    # "file":Ljava/io/File;
    .end local v13    # "isAvc":Z
    .end local v14    # "isMp4A":Z
    .end local v15    # "isoFile":Lcom/coremedia/iso/IsoFile;
    .end local v22    # "sampleSizes":J
    .end local v25    # "trackBox":Lcom/coremedia/iso/boxes/TrackBox;
    .end local v26    # "trackBitrate":J
    .end local v28    # "trackHeaderBox":Lcom/coremedia/iso/boxes/TrackHeaderBox;
    :catch_1
    move-exception v10

    .line 6178
    .restart local v10    # "e":Ljava/lang/Exception;
    invoke-static {v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 6179
    const/16 v29, 0x0

    goto/16 :goto_0

    .line 6139
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v5    # "b":I
    .restart local v6    # "box":Lcom/coremedia/iso/boxes/Box;
    .restart local v7    # "boxTest":Lcom/coremedia/iso/boxes/Box;
    .restart local v8    # "boxes":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/Box;>;"
    .restart local v11    # "file":Ljava/io/File;
    .restart local v12    # "headerBox":Lcom/coremedia/iso/boxes/TrackHeaderBox;
    .restart local v13    # "isAvc":Z
    .restart local v14    # "isMp4A":Z
    .restart local v15    # "isoFile":Lcom/coremedia/iso/IsoFile;
    .restart local v22    # "sampleSizes":J
    .restart local v25    # "trackBox":Lcom/coremedia/iso/boxes/TrackBox;
    .restart local v26    # "trackBitrate":J
    .restart local v28    # "trackHeaderBox":Lcom/coremedia/iso/boxes/TrackHeaderBox;
    :cond_5
    :try_start_3
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/ui/PhotoViewer;->audioFramesSize:J

    move-wide/from16 v30, v0

    add-long v30, v30, v22

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/ui/PhotoViewer;->audioFramesSize:J

    goto :goto_4

    .line 6142
    .end local v6    # "box":Lcom/coremedia/iso/boxes/Box;
    .end local v12    # "headerBox":Lcom/coremedia/iso/boxes/TrackHeaderBox;
    .end local v22    # "sampleSizes":J
    .end local v25    # "trackBox":Lcom/coremedia/iso/boxes/TrackBox;
    .end local v26    # "trackBitrate":J
    :cond_6
    if-nez v28, :cond_7

    .line 6143
    const/16 v29, 0x0

    goto/16 :goto_0

    .line 6146
    :cond_7
    invoke-virtual/range {v28 .. v28}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getMatrix()Lcom/googlecode/mp4parser/util/Matrix;

    move-result-object v16

    .line 6147
    .local v16, "matrix":Lcom/googlecode/mp4parser/util/Matrix;
    sget-object v29, Lcom/googlecode/mp4parser/util/Matrix;->ROTATE_90:Lcom/googlecode/mp4parser/util/Matrix;

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/util/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_b

    .line 6148
    const/16 v29, 0x5a

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->rotationValue:I

    .line 6154
    :cond_8
    :goto_5
    invoke-virtual/range {v28 .. v28}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getWidth()D

    move-result-wide v30

    move-wide/from16 v0, v30

    double-to-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->originalWidth:I

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->resultWidth:I

    .line 6155
    invoke-virtual/range {v28 .. v28}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getHeight()D

    move-result-wide v30

    move-wide/from16 v0, v30

    double-to-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->originalHeight:I

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->resultHeight:I

    .line 6157
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->videoDuration:F

    move/from16 v29, v0

    const/high16 v30, 0x447a0000    # 1000.0f

    mul-float v29, v29, v30

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->videoDuration:F

    .line 6159
    sget-object v29, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "mainconfig"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-static {}, Lorg/telegram/messenger/ChangeUserHelper;->getUserTag()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v20

    .line 6160
    .local v20, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v29, "compress_video2"

    const/16 v30, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->selectedCompression:I

    .line 6161
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->originalWidth:I

    move/from16 v29, v0

    const/16 v30, 0x500

    move/from16 v0, v29

    move/from16 v1, v30

    if-gt v0, v1, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->originalHeight:I

    move/from16 v29, v0

    const/16 v30, 0x500

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_d

    .line 6162
    :cond_9
    const/16 v29, 0x5

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->compressionsCount:I

    .line 6172
    :goto_6
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->updateWidthHeightBitrateForCompression()V

    .line 6174
    if-nez v13, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->resultWidth:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->originalWidth:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->resultHeight:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->originalHeight:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_14

    .line 6175
    :cond_a
    const/16 v29, 0x0

    goto/16 :goto_0

    .line 6149
    .end local v20    # "preferences":Landroid/content/SharedPreferences;
    :cond_b
    sget-object v29, Lcom/googlecode/mp4parser/util/Matrix;->ROTATE_180:Lcom/googlecode/mp4parser/util/Matrix;

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/util/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_c

    .line 6150
    const/16 v29, 0xb4

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->rotationValue:I

    goto/16 :goto_5

    .line 6151
    :cond_c
    sget-object v29, Lcom/googlecode/mp4parser/util/Matrix;->ROTATE_270:Lcom/googlecode/mp4parser/util/Matrix;

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/util/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_8

    .line 6152
    const/16 v29, 0x10e

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->rotationValue:I

    goto/16 :goto_5

    .line 6163
    .restart local v20    # "preferences":Landroid/content/SharedPreferences;
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->originalWidth:I

    move/from16 v29, v0

    const/16 v30, 0x350

    move/from16 v0, v29

    move/from16 v1, v30

    if-gt v0, v1, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->originalHeight:I

    move/from16 v29, v0

    const/16 v30, 0x350

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_f

    .line 6164
    :cond_e
    const/16 v29, 0x4

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->compressionsCount:I

    goto :goto_6

    .line 6165
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->originalWidth:I

    move/from16 v29, v0

    const/16 v30, 0x280

    move/from16 v0, v29

    move/from16 v1, v30

    if-gt v0, v1, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->originalHeight:I

    move/from16 v29, v0

    const/16 v30, 0x280

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_11

    .line 6166
    :cond_10
    const/16 v29, 0x3

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->compressionsCount:I

    goto/16 :goto_6

    .line 6167
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->originalWidth:I

    move/from16 v29, v0

    const/16 v30, 0x1e0

    move/from16 v0, v29

    move/from16 v1, v30

    if-gt v0, v1, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->originalHeight:I

    move/from16 v29, v0

    const/16 v30, 0x1e0

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_13

    .line 6168
    :cond_12
    const/16 v29, 0x2

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->compressionsCount:I

    goto/16 :goto_6

    .line 6170
    :cond_13
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->compressionsCount:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_6

    .line 6182
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->compressionsCount:I

    move/from16 v29, v0

    const/16 v31, 0x1

    move/from16 v0, v29

    move/from16 v1, v31

    if-le v0, v1, :cond_16

    const/16 v29, 0x0

    :goto_7
    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6183
    sget v29, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v30, 0x10

    move/from16 v0, v29

    move/from16 v1, v30

    if-lt v0, v1, :cond_15

    sget v29, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v30, 0x12

    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/ImageView;->getVisibility()I

    move-result v29

    if-nez v29, :cond_15

    .line 6185
    :try_start_4
    const-string/jumbo v29, "video/avc"

    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/MediaController;->selectCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v9

    .line 6186
    .local v9, "codecInfo":Landroid/media/MediaCodecInfo;
    if-nez v9, :cond_17

    .line 6187
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    move-object/from16 v29, v0

    const/16 v30, 0x8

    invoke-virtual/range {v29 .. v30}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 6210
    .end local v9    # "codecInfo":Landroid/media/MediaCodecInfo;
    :cond_15
    :goto_8
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->updateVideoInfo()V

    .line 6211
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->updateMuteButton()V

    .line 6213
    const/16 v29, 0x1

    goto/16 :goto_0

    .line 6182
    :cond_16
    const/16 v29, 0x8

    goto :goto_7

    .line 6189
    .restart local v9    # "codecInfo":Landroid/media/MediaCodecInfo;
    :cond_17
    :try_start_5
    invoke-virtual {v9}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v19

    .line 6190
    .local v19, "name":Ljava/lang/String;
    const-string/jumbo v29, "OMX.google.h264.encoder"

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_18

    const-string/jumbo v29, "OMX.ST.VFM.H264Enc"

    .line 6191
    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_18

    const-string/jumbo v29, "OMX.Exynos.avc.enc"

    .line 6192
    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_18

    const-string/jumbo v29, "OMX.MARVELL.VIDEO.HW.CODA7542ENCODER"

    .line 6193
    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_18

    const-string/jumbo v29, "OMX.MARVELL.VIDEO.H264ENCODER"

    .line 6194
    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_18

    const-string/jumbo v29, "OMX.k3.video.encoder.avc"

    .line 6195
    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_18

    const-string/jumbo v29, "OMX.TI.DUCATI1.VIDEO.H264E"

    .line 6196
    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_19

    .line 6197
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    move-object/from16 v29, v0

    const/16 v30, 0x8

    invoke-virtual/range {v29 .. v30}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_8

    .line 6204
    .end local v9    # "codecInfo":Landroid/media/MediaCodecInfo;
    .end local v19    # "name":Ljava/lang/String;
    :catch_2
    move-exception v10

    .line 6205
    .restart local v10    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    move-object/from16 v29, v0

    const/16 v30, 0x8

    invoke-virtual/range {v29 .. v30}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6206
    invoke-static {v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 6199
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v9    # "codecInfo":Landroid/media/MediaCodecInfo;
    .restart local v19    # "name":Ljava/lang/String;
    :cond_19
    :try_start_6
    const-string/jumbo v29, "video/avc"

    move-object/from16 v0, v29

    invoke-static {v9, v0}, Lorg/telegram/messenger/MediaController;->selectColorFormat(Landroid/media/MediaCodecInfo;Ljava/lang/String;)I

    move-result v29

    if-nez v29, :cond_15

    .line 6200
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    move-object/from16 v29, v0

    const/16 v30, 0x8

    invoke-virtual/range {v29 .. v30}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_8
.end method

.method private redraw(I)V
    .locals 4
    .param p1, "count"    # I

    .prologue
    .line 4847
    const/4 v0, 0x6

    if-ge p1, v0, :cond_1

    .line 4848
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    if-eqz v0, :cond_0

    .line 4849
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->invalidate()V

    .line 4850
    new-instance v0, Lorg/telegram/ui/PhotoViewer$62;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/PhotoViewer$62;-><init>(Lorg/telegram/ui/PhotoViewer;I)V

    const-wide/16 v2, 0x64

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 4862
    :cond_0
    :goto_0
    return-void

    .line 4860
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->qualityBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->requestLayout()V

    goto :goto_0
.end method

.method private releasePlayer()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2640
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v1, :cond_0

    .line 2641
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoPlayer;->releasePlayer()V

    .line 2642
    iput-object v4, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    .line 2645
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2649
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    if-eqz v1, :cond_1

    .line 2650
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->removeView(Landroid/view/View;)V

    .line 2651
    iput-object v4, p0, Lorg/telegram/ui/PhotoViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    .line 2653
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->videoTextureView:Landroid/view/TextureView;

    if-eqz v1, :cond_2

    .line 2654
    iput-object v4, p0, Lorg/telegram/ui/PhotoViewer;->videoTextureView:Landroid/view/TextureView;

    .line 2656
    :cond_2
    iget-boolean v1, p0, Lorg/telegram/ui/PhotoViewer;->isPlaying:Z

    if-eqz v1, :cond_3

    .line 2657
    iput-boolean v3, p0, Lorg/telegram/ui/PhotoViewer;->isPlaying:Z

    .line 2658
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayButton:Landroid/widget/ImageView;

    const v2, 0x7f020115

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2659
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->updateProgressRunnable:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 2661
    :cond_3
    iget-boolean v1, p0, Lorg/telegram/ui/PhotoViewer;->inPreview:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lorg/telegram/ui/PhotoViewer;->requestingPreview:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_4

    .line 2662
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2663
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->dateTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2664
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2665
    iget-boolean v1, p0, Lorg/telegram/ui/PhotoViewer;->allowShare:Z

    if-eqz v1, :cond_4

    .line 2666
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->shareButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2667
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 2670
    :cond_4
    return-void

    .line 2646
    :catch_0
    move-exception v0

    .line 2647
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private requestVideoPreview(I)V
    .locals 10
    .param p1, "request"    # I

    .prologue
    .line 5912
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x10

    if-ge v6, v7, :cond_1

    .line 5974
    :cond_0
    :goto_0
    return-void

    .line 5915
    :cond_1
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v6, :cond_2

    .line 5916
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/MediaController;->cancelVideoConvert(Lorg/telegram/messenger/MessageObject;)V

    .line 5918
    :cond_2
    iget-boolean v6, p0, Lorg/telegram/ui/PhotoViewer;->requestingPreview:Z

    if-eqz v6, :cond_3

    iget-boolean v6, p0, Lorg/telegram/ui/PhotoViewer;->tryStartRequestPreviewOnFinish:Z

    if-nez v6, :cond_3

    const/4 v3, 0x1

    .line 5919
    .local v3, "wasRequestingPreview":Z
    :goto_1
    const/4 v6, 0x0

    iput-boolean v6, p0, Lorg/telegram/ui/PhotoViewer;->requestingPreview:Z

    .line 5920
    const/4 v6, 0x0

    iput-boolean v6, p0, Lorg/telegram/ui/PhotoViewer;->loadInitialVideo:Z

    .line 5921
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/RadialProgressView;->setVisibility(I)V

    .line 5922
    const/4 v6, 0x1

    if-ne p1, v6, :cond_b

    .line 5923
    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->selectedCompression:I

    iget v7, p0, Lorg/telegram/ui/PhotoViewer;->compressionsCount:I

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_5

    .line 5924
    const/4 v6, 0x0

    iput-boolean v6, p0, Lorg/telegram/ui/PhotoViewer;->tryStartRequestPreviewOnFinish:Z

    .line 5925
    if-nez v3, :cond_4

    .line 5926
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->currentPlayingVideoFile:Ljava/io/File;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lorg/telegram/ui/PhotoViewer;->preparePlayer(Ljava/io/File;ZZ)V

    goto :goto_0

    .line 5918
    .end local v3    # "wasRequestingPreview":Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 5928
    .restart local v3    # "wasRequestingPreview":Z
    :cond_4
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/RadialProgressView;->setVisibility(I)V

    .line 5929
    const/4 v6, 0x1

    iput-boolean v6, p0, Lorg/telegram/ui/PhotoViewer;->loadInitialVideo:Z

    goto :goto_0

    .line 5932
    :cond_5
    const/4 v6, 0x1

    iput-boolean v6, p0, Lorg/telegram/ui/PhotoViewer;->requestingPreview:Z

    .line 5933
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->releasePlayer()V

    .line 5934
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v6, :cond_6

    .line 5935
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 5936
    .local v2, "message":Lorg/telegram/tgnet/TLRPC$TL_message;
    const/4 v6, 0x0

    iput v6, v2, Lorg/telegram/tgnet/TLRPC$TL_message;->id:I

    .line 5937
    const-string/jumbo v6, ""

    iput-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_message;->message:Ljava/lang/String;

    .line 5938
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 5939
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_messageActionEmpty;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_messageActionEmpty;-><init>()V

    iput-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    .line 5940
    new-instance v6, Lorg/telegram/messenger/MessageObject;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v6, v2, v7, v8}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V

    iput-object v6, p0, Lorg/telegram/ui/PhotoViewer;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 5941
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

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

    .line 5942
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    new-instance v7, Lorg/telegram/messenger/VideoEditedInfo;

    invoke-direct {v7}, Lorg/telegram/messenger/VideoEditedInfo;-><init>()V

    iput-object v7, v6, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    .line 5943
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v7, p0, Lorg/telegram/ui/PhotoViewer;->rotationValue:I

    iput v7, v6, Lorg/telegram/messenger/VideoEditedInfo;->rotationValue:I

    .line 5944
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v7, p0, Lorg/telegram/ui/PhotoViewer;->originalWidth:I

    iput v7, v6, Lorg/telegram/messenger/VideoEditedInfo;->originalWidth:I

    .line 5945
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v7, p0, Lorg/telegram/ui/PhotoViewer;->originalHeight:I

    iput v7, v6, Lorg/telegram/messenger/VideoEditedInfo;->originalHeight:I

    .line 5946
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->currentPlayingVideoFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lorg/telegram/messenger/VideoEditedInfo;->originalPath:Ljava/lang/String;

    .line 5948
    .end local v2    # "message":Lorg/telegram/tgnet/TLRPC$TL_message;
    :cond_6
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-wide v4, p0, Lorg/telegram/ui/PhotoViewer;->startTime:J

    iput-wide v4, v6, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    .line 5949
    .local v4, "start":J
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-wide v0, p0, Lorg/telegram/ui/PhotoViewer;->endTime:J

    iput-wide v0, v6, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    .line 5950
    .local v0, "end":J
    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-nez v6, :cond_7

    .line 5951
    const-wide/16 v4, 0x0

    .line 5953
    :cond_7
    const-wide/16 v6, -0x1

    cmp-long v6, v0, v6

    if-nez v6, :cond_8

    .line 5954
    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->videoDuration:F

    const/high16 v7, 0x447a0000    # 1000.0f

    mul-float/2addr v6, v7

    float-to-long v0, v6

    .line 5956
    :cond_8
    sub-long v6, v0, v4

    const-wide/32 v8, 0x4c4b40

    cmp-long v6, v6, v8

    if-lez v6, :cond_9

    .line 5957
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    const-wide/32 v8, 0x4c4b40

    add-long/2addr v8, v4

    iput-wide v8, v6, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    .line 5959
    :cond_9
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v7, p0, Lorg/telegram/ui/PhotoViewer;->bitrate:I

    iput v7, v6, Lorg/telegram/messenger/VideoEditedInfo;->bitrate:I

    .line 5960
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v7, p0, Lorg/telegram/ui/PhotoViewer;->resultWidth:I

    iput v7, v6, Lorg/telegram/messenger/VideoEditedInfo;->resultWidth:I

    .line 5961
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v7, p0, Lorg/telegram/ui/PhotoViewer;->resultHeight:I

    iput v7, v6, Lorg/telegram/messenger/VideoEditedInfo;->resultHeight:I

    .line 5962
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lorg/telegram/messenger/MediaController;->scheduleVideoConvert(Lorg/telegram/messenger/MessageObject;Z)Z

    move-result v6

    if-nez v6, :cond_a

    .line 5963
    const/4 v6, 0x1

    iput-boolean v6, p0, Lorg/telegram/ui/PhotoViewer;->tryStartRequestPreviewOnFinish:Z

    .line 5965
    :cond_a
    const/4 v6, 0x1

    iput-boolean v6, p0, Lorg/telegram/ui/PhotoViewer;->requestingPreview:Z

    .line 5966
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/RadialProgressView;->setVisibility(I)V

    goto/16 :goto_0

    .line 5969
    .end local v0    # "end":J
    .end local v4    # "start":J
    :cond_b
    const/4 v6, 0x0

    iput-boolean v6, p0, Lorg/telegram/ui/PhotoViewer;->tryStartRequestPreviewOnFinish:Z

    .line 5970
    const/4 v6, 0x2

    if-ne p1, v6, :cond_0

    .line 5971
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->currentPlayingVideoFile:Ljava/io/File;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lorg/telegram/ui/PhotoViewer;->preparePlayer(Ljava/io/File;ZZ)V

    goto/16 :goto_0
.end method

.method private setCurrentCaption(Ljava/lang/CharSequence;)V
    .locals 8
    .param p1, "caption"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v5, 0x0

    const/4 v7, -0x1

    const/4 v4, 0x0

    .line 3978
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 3979
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewOld:Landroid/widget/TextView;

    iput-object v3, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    .line 3980
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewNew:Landroid/widget/TextView;

    iput-object v3, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewOld:Landroid/widget/TextView;

    .line 3981
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    iput-object v3, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewNew:Landroid/widget/TextView;

    .line 3982
    const/4 v3, 0x1

    invoke-static {v5, v3}, Lorg/telegram/ui/ActionBar/Theme;->createChatResources(Landroid/content/Context;Z)V

    .line 3983
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v5

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v3, v5, v6, v4}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v2

    .line 3984
    .local v2, "str":Ljava/lang/CharSequence;
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 3986
    :try_start_0
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3990
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3991
    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 3992
    new-instance v3, Lorg/telegram/ui/PhotoViewer$51;

    invoke-direct {v3, p0}, Lorg/telegram/ui/PhotoViewer$51;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 4017
    .end local v2    # "str":Ljava/lang/CharSequence;
    :goto_2
    iget-boolean v3, p0, Lorg/telegram/ui/PhotoViewer;->muteItemAvailable:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->photoQualityLayout:Landroid/widget/FrameLayout;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4018
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 4019
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->photoQualityLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_5

    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->plusShowPhotoQualityBar:Z

    if-eqz v3, :cond_5

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->photoQualityLayoutSize:I

    :goto_3
    add-int/lit8 v3, v3, 0x30

    int-to-float v3, v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 4020
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4022
    return-void

    .line 3987
    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v2    # "str":Ljava/lang/CharSequence;
    :catch_0
    move-exception v0

    .line 3988
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3991
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 4001
    .end local v2    # "str":Ljava/lang/CharSequence;
    :cond_3
    iget-boolean v3, p0, Lorg/telegram/ui/PhotoViewer;->needCaptionLayout:Z

    if-eqz v3, :cond_4

    .line 4003
    :try_start_1
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const-string/jumbo v5, "AddCaption"

    const v6, 0x7f070045

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 4007
    :goto_4
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const-string/jumbo v5, "empty"

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 4008
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4009
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const v5, -0x4d000001

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 4004
    :catch_1
    move-exception v0

    .line 4005
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 4011
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4012
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 4013
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .restart local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_5
    move v3, v4

    .line 4019
    goto :goto_3
.end method

.method private setImageIndex(IZ)V
    .locals 32
    .param p1, "index"    # I
    .param p2, "init"    # Z

    .prologue
    .line 3661
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    move/from16 v0, p1

    if-eq v2, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    if-nez v2, :cond_1

    .line 3975
    :cond_0
    :goto_0
    return-void

    .line 3664
    :cond_1
    if-nez p2, :cond_2

    .line 3665
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentThumb:Landroid/graphics/Bitmap;

    .line 3667
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/PhotoViewer;->getFileName(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 3668
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    const/4 v3, 0x1

    add-int/lit8 v4, p1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/telegram/ui/PhotoViewer;->getFileName(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 3669
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    const/4 v3, 0x2

    add-int/lit8 v4, p1, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/telegram/ui/PhotoViewer;->getFileName(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 3670
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    invoke-interface {v2, v3, v4, v5}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->willSwitchFromPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)V

    .line 3671
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    move/from16 v25, v0

    .line 3672
    .local v25, "prevIndex":I
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    .line 3673
    const/16 v19, 0x0

    .line 3674
    .local v19, "isVideo":Z
    const/16 v26, 0x0

    .line 3677
    .local v26, "sameImage":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_27

    .line 3678
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    if-ltz v2, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_4

    .line 3679
    :cond_3
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    goto :goto_0

    .line 3682
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/telegram/messenger/MessageObject;

    .line 3683
    .local v21, "newMessageObject":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    if-ne v2, v3, :cond_c

    const/16 v26, 0x1

    .line 3684
    :goto_1
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 3685
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v19

    .line 3686
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isInvoice()Z

    move-result v18

    .line 3687
    .local v18, "isInvoice":Z
    if-eqz v18, :cond_d

    .line 3688
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->masksItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 3689
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 3690
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 3691
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->description:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/ui/PhotoViewer;->setCurrentCaption(Ljava/lang/CharSequence;)V

    .line 3692
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->allowShare:Z

    .line 3693
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    const/high16 v3, 0x42400000    # 48.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 3694
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionTextViewOld:Landroid/widget/TextView;

    const/high16 v3, 0x42400000    # 48.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 3695
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionTextViewNew:Landroid/widget/TextView;

    const/high16 v3, 0x42400000    # 48.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 3734
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v2, :cond_15

    .line 3735
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 3736
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 3737
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessageObject;->canDeleteMessage(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 3738
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 3740
    :cond_5
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->allowShare:Z

    .line 3741
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->shareButton:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3742
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v3, "AttachGif"

    const v4, 0x7f0700a7

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 3888
    .end local v18    # "isInvoice":Z
    .end local v21    # "newMessageObject":Lorg/telegram/messenger/MessageObject;
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentPlaceObject:Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    if-eqz v2, :cond_7

    .line 3889
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->animationInProgress:I

    if-nez v2, :cond_3c

    .line 3890
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentPlaceObject:Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    iget-object v2, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 3895
    :cond_7
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    invoke-interface {v2, v3, v4, v5}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->getPlaceForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentPlaceObject:Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    .line 3896
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentPlaceObject:Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    if-eqz v2, :cond_8

    .line 3897
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->animationInProgress:I

    if-nez v2, :cond_3d

    .line 3898
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentPlaceObject:Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    iget-object v2, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 3904
    :cond_8
    :goto_5
    if-nez v26, :cond_b

    .line 3905
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->draggingDown:Z

    .line 3906
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    .line 3907
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    .line 3908
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->scale:F

    .line 3909
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->animateToX:F

    .line 3910
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->animateToY:F

    .line 3911
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->animateToScale:F

    .line 3912
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->animationStartTime:J

    .line 3913
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    .line 3914
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    .line 3915
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    if-eqz v2, :cond_9

    .line 3916
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->setVisibility(I)V

    .line 3918
    :cond_9
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->releasePlayer()V

    .line 3920
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->pinchStartDistance:F

    .line 3921
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->pinchStartScale:F

    .line 3922
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->pinchCenterX:F

    .line 3923
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->pinchCenterY:F

    .line 3924
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->pinchStartX:F

    .line 3925
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->pinchStartY:F

    .line 3926
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->moveStartX:F

    .line 3927
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->moveStartY:F

    .line 3928
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->zooming:Z

    .line 3929
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->moving:Z

    .line 3930
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->doubleTap:Z

    .line 3931
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->invalidCoords:Z

    .line 3932
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->canDragDown:Z

    .line 3933
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->changingPage:Z

    .line 3934
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->switchImageAfterAnimation:I

    .line 3935
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    if-eqz v2, :cond_3e

    if-nez v19, :cond_3e

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->access$10500(Lorg/telegram/ui/PhotoViewer$PhotoProgressView;)I

    move-result v2

    if-eqz v2, :cond_3e

    :cond_a
    const/4 v2, 0x1

    :goto_6
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->canZoom:Z

    .line 3936
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->scale:F

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/ui/PhotoViewer;->updateMinMax(F)V

    .line 3939
    :cond_b
    const/4 v2, -0x1

    move/from16 v0, v25

    if-ne v0, v2, :cond_3f

    .line 3940
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->setImages()V

    .line 3942
    const/4 v10, 0x0

    .local v10, "a":I
    :goto_7
    const/4 v2, 0x3

    if-ge v10, v2, :cond_0

    .line 3943
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v2}, Lorg/telegram/ui/PhotoViewer;->checkProgress(IZ)V

    .line 3942
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 3683
    .end local v10    # "a":I
    .restart local v21    # "newMessageObject":Lorg/telegram/messenger/MessageObject;
    :cond_c
    const/16 v26, 0x0

    goto/16 :goto_1

    .line 3697
    .restart local v18    # "isInvoice":Z
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->masksItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->hasPhotoStickers()Z

    move-result v2

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    long-to-int v2, v4

    if-eqz v2, :cond_e

    const/4 v2, 0x0

    :goto_8
    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 3698
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessageObject;->canDeleteMessage(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 3699
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    .line 3703
    :goto_9
    if-eqz v19, :cond_10

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_10

    .line 3704
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    .line 3708
    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isFromUser()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 3709
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v31

    .line 3710
    .local v31, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v31, :cond_11

    .line 3711
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->nameTextView:Landroid/widget/TextView;

    invoke-static/range {v31 .. v31}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3723
    .end local v31    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long v14, v2, v4

    .line 3724
    .local v14, "date":J
    const-string/jumbo v2, "formatDateAtTime"

    const v3, 0x7f0706d0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/messenger/LocaleController;->formatterYear:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x1

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 3725
    .local v16, "dateString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    if-eqz v2, :cond_14

    if-eqz v19, :cond_14

    .line 3726
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->dateTextView:Landroid/widget/TextView;

    const-string/jumbo v3, "%s (%s)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v16, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v7

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$Document;->size:I

    int-to-long v8, v7

    invoke-static {v8, v9}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3730
    :goto_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v12, v2, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    .line 3731
    .local v12, "caption":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lorg/telegram/ui/PhotoViewer;->setCurrentCaption(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 3697
    .end local v12    # "caption":Ljava/lang/CharSequence;
    .end local v14    # "date":J
    .end local v16    # "dateString":Ljava/lang/String;
    :cond_e
    const/4 v2, 0x4

    goto/16 :goto_8

    .line 3701
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    goto/16 :goto_9

    .line 3706
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    goto/16 :goto_a

    .line 3713
    .restart local v31    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->nameTextView:Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b

    .line 3716
    .end local v31    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_12
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v13

    .line 3717
    .local v13, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v13, :cond_13

    .line 3718
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->nameTextView:Landroid/widget/TextView;

    iget-object v3, v13, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b

    .line 3720
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->nameTextView:Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b

    .line 3728
    .end local v13    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .restart local v14    # "date":J
    .restart local v16    # "dateString":Ljava/lang/String;
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->dateTextView:Landroid/widget/TextView;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c

    .line 3744
    .end local v14    # "date":J
    .end local v16    # "dateString":Ljava/lang/String;
    :cond_15
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCount:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCountMerge:I

    add-int/2addr v2, v3

    if-eqz v2, :cond_20

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->needSearchImageInArr:Z

    if-nez v2, :cond_20

    .line 3745
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->opennedFromMedia:Z

    if-eqz v2, :cond_1b

    .line 3746
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCount:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCountMerge:I

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_17

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->loadingMoreImages:Z

    if-nez v2, :cond_17

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x5

    if-le v2, v3, :cond_17

    .line 3747
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_19

    const/4 v6, 0x0

    .line 3748
    .local v6, "loadFromMaxId":I
    :goto_d
    const/16 v20, 0x0

    .line 3749
    .local v20, "loadIndex":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->endReached:[Z

    aget-boolean v2, v2, v20

    if-eqz v2, :cond_16

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_16

    .line 3750
    const/16 v20, 0x1

    .line 3751
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_16

    .line 3752
    const/4 v6, 0x0

    .line 3756
    :cond_16
    if-nez v20, :cond_1a

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->currentDialogId:J

    :goto_e
    const/4 v4, 0x0

    const/16 v5, 0x50

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/ui/PhotoViewer;->classGuid:I

    invoke-static/range {v2 .. v9}, Lorg/telegram/messenger/query/SharedMediaQuery;->loadMedia(JIIIIZI)V

    .line 3757
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->loadingMoreImages:Z

    .line 3759
    .end local v6    # "loadFromMaxId":I
    .end local v20    # "loadIndex":I
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v3, "Of"

    const v4, 0x7f070453

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCount:I

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCountMerge:I

    add-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 3785
    :cond_18
    :goto_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    if-eqz v2, :cond_23

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    const/16 v3, 0xe10

    if-ge v2, v3, :cond_23

    .line 3786
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->allowShare:Z

    .line 3787
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 3788
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->shareButton:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3789
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    goto/16 :goto_3

    .line 3747
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    goto/16 :goto_d

    .line 3756
    .restart local v6    # "loadFromMaxId":I
    .restart local v20    # "loadIndex":I
    :cond_1a
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    goto/16 :goto_e

    .line 3761
    .end local v6    # "loadFromMaxId":I
    .end local v20    # "loadIndex":I
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCount:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCountMerge:I

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_1d

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->loadingMoreImages:Z

    if-nez v2, :cond_1d

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    const/4 v3, 0x5

    if-ge v2, v3, :cond_1d

    .line 3762
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1e

    const/4 v6, 0x0

    .line 3763
    .restart local v6    # "loadFromMaxId":I
    :goto_10
    const/16 v20, 0x0

    .line 3764
    .restart local v20    # "loadIndex":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->endReached:[Z

    aget-boolean v2, v2, v20

    if-eqz v2, :cond_1c

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1c

    .line 3765
    const/16 v20, 0x1

    .line 3766
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1c

    .line 3767
    const/4 v6, 0x0

    .line 3771
    :cond_1c
    if-nez v20, :cond_1f

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->currentDialogId:J

    :goto_11
    const/4 v4, 0x0

    const/16 v5, 0x50

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/ui/PhotoViewer;->classGuid:I

    invoke-static/range {v2 .. v9}, Lorg/telegram/messenger/query/SharedMediaQuery;->loadMedia(JIIIIZI)V

    .line 3772
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->loadingMoreImages:Z

    .line 3774
    .end local v6    # "loadFromMaxId":I
    .end local v20    # "loadIndex":I
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v3, "Of"

    const v4, 0x7f070453

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCount:I

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCountMerge:I

    add-int/2addr v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v8, v9

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCount:I

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCountMerge:I

    add-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    .line 3762
    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    goto/16 :goto_10

    .line 3771
    .restart local v6    # "loadFromMaxId":I
    .restart local v20    # "loadIndex":I
    :cond_1f
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    goto :goto_11

    .line 3776
    .end local v6    # "loadFromMaxId":I
    .end local v20    # "loadIndex":I
    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v2, :cond_22

    .line 3777
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 3778
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v3, "AttachVideo"

    const v4, 0x7f0700ad

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    .line 3780
    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v3, "AttachPhoto"

    const v4, 0x7f0700aa

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    .line 3782
    :cond_22
    if-eqz v18, :cond_18

    .line 3783
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    .line 3791
    :cond_23
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->allowShare:Z

    .line 3792
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    .line 3793
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->shareButton:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_24

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_25

    :cond_24
    const/4 v2, 0x0

    :goto_12
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3794
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->shareButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_26

    .line 3795
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    goto/16 :goto_3

    .line 3793
    :cond_25
    const/16 v2, 0x8

    goto :goto_12

    .line 3797
    :cond_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    goto/16 :goto_3

    .line 3801
    .end local v18    # "isInvoice":Z
    .end local v21    # "newMessageObject":Lorg/telegram/messenger/MessageObject;
    :cond_27
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2f

    .line 3802
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->nameTextView:Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3803
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->dateTextView:Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3804
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->avatarsDialogId:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v3

    if-ne v2, v3, :cond_29

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->avatarsArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_29

    .line 3805
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    .line 3809
    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v23, v0

    .line 3810
    .local v23, "old":Lorg/telegram/tgnet/TLRPC$FileLocation;
    if-ltz p1, :cond_28

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, p1

    if-lt v0, v2, :cond_2a

    .line 3811
    :cond_28
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    goto/16 :goto_0

    .line 3807
    .end local v23    # "old":Lorg/telegram/tgnet/TLRPC$FileLocation;
    :cond_29
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    goto :goto_13

    .line 3814
    .restart local v23    # "old":Lorg/telegram/tgnet/TLRPC$FileLocation;
    :cond_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 3815
    if-eqz v23, :cond_2b

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v2, :cond_2b

    move-object/from16 v0, v23

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-ne v2, v3, :cond_2b

    move-object/from16 v0, v23

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2b

    .line 3816
    const/16 v26, 0x1

    .line 3818
    :cond_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v3, "Of"

    const v4, 0x7f070453

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 3819
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    .line 3820
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->allowShare:Z

    .line 3821
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->shareButton:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_2c

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_2d

    :cond_2c
    const/4 v2, 0x0

    :goto_14
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3822
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->shareButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2e

    .line 3823
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    goto/16 :goto_3

    .line 3821
    :cond_2d
    const/16 v2, 0x8

    goto :goto_14

    .line 3825
    :cond_2e
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    goto/16 :goto_3

    .line 3827
    .end local v23    # "old":Lorg/telegram/tgnet/TLRPC$FileLocation;
    :cond_2f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 3828
    if-ltz p1, :cond_30

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, p1

    if-lt v0, v2, :cond_31

    .line 3829
    :cond_30
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    goto/16 :goto_0

    .line 3832
    :cond_31
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    .line 3833
    .local v22, "object":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 3834
    .local v17, "fromCamera":Z
    const/4 v12, 0x0

    .line 3835
    .restart local v12    # "caption":Ljava/lang/CharSequence;
    move-object/from16 v0, v22

    instance-of v2, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v2, :cond_35

    move-object/from16 v24, v22

    .line 3836
    check-cast v24, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 3837
    .local v24, "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    move-object/from16 v0, v24

    iget-object v2, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentPathObject:Ljava/lang/String;

    .line 3838
    move-object/from16 v0, v24

    iget v2, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->bucketId:I

    if-nez v2, :cond_34

    move-object/from16 v0, v24

    iget-wide v2, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->dateTaken:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_34

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_34

    const/16 v17, 0x1

    .line 3839
    :goto_15
    move-object/from16 v0, v24

    iget-object v12, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->caption:Ljava/lang/CharSequence;

    .line 3840
    move-object/from16 v0, v24

    iget-boolean v0, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    move/from16 v19, v0

    .line 3863
    .end local v24    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    :cond_32
    :goto_16
    if-eqz v17, :cond_3b

    .line 3864
    if-eqz v19, :cond_3a

    .line 3865
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->muteItemAvailable:Z

    .line 3866
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->muteItem:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3867
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionItem:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3868
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionTextViewNew:Landroid/widget/TextView;

    const/high16 v3, 0x42c00000    # 96.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 3869
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionTextViewOld:Landroid/widget/TextView;

    const/high16 v3, 0x42c00000    # 96.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 3870
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->videoTimelineViewContainer:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3871
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentPathObject:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/ui/PhotoViewer;->processOpenVideo(Ljava/lang/String;)Z

    .line 3872
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v3, "AttachVideo"

    const v4, 0x7f0700ad

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 3879
    :goto_17
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->sendPhotoType:I

    if-nez v2, :cond_33

    .line 3880
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    invoke-interface {v3, v4}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->isPhotoChecked(I)Z

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Components/CheckBox;->setChecked(ZZ)V

    .line 3883
    :cond_33
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lorg/telegram/ui/PhotoViewer;->setCurrentCaption(Ljava/lang/CharSequence;)V

    .line 3884
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/telegram/ui/PhotoViewer;->updateCaptionTextForCurrentPhoto(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 3838
    .restart local v24    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    :cond_34
    const/16 v17, 0x0

    goto/16 :goto_15

    .line 3841
    .end local v24    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    :cond_35
    move-object/from16 v0, v22

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-eqz v2, :cond_38

    move-object/from16 v11, v22

    .line 3842
    check-cast v11, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-object/from16 v0, p0

    iput-object v11, v0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    .line 3843
    .local v11, "botInlineResult":Lorg/telegram/tgnet/TLRPC$BotInlineResult;
    iget-object v2, v11, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v2, :cond_36

    .line 3844
    iget-object v2, v11, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v19

    .line 3845
    iget-object v2, v11, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentPathObject:Ljava/lang/String;

    goto/16 :goto_16

    .line 3846
    :cond_36
    iget-object v2, v11, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v2, :cond_37

    .line 3847
    iget-object v2, v11, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v3

    invoke-static {v2, v3}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v28

    .line 3848
    .local v28, "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentPathObject:Ljava/lang/String;

    goto/16 :goto_16

    .line 3849
    .end local v28    # "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_37
    iget-object v2, v11, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    if-eqz v2, :cond_32

    .line 3850
    iget-object v2, v11, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentPathObject:Ljava/lang/String;

    .line 3851
    iget-object v2, v11, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    const-string/jumbo v3, "video"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    goto/16 :goto_16

    .line 3854
    .end local v11    # "botInlineResult":Lorg/telegram/tgnet/TLRPC$BotInlineResult;
    :cond_38
    move-object/from16 v0, v22

    instance-of v2, v0, Lorg/telegram/messenger/MediaController$SearchImage;

    if-eqz v2, :cond_32

    move-object/from16 v27, v22

    .line 3855
    check-cast v27, Lorg/telegram/messenger/MediaController$SearchImage;

    .line 3856
    .local v27, "searchImage":Lorg/telegram/messenger/MediaController$SearchImage;
    move-object/from16 v0, v27

    iget-object v2, v0, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v2, :cond_39

    .line 3857
    move-object/from16 v0, v27

    iget-object v2, v0, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentPathObject:Ljava/lang/String;

    .line 3861
    :goto_18
    move-object/from16 v0, v27

    iget-object v12, v0, Lorg/telegram/messenger/MediaController$SearchImage;->caption:Ljava/lang/CharSequence;

    goto/16 :goto_16

    .line 3859
    :cond_39
    move-object/from16 v0, v27

    iget-object v2, v0, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentPathObject:Ljava/lang/String;

    goto :goto_18

    .line 3874
    .end local v27    # "searchImage":Lorg/telegram/messenger/MediaController$SearchImage;
    :cond_3a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v3, "AttachPhoto"

    const v4, 0x7f0700aa

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_17

    .line 3877
    :cond_3b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v3, "Of"

    const v4, 0x7f070453

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_17

    .line 3892
    .end local v12    # "caption":Ljava/lang/CharSequence;
    .end local v17    # "fromCamera":Z
    .end local v22    # "object":Ljava/lang/Object;
    :cond_3c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentPlaceObject:Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->showAfterAnimation:Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    goto/16 :goto_4

    .line 3900
    :cond_3d
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentPlaceObject:Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->hideAfterAnimation:Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    goto/16 :goto_5

    .line 3935
    :cond_3e
    const/4 v2, 0x0

    goto/16 :goto_6

    .line 3946
    :cond_3f
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/PhotoViewer;->checkProgress(IZ)V

    .line 3947
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    move/from16 v0, v25

    if-le v0, v2, :cond_40

    .line 3948
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v29, v0

    .line 3949
    .local v29, "temp":Lorg/telegram/messenger/ImageReceiver;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    .line 3950
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    .line 3951
    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/PhotoViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    .line 3953
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    const/4 v3, 0x0

    aget-object v30, v2, v3

    .line 3954
    .local v30, "tempProgress":Lorg/telegram/ui/PhotoViewer$PhotoProgressView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    aput-object v4, v2, v3

    .line 3955
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    const/4 v3, 0x2

    aput-object v30, v2, v3

    .line 3956
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/PhotoViewer;->setIndexToImage(Lorg/telegram/messenger/ImageReceiver;I)V

    .line 3958
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/PhotoViewer;->checkProgress(IZ)V

    .line 3959
    const/4 v2, 0x2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/PhotoViewer;->checkProgress(IZ)V

    goto/16 :goto_0

    .line 3960
    .end local v29    # "temp":Lorg/telegram/messenger/ImageReceiver;
    .end local v30    # "tempProgress":Lorg/telegram/ui/PhotoViewer$PhotoProgressView;
    :cond_40
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    move/from16 v0, v25

    if-ge v0, v2, :cond_0

    .line 3961
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v29, v0

    .line 3962
    .restart local v29    # "temp":Lorg/telegram/messenger/ImageReceiver;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    .line 3963
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    .line 3964
    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/PhotoViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    .line 3966
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    const/4 v3, 0x0

    aget-object v30, v2, v3

    .line 3967
    .restart local v30    # "tempProgress":Lorg/telegram/ui/PhotoViewer$PhotoProgressView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    aput-object v4, v2, v3

    .line 3968
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    const/4 v3, 0x1

    aput-object v30, v2, v3

    .line 3969
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/PhotoViewer;->setIndexToImage(Lorg/telegram/messenger/ImageReceiver;I)V

    .line 3971
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/PhotoViewer;->checkProgress(IZ)V

    .line 3972
    const/4 v2, 0x2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/PhotoViewer;->checkProgress(IZ)V

    goto/16 :goto_0
.end method

.method private setImages()V
    .locals 2

    .prologue
    .line 3653
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->animationInProgress:I

    if-nez v0, :cond_0

    .line 3654
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/PhotoViewer;->setIndexToImage(Lorg/telegram/messenger/ImageReceiver;I)V

    .line 3655
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/PhotoViewer;->setIndexToImage(Lorg/telegram/messenger/ImageReceiver;I)V

    .line 3656
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/PhotoViewer;->setIndexToImage(Lorg/telegram/messenger/ImageReceiver;I)V

    .line 3658
    :cond_0
    return-void
.end method

.method private setIndexToImage(Lorg/telegram/messenger/ImageReceiver;I)V
    .locals 33
    .param p1, "imageReceiver"    # Lorg/telegram/messenger/ImageReceiver;
    .param p2, "index"    # I

    .prologue
    .line 4103
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Lorg/telegram/messenger/ImageReceiver;->setOrientation(IZ)V

    .line 4104
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_15

    .line 4105
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/ImageReceiver;->setParentMessageObject(Lorg/telegram/messenger/MessageObject;)V

    .line 4106
    if-ltz p2, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, p2

    if-ge v0, v3, :cond_14

    .line 4107
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    .line 4108
    .local v27, "object":Ljava/lang/Object;
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v3

    int-to-float v3, v3

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v3, v5

    float-to-int v0, v3

    move/from16 v30, v0

    .line 4109
    .local v30, "size":I
    const/16 v29, 0x0

    .line 4110
    .local v29, "placeHolder":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->currentThumb:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_0

    .line 4111
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->currentThumb:Landroid/graphics/Bitmap;

    move-object/from16 v29, v0

    .line 4113
    :cond_0
    if-nez v29, :cond_1

    .line 4114
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move/from16 v0, p2

    invoke-interface {v3, v5, v7, v0}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->getThumbForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)Landroid/graphics/Bitmap;

    move-result-object v29

    .line 4116
    :cond_1
    const/4 v6, 0x0

    .line 4117
    .local v6, "path":Ljava/lang/String;
    const/4 v4, 0x0

    .line 4118
    .local v4, "document":Lorg/telegram/tgnet/TLRPC$Document;
    const/4 v12, 0x0

    .line 4119
    .local v12, "photo":Lorg/telegram/tgnet/TLRPC$FileLocation;
    const/4 v10, 0x0

    .line 4120
    .local v10, "imageSize":I
    const/4 v14, 0x0

    .line 4121
    .local v14, "filter":Ljava/lang/String;
    move-object/from16 v0, v27

    instance-of v3, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v3, :cond_4

    move-object/from16 v28, v27

    .line 4122
    check-cast v28, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 4123
    .local v28, "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    move-object/from16 v0, v28

    iget-boolean v3, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    if-nez v3, :cond_2

    .line 4124
    move-object/from16 v0, v28

    iget-object v3, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->imagePath:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 4125
    move-object/from16 v0, v28

    iget-object v6, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->imagePath:Ljava/lang/String;

    .line 4130
    :goto_0
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v5, "%d_%d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v3, v5, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 4170
    .end local v28    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    :cond_2
    :goto_1
    if-eqz v4, :cond_10

    .line 4171
    const/4 v5, 0x0

    const-string/jumbo v6, "d"

    .end local v6    # "path":Ljava/lang/String;
    if-eqz v29, :cond_e

    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v3, 0x0

    move-object/from16 v0, v29

    invoke-direct {v7, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_2
    if-nez v29, :cond_f

    iget-object v3, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v8, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    :goto_3
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v9, "%d_%d"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v11, v13

    const/4 v13, 0x1

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v11, v13

    invoke-static {v3, v9, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v12}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 4231
    .end local v4    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    .end local v10    # "imageSize":I
    .end local v12    # "photo":Lorg/telegram/tgnet/TLRPC$FileLocation;
    .end local v14    # "filter":Ljava/lang/String;
    .end local v27    # "object":Ljava/lang/Object;
    .end local v29    # "placeHolder":Landroid/graphics/Bitmap;
    .end local v30    # "size":I
    :goto_4
    return-void

    .line 4127
    .restart local v4    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    .restart local v6    # "path":Ljava/lang/String;
    .restart local v10    # "imageSize":I
    .restart local v12    # "photo":Lorg/telegram/tgnet/TLRPC$FileLocation;
    .restart local v14    # "filter":Ljava/lang/String;
    .restart local v27    # "object":Ljava/lang/Object;
    .restart local v28    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    .restart local v29    # "placeHolder":Landroid/graphics/Bitmap;
    .restart local v30    # "size":I
    :cond_3
    move-object/from16 v0, v28

    iget v3, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->orientation:I

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Lorg/telegram/messenger/ImageReceiver;->setOrientation(IZ)V

    .line 4128
    move-object/from16 v0, v28

    iget-object v6, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    goto :goto_0

    .line 4132
    .end local v28    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    :cond_4
    move-object/from16 v0, v27

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-eqz v3, :cond_b

    move-object/from16 v25, v27

    .line 4133
    check-cast v25, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    .line 4134
    .local v25, "botInlineResult":Lorg/telegram/tgnet/TLRPC$BotInlineResult;
    move-object/from16 v0, v25

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    const-string/jumbo v5, "video"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move-object/from16 v0, v25

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v3}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 4135
    :cond_5
    move-object/from16 v0, v25

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v3, :cond_6

    .line 4136
    move-object/from16 v0, v25

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v12, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto :goto_1

    .line 4138
    :cond_6
    move-object/from16 v0, v25

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->thumb_url:Ljava/lang/String;

    goto :goto_1

    .line 4140
    :cond_7
    move-object/from16 v0, v25

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    const-string/jumbo v5, "gif"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    move-object/from16 v0, v25

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v3, :cond_8

    .line 4141
    move-object/from16 v0, v25

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 4142
    move-object/from16 v0, v25

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget v10, v3, Lorg/telegram/tgnet/TLRPC$Document;->size:I

    .line 4143
    const-string/jumbo v14, "d"

    goto/16 :goto_1

    .line 4144
    :cond_8
    move-object/from16 v0, v25

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v3, :cond_9

    .line 4145
    move-object/from16 v0, v25

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v5

    invoke-static {v3, v5}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v31

    .line 4146
    .local v31, "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    move-object/from16 v0, v31

    iget-object v12, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 4147
    move-object/from16 v0, v31

    iget v10, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    .line 4148
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v5, "%d_%d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v3, v5, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 4149
    goto/16 :goto_1

    .end local v31    # "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_9
    move-object/from16 v0, v25

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 4150
    move-object/from16 v0, v25

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    const-string/jumbo v5, "gif"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 4151
    const-string/jumbo v14, "d"

    .line 4155
    :goto_5
    move-object/from16 v0, v25

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    goto/16 :goto_1

    .line 4153
    :cond_a
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v5, "%d_%d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v3, v5, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto :goto_5

    .line 4157
    .end local v25    # "botInlineResult":Lorg/telegram/tgnet/TLRPC$BotInlineResult;
    :cond_b
    move-object/from16 v0, v27

    instance-of v3, v0, Lorg/telegram/messenger/MediaController$SearchImage;

    if-eqz v3, :cond_2

    move-object/from16 v28, v27

    .line 4158
    check-cast v28, Lorg/telegram/messenger/MediaController$SearchImage;

    .line 4159
    .local v28, "photoEntry":Lorg/telegram/messenger/MediaController$SearchImage;
    move-object/from16 v0, v28

    iget-object v3, v0, Lorg/telegram/messenger/MediaController$SearchImage;->imagePath:Ljava/lang/String;

    if-eqz v3, :cond_c

    .line 4160
    move-object/from16 v0, v28

    iget-object v6, v0, Lorg/telegram/messenger/MediaController$SearchImage;->imagePath:Ljava/lang/String;

    .line 4168
    :goto_6
    const-string/jumbo v14, "d"

    goto/16 :goto_1

    .line 4161
    :cond_c
    move-object/from16 v0, v28

    iget-object v3, v0, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v3, :cond_d

    .line 4162
    move-object/from16 v0, v28

    iget-object v4, v0, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 4163
    move-object/from16 v0, v28

    iget-object v3, v0, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget v10, v3, Lorg/telegram/tgnet/TLRPC$Document;->size:I

    goto :goto_6

    .line 4165
    :cond_d
    move-object/from16 v0, v28

    iget-object v6, v0, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    .line 4166
    move-object/from16 v0, v28

    iget v10, v0, Lorg/telegram/messenger/MediaController$SearchImage;->size:I

    goto :goto_6

    .line 4171
    .end local v6    # "path":Ljava/lang/String;
    .end local v28    # "photoEntry":Lorg/telegram/messenger/MediaController$SearchImage;
    :cond_e
    const/4 v7, 0x0

    goto/16 :goto_2

    :cond_f
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 4172
    .restart local v6    # "path":Ljava/lang/String;
    :cond_10
    if-eqz v12, :cond_12

    .line 4173
    const/4 v13, 0x0

    if-eqz v29, :cond_11

    new-instance v15, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v3, 0x0

    move-object/from16 v0, v29

    invoke-direct {v15, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_7
    const/16 v16, 0x0

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v5, "%d_%d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v3, v5, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v11, p1

    move/from16 v18, v10

    invoke-virtual/range {v11 .. v20}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;ILjava/lang/String;Z)V

    goto/16 :goto_4

    :cond_11
    const/4 v15, 0x0

    goto :goto_7

    .line 4175
    :cond_12
    if-eqz v29, :cond_13

    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v3, 0x0

    move-object/from16 v0, v29

    invoke-direct {v8, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_8
    const/4 v9, 0x0

    move-object/from16 v5, p1

    move-object v7, v14

    invoke-virtual/range {v5 .. v10}, Lorg/telegram/messenger/ImageReceiver;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V

    goto/16 :goto_4

    :cond_13
    const/4 v8, 0x0

    goto :goto_8

    .line 4178
    .end local v4    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    .end local v6    # "path":Ljava/lang/String;
    .end local v10    # "imageSize":I
    .end local v12    # "photo":Lorg/telegram/tgnet/TLRPC$FileLocation;
    .end local v14    # "filter":Ljava/lang/String;
    .end local v27    # "object":Ljava/lang/Object;
    .end local v29    # "placeHolder":Landroid/graphics/Bitmap;
    .end local v30    # "size":I
    :cond_14
    const/4 v3, 0x0

    check-cast v3, Landroid/graphics/Bitmap;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_4

    .line 4181
    :cond_15
    const/4 v3, 0x1

    new-array v0, v3, [I

    move-object/from16 v30, v0

    .line 4182
    .local v30, "size":[I
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer;->getFileLocation(I[I)Lorg/telegram/tgnet/TLObject;

    move-result-object v16

    .line 4184
    .local v16, "fileLocation":Lorg/telegram/tgnet/TLObject;
    if-eqz v16, :cond_23

    .line 4185
    const/16 v26, 0x0

    .line 4186
    .local v26, "messageObject":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_16

    .line 4187
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "messageObject":Lorg/telegram/messenger/MessageObject;
    check-cast v26, Lorg/telegram/messenger/MessageObject;

    .line 4189
    .restart local v26    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_16
    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setParentMessageObject(Lorg/telegram/messenger/MessageObject;)V

    .line 4190
    if-eqz v26, :cond_17

    .line 4191
    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/ImageReceiver;->setShouldGenerateQualityThumb(Z)V

    .line 4194
    :cond_17
    if-eqz v26, :cond_1b

    invoke-virtual/range {v26 .. v26}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 4195
    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/ImageReceiver;->setNeedsQualityThumb(Z)V

    .line 4196
    move-object/from16 v0, v26

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    if-eqz v3, :cond_1a

    move-object/from16 v0, v26

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1a

    .line 4197
    const/16 v29, 0x0

    .line 4198
    .restart local v29    # "placeHolder":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->currentThumb:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_18

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_18

    .line 4199
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->currentThumb:Landroid/graphics/Bitmap;

    move-object/from16 v29, v0

    .line 4201
    :cond_18
    move-object/from16 v0, v26

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    const/16 v5, 0x64

    invoke-static {v3, v5}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v32

    .line 4202
    .local v32, "thumbLocation":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    if-eqz v29, :cond_19

    .end local v16    # "fileLocation":Lorg/telegram/tgnet/TLObject;
    new-instance v19, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v3, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-direct {v0, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_9
    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v20, v0

    const-string/jumbo v21, "b"

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x1

    move-object/from16 v15, p1

    invoke-virtual/range {v15 .. v24}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;ILjava/lang/String;Z)V

    goto/16 :goto_4

    :cond_19
    const/16 v19, 0x0

    goto :goto_9

    .line 4204
    .end local v29    # "placeHolder":Landroid/graphics/Bitmap;
    .end local v32    # "thumbLocation":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .restart local v16    # "fileLocation":Lorg/telegram/tgnet/TLObject;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f02021d

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 4206
    :cond_1b
    if-eqz v26, :cond_1c

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v3, :cond_1c

    .line 4207
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    .line 4208
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setSecondParentView(Landroid/view/View;)V

    goto/16 :goto_4

    .line 4210
    :cond_1c
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/ImageReceiver;->setNeedsQualityThumb(Z)V

    .line 4211
    const/16 v29, 0x0

    .line 4212
    .restart local v29    # "placeHolder":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->currentThumb:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1d

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_1d

    .line 4213
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->currentThumb:Landroid/graphics/Bitmap;

    move-object/from16 v29, v0

    .line 4215
    :cond_1d
    const/4 v3, 0x0

    aget v3, v30, v3

    if-nez v3, :cond_1e

    .line 4216
    const/4 v3, 0x0

    const/4 v5, -0x1

    aput v5, v30, v3

    .line 4218
    :cond_1e
    if-eqz v26, :cond_1f

    move-object/from16 v0, v26

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    const/16 v5, 0x64

    invoke-static {v3, v5}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v32

    .line 4219
    .restart local v32    # "thumbLocation":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :goto_a
    const/16 v17, 0x0

    const/16 v18, 0x0

    if-eqz v29, :cond_20

    new-instance v19, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v3, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-direct {v0, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_b
    if-eqz v32, :cond_21

    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v20, v0

    :goto_c
    const-string/jumbo v21, "b"

    const/4 v3, 0x0

    aget v22, v30, v3

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/PhotoViewer;->avatarsDialogId:I

    if-eqz v3, :cond_22

    const/16 v24, 0x1

    :goto_d
    move-object/from16 v15, p1

    invoke-virtual/range {v15 .. v24}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;ILjava/lang/String;Z)V

    goto/16 :goto_4

    .line 4218
    .end local v32    # "thumbLocation":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_1f
    const/16 v32, 0x0

    goto :goto_a

    .line 4219
    .restart local v32    # "thumbLocation":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_20
    const/16 v19, 0x0

    goto :goto_b

    :cond_21
    const/16 v20, 0x0

    goto :goto_c

    :cond_22
    const/16 v24, 0x0

    goto :goto_d

    .line 4222
    .end local v26    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .end local v29    # "placeHolder":Landroid/graphics/Bitmap;
    .end local v32    # "thumbLocation":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_23
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/ImageReceiver;->setNeedsQualityThumb(Z)V

    .line 4223
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/ImageReceiver;->setParentMessageObject(Lorg/telegram/messenger/MessageObject;)V

    .line 4224
    const/4 v3, 0x0

    aget v3, v30, v3

    if-nez v3, :cond_24

    .line 4225
    const/4 v3, 0x0

    check-cast v3, Landroid/graphics/Bitmap;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_4

    .line 4227
    :cond_24
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f02021d

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4
.end method

.method private setScaleToFill()V
    .locals 9

    .prologue
    .line 1116
    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v7}, Lorg/telegram/messenger/ImageReceiver;->getBitmapWidth()I

    move-result v7

    int-to-float v1, v7

    .line 1117
    .local v1, "bitmapWidth":F
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v7

    int-to-float v3, v7

    .line 1118
    .local v3, "containerWidth":F
    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v7}, Lorg/telegram/messenger/ImageReceiver;->getBitmapHeight()I

    move-result v7

    int-to-float v0, v7

    .line 1119
    .local v0, "bitmapHeight":F
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v7

    int-to-float v2, v7

    .line 1120
    .local v2, "containerHeight":F
    div-float v7, v2, v0

    div-float v8, v3, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 1121
    .local v5, "scaleFit":F
    mul-float v7, v1, v5

    float-to-int v7, v7

    int-to-float v6, v7

    .line 1122
    .local v6, "width":F
    mul-float v7, v0, v5

    float-to-int v7, v7

    int-to-float v4, v7

    .line 1123
    .local v4, "height":F
    div-float v7, v3, v6

    div-float v8, v2, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iput v7, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    .line 1124
    iget v7, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    invoke-direct {p0, v7}, Lorg/telegram/ui/PhotoViewer;->updateMinMax(F)V

    .line 1125
    return-void
.end method

.method private showQualityView(Z)V
    .locals 11
    .param p1, "show"    # Z

    .prologue
    const/high16 v10, 0x42400000    # 48.0f

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 6013
    if-eqz p1, :cond_0

    .line 6014
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->selectedCompression:I

    iput v0, p0, Lorg/telegram/ui/PhotoViewer;->previousCompression:I

    .line 6016
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->qualityChooseViewAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 6017
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->qualityChooseViewAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 6019
    :cond_1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->qualityChooseViewAnimation:Landroid/animation/AnimatorSet;

    .line 6020
    if-eqz p1, :cond_2

    .line 6021
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->qualityChooseView:Lorg/telegram/ui/PhotoViewer$QualityChooseView;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->setTag(Ljava/lang/Object;)V

    .line 6022
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->qualityChooseViewAnimation:Landroid/animation/AnimatorSet;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const-string/jumbo v3, "translationY"

    new-array v4, v8, [F

    aput v9, v4, v7

    const/high16 v5, 0x43180000    # 152.0f

    .line 6023
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineViewContainer:Landroid/widget/FrameLayout;

    const-string/jumbo v3, "translationY"

    new-array v4, v8, [F

    aput v9, v4, v7

    const/high16 v5, 0x43180000    # 152.0f

    .line 6024
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    const-string/jumbo v3, "translationY"

    new-array v4, v8, [F

    .line 6025
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    aput v5, v4, v7

    const/high16 v5, 0x42d00000    # 104.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v8

    .line 6022
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 6035
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->qualityChooseViewAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/PhotoViewer$64;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/PhotoViewer$64;-><init>(Lorg/telegram/ui/PhotoViewer;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 6077
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->qualityChooseViewAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 6078
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->qualityChooseViewAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 6079
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->qualityChooseViewAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 6080
    return-void

    .line 6028
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->qualityChooseView:Lorg/telegram/ui/PhotoViewer$QualityChooseView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->setTag(Ljava/lang/Object;)V

    .line 6029
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->qualityChooseViewAnimation:Landroid/animation/AnimatorSet;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->qualityChooseView:Lorg/telegram/ui/PhotoViewer$QualityChooseView;

    const-string/jumbo v3, "translationY"

    new-array v4, v8, [F

    aput v9, v4, v7

    const/high16 v5, 0x43260000    # 166.0f

    .line 6030
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const-string/jumbo v3, "translationY"

    new-array v4, v8, [F

    aput v9, v4, v7

    const/high16 v5, 0x43260000    # 166.0f

    .line 6031
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    const-string/jumbo v3, "translationY"

    new-array v4, v8, [F

    .line 6032
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    aput v5, v4, v7

    const/high16 v5, 0x42ec0000    # 118.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v8

    .line 6029
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_0
.end method

.method private switchToEditMode(I)V
    .locals 24
    .param p1, "mode"    # I

    .prologue
    .line 2780
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    move/from16 v0, p1

    if-eq v2, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->access$10500(Lorg/telegram/ui/PhotoViewer$PhotoProgressView;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3237
    :cond_0
    :goto_0
    return-void

    .line 2783
    :cond_1
    if-nez p1, :cond_10

    .line 2784
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 2785
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->getToolsView()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_2

    .line 2786
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->switchToOrFromEditMode()V

    goto :goto_0

    .line 2790
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    .line 2791
    .local v10, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v10, :cond_5

    .line 2792
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getBitmapWidth()I

    move-result v12

    .line 2793
    .local v12, "bitmapWidth":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getBitmapHeight()I

    move-result v11

    .line 2795
    .local v11, "bitmapHeight":I
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v12

    div-float v19, v2, v3

    .line 2796
    .local v19, "scaleX":F
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v11

    div-float v20, v2, v3

    .line 2797
    .local v20, "scaleY":F
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth(I)I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v12

    div-float v16, v2, v3

    .line 2798
    .local v16, "newScaleX":F
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight(I)I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v11

    div-float v17, v2, v3

    .line 2799
    .local v17, "newScaleY":F
    cmpl-float v2, v19, v20

    if-lez v2, :cond_7

    move/from16 v18, v20

    .line 2800
    .local v18, "scale":F
    :goto_1
    cmpl-float v2, v16, v17

    if-lez v2, :cond_8

    move/from16 v15, v17

    .line 2802
    .local v15, "newScale":F
    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->sendPhotoType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->applying:Z

    if-nez v2, :cond_a

    .line 2803
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v2

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v14, v2

    .line 2804
    .local v14, "minSide":F
    int-to-float v2, v12

    div-float v19, v14, v2

    .line 2805
    int-to-float v2, v11

    div-float v20, v14, v2

    .line 2806
    cmpl-float v2, v19, v20

    if-lez v2, :cond_9

    move/from16 v13, v19

    .line 2808
    .local v13, "fillScale":F
    :goto_3
    div-float v2, v13, v18

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->scale:F

    .line 2809
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->scale:F

    mul-float/2addr v2, v15

    div-float/2addr v2, v13

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->animateToScale:F

    .line 2814
    .end local v13    # "fillScale":F
    .end local v14    # "minSide":F
    :goto_4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->animateToX:F

    .line 2815
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_b

    .line 2816
    const/high16 v2, 0x42680000    # 58.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->animateToY:F

    .line 2822
    :cond_3
    :goto_5
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_4

    .line 2823
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->animateToY:F

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->animateToY:F

    .line 2825
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->animationStartTime:J

    .line 2826
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->zoomAnimation:Z

    .line 2829
    .end local v11    # "bitmapHeight":I
    .end local v12    # "bitmapWidth":I
    .end local v15    # "newScale":F
    .end local v16    # "newScaleX":F
    .end local v17    # "newScaleY":F
    .end local v18    # "scale":F
    .end local v19    # "scaleX":F
    .end local v20    # "scaleY":F
    :cond_5
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    .line 2830
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_d

    .line 2831
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PhotoViewer;->editorDoneLayout:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const-string/jumbo v6, "translationY"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/high16 v21, 0x42400000    # 48.0f

    .line 2832
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    aput v21, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "animationValue"

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_0

    .line 2833
    move-object/from16 v0, p0

    invoke-static {v0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    const-string/jumbo v6, "alpha"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/16 v21, 0x0

    aput v21, v7, v8

    .line 2834
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v3, v4

    .line 2831
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2851
    :cond_6
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2852
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    new-instance v3, Lorg/telegram/ui/PhotoViewer$41;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/PhotoViewer$41;-><init>(Lorg/telegram/ui/PhotoViewer;I)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2905
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .restart local v11    # "bitmapHeight":I
    .restart local v12    # "bitmapWidth":I
    .restart local v16    # "newScaleX":F
    .restart local v17    # "newScaleY":F
    .restart local v19    # "scaleX":F
    .restart local v20    # "scaleY":F
    :cond_7
    move/from16 v18, v19

    .line 2799
    goto/16 :goto_1

    .restart local v18    # "scale":F
    :cond_8
    move/from16 v15, v16

    .line 2800
    goto/16 :goto_2

    .restart local v14    # "minSide":F
    .restart local v15    # "newScale":F
    :cond_9
    move/from16 v13, v20

    .line 2806
    goto/16 :goto_3

    .line 2811
    .end local v14    # "minSide":F
    :cond_a
    div-float v2, v15, v18

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->animateToScale:F

    goto/16 :goto_4

    .line 2817
    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_c

    .line 2818
    const/high16 v2, 0x42780000    # 62.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->animateToY:F

    goto/16 :goto_5

    .line 2819
    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 2820
    const/high16 v2, 0x42400000    # 48.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->animateToY:F

    goto/16 :goto_5

    .line 2836
    .end local v11    # "bitmapHeight":I
    .end local v12    # "bitmapWidth":I
    .end local v15    # "newScale":F
    .end local v16    # "newScaleX":F
    .end local v17    # "newScaleY":F
    .end local v18    # "scale":F
    .end local v19    # "scaleX":F
    .end local v20    # "scaleY":F
    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_e

    .line 2837
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->shutdown()V

    .line 2838
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    .line 2839
    invoke-virtual {v5}, Lorg/telegram/ui/Components/PhotoFilterView;->getToolsView()Landroid/widget/FrameLayout;

    move-result-object v5

    const-string/jumbo v6, "translationY"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/high16 v21, 0x42fc0000    # 126.0f

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    aput v21, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "animationValue"

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_1

    .line 2840
    move-object/from16 v0, p0

    invoke-static {v0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v3, v4

    .line 2838
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/16 :goto_6

    .line 2842
    :cond_e
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6

    .line 2843
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoPaintView:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoPaintView;->shutdown()V

    .line 2844
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    const/4 v2, 0x4

    new-array v4, v2, [Landroid/animation/Animator;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PhotoViewer;->photoPaintView:Lorg/telegram/ui/Components/PhotoPaintView;

    .line 2845
    invoke-virtual {v5}, Lorg/telegram/ui/Components/PhotoPaintView;->getToolsView()Landroid/widget/FrameLayout;

    move-result-object v5

    const-string/jumbo v6, "translationY"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/high16 v21, 0x42fc0000    # 126.0f

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    aput v21, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PhotoViewer;->photoPaintView:Lorg/telegram/ui/Components/PhotoPaintView;

    .line 2846
    invoke-virtual {v5}, Lorg/telegram/ui/Components/PhotoPaintView;->getColorPicker()Lorg/telegram/ui/Components/Paint/Views/ColorPicker;

    move-result-object v5

    const-string/jumbo v6, "translationX"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/high16 v21, 0x42700000    # 60.0f

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    aput v21, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoPaintView:Lorg/telegram/ui/Components/PhotoPaintView;

    .line 2847
    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoPaintView;->getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v6

    const-string/jumbo v7, "translationY"

    const/4 v2, 0x1

    new-array v8, v2, [F

    const/16 v21, 0x0

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v2

    neg-int v0, v2

    move/from16 v22, v0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v23, 0x15

    move/from16 v0, v23

    if-lt v2, v0, :cond_f

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_7
    sub-int v2, v22, v2

    int-to-float v2, v2

    aput v2, v8, v21

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v4, v5

    const/4 v2, 0x3

    const-string/jumbo v5, "animationValue"

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_2

    .line 2848
    move-object/from16 v0, p0

    invoke-static {v0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v2

    .line 2844
    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/16 :goto_6

    .line 2847
    :cond_f
    const/4 v2, 0x0

    goto :goto_7

    .line 2906
    .end local v10    # "bitmap":Landroid/graphics/Bitmap;
    :cond_10
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_14

    .line 2907
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    if-nez v2, :cond_11

    .line 2908
    new-instance v2, Lorg/telegram/ui/Components/PhotoCropView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->actvityContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lorg/telegram/ui/Components/PhotoCropView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    .line 2909
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PhotoCropView;->setVisibility(I)V

    .line 2910
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    move-object/from16 v22, v0

    const/4 v2, -0x1

    const/high16 v3, -0x40800000    # -1.0f

    const/16 v4, 0x33

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x42400000    # 48.0f

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2911
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    new-instance v3, Lorg/telegram/ui/PhotoViewer$42;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PhotoViewer$42;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PhotoCropView;->setDelegate(Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;)V

    .line 2935
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoCropView;->onAppear()V

    .line 2937
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->editorDoneLayout:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    iget-object v2, v2, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->doneButton:Landroid/widget/TextView;

    const-string/jumbo v3, "Crop"

    const v4, 0x7f0701b3

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2938
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->editorDoneLayout:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    iget-object v2, v2, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->doneButton:Landroid/widget/TextView;

    const v3, -0xae420d

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2940
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    .line 2941
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2942
    .local v9, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const-string/jumbo v3, "translationY"

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    const/4 v5, 0x1

    const/high16 v6, 0x42c00000    # 96.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2943
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v3, "translationY"

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/ActionBar;->getHeight()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2944
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->needCaptionLayout:Z

    if-eqz v2, :cond_12

    .line 2945
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const-string/jumbo v3, "translationY"

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    const/4 v5, 0x1

    const/high16 v6, 0x42c00000    # 96.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2947
    :cond_12
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->sendPhotoType:I

    if-nez v2, :cond_13

    .line 2948
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    const-string/jumbo v3, "alpha"

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_3

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2950
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoQualityLayout:Landroid/widget/FrameLayout;

    const-string/jumbo v3, "alpha"

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_4

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2951
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v9}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 2952
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2953
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    new-instance v3, Lorg/telegram/ui/PhotoViewer$43;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/PhotoViewer$43;-><init>(Lorg/telegram/ui/PhotoViewer;I)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3022
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 3023
    .end local v9    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :cond_14
    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_18

    .line 3024
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    if-nez v2, :cond_15

    .line 3025
    new-instance v2, Lorg/telegram/ui/Components/PhotoFilterView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getOrientation()I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lorg/telegram/ui/Components/PhotoFilterView;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    .line 3026
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    const/4 v4, -0x1

    const/high16 v5, -0x40800000    # -1.0f

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3027
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->getDoneTextView()Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/PhotoViewer$44;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PhotoViewer$44;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3034
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->getCancelTextView()Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/PhotoViewer$45;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PhotoViewer$45;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3057
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->getToolsView()Landroid/widget/FrameLayout;

    move-result-object v2

    const/high16 v3, 0x42fc0000    # 126.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 3060
    :cond_15
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    .line 3061
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 3062
    .restart local v9    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const-string/jumbo v3, "translationY"

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    const/4 v5, 0x1

    const/high16 v6, 0x42c00000    # 96.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3063
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v3, "translationY"

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/ActionBar;->getHeight()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3064
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->needCaptionLayout:Z

    if-eqz v2, :cond_16

    .line 3065
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const-string/jumbo v3, "translationY"

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    const/4 v5, 0x1

    const/high16 v6, 0x42c00000    # 96.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3067
    :cond_16
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->sendPhotoType:I

    if-nez v2, :cond_17

    .line 3068
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    const-string/jumbo v3, "alpha"

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3070
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoQualityLayout:Landroid/widget/FrameLayout;

    const-string/jumbo v3, "alpha"

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3071
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v9}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 3072
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 3073
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    new-instance v3, Lorg/telegram/ui/PhotoViewer$46;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/PhotoViewer$46;-><init>(Lorg/telegram/ui/PhotoViewer;I)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3133
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 3134
    .end local v9    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :cond_18
    const/4 v2, 0x3

    move/from16 v0, p1

    if-ne v0, v2, :cond_0

    .line 3135
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoPaintView:Lorg/telegram/ui/Components/PhotoPaintView;

    if-nez v2, :cond_19

    .line 3136
    new-instance v2, Lorg/telegram/ui/Components/PhotoPaintView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getOrientation()I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lorg/telegram/ui/Components/PhotoPaintView;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoPaintView:Lorg/telegram/ui/Components/PhotoPaintView;

    .line 3137
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->photoPaintView:Lorg/telegram/ui/Components/PhotoPaintView;

    const/4 v4, -0x1

    const/high16 v5, -0x40800000    # -1.0f

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3138
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoPaintView:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoPaintView;->getDoneTextView()Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/PhotoViewer$47;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PhotoViewer$47;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3145
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoPaintView:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoPaintView;->getCancelTextView()Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/PhotoViewer$48;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PhotoViewer$48;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3156
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoPaintView:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoPaintView;->getColorPicker()Lorg/telegram/ui/Components/Paint/Views/ColorPicker;

    move-result-object v2

    const/high16 v3, 0x42700000    # 60.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->setTranslationX(F)V

    .line 3157
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoPaintView:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoPaintView;->getToolsView()Landroid/widget/FrameLayout;

    move-result-object v2

    const/high16 v3, 0x42fc0000    # 126.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 3158
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoPaintView:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoPaintView;->getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v3

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v2

    neg-int v4, v2

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v2, v5, :cond_1c

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_8
    sub-int v2, v4, v2

    int-to-float v2, v2

    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTranslationY(F)V

    .line 3161
    :cond_19
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    .line 3162
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 3163
    .restart local v9    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const-string/jumbo v3, "translationY"

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    const/4 v5, 0x1

    const/high16 v6, 0x42c00000    # 96.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3164
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v3, "translationY"

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/ActionBar;->getHeight()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3166
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->needCaptionLayout:Z

    if-eqz v2, :cond_1a

    .line 3167
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const-string/jumbo v3, "translationY"

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    const/4 v5, 0x1

    const/high16 v6, 0x42c00000    # 96.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3169
    :cond_1a
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->sendPhotoType:I

    if-nez v2, :cond_1b

    .line 3170
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    const-string/jumbo v3, "alpha"

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3172
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v9}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 3173
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 3174
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    new-instance v3, Lorg/telegram/ui/PhotoViewer$49;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/PhotoViewer$49;-><init>(Lorg/telegram/ui/PhotoViewer;I)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3235
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 3158
    .end local v9    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :cond_1c
    const/4 v2, 0x0

    goto/16 :goto_8

    .line 2832
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 2839
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 2847
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 2948
    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 2950
    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 3068
    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 3070
    :array_6
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 3170
    :array_7
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private toggleActionBar(ZZ)V
    .locals 9
    .param p1, "show"    # Z
    .param p2, "animated"    # Z

    .prologue
    const/16 v5, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 3256
    if-eqz p1, :cond_0

    .line 3257
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, v7}, Lorg/telegram/ui/ActionBar/ActionBar;->setVisibility(I)V

    .line 3258
    iget-boolean v1, p0, Lorg/telegram/ui/PhotoViewer;->canShowBottom:Z

    if-eqz v1, :cond_0

    .line 3259
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3260
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3261
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3265
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/PhotoViewer;->isActionBarVisible:Z

    .line 3266
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->setEnabled(Z)V

    .line 3267
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 3269
    if-eqz p2, :cond_7

    .line 3270
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3271
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v5, "alpha"

    new-array v6, v8, [F

    if-eqz p1, :cond_4

    move v1, v2

    :goto_0
    aput v1, v6, v7

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3272
    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    const-string/jumbo v5, "alpha"

    new-array v6, v8, [F

    if-eqz p1, :cond_5

    move v1, v2

    :goto_1
    aput v1, v6, v7

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3273
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3274
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "alpha"

    new-array v5, v8, [F

    if-eqz p1, :cond_6

    :goto_2
    aput v2, v5, v7

    invoke-static {v1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3276
    :cond_1
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentActionBarAnimation:Landroid/animation/AnimatorSet;

    .line 3277
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentActionBarAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 3278
    if-nez p1, :cond_2

    .line 3279
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentActionBarAnimation:Landroid/animation/AnimatorSet;

    new-instance v2, Lorg/telegram/ui/PhotoViewer$50;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PhotoViewer$50;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3296
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentActionBarAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 3297
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentActionBarAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 3314
    .end local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :cond_3
    :goto_3
    return-void

    .restart local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :cond_4
    move v1, v3

    .line 3271
    goto :goto_0

    :cond_5
    move v1, v3

    .line 3272
    goto :goto_1

    :cond_6
    move v2, v3

    .line 3274
    goto :goto_2

    .line 3299
    .end local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :cond_7
    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz p1, :cond_9

    move v1, v2

    :goto_4
    invoke-virtual {v4, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAlpha(F)V

    .line 3300
    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_a

    move v1, v2

    :goto_5
    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 3301
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 3302
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_b

    :goto_6
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 3304
    :cond_8
    if-nez p1, :cond_3

    .line 3305
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setVisibility(I)V

    .line 3306
    iget-boolean v1, p0, Lorg/telegram/ui/PhotoViewer;->canShowBottom:Z

    if-eqz v1, :cond_3

    .line 3307
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3308
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 3309
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    :cond_9
    move v1, v3

    .line 3299
    goto :goto_4

    :cond_a
    move v1, v3

    .line 3300
    goto :goto_5

    :cond_b
    move v2, v3

    .line 3302
    goto :goto_6
.end method

.method private toggleCheckImageView(Z)V
    .locals 10
    .param p1, "show"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 3240
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 3241
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3242
    .local v1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const-string/jumbo v6, "alpha"

    new-array v7, v9, [F

    if-eqz p1, :cond_2

    move v2, v3

    :goto_0
    aput v2, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3243
    iget-boolean v2, p0, Lorg/telegram/ui/PhotoViewer;->needCaptionLayout:Z

    if-eqz v2, :cond_0

    .line 3244
    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const-string/jumbo v6, "alpha"

    new-array v7, v9, [F

    if-eqz p1, :cond_3

    move v2, v3

    :goto_1
    aput v2, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3246
    :cond_0
    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->sendPhotoType:I

    if-nez v2, :cond_1

    .line 3247
    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    const-string/jumbo v6, "alpha"

    new-array v7, v9, [F

    if-eqz p1, :cond_4

    move v2, v3

    :goto_2
    aput v2, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3249
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->photoQualityLayout:Landroid/widget/FrameLayout;

    const-string/jumbo v5, "alpha"

    new-array v6, v9, [F

    if-eqz p1, :cond_5

    :goto_3
    aput v3, v6, v8

    invoke-static {v2, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3250
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 3251
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 3252
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 3253
    return-void

    :cond_2
    move v2, v4

    .line 3242
    goto :goto_0

    :cond_3
    move v2, v4

    .line 3244
    goto :goto_1

    :cond_4
    move v2, v4

    .line 3247
    goto :goto_2

    :cond_5
    move v3, v4

    .line 3249
    goto :goto_3
.end method

.method private updateCaptionTextForCurrentPhoto(Ljava/lang/Object;)V
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 2673
    const/4 v0, 0x0

    .line 2674
    .local v0, "caption":Ljava/lang/CharSequence;
    instance-of v1, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v1, :cond_2

    .line 2675
    check-cast p1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .end local p1    # "object":Ljava/lang/Object;
    iget-object v0, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->caption:Ljava/lang/CharSequence;

    .line 2681
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 2682
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->setFieldText(Ljava/lang/CharSequence;)V

    .line 2686
    :goto_1
    return-void

    .line 2676
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_2
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-nez v1, :cond_0

    .line 2678
    instance-of v1, p1, Lorg/telegram/messenger/MediaController$SearchImage;

    if-eqz v1, :cond_0

    .line 2679
    check-cast p1, Lorg/telegram/messenger/MediaController$SearchImage;

    .end local p1    # "object":Ljava/lang/Object;
    iget-object v0, p1, Lorg/telegram/messenger/MediaController$SearchImage;->caption:Ljava/lang/CharSequence;

    goto :goto_0

    .line 2684
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->setFieldText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updateMinMax(F)V
    .locals 5
    .param p1, "scale"    # F

    .prologue
    const/4 v4, 0x0

    .line 4886
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    div-int/lit8 v1, v2, 0x2

    .line 4887
    .local v1, "maxW":I
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    div-int/lit8 v0, v2, 0x2

    .line 4888
    .local v0, "maxH":I
    if-lez v1, :cond_1

    .line 4889
    neg-int v2, v1

    int-to-float v2, v2

    iput v2, p0, Lorg/telegram/ui/PhotoViewer;->minX:F

    .line 4890
    int-to-float v2, v1

    iput v2, p0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    .line 4894
    :goto_0
    if-lez v0, :cond_2

    .line 4895
    neg-int v2, v0

    int-to-float v2, v2

    iput v2, p0, Lorg/telegram/ui/PhotoViewer;->minY:F

    .line 4896
    int-to-float v2, v0

    iput v2, p0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    .line 4900
    :goto_1
    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 4901
    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/PhotoCropView;->getLimitX()F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    .line 4902
    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/PhotoCropView;->getLimitY()F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    .line 4903
    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->minX:F

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/PhotoCropView;->getLimitWidth()F

    move-result v3

    sub-float/2addr v2, v3

    iput v2, p0, Lorg/telegram/ui/PhotoViewer;->minX:F

    .line 4904
    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->minY:F

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/PhotoCropView;->getLimitHeight()F

    move-result v3

    sub-float/2addr v2, v3

    iput v2, p0, Lorg/telegram/ui/PhotoViewer;->minY:F

    .line 4906
    :cond_0
    return-void

    .line 4892
    :cond_1
    iput v4, p0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    iput v4, p0, Lorg/telegram/ui/PhotoViewer;->minX:F

    goto :goto_0

    .line 4898
    :cond_2
    iput v4, p0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    iput v4, p0, Lorg/telegram/ui/PhotoViewer;->minY:F

    goto :goto_1
.end method

.method private updateSelectedCount()V
    .locals 3

    .prologue
    .line 3421
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    if-nez v0, :cond_0

    .line 3425
    :goto_0
    return-void

    .line 3424
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    invoke-interface {v1}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->getSelectedCount()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->updateSelectedCount(IZ)V

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

    .line 5859
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-nez v6, :cond_0

    .line 5909
    :goto_0
    return-void

    .line 5863
    :cond_0
    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->selectedCompression:I

    if-nez v6, :cond_5

    .line 5864
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    const v7, 0x7f020289

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5875
    :cond_1
    :goto_1
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/VideoTimelineView;->getRightProgress()F

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/VideoTimelineView;->getLeftProgress()F

    move-result v7

    sub-float/2addr v6, v7

    iget v7, p0, Lorg/telegram/ui/PhotoViewer;->videoDuration:F

    mul-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-long v6, v6

    iput-wide v6, p0, Lorg/telegram/ui/PhotoViewer;->estimatedDuration:J

    .line 5880
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_2

    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_b

    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->selectedCompression:I

    iget v7, p0, Lorg/telegram/ui/PhotoViewer;->compressionsCount:I

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_b

    .line 5881
    :cond_2
    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->rotationValue:I

    if-eq v6, v8, :cond_3

    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->rotationValue:I

    if-ne v6, v9, :cond_9

    :cond_3
    iget v5, p0, Lorg/telegram/ui/PhotoViewer;->originalHeight:I

    .line 5882
    .local v5, "width":I
    :goto_2
    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->rotationValue:I

    if-eq v6, v8, :cond_4

    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->rotationValue:I

    if-ne v6, v9, :cond_a

    :cond_4
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->originalWidth:I

    .line 5883
    .local v0, "height":I
    :goto_3
    iget-wide v6, p0, Lorg/telegram/ui/PhotoViewer;->originalSize:J

    long-to-float v6, v6

    iget-wide v8, p0, Lorg/telegram/ui/PhotoViewer;->estimatedDuration:J

    long-to-float v7, v8

    iget v8, p0, Lorg/telegram/ui/PhotoViewer;->videoDuration:F

    div-float/2addr v7, v8

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lorg/telegram/ui/PhotoViewer;->estimatedSize:I

    .line 5892
    :goto_4
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/VideoTimelineView;->getLeftProgress()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_10

    .line 5893
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lorg/telegram/ui/PhotoViewer;->startTime:J

    .line 5897
    :goto_5
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/VideoTimelineView;->getRightProgress()F

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v7

    if-nez v6, :cond_11

    .line 5898
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lorg/telegram/ui/PhotoViewer;->endTime:J

    .line 5903
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

    .line 5904
    .local v3, "videoDimension":Ljava/lang/String;
    iget-wide v6, p0, Lorg/telegram/ui/PhotoViewer;->estimatedDuration:J

    div-long/2addr v6, v12

    const-wide/16 v8, 0x3c

    div-long/2addr v6, v8

    long-to-int v1, v6

    .line 5905
    .local v1, "minutes":I
    iget-wide v6, p0, Lorg/telegram/ui/PhotoViewer;->estimatedDuration:J

    div-long/2addr v6, v12

    long-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    mul-int/lit8 v7, v1, 0x3c

    sub-int v2, v6, v7

    .line 5906
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

    iget v8, p0, Lorg/telegram/ui/PhotoViewer;->estimatedSize:I

    int-to-long v8, v8

    invoke-static {v8, v9}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 5907
    .local v4, "videoTimeSize":Ljava/lang/String;
    const-string/jumbo v6, "%s, %s"

    new-array v7, v11, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    aput-object v4, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/telegram/ui/PhotoViewer;->currentSubtitle:Ljava/lang/String;

    .line 5908
    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-boolean v6, p0, Lorg/telegram/ui/PhotoViewer;->muteVideo:Z

    if-eqz v6, :cond_12

    const/4 v6, 0x0

    :goto_7
    invoke-virtual {v7, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 5865
    .end local v0    # "height":I
    .end local v1    # "minutes":I
    .end local v2    # "seconds":I
    .end local v3    # "videoDimension":Ljava/lang/String;
    .end local v4    # "videoTimeSize":Ljava/lang/String;
    .end local v5    # "width":I
    :cond_5
    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->selectedCompression:I

    if-ne v6, v10, :cond_6

    .line 5866
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    const v7, 0x7f02028a

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 5867
    :cond_6
    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->selectedCompression:I

    if-ne v6, v11, :cond_7

    .line 5868
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    const v7, 0x7f02028b

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 5869
    :cond_7
    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->selectedCompression:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_8

    .line 5870
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    const v7, 0x7f02028c

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 5871
    :cond_8
    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->selectedCompression:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_1

    .line 5872
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    const v7, 0x7f020288

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 5881
    :cond_9
    iget v5, p0, Lorg/telegram/ui/PhotoViewer;->originalWidth:I

    goto/16 :goto_2

    .line 5882
    .restart local v5    # "width":I
    :cond_a
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->originalHeight:I

    goto/16 :goto_3

    .line 5885
    .end local v5    # "width":I
    :cond_b
    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->rotationValue:I

    if-eq v6, v8, :cond_c

    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->rotationValue:I

    if-ne v6, v9, :cond_e

    :cond_c
    iget v5, p0, Lorg/telegram/ui/PhotoViewer;->resultHeight:I

    .line 5886
    .restart local v5    # "width":I
    :goto_8
    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->rotationValue:I

    if-eq v6, v8, :cond_d

    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->rotationValue:I

    if-ne v6, v9, :cond_f

    :cond_d
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->resultWidth:I

    .line 5888
    .restart local v0    # "height":I
    :goto_9
    iget-wide v6, p0, Lorg/telegram/ui/PhotoViewer;->audioFramesSize:J

    iget-wide v8, p0, Lorg/telegram/ui/PhotoViewer;->videoFramesSize:J

    add-long/2addr v6, v8

    long-to-float v6, v6

    iget-wide v8, p0, Lorg/telegram/ui/PhotoViewer;->estimatedDuration:J

    long-to-float v7, v8

    iget v8, p0, Lorg/telegram/ui/PhotoViewer;->videoDuration:F

    div-float/2addr v7, v8

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lorg/telegram/ui/PhotoViewer;->estimatedSize:I

    .line 5889
    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->estimatedSize:I

    iget v7, p0, Lorg/telegram/ui/PhotoViewer;->estimatedSize:I

    const v8, 0x8000

    div-int/2addr v7, v8

    mul-int/lit8 v7, v7, 0x10

    add-int/2addr v6, v7

    iput v6, p0, Lorg/telegram/ui/PhotoViewer;->estimatedSize:I

    goto/16 :goto_4

    .line 5885
    .end local v0    # "height":I
    .end local v5    # "width":I
    :cond_e
    iget v5, p0, Lorg/telegram/ui/PhotoViewer;->resultWidth:I

    goto :goto_8

    .line 5886
    .restart local v5    # "width":I
    :cond_f
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->resultHeight:I

    goto :goto_9

    .line 5895
    .restart local v0    # "height":I
    :cond_10
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/VideoTimelineView;->getLeftProgress()F

    move-result v6

    iget v7, p0, Lorg/telegram/ui/PhotoViewer;->videoDuration:F

    mul-float/2addr v6, v7

    float-to-long v6, v6

    mul-long/2addr v6, v12

    iput-wide v6, p0, Lorg/telegram/ui/PhotoViewer;->startTime:J

    goto/16 :goto_5

    .line 5900
    :cond_11
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/VideoTimelineView;->getRightProgress()F

    move-result v6

    iget v7, p0, Lorg/telegram/ui/PhotoViewer;->videoDuration:F

    mul-float/2addr v6, v7

    float-to-long v6, v6

    mul-long/2addr v6, v12

    iput-wide v6, p0, Lorg/telegram/ui/PhotoViewer;->endTime:J

    goto/16 :goto_6

    .line 5908
    .restart local v1    # "minutes":I
    .restart local v2    # "seconds":I
    .restart local v3    # "videoDimension":Ljava/lang/String;
    .restart local v4    # "videoTimeSize":Ljava/lang/String;
    :cond_12
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->currentSubtitle:Ljava/lang/String;

    goto/16 :goto_7
.end method

.method private updateVideoPlayerTime()V
    .locals 12

    .prologue
    const-wide/16 v8, 0x3e8

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v10, 0x3c

    .line 2475
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-nez v3, :cond_1

    .line 2476
    const-string/jumbo v2, "00:00 / 00:00"

    .line 2495
    .local v2, "newText":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerTime:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2496
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerTime:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2498
    :cond_0
    return-void

    .line 2478
    .end local v2    # "newText":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v0

    .line 2479
    .local v0, "current":J
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v4

    .line 2480
    .local v4, "total":J
    cmp-long v3, v4, v6

    if-eqz v3, :cond_3

    cmp-long v3, v0, v6

    if-eqz v3, :cond_3

    .line 2481
    iget-boolean v3, p0, Lorg/telegram/ui/PhotoViewer;->inPreview:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineViewContainer:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    .line 2482
    long-to-float v3, v4

    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/VideoTimelineView;->getRightProgress()F

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/VideoTimelineView;->getLeftProgress()F

    move-result v7

    sub-float/2addr v6, v7

    mul-float/2addr v3, v6

    float-to-long v4, v3

    .line 2483
    long-to-float v3, v0

    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/VideoTimelineView;->getLeftProgress()F

    move-result v6

    long-to-float v7, v4

    mul-float/2addr v6, v7

    sub-float/2addr v3, v6

    float-to-long v0, v3

    .line 2484
    cmp-long v3, v0, v4

    if-lez v3, :cond_2

    .line 2485
    move-wide v0, v4

    .line 2488
    :cond_2
    div-long/2addr v0, v8

    .line 2489
    div-long/2addr v4, v8

    .line 2490
    const-string/jumbo v3, "%02d:%02d / %02d:%02d"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    div-long v8, v0, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    rem-long v8, v0, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    div-long v8, v4, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    rem-long v8, v4, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "newText":Ljava/lang/String;
    goto/16 :goto_0

    .line 2492
    .end local v2    # "newText":Ljava/lang/String;
    :cond_3
    const-string/jumbo v2, "00:00 / 00:00"

    .restart local v2    # "newText":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method private updateWidthHeightBitrateForCompression()V
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 5977
    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->selectedCompression:I

    iget v4, p0, Lorg/telegram/ui/PhotoViewer;->compressionsCount:I

    if-lt v3, v4, :cond_0

    .line 5978
    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->compressionsCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/telegram/ui/PhotoViewer;->selectedCompression:I

    .line 5980
    :cond_0
    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->selectedCompression:I

    iget v4, p0, Lorg/telegram/ui/PhotoViewer;->compressionsCount:I

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_1

    .line 5983
    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->selectedCompression:I

    packed-switch v3, :pswitch_data_0

    .line 5998
    const v2, 0x186a00

    .line 5999
    .local v2, "targetBitrate":I
    const/high16 v0, 0x44a00000    # 1280.0f

    .line 6002
    .local v0, "maxSize":F
    :goto_0
    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->originalWidth:I

    iget v4, p0, Lorg/telegram/ui/PhotoViewer;->originalHeight:I

    if-le v3, v4, :cond_2

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->originalWidth:I

    int-to-float v3, v3

    div-float v1, v0, v3

    .line 6003
    .local v1, "scale":F
    :goto_1
    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->originalWidth:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    div-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    iput v3, p0, Lorg/telegram/ui/PhotoViewer;->resultWidth:I

    .line 6004
    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->originalHeight:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    div-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    iput v3, p0, Lorg/telegram/ui/PhotoViewer;->resultHeight:I

    .line 6005
    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->bitrate:I

    if-eqz v3, :cond_1

    .line 6006
    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->originalBitrate:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    float-to-int v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/PhotoViewer;->bitrate:I

    .line 6007
    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->bitrate:I

    div-int/lit8 v3, v3, 0x8

    int-to-float v3, v3

    iget v4, p0, Lorg/telegram/ui/PhotoViewer;->videoDuration:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    float-to-long v4, v3

    iput-wide v4, p0, Lorg/telegram/ui/PhotoViewer;->videoFramesSize:J

    .line 6010
    .end local v0    # "maxSize":F
    .end local v1    # "scale":F
    .end local v2    # "targetBitrate":I
    :cond_1
    return-void

    .line 5985
    :pswitch_0
    const/high16 v0, 0x43d80000    # 432.0f

    .line 5986
    .restart local v0    # "maxSize":F
    const v2, 0x61a80

    .line 5987
    .restart local v2    # "targetBitrate":I
    goto :goto_0

    .line 5989
    .end local v0    # "maxSize":F
    .end local v2    # "targetBitrate":I
    :pswitch_1
    const/high16 v0, 0x44200000    # 640.0f

    .line 5990
    .restart local v0    # "maxSize":F
    const v2, 0xdbba0

    .line 5991
    .restart local v2    # "targetBitrate":I
    goto :goto_0

    .line 5993
    .end local v0    # "maxSize":F
    .end local v2    # "targetBitrate":I
    :pswitch_2
    const/high16 v0, 0x44540000    # 848.0f

    .line 5994
    .restart local v0    # "maxSize":F
    const v2, 0x10c8e0

    .line 5995
    .restart local v2    # "targetBitrate":I
    goto :goto_0

    .line 6002
    :cond_2
    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->originalHeight:I

    int-to-float v3, v3

    div-float v1, v0, v3

    goto :goto_1

    .line 5983
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public closePhoto(ZZ)V
    .locals 32
    .param p1, "animated"    # Z
    .param p2, "fromEditMode"    # Z

    .prologue
    .line 4527
    if-nez p2, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    move/from16 v24, v0

    if-eqz v24, :cond_3

    .line 4528
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    move/from16 v24, v0

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->photoPaintView:Lorg/telegram/ui/Components/PhotoPaintView;

    move-object/from16 v24, v0

    if-eqz v24, :cond_1

    .line 4529
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->photoPaintView:Lorg/telegram/ui/Components/PhotoPaintView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    move-object/from16 v25, v0

    new-instance v26, Lorg/telegram/ui/PhotoViewer$56;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/PhotoViewer$56;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Components/PhotoPaintView;->maybeShowDismissalAlert(Lorg/telegram/ui/PhotoViewer;Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 4775
    :cond_0
    :goto_0
    return-void

    .line 4538
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_2

    .line 4539
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/ui/Components/PhotoCropView;->cancelAnimationRunnable()V

    .line 4541
    :cond_2
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lorg/telegram/ui/PhotoViewer;->switchToEditMode(I)V

    goto :goto_0

    .line 4544
    :cond_3
    sget v24, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v25, 0x10

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->qualityChooseView:Lorg/telegram/ui/PhotoViewer$QualityChooseView;

    move-object/from16 v24, v0

    if-eqz v24, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->qualityChooseView:Lorg/telegram/ui/PhotoViewer$QualityChooseView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->getTag()Ljava/lang/Object;

    move-result-object v24

    if-eqz v24, :cond_4

    .line 4545
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->cancelButton:Landroid/widget/TextView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/TextView;->callOnClick()Z

    goto :goto_0

    .line 4549
    :cond_4
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    move-object/from16 v24, v0

    if-eqz v24, :cond_5

    .line 4550
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    .line 4551
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/PhotoViewer;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4557
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    move/from16 v24, v0

    if-eqz v24, :cond_7

    .line 4558
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    move/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_10

    .line 4559
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/ui/Components/PhotoFilterView;->shutdown()V

    .line 4560
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->removeView(Landroid/view/View;)V

    .line 4561
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    .line 4566
    :cond_6
    :goto_2
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    .line 4569
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/PhotoViewer;->isVisible:Z

    move/from16 v24, v0

    if-eqz v24, :cond_0

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->checkAnimation()Z

    move-result v24

    if-nez v24, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    .line 4572
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->hideActionMode()Z

    move-result v24

    if-eqz v24, :cond_8

    if-eqz p2, :cond_0

    .line 4576
    :cond_8
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->releasePlayer()V

    .line 4577
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->onDestroy()V

    .line 4578
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/PhotoViewer;->parentChatActivity:Lorg/telegram/ui/ChatActivity;

    .line 4579
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v24

    sget v25, Lorg/telegram/messenger/NotificationCenter;->FileDidFailedLoad:I

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 4580
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v24

    sget v25, Lorg/telegram/messenger/NotificationCenter;->FileDidLoaded:I

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 4581
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v24

    sget v25, Lorg/telegram/messenger/NotificationCenter;->FileLoadProgressChanged:I

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 4582
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v24

    sget v25, Lorg/telegram/messenger/NotificationCenter;->mediaCountDidLoaded:I

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 4583
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v24

    sget v25, Lorg/telegram/messenger/NotificationCenter;->mediaDidLoaded:I

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 4584
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v24

    sget v25, Lorg/telegram/messenger/NotificationCenter;->dialogPhotosLoaded:I

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 4585
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v24

    sget v25, Lorg/telegram/messenger/NotificationCenter;->emojiDidLoaded:I

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 4586
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v24

    sget v25, Lorg/telegram/messenger/NotificationCenter;->FilePreparingFailed:I

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 4587
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v24

    sget v25, Lorg/telegram/messenger/NotificationCenter;->FileNewChunkAvailable:I

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 4588
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->classGuid:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequestsForGuid(I)V

    .line 4590
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/PhotoViewer;->isActionBarVisible:Z

    .line 4592
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->velocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v24, v0

    if-eqz v24, :cond_9

    .line 4593
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->velocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/VelocityTracker;->recycle()V

    .line 4594
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/PhotoViewer;->velocityTracker:Landroid/view/VelocityTracker;

    .line 4596
    :cond_9
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->classGuid:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequestsForGuid(I)V

    .line 4598
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    move/from16 v27, v0

    invoke-interface/range {v24 .. v27}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->getPlaceForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    move-result-object v16

    .line 4600
    .local v16, "object":Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    if-eqz p1, :cond_1b

    .line 4601
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->animationInProgress:I

    .line 4602
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/ui/Components/ClippingImageView;->setVisibility(I)V

    .line 4603
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->invalidate()V

    .line 4605
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 4607
    .local v5, "animatorSet":Landroid/animation/AnimatorSet;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/ui/Components/ClippingImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    .line 4608
    .local v15, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v11, 0x0

    .line 4609
    .local v11, "drawRegion":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/messenger/ImageReceiver;->getOrientation()I

    move-result v17

    .line 4610
    .local v17, "orientation":I
    const/4 v4, 0x0

    .line 4611
    .local v4, "animatedOrientation":I
    if-eqz v16, :cond_a

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v24, v0

    if-eqz v24, :cond_a

    .line 4612
    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/messenger/ImageReceiver;->getAnimatedOrientation()I

    move-result v4

    .line 4614
    :cond_a
    if-eqz v4, :cond_b

    .line 4615
    move/from16 v17, v4

    .line 4617
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ClippingImageView;->setOrientation(I)V

    .line 4618
    if-eqz v16, :cond_12

    .line 4619
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v25, v0

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->radius:I

    move/from16 v24, v0

    if-eqz v24, :cond_11

    const/16 v24, 0x1

    :goto_3
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ClippingImageView;->setNeedRadius(Z)V

    .line 4620
    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/messenger/ImageReceiver;->getDrawRegion()Landroid/graphics/Rect;

    move-result-object v11

    .line 4621
    iget v0, v11, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    iget v0, v11, Landroid/graphics/Rect;->left:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move/from16 v0, v24

    iput v0, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4622
    iget v0, v11, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    iget v0, v11, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move/from16 v0, v24

    iput v0, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 4623
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v24, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->thumb:Landroid/graphics/Bitmap;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/ui/Components/ClippingImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 4630
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Lorg/telegram/ui/Components/ClippingImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4632
    sget-object v24, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    iget v0, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v19, v24, v25

    .line 4633
    .local v19, "scaleX":F
    sget-object v24, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v25, v0

    sget v24, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v26, 0x15

    move/from16 v0, v24

    move/from16 v1, v26

    if-lt v0, v1, :cond_13

    sget v24, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_5
    add-int v24, v24, v25

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    iget v0, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v20, v24, v25

    .line 4634
    .local v20, "scaleY":F
    cmpl-float v24, v19, v20

    if-lez v24, :cond_14

    move/from16 v18, v20

    .line 4635
    .local v18, "scale2":F
    :goto_6
    iget v0, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->scale:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    mul-float v21, v24, v18

    .line 4636
    .local v21, "width":F
    iget v0, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->scale:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    mul-float v14, v24, v18

    .line 4637
    .local v14, "height":F
    sget-object v24, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v24, v24, v21

    const/high16 v25, 0x40000000    # 2.0f

    div-float v22, v24, v25

    .line 4638
    .local v22, "xPos":F
    sget-object v24, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v25, v0

    sget v24, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v26, 0x15

    move/from16 v0, v24

    move/from16 v1, v26

    if-lt v0, v1, :cond_15

    sget v24, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_7
    add-int v24, v24, v25

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v24, v24, v14

    const/high16 v25, 0x40000000    # 2.0f

    div-float v23, v24, v25

    .line 4639
    .local v23, "yPos":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    move/from16 v25, v0

    add-float v25, v25, v22

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/ui/Components/ClippingImageView;->setTranslationX(F)V

    .line 4640
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    move/from16 v25, v0

    add-float v25, v25, v23

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/ui/Components/ClippingImageView;->setTranslationY(F)V

    .line 4641
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->scale:F

    move/from16 v25, v0

    mul-float v25, v25, v18

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/ui/Components/ClippingImageView;->setScaleX(F)V

    .line 4642
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->scale:F

    move/from16 v25, v0

    mul-float v25, v25, v18

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/ui/Components/ClippingImageView;->setScaleY(F)V

    .line 4644
    if-eqz v16, :cond_18

    .line 4645
    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x1

    invoke-virtual/range {v24 .. v26}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 4646
    iget v0, v11, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/messenger/ImageReceiver;->getImageX()I

    move-result v25

    sub-int v24, v24, v25

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 4647
    .local v7, "clipHorizontal":I
    iget v0, v11, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/messenger/ImageReceiver;->getImageY()I

    move-result v25

    sub-int v24, v24, v25

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(I)I

    move-result v9

    .line 4649
    .local v9, "clipVertical":I
    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v10, v0, [I

    .line 4650
    .local v10, "coords2":[I
    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Landroid/view/View;->getLocationInWindow([I)V

    .line 4651
    const/16 v24, 0x1

    aget v25, v10, v24

    sget v24, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v26, 0x15

    move/from16 v0, v24

    move/from16 v1, v26

    if-lt v0, v1, :cond_16

    const/16 v24, 0x0

    :goto_8
    sub-int v24, v25, v24

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    move/from16 v25, v0

    iget v0, v11, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    add-int v25, v25, v26

    sub-int v24, v24, v25

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->clipTopAddition:I

    move/from16 v25, v0

    add-int v8, v24, v25

    .line 4652
    .local v8, "clipTop":I
    if-gez v8, :cond_c

    .line 4653
    const/4 v8, 0x0

    .line 4655
    :cond_c
    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    move/from16 v24, v0

    iget v0, v11, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    add-int v24, v24, v25

    iget v0, v11, Landroid/graphics/Rect;->bottom:I

    move/from16 v25, v0

    iget v0, v11, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    add-int v25, v25, v24

    const/16 v24, 0x1

    aget v24, v10, v24

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHeight()I

    move-result v26

    add-int v26, v26, v24

    sget v24, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v27, 0x15

    move/from16 v0, v24

    move/from16 v1, v27

    if-lt v0, v1, :cond_17

    const/16 v24, 0x0

    :goto_9
    sub-int v24, v26, v24

    sub-int v24, v25, v24

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->clipBottomAddition:I

    move/from16 v25, v0

    add-int v6, v24, v25

    .line 4656
    .local v6, "clipBottom":I
    if-gez v6, :cond_d

    .line 4657
    const/4 v6, 0x0

    .line 4660
    :cond_d
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 4661
    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 4663
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lorg/telegram/ui/Components/ClippingImageView;->getScaleX()F

    move-result v26

    aput v26, v24, v25

    .line 4664
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    const/16 v25, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lorg/telegram/ui/Components/ClippingImageView;->getScaleY()F

    move-result v26

    aput v26, v24, v25

    .line 4665
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    const/16 v25, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lorg/telegram/ui/Components/ClippingImageView;->getTranslationX()F

    move-result v26

    aput v26, v24, v25

    .line 4666
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    const/16 v25, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lorg/telegram/ui/Components/ClippingImageView;->getTranslationY()F

    move-result v26

    aput v26, v24, v25

    .line 4667
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    const/16 v25, 0x4

    const/16 v26, 0x0

    aput v26, v24, v25

    .line 4668
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    const/16 v25, 0x5

    const/16 v26, 0x0

    aput v26, v24, v25

    .line 4669
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    const/16 v25, 0x6

    const/16 v26, 0x0

    aput v26, v24, v25

    .line 4670
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    const/16 v25, 0x7

    const/16 v26, 0x0

    aput v26, v24, v25

    .line 4672
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget-object v24, v24, v25

    const/16 v25, 0x0

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->scale:F

    move/from16 v26, v0

    aput v26, v24, v25

    .line 4673
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget-object v24, v24, v25

    const/16 v25, 0x1

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->scale:F

    move/from16 v26, v0

    aput v26, v24, v25

    .line 4674
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget-object v24, v24, v25

    const/16 v25, 0x2

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewX:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    iget v0, v11, Landroid/graphics/Rect;->left:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->scale:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    add-float v26, v26, v27

    aput v26, v24, v25

    .line 4675
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget-object v24, v24, v25

    const/16 v25, 0x3

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    iget v0, v11, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->scale:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    add-float v26, v26, v27

    aput v26, v24, v25

    .line 4676
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget-object v24, v24, v25

    const/16 v25, 0x4

    int-to-float v0, v7

    move/from16 v26, v0

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->scale:F

    move/from16 v27, v0

    mul-float v26, v26, v27

    aput v26, v24, v25

    .line 4677
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget-object v24, v24, v25

    const/16 v25, 0x5

    int-to-float v0, v8

    move/from16 v26, v0

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->scale:F

    move/from16 v27, v0

    mul-float v26, v26, v27

    aput v26, v24, v25

    .line 4678
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget-object v24, v24, v25

    const/16 v25, 0x6

    int-to-float v0, v6

    move/from16 v26, v0

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->scale:F

    move/from16 v27, v0

    mul-float v26, v26, v27

    aput v26, v24, v25

    .line 4679
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget-object v24, v24, v25

    const/16 v25, 0x7

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->radius:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    aput v26, v24, v25

    .line 4681
    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v26, v0

    const-string/jumbo v27, "animationProgress"

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [F

    move-object/from16 v28, v0

    fill-array-data v28, :array_0

    .line 4682
    invoke-static/range {v26 .. v28}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->backgroundDrawable:Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;

    move-object/from16 v26, v0

    const-string/jumbo v27, "alpha"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [I

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    aput v30, v28, v29

    .line 4683
    invoke-static/range {v26 .. v28}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v26, v0

    const-string/jumbo v27, "alpha"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [F

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    aput v30, v28, v29

    .line 4684
    invoke-static/range {v26 .. v28}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v26

    aput-object v26, v24, v25

    .line 4681
    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 4696
    .end local v6    # "clipBottom":I
    .end local v7    # "clipHorizontal":I
    .end local v8    # "clipTop":I
    .end local v9    # "clipVertical":I
    .end local v10    # "coords2":[I
    :goto_a
    new-instance v24, Lorg/telegram/ui/PhotoViewer$57;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer$57;-><init>(Lorg/telegram/ui/PhotoViewer;Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/PhotoViewer;->animationEndRunnable:Ljava/lang/Runnable;

    .line 4707
    const-wide/16 v24, 0xc8

    move-wide/from16 v0, v24

    invoke-virtual {v5, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 4708
    new-instance v24, Lorg/telegram/ui/PhotoViewer$58;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/PhotoViewer$58;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4722
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/ui/PhotoViewer;->transitionAnimationStartTime:J

    .line 4723
    sget v24, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v25, 0x12

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_e

    .line 4724
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->setLayerType(ILandroid/graphics/Paint;)V

    .line 4726
    :cond_e
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 4767
    .end local v4    # "animatedOrientation":I
    .end local v11    # "drawRegion":Landroid/graphics/Rect;
    .end local v14    # "height":F
    .end local v15    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v17    # "orientation":I
    .end local v18    # "scale2":F
    .end local v19    # "scaleX":F
    .end local v20    # "scaleY":F
    .end local v21    # "width":F
    .end local v22    # "xPos":F
    .end local v23    # "yPos":F
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-object/from16 v24, v0

    if-eqz v24, :cond_f

    .line 4768
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setSecondParentView(Landroid/view/View;)V

    .line 4769
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/PhotoViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    .line 4770
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v25, v0

    const/16 v24, 0x0

    check-cast v24, Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    .line 4772
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    instance-of v0, v0, Lorg/telegram/ui/PhotoViewer$EmptyPhotoViewerProvider;

    move/from16 v24, v0

    if-eqz v24, :cond_0

    .line 4773
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->cancelButtonPressed()Z

    goto/16 :goto_0

    .line 4553
    .end local v5    # "animatorSet":Landroid/animation/AnimatorSet;
    .end local v16    # "object":Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    :catch_0
    move-exception v12

    .line 4554
    .local v12, "e":Ljava/lang/Exception;
    invoke-static {v12}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 4562
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_6

    .line 4563
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->editorDoneLayout:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    move-object/from16 v24, v0

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->setVisibility(I)V

    .line 4564
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    move-object/from16 v24, v0

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/ui/Components/PhotoCropView;->setVisibility(I)V

    goto/16 :goto_2

    .line 4619
    .restart local v4    # "animatedOrientation":I
    .restart local v5    # "animatorSet":Landroid/animation/AnimatorSet;
    .restart local v11    # "drawRegion":Landroid/graphics/Rect;
    .restart local v15    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .restart local v16    # "object":Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    .restart local v17    # "orientation":I
    :cond_11
    const/16 v24, 0x0

    goto/16 :goto_3

    .line 4625
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/ui/Components/ClippingImageView;->setNeedRadius(Z)V

    .line 4626
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()I

    move-result v24

    move/from16 v0, v24

    iput v0, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4627
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()I

    move-result v24

    move/from16 v0, v24

    iput v0, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 4628
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/ui/Components/ClippingImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_4

    .line 4633
    .restart local v19    # "scaleX":F
    :cond_13
    const/16 v24, 0x0

    goto/16 :goto_5

    .restart local v20    # "scaleY":F
    :cond_14
    move/from16 v18, v19

    .line 4634
    goto/16 :goto_6

    .line 4638
    .restart local v14    # "height":F
    .restart local v18    # "scale2":F
    .restart local v21    # "width":F
    .restart local v22    # "xPos":F
    :cond_15
    const/16 v24, 0x0

    goto/16 :goto_7

    .line 4651
    .restart local v7    # "clipHorizontal":I
    .restart local v9    # "clipVertical":I
    .restart local v10    # "coords2":[I
    .restart local v23    # "yPos":F
    :cond_16
    sget v24, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto/16 :goto_8

    .line 4655
    .restart local v8    # "clipTop":I
    :cond_17
    sget v24, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto/16 :goto_9

    .line 4687
    .end local v7    # "clipHorizontal":I
    .end local v8    # "clipTop":I
    .end local v9    # "clipVertical":I
    .end local v10    # "coords2":[I
    :cond_18
    sget-object v24, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v25, v0

    sget v24, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v26, 0x15

    move/from16 v0, v24

    move/from16 v1, v26

    if-lt v0, v1, :cond_19

    sget v24, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_c
    add-int v13, v25, v24

    .line 4688
    .local v13, "h":I
    const/16 v24, 0x4

    move/from16 v0, v24

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v25, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->backgroundDrawable:Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;

    move-object/from16 v26, v0

    const-string/jumbo v27, "alpha"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [I

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    aput v30, v28, v29

    .line 4689
    invoke-static/range {v26 .. v28}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v26

    aput-object v26, v25, v24

    const/16 v24, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v26, v0

    const-string/jumbo v27, "alpha"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [F

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    aput v30, v28, v29

    .line 4690
    invoke-static/range {v26 .. v28}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v26

    aput-object v26, v25, v24

    const/16 v26, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v27, v0

    const-string/jumbo v28, "translationY"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [F

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    move/from16 v24, v0

    const/16 v31, 0x0

    cmpl-float v24, v24, v31

    if-ltz v24, :cond_1a

    int-to-float v0, v13

    move/from16 v24, v0

    :goto_d
    aput v24, v29, v30

    .line 4691
    invoke-static/range {v27 .. v29}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v24

    aput-object v24, v25, v26

    const/16 v24, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v26, v0

    const-string/jumbo v27, "alpha"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [F

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    aput v30, v28, v29

    .line 4692
    invoke-static/range {v26 .. v28}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v26

    aput-object v26, v25, v24

    .line 4688
    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/16 :goto_a

    .line 4687
    .end local v13    # "h":I
    :cond_19
    const/16 v24, 0x0

    goto/16 :goto_c

    .line 4690
    .restart local v13    # "h":I
    :cond_1a
    neg-int v0, v13

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    goto :goto_d

    .line 4728
    .end local v4    # "animatedOrientation":I
    .end local v5    # "animatorSet":Landroid/animation/AnimatorSet;
    .end local v11    # "drawRegion":Landroid/graphics/Rect;
    .end local v13    # "h":I
    .end local v14    # "height":F
    .end local v15    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v17    # "orientation":I
    .end local v18    # "scale2":F
    .end local v19    # "scaleX":F
    .end local v20    # "scaleY":F
    .end local v21    # "width":F
    .end local v22    # "xPos":F
    .end local v23    # "yPos":F
    :cond_1b
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 4729
    .restart local v5    # "animatorSet":Landroid/animation/AnimatorSet;
    const/16 v24, 0x4

    move/from16 v0, v24

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v26, v0

    const-string/jumbo v27, "scaleX"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [F

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const v30, 0x3f666666    # 0.9f

    aput v30, v28, v29

    .line 4730
    invoke-static/range {v26 .. v28}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v26, v0

    const-string/jumbo v27, "scaleY"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [F

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const v30, 0x3f666666    # 0.9f

    aput v30, v28, v29

    .line 4731
    invoke-static/range {v26 .. v28}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->backgroundDrawable:Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;

    move-object/from16 v26, v0

    const-string/jumbo v27, "alpha"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [I

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    aput v30, v28, v29

    .line 4732
    invoke-static/range {v26 .. v28}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v26, v0

    const-string/jumbo v27, "alpha"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [F

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    aput v30, v28, v29

    .line 4733
    invoke-static/range {v26 .. v28}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v26

    aput-object v26, v24, v25

    .line 4729
    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 4735
    const/16 v24, 0x2

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->animationInProgress:I

    .line 4736
    new-instance v24, Lorg/telegram/ui/PhotoViewer$59;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer$59;-><init>(Lorg/telegram/ui/PhotoViewer;Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/PhotoViewer;->animationEndRunnable:Ljava/lang/Runnable;

    .line 4751
    const-wide/16 v24, 0xc8

    move-wide/from16 v0, v24

    invoke-virtual {v5, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 4752
    new-instance v24, Lorg/telegram/ui/PhotoViewer$60;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/PhotoViewer$60;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4761
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/ui/PhotoViewer;->transitionAnimationStartTime:J

    .line 4762
    sget v24, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v25, 0x12

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_1c

    .line 4763
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->setLayerType(ILandroid/graphics/Paint;)V

    .line 4765
    :cond_1c
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_b

    .line 4681
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public destroyPhotoViewer()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 4778
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->windowView:Landroid/widget/FrameLayout;

    if-nez v2, :cond_1

    .line 4795
    :cond_0
    :goto_0
    return-void

    .line 4781
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->releasePlayer()V

    .line 4783
    :try_start_0
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 4784
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 4785
    .local v1, "wm":Landroid/view/WindowManager;
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 4787
    .end local v1    # "wm":Landroid/view/WindowManager;
    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/ui/PhotoViewer;->windowView:Landroid/widget/FrameLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4791
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    if-eqz v2, :cond_3

    .line 4792
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->onDestroy()V

    .line 4794
    :cond_3
    sput-object v4, Lorg/telegram/ui/PhotoViewer;->Instance:Lorg/telegram/ui/PhotoViewer;

    goto :goto_0

    .line 4788
    :catch_0
    move-exception v0

    .line 4789
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 36
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 806
    sget v2, Lorg/telegram/messenger/NotificationCenter;->FileDidFailedLoad:I

    move/from16 v0, p1

    if-ne v0, v2, :cond_2

    .line 807
    const/4 v2, 0x0

    aget-object v24, p2, v2

    check-cast v24, Ljava/lang/String;

    .line 808
    .local v24, "location":Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "a":I
    :goto_0
    const/4 v2, 0x3

    if-ge v10, v2, :cond_0

    .line 809
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v2, v2, v10

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v2, v2, v10

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 810
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    aget-object v2, v2, v10

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setProgress(FZ)V

    .line 811
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v2}, Lorg/telegram/ui/PhotoViewer;->checkProgress(IZ)V

    .line 1060
    .end local v10    # "a":I
    .end local v24    # "location":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 808
    .restart local v10    # "a":I
    .restart local v24    # "location":Ljava/lang/String;
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 815
    .end local v10    # "a":I
    .end local v24    # "location":Ljava/lang/String;
    :cond_2
    sget v2, Lorg/telegram/messenger/NotificationCenter;->FileDidLoaded:I

    move/from16 v0, p1

    if-ne v0, v2, :cond_6

    .line 816
    const/4 v2, 0x0

    aget-object v24, p2, v2

    check-cast v24, Ljava/lang/String;

    .line 817
    .restart local v24    # "location":Ljava/lang/String;
    const/4 v10, 0x0

    .restart local v10    # "a":I
    :goto_2
    const/4 v2, 0x3

    if-ge v10, v2, :cond_0

    .line 818
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v2, v2, v10

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v2, v2, v10

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 819
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    aget-object v2, v2, v10

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setProgress(FZ)V

    .line 820
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v2}, Lorg/telegram/ui/PhotoViewer;->checkProgress(IZ)V

    .line 821
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    if-nez v10, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    const-string/jumbo v3, "video"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 822
    :cond_4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/ui/PhotoViewer;->onActionClick(Z)V

    goto :goto_1

    .line 817
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 827
    .end local v10    # "a":I
    .end local v24    # "location":Ljava/lang/String;
    :cond_6
    sget v2, Lorg/telegram/messenger/NotificationCenter;->FileLoadProgressChanged:I

    move/from16 v0, p1

    if-ne v0, v2, :cond_8

    .line 828
    const/4 v2, 0x0

    aget-object v24, p2, v2

    check-cast v24, Ljava/lang/String;

    .line 829
    .restart local v24    # "location":Ljava/lang/String;
    const/4 v10, 0x0

    .restart local v10    # "a":I
    :goto_3
    const/4 v2, 0x3

    if-ge v10, v2, :cond_0

    .line 830
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v2, v2, v10

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v2, v2, v10

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 831
    const/4 v2, 0x1

    aget-object v29, p2, v2

    check-cast v29, Ljava/lang/Float;

    .line 832
    .local v29, "progress":Ljava/lang/Float;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    aget-object v2, v2, v10

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setProgress(FZ)V

    .line 829
    .end local v29    # "progress":Ljava/lang/Float;
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 835
    .end local v10    # "a":I
    .end local v24    # "location":Ljava/lang/String;
    :cond_8
    sget v2, Lorg/telegram/messenger/NotificationCenter;->dialogPhotosLoaded:I

    move/from16 v0, p1

    if-ne v0, v2, :cond_10

    .line 836
    const/4 v2, 0x4

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v21

    .line 837
    .local v21, "guid":I
    const/4 v2, 0x0

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 838
    .local v15, "did":I
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->avatarsDialogId:I

    if-ne v2, v15, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->classGuid:I

    move/from16 v0, v21

    if-ne v2, v0, :cond_0

    .line 839
    const/4 v2, 0x3

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    .line 841
    .local v20, "fromCache":Z
    const/16 v30, -0x1

    .line 842
    .local v30, "setToImage":I
    const/4 v2, 0x5

    aget-object v28, p2, v2

    check-cast v28, Ljava/util/ArrayList;

    .line 843
    .local v28, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Photo;>;"
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 846
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 847
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocationsSizes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 848
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->avatarsArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 849
    const/4 v10, 0x0

    .restart local v10    # "a":I
    :goto_4
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v10, v2, :cond_d

    .line 850
    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lorg/telegram/tgnet/TLRPC$Photo;

    .line 851
    .local v27, "photo":Lorg/telegram/tgnet/TLRPC$Photo;
    if-eqz v27, :cond_9

    move-object/from16 v0, v27

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_photoEmpty;

    if-nez v2, :cond_9

    move-object/from16 v0, v27

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    if-nez v2, :cond_a

    .line 849
    :cond_9
    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 854
    :cond_a
    move-object/from16 v0, v27

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    const/16 v3, 0x280

    invoke-static {v2, v3}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v32

    .line 855
    .local v32, "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v32, :cond_9

    .line 856
    const/4 v2, -0x1

    move/from16 v0, v30

    if-ne v0, v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v2, :cond_b

    .line 857
    const/4 v13, 0x0

    .local v13, "b":I
    :goto_6
    move-object/from16 v0, v27

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v13, v2, :cond_b

    .line 858
    move-object/from16 v0, v27

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 859
    .local v31, "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    move-object/from16 v0, v31

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-ne v2, v3, :cond_c

    move-object/from16 v0, v31

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_c

    .line 860
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v30

    .line 865
    .end local v13    # "b":I
    .end local v31    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    move-object/from16 v0, v32

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 866
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocationsSizes:Ljava/util/ArrayList;

    move-object/from16 v0, v32

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 867
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->avatarsArr:Ljava/util/ArrayList;

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 857
    .restart local v13    # "b":I
    .restart local v31    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_c
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 870
    .end local v13    # "b":I
    .end local v27    # "photo":Lorg/telegram/tgnet/TLRPC$Photo;
    .end local v31    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .end local v32    # "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->avatarsArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e

    .line 871
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    .line 875
    :goto_7
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->needSearchImageInArr:Z

    .line 876
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    .line 877
    const/4 v2, -0x1

    move/from16 v0, v30

    if-eq v0, v2, :cond_f

    .line 878
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer;->setImageIndex(IZ)V

    .line 885
    :goto_8
    if-eqz v20, :cond_0

    .line 886
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/PhotoViewer;->avatarsDialogId:I

    const/4 v4, 0x0

    const/16 v5, 0x50

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/ui/PhotoViewer;->classGuid:I

    invoke-virtual/range {v2 .. v9}, Lorg/telegram/messenger/MessagesController;->loadDialogPhotos(IIIJZI)V

    goto/16 :goto_1

    .line 873
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    goto :goto_7

    .line 880
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->avatarsArr:Ljava/util/ArrayList;

    const/4 v3, 0x0

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_photoEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_photoEmpty;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 881
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 882
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocationsSizes:Ljava/util/ArrayList;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 883
    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/PhotoViewer;->setImageIndex(IZ)V

    goto :goto_8

    .line 889
    .end local v10    # "a":I
    .end local v15    # "did":I
    .end local v20    # "fromCache":Z
    .end local v21    # "guid":I
    .end local v28    # "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Photo;>;"
    .end local v30    # "setToImage":I
    :cond_10
    sget v2, Lorg/telegram/messenger/NotificationCenter;->mediaCountDidLoaded:I

    move/from16 v0, p1

    if-ne v0, v2, :cond_16

    .line 890
    const/4 v2, 0x0

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v34

    .line 891
    .local v34, "uid":J
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->currentDialogId:J

    cmp-long v2, v34, v2

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    cmp-long v2, v34, v2

    if-nez v2, :cond_0

    .line 892
    :cond_11
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->currentDialogId:J

    cmp-long v2, v34, v2

    if-nez v2, :cond_13

    .line 893
    const/4 v2, 0x1

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCount:I

    .line 903
    :cond_12
    :goto_9
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->needSearchImageInArr:Z

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->isFirstLoading:Z

    if-eqz v2, :cond_14

    .line 904
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->isFirstLoading:Z

    .line 905
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->loadingMoreImages:Z

    .line 906
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->currentDialogId:J

    const/4 v4, 0x0

    const/16 v5, 0x50

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/ui/PhotoViewer;->classGuid:I

    invoke-static/range {v2 .. v9}, Lorg/telegram/messenger/query/SharedMediaQuery;->loadMedia(JIIIIZI)V

    goto/16 :goto_1

    .line 897
    :cond_13
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    cmp-long v2, v34, v2

    if-nez v2, :cond_12

    .line 898
    const/4 v2, 0x1

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCountMerge:I

    goto :goto_9

    .line 907
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 908
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->opennedFromMedia:Z

    if-eqz v2, :cond_15

    .line 909
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v3, "Of"

    const v4, 0x7f070453

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCount:I

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCountMerge:I

    add-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 911
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v3, "Of"

    const v4, 0x7f070453

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCount:I

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCountMerge:I

    add-int/2addr v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v8, v9

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCount:I

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCountMerge:I

    add-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 915
    .end local v34    # "uid":J
    :cond_16
    sget v2, Lorg/telegram/messenger/NotificationCenter;->mediaDidLoaded:I

    move/from16 v0, p1

    if-ne v0, v2, :cond_31

    .line 916
    const/4 v2, 0x0

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v34

    .line 917
    .restart local v34    # "uid":J
    const/4 v2, 0x3

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v21

    .line 918
    .restart local v21    # "guid":I
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->currentDialogId:J

    cmp-long v2, v34, v2

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    cmp-long v2, v34, v2

    if-nez v2, :cond_0

    :cond_17
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->classGuid:I

    move/from16 v0, v21

    if-ne v0, v2, :cond_0

    .line 919
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->loadingMoreImages:Z

    .line 920
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->currentDialogId:J

    cmp-long v2, v34, v2

    if-nez v2, :cond_19

    const/16 v23, 0x0

    .line 921
    .local v23, "loadIndex":I
    :goto_a
    const/4 v2, 0x2

    aget-object v12, p2, v2

    check-cast v12, Ljava/util/ArrayList;

    .line 922
    .local v12, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->endReached:[Z

    const/4 v2, 0x5

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    aput-boolean v2, v3, v23

    .line 923
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->needSearchImageInArr:Z

    if-eqz v2, :cond_2b

    .line 924
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1a

    if-nez v23, :cond_18

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1a

    .line 925
    :cond_18
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->needSearchImageInArr:Z

    goto/16 :goto_1

    .line 920
    .end local v12    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v23    # "loadIndex":I
    :cond_19
    const/16 v23, 0x1

    goto :goto_a

    .line 928
    .restart local v12    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .restart local v23    # "loadIndex":I
    :cond_1a
    const/16 v17, -0x1

    .line 930
    .local v17, "foundIndex":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/messenger/MessageObject;

    .line 932
    .local v14, "currentMessage":Lorg/telegram/messenger/MessageObject;
    const/4 v11, 0x0

    .line 933
    .local v11, "added":I
    const/4 v10, 0x0

    .restart local v10    # "a":I
    :goto_b
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v10, v2, :cond_1e

    .line 934
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lorg/telegram/messenger/MessageObject;

    .line 935
    .local v25, "message":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesByIdsTemp:[Ljava/util/HashMap;

    aget-object v2, v2, v23

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 936
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesByIdsTemp:[Ljava/util/HashMap;

    aget-object v2, v2, v23

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 937
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->opennedFromMedia:Z

    if-eqz v2, :cond_1d

    .line 938
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrTemp:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 939
    invoke-virtual/range {v25 .. v25}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-virtual {v14}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    if-ne v2, v3, :cond_1b

    .line 940
    move/from16 v17, v11

    .line 942
    :cond_1b
    add-int/lit8 v11, v11, 0x1

    .line 933
    :cond_1c
    :goto_c
    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    .line 944
    :cond_1d
    add-int/lit8 v11, v11, 0x1

    .line 945
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrTemp:Ljava/util/ArrayList;

    const/4 v3, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 946
    invoke-virtual/range {v25 .. v25}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-virtual {v14}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    if-ne v2, v3, :cond_1c

    .line 947
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int v17, v2, v11

    goto :goto_c

    .line 952
    .end local v25    # "message":Lorg/telegram/messenger/MessageObject;
    :cond_1e
    if-nez v11, :cond_20

    if-nez v23, :cond_1f

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_20

    .line 953
    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCount:I

    .line 954
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCountMerge:I

    .line 957
    :cond_20
    const/4 v2, -0x1

    move/from16 v0, v17

    if-eq v0, v2, :cond_23

    .line 958
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 959
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrTemp:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 960
    const/4 v10, 0x0

    :goto_d
    const/4 v2, 0x2

    if-ge v10, v2, :cond_21

    .line 961
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesByIds:[Ljava/util/HashMap;

    aget-object v2, v2, v10

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 962
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesByIds:[Ljava/util/HashMap;

    aget-object v2, v2, v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->imagesByIdsTemp:[Ljava/util/HashMap;

    aget-object v3, v3, v10

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 963
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesByIdsTemp:[Ljava/util/HashMap;

    aget-object v2, v2, v10

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 960
    add-int/lit8 v10, v10, 0x1

    goto :goto_d

    .line 965
    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrTemp:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 966
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->needSearchImageInArr:Z

    .line 967
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    .line 968
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v17

    if-lt v0, v2, :cond_22

    .line 969
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v17, v2, -0x1

    .line 971
    :cond_22
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer;->setImageIndex(IZ)V

    goto/16 :goto_1

    .line 974
    :cond_23
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->opennedFromMedia:Z

    if-eqz v2, :cond_26

    .line 975
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrTemp:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_25

    const/4 v6, 0x0

    .line 976
    .local v6, "loadFromMaxId":I
    :goto_e
    if-nez v23, :cond_24

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->endReached:[Z

    aget-boolean v2, v2, v23

    if-eqz v2, :cond_24

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_24

    .line 977
    const/16 v23, 0x1

    .line 978
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrTemp:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_24

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrTemp:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrTemp:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_24

    .line 979
    const/4 v6, 0x0

    .line 992
    :cond_24
    :goto_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->endReached:[Z

    aget-boolean v2, v2, v23

    if-nez v2, :cond_0

    .line 993
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->loadingMoreImages:Z

    .line 994
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->opennedFromMedia:Z

    if-eqz v2, :cond_29

    .line 995
    if-nez v23, :cond_28

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->currentDialogId:J

    :goto_10
    const/4 v4, 0x0

    const/16 v5, 0x50

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/ui/PhotoViewer;->classGuid:I

    invoke-static/range {v2 .. v9}, Lorg/telegram/messenger/query/SharedMediaQuery;->loadMedia(JIIIIZI)V

    goto/16 :goto_1

    .line 975
    .end local v6    # "loadFromMaxId":I
    :cond_25
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrTemp:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrTemp:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    goto :goto_e

    .line 983
    :cond_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrTemp:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_27

    const/4 v6, 0x0

    .line 984
    .restart local v6    # "loadFromMaxId":I
    :goto_11
    if-nez v23, :cond_24

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->endReached:[Z

    aget-boolean v2, v2, v23

    if-eqz v2, :cond_24

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_24

    .line 985
    const/16 v23, 0x1

    .line 986
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrTemp:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_24

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrTemp:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_24

    .line 987
    const/4 v6, 0x0

    goto/16 :goto_f

    .line 983
    .end local v6    # "loadFromMaxId":I
    :cond_27
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrTemp:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    goto :goto_11

    .line 995
    .restart local v6    # "loadFromMaxId":I
    :cond_28
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    goto :goto_10

    .line 997
    :cond_29
    if-nez v23, :cond_2a

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->currentDialogId:J

    :goto_12
    const/4 v4, 0x0

    const/16 v5, 0x50

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/ui/PhotoViewer;->classGuid:I

    invoke-static/range {v2 .. v9}, Lorg/telegram/messenger/query/SharedMediaQuery;->loadMedia(JIIIIZI)V

    goto/16 :goto_1

    :cond_2a
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    goto :goto_12

    .line 1002
    .end local v6    # "loadFromMaxId":I
    .end local v10    # "a":I
    .end local v11    # "added":I
    .end local v14    # "currentMessage":Lorg/telegram/messenger/MessageObject;
    .end local v17    # "foundIndex":I
    :cond_2b
    const/4 v11, 0x0

    .line 1003
    .restart local v11    # "added":I
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2c
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lorg/telegram/messenger/MessageObject;

    .line 1004
    .restart local v25    # "message":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->imagesByIds:[Ljava/util/HashMap;

    aget-object v3, v3, v23

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2c

    .line 1005
    add-int/lit8 v11, v11, 0x1

    .line 1006
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/telegram/ui/PhotoViewer;->opennedFromMedia:Z

    if-eqz v3, :cond_2d

    .line 1007
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1011
    :goto_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->imagesByIds:[Ljava/util/HashMap;

    aget-object v3, v3, v23

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    .line 1009
    :cond_2d
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    const/4 v4, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v3, v4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_14

    .line 1014
    .end local v25    # "message":Lorg/telegram/messenger/MessageObject;
    :cond_2e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->opennedFromMedia:Z

    if-eqz v2, :cond_2f

    .line 1015
    if-nez v11, :cond_0

    .line 1016
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCount:I

    .line 1017
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCountMerge:I

    goto/16 :goto_1

    .line 1020
    :cond_2f
    if-eqz v11, :cond_30

    .line 1021
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    move/from16 v22, v0

    .line 1022
    .local v22, "index":I
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    .line 1023
    add-int v2, v22, v11

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/PhotoViewer;->setImageIndex(IZ)V

    goto/16 :goto_1

    .line 1025
    .end local v22    # "index":I
    :cond_30
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCount:I

    .line 1026
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCountMerge:I

    goto/16 :goto_1

    .line 1031
    .end local v11    # "added":I
    .end local v12    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v21    # "guid":I
    .end local v23    # "loadIndex":I
    .end local v34    # "uid":J
    :cond_31
    sget v2, Lorg/telegram/messenger/NotificationCenter;->emojiDidLoaded:I

    move/from16 v0, p1

    if-ne v0, v2, :cond_32

    .line 1032
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 1033
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->invalidate()V

    goto/16 :goto_1

    .line 1035
    :cond_32
    sget v2, Lorg/telegram/messenger/NotificationCenter;->FilePreparingFailed:I

    move/from16 v0, p1

    if-ne v0, v2, :cond_36

    .line 1036
    const/4 v2, 0x0

    aget-object v26, p2, v2

    check-cast v26, Lorg/telegram/messenger/MessageObject;

    .line 1037
    .local v26, "messageObject":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->loadInitialVideo:Z

    if-eqz v2, :cond_33

    .line 1038
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->loadInitialVideo:Z

    .line 1039
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RadialProgressView;->setVisibility(I)V

    .line 1040
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentPlayingVideoFile:Ljava/io/File;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lorg/telegram/ui/PhotoViewer;->preparePlayer(Ljava/io/File;ZZ)V

    goto/16 :goto_1

    .line 1041
    :cond_33
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->tryStartRequestPreviewOnFinish:Z

    if-eqz v2, :cond_35

    .line 1042
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->releasePlayer()V

    .line 1043
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/MediaController;->scheduleVideoConvert(Lorg/telegram/messenger/MessageObject;Z)Z

    move-result v2

    if-nez v2, :cond_34

    const/4 v2, 0x1

    :goto_15
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->tryStartRequestPreviewOnFinish:Z

    goto/16 :goto_1

    :cond_34
    const/4 v2, 0x0

    goto :goto_15

    .line 1044
    :cond_35
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, v26

    if-ne v0, v2, :cond_0

    .line 1045
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->requestingPreview:Z

    .line 1046
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RadialProgressView;->setVisibility(I)V

    goto/16 :goto_1

    .line 1048
    .end local v26    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_36
    sget v2, Lorg/telegram/messenger/NotificationCenter;->FileNewChunkAvailable:I

    move/from16 v0, p1

    if-ne v0, v2, :cond_0

    .line 1049
    const/4 v2, 0x0

    aget-object v26, p2, v2

    check-cast v26, Lorg/telegram/messenger/MessageObject;

    .line 1050
    .restart local v26    # "messageObject":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, v26

    if-ne v0, v2, :cond_0

    .line 1051
    const/4 v2, 0x1

    aget-object v16, p2, v2

    check-cast v16, Ljava/lang/String;

    .line 1052
    .local v16, "finalPath":Ljava/lang/String;
    const/4 v2, 0x2

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 1053
    .local v18, "finalSize":J
    const-wide/16 v2, 0x0

    cmp-long v2, v18, v2

    if-eqz v2, :cond_0

    .line 1054
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->requestingPreview:Z

    .line 1055
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RadialProgressView;->setVisibility(I)V

    .line 1056
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lorg/telegram/ui/PhotoViewer;->preparePlayer(Ljava/io/File;ZZ)V

    goto/16 :goto_1
.end method

.method public getAnimationValue()F
    .locals 1

    .prologue
    .line 5243
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->animationValue:F

    return v0
.end method

.method public isMuteVideo()Z
    .locals 1

    .prologue
    .line 3649
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->muteVideo:Z

    return v0
.end method

.method public isShowingImage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/String;

    .prologue
    .line 4242
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->isVisible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->disableShowCheck:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentPathObject:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentPathObject:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowingImage(Lorg/telegram/messenger/MessageObject;)Z
    .locals 2
    .param p1, "object"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 4234
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->isVisible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->disableShowCheck:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowingImage(Lorg/telegram/tgnet/TLRPC$FileLocation;)Z
    .locals 4
    .param p1, "object"    # Lorg/telegram/tgnet/TLRPC$FileLocation;

    .prologue
    .line 4238
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->isVisible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->disableShowCheck:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v0, :cond_0

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 4882
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->isVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    const/high16 v9, 0x40400000    # 3.0f

    const/4 v8, 0x0

    .line 5623
    iget-boolean v4, p0, Lorg/telegram/ui/PhotoViewer;->canZoom:Z

    if-eqz v4, :cond_0

    iget v4, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    cmpl-float v4, v4, v10

    if-nez v4, :cond_1

    iget v4, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    cmpl-float v4, v4, v8

    if-nez v4, :cond_0

    iget v4, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    cmpl-float v4, v4, v8

    if-eqz v4, :cond_1

    :cond_0
    move v2, v3

    .line 5648
    :goto_0
    return v2

    .line 5626
    :cond_1
    iget-wide v4, p0, Lorg/telegram/ui/PhotoViewer;->animationStartTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    iget v4, p0, Lorg/telegram/ui/PhotoViewer;->animationInProgress:I

    if-eqz v4, :cond_3

    :cond_2
    move v2, v3

    .line 5627
    goto :goto_0

    .line 5629
    :cond_3
    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    cmpl-float v3, v3, v10

    if-nez v3, :cond_8

    .line 5630
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget v5, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    sub-float/2addr v4, v5

    iget v5, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    div-float v5, v9, v5

    mul-float/2addr v4, v5

    sub-float v0, v3, v4

    .line 5631
    .local v0, "atx":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget v5, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    sub-float/2addr v4, v5

    iget v5, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    div-float v5, v9, v5

    mul-float/2addr v4, v5

    sub-float v1, v3, v4

    .line 5632
    .local v1, "aty":F
    invoke-direct {p0, v9}, Lorg/telegram/ui/PhotoViewer;->updateMinMax(F)V

    .line 5633
    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->minX:F

    cmpg-float v3, v0, v3

    if-gez v3, :cond_6

    .line 5634
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->minX:F

    .line 5638
    :cond_4
    :goto_1
    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->minY:F

    cmpg-float v3, v1, v3

    if-gez v3, :cond_7

    .line 5639
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->minY:F

    .line 5643
    :cond_5
    :goto_2
    invoke-direct {p0, v9, v0, v1, v2}, Lorg/telegram/ui/PhotoViewer;->animateTo(FFFZ)V

    .line 5647
    .end local v0    # "atx":F
    .end local v1    # "aty":F
    :goto_3
    iput-boolean v2, p0, Lorg/telegram/ui/PhotoViewer;->doubleTap:Z

    goto :goto_0

    .line 5635
    .restart local v0    # "atx":F
    .restart local v1    # "aty":F
    :cond_6
    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    cmpl-float v3, v0, v3

    if-lez v3, :cond_4

    .line 5636
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    goto :goto_1

    .line 5640
    :cond_7
    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    cmpl-float v3, v1, v3

    if-lez v3, :cond_5

    .line 5641
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    goto :goto_2

    .line 5645
    .end local v0    # "atx":F
    .end local v1    # "aty":F
    :cond_8
    invoke-direct {p0, v10, v8, v8, v2}, Lorg/telegram/ui/PhotoViewer;->animateTo(FFFZ)V

    goto :goto_3
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 5653
    const/4 v0, 0x0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 5549
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 5574
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 5575
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 5576
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->scroller:Landroid/widget/Scroller;

    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v5, p0, Lorg/telegram/ui/PhotoViewer;->minX:F

    float-to-int v5, v5

    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    float-to-int v6, v6

    iget v7, p0, Lorg/telegram/ui/PhotoViewer;->minY:F

    float-to-int v7, v7

    iget v8, p0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    float-to-int v8, v8

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 5577
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->postInvalidate()V

    .line 5579
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 5570
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4872
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v0, :cond_1

    .line 4873
    invoke-virtual {p0, v1, v1}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    .line 4879
    :cond_0
    :goto_0
    return-void

    .line 4876
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->lastTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 4877
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/ui/PhotoViewer;->closeCaptionEnter(Z)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    .line 4865
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/PhotoViewer;->redraw(I)V

    .line 4866
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_0

    .line 4867
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    .line 4869
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 5564
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 5555
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x3

    const/4 v5, 0x0

    const/high16 v9, 0x42c80000    # 100.0f

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v4, 0x1

    .line 5584
    iget-boolean v6, p0, Lorg/telegram/ui/PhotoViewer;->discardTap:Z

    if-eqz v6, :cond_1

    move v4, v5

    .line 5618
    :cond_0
    :goto_0
    return v4

    .line 5587
    :cond_1
    iget-boolean v6, p0, Lorg/telegram/ui/PhotoViewer;->canShowBottom:Z

    if-eqz v6, :cond_5

    .line 5588
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x10

    if-lt v6, v7, :cond_2

    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v6}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->getVisibility()I

    move-result v6

    if-nez v6, :cond_2

    move v0, v4

    .line 5589
    .local v0, "drawTextureView":Z
    :goto_1
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    aget-object v6, v6, v5

    if-eqz v6, :cond_3

    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    if-eqz v6, :cond_3

    if-nez v0, :cond_3

    .line 5590
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    aget-object v6, v6, v5

    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->access$10500(Lorg/telegram/ui/PhotoViewer$PhotoProgressView;)I

    move-result v1

    .line 5591
    .local v1, "state":I
    if-lez v1, :cond_3

    if-gt v1, v10, :cond_3

    .line 5592
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 5593
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 5594
    .local v3, "y":F
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v6

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v8

    cmpl-float v6, v2, v6

    if-ltz v6, :cond_3

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v6

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v8

    cmpg-float v6, v2, v6

    if-gtz v6, :cond_3

    .line 5595
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v6

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v8

    cmpl-float v6, v3, v6

    if-ltz v6, :cond_3

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v6

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v8

    cmpg-float v6, v3, v6

    if-gtz v6, :cond_3

    .line 5596
    invoke-direct {p0, v4}, Lorg/telegram/ui/PhotoViewer;->onActionClick(Z)V

    .line 5597
    invoke-direct {p0, v5, v4}, Lorg/telegram/ui/PhotoViewer;->checkProgress(IZ)V

    goto :goto_0

    .end local v0    # "drawTextureView":Z
    .end local v1    # "state":I
    .end local v2    # "x":F
    .end local v3    # "y":F
    :cond_2
    move v0, v5

    .line 5588
    goto :goto_1

    .line 5602
    .restart local v0    # "drawTextureView":Z
    :cond_3
    iget-boolean v6, p0, Lorg/telegram/ui/PhotoViewer;->isActionBarVisible:Z

    if-nez v6, :cond_4

    move v5, v4

    :cond_4
    invoke-direct {p0, v5, v4}, Lorg/telegram/ui/PhotoViewer;->toggleActionBar(ZZ)V

    goto/16 :goto_0

    .line 5603
    .end local v0    # "drawTextureView":Z
    :cond_5
    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->sendPhotoType:I

    if-nez v6, :cond_6

    .line 5604
    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/CheckBox;->performClick()Z

    goto/16 :goto_0

    .line 5605
    :cond_6
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    const-string/jumbo v7, "video"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v6}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 5606
    :cond_7
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    aget-object v6, v6, v5

    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->access$10500(Lorg/telegram/ui/PhotoViewer$PhotoProgressView;)I

    move-result v1

    .line 5607
    .restart local v1    # "state":I
    if-lez v1, :cond_0

    if-gt v1, v10, :cond_0

    .line 5608
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 5609
    .restart local v2    # "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 5610
    .restart local v3    # "y":F
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v6

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v8

    cmpl-float v6, v2, v6

    if-ltz v6, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v6

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v8

    cmpg-float v6, v2, v6

    if-gtz v6, :cond_0

    .line 5611
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v6

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v8

    cmpl-float v6, v3, v6

    if-ltz v6, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v6

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v8

    cmpg-float v6, v3, v6

    if-gtz v6, :cond_0

    .line 5612
    invoke-direct {p0, v4}, Lorg/telegram/ui/PhotoViewer;->onActionClick(Z)V

    .line 5613
    invoke-direct {p0, v5, v4}, Lorg/telegram/ui/PhotoViewer;->checkProgress(IZ)V

    goto/16 :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 5559
    const/4 v0, 0x0

    return v0
.end method

.method public openPhoto(Ljava/util/ArrayList;IJJLorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)Z
    .locals 13
    .param p2, "index"    # I
    .param p3, "dialogId"    # J
    .param p5, "mergeDialogId"    # J
    .param p7, "provider"    # Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;IJJ",
            "Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 4258
    .local p1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v3, p1

    move v5, p2

    move-object/from16 v6, p7

    move-wide/from16 v8, p3

    move-wide/from16 v10, p5

    invoke-virtual/range {v0 .. v11}, Lorg/telegram/ui/PhotoViewer;->openPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/util/ArrayList;Ljava/util/ArrayList;ILorg/telegram/ui/PhotoViewer$PhotoViewerProvider;Lorg/telegram/ui/ChatActivity;JJ)Z

    move-result v0

    return v0
.end method

.method public openPhoto(Lorg/telegram/messenger/MessageObject;JJLorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)Z
    .locals 12
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "dialogId"    # J
    .param p4, "mergeDialogId"    # J
    .param p6, "provider"    # Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    .prologue
    .line 4250
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v6, p6

    move-wide v8, p2

    move-wide/from16 v10, p4

    invoke-virtual/range {v0 .. v11}, Lorg/telegram/ui/PhotoViewer;->openPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/util/ArrayList;Ljava/util/ArrayList;ILorg/telegram/ui/PhotoViewer$PhotoViewerProvider;Lorg/telegram/ui/ChatActivity;JJ)Z

    move-result v0

    return v0
.end method

.method public openPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/util/ArrayList;Ljava/util/ArrayList;ILorg/telegram/ui/PhotoViewer$PhotoViewerProvider;Lorg/telegram/ui/ChatActivity;JJ)Z
    .locals 30
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "fileLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p5, "index"    # I
    .param p6, "provider"    # Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;
    .param p7, "chatActivity"    # Lorg/telegram/ui/ChatActivity;
    .param p8, "dialogId"    # J
    .param p10, "mDialogId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/MessageObject;",
            "Lorg/telegram/tgnet/TLRPC$FileLocation;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;I",
            "Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;",
            "Lorg/telegram/ui/ChatActivity;",
            "JJ)Z"
        }
    .end annotation

    .prologue
    .line 4283
    .local p3, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .local p4, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/ui/PhotoViewer;->isVisible:Z

    if-nez v4, :cond_1

    if-nez p6, :cond_0

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->checkAnimation()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    if-nez p1, :cond_2

    if-nez p2, :cond_2

    if-nez p3, :cond_2

    if-nez p4, :cond_2

    .line 4284
    :cond_1
    const/4 v4, 0x0

    .line 4523
    :goto_0
    return v4

    .line 4287
    :cond_2
    move-object/from16 v0, p6

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p5

    invoke-interface {v0, v1, v2, v3}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->getPlaceForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    move-result-object v10

    .line 4288
    .local v10, "object":Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    if-nez v10, :cond_3

    if-nez p4, :cond_3

    .line 4289
    const/4 v4, 0x0

    goto :goto_0

    .line 4291
    :cond_3
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/PhotoViewer;->lastInsets:Ljava/lang/Object;

    .line 4292
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    const-string/jumbo v5, "window"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/view/WindowManager;

    .line 4293
    .local v27, "wm":Landroid/view/WindowManager;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/ui/PhotoViewer;->attachedToWindow:Z

    if-eqz v4, :cond_4

    .line 4295
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->windowView:Landroid/widget/FrameLayout;

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 4303
    :cond_4
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x63

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 4304
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_b

    .line 4305
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v5, -0x7ffefef8

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4312
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x110

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 4313
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->windowView:Landroid/widget/FrameLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 4314
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->setFocusable(Z)V

    .line 4315
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->windowView:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, v27

    invoke-interface {v0, v4, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 4321
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/telegram/ui/PhotoViewer;->doneButtonPressed:Z

    .line 4322
    move-object/from16 v0, p7

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/PhotoViewer;->parentChatActivity:Lorg/telegram/ui/ChatActivity;

    .line 4324
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v5, "Of"

    const v6, 0x7f070453

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 4325
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->FileDidFailedLoad:I

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v5}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 4326
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->FileDidLoaded:I

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v5}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 4327
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->FileLoadProgressChanged:I

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v5}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 4328
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->mediaCountDidLoaded:I

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v5}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 4329
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->mediaDidLoaded:I

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v5}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 4330
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->dialogPhotosLoaded:I

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v5}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 4331
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->emojiDidLoaded:I

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v5}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 4332
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->FilePreparingFailed:I

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v5}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 4333
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->FileNewChunkAvailable:I

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v5}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 4335
    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    .line 4336
    move-wide/from16 v0, p10

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    .line 4337
    move-wide/from16 v0, p8

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/ui/PhotoViewer;->currentDialogId:J

    .line 4339
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v4, :cond_5

    .line 4340
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/PhotoViewer;->velocityTracker:Landroid/view/VelocityTracker;

    .line 4343
    :cond_5
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/telegram/ui/PhotoViewer;->isVisible:Z

    .line 4344
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lorg/telegram/ui/PhotoViewer;->toggleActionBar(ZZ)V

    .line 4346
    if-eqz v10, :cond_12

    .line 4347
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/telegram/ui/PhotoViewer;->disableShowCheck:Z

    .line 4348
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/ui/PhotoViewer;->animationInProgress:I

    .line 4349
    if-eqz p1, :cond_6

    .line 4350
    iget-object v4, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/PhotoViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    :cond_6
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    .line 4353
    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/PhotoViewer;->onPhotoShow(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/util/ArrayList;Ljava/util/ArrayList;ILorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V

    .line 4355
    iget-object v4, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getDrawRegion()Landroid/graphics/Rect;

    move-result-object v18

    .line 4356
    .local v18, "drawRegion":Landroid/graphics/Rect;
    iget-object v4, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getOrientation()I

    move-result v22

    .line 4357
    .local v22, "orientation":I
    iget-object v4, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getAnimatedOrientation()I

    move-result v11

    .line 4358
    .local v11, "animatedOrientation":I
    if-eqz v11, :cond_7

    .line 4359
    move/from16 v22, v11

    .line 4362
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/ClippingImageView;->setVisibility(I)V

    .line 4363
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    iget v5, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->radius:I

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/ClippingImageView;->setRadius(I)V

    .line 4364
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/ClippingImageView;->setOrientation(I)V

    .line 4365
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    iget v4, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->radius:I

    if-eqz v4, :cond_c

    const/4 v4, 0x1

    :goto_3
    invoke-virtual {v5, v4}, Lorg/telegram/ui/Components/ClippingImageView;->setNeedRadius(Z)V

    .line 4366
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    iget-object v5, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->thumb:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/ClippingImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 4368
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/ClippingImageView;->setAlpha(F)V

    .line 4369
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/ClippingImageView;->setPivotX(F)V

    .line 4370
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/ClippingImageView;->setPivotY(F)V

    .line 4371
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    iget v5, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->scale:F

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/ClippingImageView;->setScaleX(F)V

    .line 4372
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    iget v5, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->scale:F

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/ClippingImageView;->setScaleY(F)V

    .line 4373
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    iget v5, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewX:I

    int-to-float v5, v5

    move-object/from16 v0, v18

    iget v6, v0, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget v7, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->scale:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/ClippingImageView;->setTranslationX(F)V

    .line 4374
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    iget v5, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    int-to-float v5, v5

    move-object/from16 v0, v18

    iget v6, v0, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    iget v7, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->scale:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/ClippingImageView;->setTranslationY(F)V

    .line 4375
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ClippingImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    .line 4376
    .local v21, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    move-object/from16 v0, v21

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4377
    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    move-object/from16 v0, v21

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 4378
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/ClippingImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4380
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    move-object/from16 v0, v21

    iget v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v5, v5

    div-float v24, v4, v5

    .line 4381
    .local v24, "scaleX":F
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v5, v4, Landroid/graphics/Point;->y:I

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v4, v6, :cond_d

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_4
    add-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, v21

    iget v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v5, v5

    div-float v25, v4, v5

    .line 4382
    .local v25, "scaleY":F
    cmpl-float v4, v24, v25

    if-lez v4, :cond_e

    move/from16 v23, v25

    .line 4383
    .local v23, "scale":F
    :goto_5
    move-object/from16 v0, v21

    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v4, v4

    mul-float v26, v4, v23

    .line 4384
    .local v26, "width":F
    move-object/from16 v0, v21

    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v4, v4

    mul-float v20, v4, v23

    .line 4385
    .local v20, "height":F
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    sub-float v4, v4, v26

    const/high16 v5, 0x40000000    # 2.0f

    div-float v28, v4, v5

    .line 4386
    .local v28, "xPos":F
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v5, v4, Landroid/graphics/Point;->y:I

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v4, v6, :cond_f

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_6
    add-int/2addr v4, v5

    int-to-float v4, v4

    sub-float v4, v4, v20

    const/high16 v5, 0x40000000    # 2.0f

    div-float v29, v4, v5

    .line 4387
    .local v29, "yPos":F
    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget-object v5, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getImageX()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v14

    .line 4388
    .local v14, "clipHorizontal":I
    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget-object v5, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getImageY()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v16

    .line 4390
    .local v16, "clipVertical":I
    const/4 v4, 0x2

    new-array v0, v4, [I

    move-object/from16 v17, v0

    .line 4391
    .local v17, "coords2":[I
    iget-object v4, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 4392
    const/4 v4, 0x1

    aget v5, v17, v4

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v4, v6, :cond_10

    const/4 v4, 0x0

    :goto_7
    sub-int v4, v5, v4

    iget v5, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    move-object/from16 v0, v18

    iget v6, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    iget v5, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->clipTopAddition:I

    add-int v15, v4, v5

    .line 4393
    .local v15, "clipTop":I
    if-gez v15, :cond_8

    .line 4394
    const/4 v15, 0x0

    .line 4396
    :cond_8
    iget v4, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    move-object/from16 v0, v21

    iget v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v5, v4

    const/4 v4, 0x1

    aget v4, v17, v4

    iget-object v6, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v4

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v4, v7, :cond_11

    const/4 v4, 0x0

    :goto_8
    sub-int v4, v6, v4

    sub-int v4, v5, v4

    iget v5, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->clipBottomAddition:I

    add-int v13, v4, v5

    .line 4397
    .local v13, "clipBottom":I
    if-gez v13, :cond_9

    .line 4398
    const/4 v13, 0x0

    .line 4400
    :cond_9
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 4401
    move/from16 v0, v16

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 4403
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/ClippingImageView;->getScaleX()F

    move-result v6

    aput v6, v4, v5

    .line 4404
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/ClippingImageView;->getScaleY()F

    move-result v6

    aput v6, v4, v5

    .line 4405
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/ClippingImageView;->getTranslationX()F

    move-result v6

    aput v6, v4, v5

    .line 4406
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x3

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/ClippingImageView;->getTranslationY()F

    move-result v6

    aput v6, v4, v5

    .line 4407
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x4

    int-to-float v6, v14

    iget v7, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->scale:F

    mul-float/2addr v6, v7

    aput v6, v4, v5

    .line 4408
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x5

    int-to-float v6, v15

    iget v7, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->scale:F

    mul-float/2addr v6, v7

    aput v6, v4, v5

    .line 4409
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x6

    int-to-float v6, v13

    iget v7, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->scale:F

    mul-float/2addr v6, v7

    aput v6, v4, v5

    .line 4410
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x7

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/ClippingImageView;->getRadius()I

    move-result v6

    int-to-float v6, v6

    aput v6, v4, v5

    .line 4412
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x0

    aput v23, v4, v5

    .line 4413
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x1

    aput v23, v4, v5

    .line 4414
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x2

    aput v28, v4, v5

    .line 4415
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x3

    aput v29, v4, v5

    .line 4416
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x4

    const/4 v6, 0x0

    aput v6, v4, v5

    .line 4417
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x5

    const/4 v6, 0x0

    aput v6, v4, v5

    .line 4418
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x6

    const/4 v6, 0x0

    aput v6, v4, v5

    .line 4419
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x7

    const/4 v6, 0x0

    aput v6, v4, v5

    .line 4421
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/ClippingImageView;->setAnimationProgress(F)V

    .line 4422
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->backgroundDrawable:Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;->setAlpha(I)V

    .line 4423
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->setAlpha(F)V

    .line 4425
    new-instance v12, Landroid/animation/AnimatorSet;

    invoke-direct {v12}, Landroid/animation/AnimatorSet;-><init>()V

    .line 4426
    .local v12, "animatorSet":Landroid/animation/AnimatorSet;
    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    const-string/jumbo v7, "animationProgress"

    const/4 v8, 0x2

    new-array v8, v8, [F

    fill-array-data v8, :array_0

    .line 4427
    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/PhotoViewer;->backgroundDrawable:Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;

    const-string/jumbo v7, "alpha"

    const/4 v8, 0x2

    new-array v8, v8, [I

    fill-array-data v8, :array_1

    .line 4428
    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    const-string/jumbo v7, "alpha"

    const/4 v8, 0x2

    new-array v8, v8, [F

    fill-array-data v8, :array_2

    .line 4429
    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v4, v5

    .line 4426
    invoke-virtual {v12, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 4432
    new-instance v4, Lorg/telegram/ui/PhotoViewer$52;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/PhotoViewer$52;-><init>(Lorg/telegram/ui/PhotoViewer;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animationEndRunnable:Ljava/lang/Runnable;

    .line 4469
    const-wide/16 v4, 0xc8

    invoke-virtual {v12, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 4470
    new-instance v4, Lorg/telegram/ui/PhotoViewer$53;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/PhotoViewer$53;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v12, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4485
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/telegram/ui/PhotoViewer;->transitionAnimationStartTime:J

    .line 4486
    new-instance v4, Lorg/telegram/ui/PhotoViewer$54;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v12}, Lorg/telegram/ui/PhotoViewer$54;-><init>(Lorg/telegram/ui/PhotoViewer;Landroid/animation/AnimatorSet;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 4494
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x12

    if-lt v4, v5, :cond_a

    .line 4495
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->setLayerType(ILandroid/graphics/Paint;)V

    .line 4497
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->backgroundDrawable:Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;

    new-instance v5, Lorg/telegram/ui/PhotoViewer$55;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v10}, Lorg/telegram/ui/PhotoViewer$55;-><init>(Lorg/telegram/ui/PhotoViewer;Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V

    invoke-static {v4, v5}, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;->access$13302(Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 4523
    .end local v11    # "animatedOrientation":I
    .end local v12    # "animatorSet":Landroid/animation/AnimatorSet;
    .end local v13    # "clipBottom":I
    .end local v14    # "clipHorizontal":I
    .end local v15    # "clipTop":I
    .end local v16    # "clipVertical":I
    .end local v17    # "coords2":[I
    .end local v18    # "drawRegion":Landroid/graphics/Rect;
    .end local v20    # "height":F
    .end local v21    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v22    # "orientation":I
    .end local v23    # "scale":F
    .end local v24    # "scaleX":F
    .end local v25    # "scaleY":F
    .end local v26    # "width":F
    .end local v28    # "xPos":F
    .end local v29    # "yPos":F
    :goto_9
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 4310
    :cond_b
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x8

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 4316
    :catch_0
    move-exception v19

    .line 4317
    .local v19, "e":Ljava/lang/Exception;
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 4318
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 4365
    .end local v19    # "e":Ljava/lang/Exception;
    .restart local v11    # "animatedOrientation":I
    .restart local v18    # "drawRegion":Landroid/graphics/Rect;
    .restart local v22    # "orientation":I
    :cond_c
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 4381
    .restart local v21    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .restart local v24    # "scaleX":F
    :cond_d
    const/4 v4, 0x0

    goto/16 :goto_4

    .restart local v25    # "scaleY":F
    :cond_e
    move/from16 v23, v24

    .line 4382
    goto/16 :goto_5

    .line 4386
    .restart local v20    # "height":F
    .restart local v23    # "scale":F
    .restart local v26    # "width":F
    .restart local v28    # "xPos":F
    :cond_f
    const/4 v4, 0x0

    goto/16 :goto_6

    .line 4392
    .restart local v14    # "clipHorizontal":I
    .restart local v16    # "clipVertical":I
    .restart local v17    # "coords2":[I
    .restart local v29    # "yPos":F
    :cond_10
    sget v4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto/16 :goto_7

    .line 4396
    .restart local v15    # "clipTop":I
    :cond_11
    sget v4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto/16 :goto_8

    .line 4505
    .end local v11    # "animatedOrientation":I
    .end local v14    # "clipHorizontal":I
    .end local v15    # "clipTop":I
    .end local v16    # "clipVertical":I
    .end local v17    # "coords2":[I
    .end local v18    # "drawRegion":Landroid/graphics/Rect;
    .end local v20    # "height":F
    .end local v21    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v22    # "orientation":I
    .end local v23    # "scale":F
    .end local v24    # "scaleX":F
    .end local v25    # "scaleY":F
    .end local v26    # "width":F
    .end local v28    # "xPos":F
    .end local v29    # "yPos":F
    :cond_12
    if-eqz p4, :cond_13

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/PhotoViewer;->sendPhotoType:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_13

    .line 4506
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_14

    .line 4507
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v5, -0x7ffeff00

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4513
    :goto_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x110

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 4514
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->windowView:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, v27

    invoke-interface {v0, v4, v5}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4515
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->windowView:Landroid/widget/FrameLayout;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 4516
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->setFocusable(Z)V

    .line 4519
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->backgroundDrawable:Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;

    const/16 v5, 0xff

    invoke-virtual {v4, v5}, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;->setAlpha(I)V

    .line 4520
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->setAlpha(F)V

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    .line 4521
    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/PhotoViewer;->onPhotoShow(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/util/ArrayList;Ljava/util/ArrayList;ILorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V

    goto/16 :goto_9

    .line 4511
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v5, 0x0

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_a

    .line 4296
    :catch_1
    move-exception v4

    goto/16 :goto_1

    .line 4426
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 4427
    :array_1
    .array-data 4
        0x0
        0xff
    .end array-data

    .line 4428
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public openPhoto(Lorg/telegram/tgnet/TLRPC$FileLocation;Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)Z
    .locals 12
    .param p1, "fileLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p2, "provider"    # Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v1, 0x0

    .line 4254
    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, v1

    move-object v4, v1

    move-object v6, p2

    move-object v7, v1

    move-wide v10, v8

    invoke-virtual/range {v0 .. v11}, Lorg/telegram/ui/PhotoViewer;->openPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/util/ArrayList;Ljava/util/ArrayList;ILorg/telegram/ui/PhotoViewer$PhotoViewerProvider;Lorg/telegram/ui/ChatActivity;JJ)Z

    move-result v0

    return v0
.end method

.method public openPhotoForSelect(Ljava/util/ArrayList;IILorg/telegram/ui/PhotoViewer$PhotoViewerProvider;Lorg/telegram/ui/ChatActivity;)Z
    .locals 12
    .param p2, "index"    # I
    .param p3, "type"    # I
    .param p4, "provider"    # Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;
    .param p5, "chatActivity"    # Lorg/telegram/ui/ChatActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;II",
            "Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;",
            "Lorg/telegram/ui/ChatActivity;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 4262
    .local p1, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iput p3, p0, Lorg/telegram/ui/PhotoViewer;->sendPhotoType:I

    .line 4263
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    if-eqz v0, :cond_0

    .line 4264
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    iget-object v1, v0, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->doneButton:Landroid/widget/TextView;

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->sendPhotoType:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const-string/jumbo v0, "Set"

    const v2, 0x7f0705aa

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4266
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    move-object v0, p0

    move-object v4, p1

    move v5, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v0 .. v11}, Lorg/telegram/ui/PhotoViewer;->openPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/util/ArrayList;Ljava/util/ArrayList;ILorg/telegram/ui/PhotoViewer$PhotoViewerProvider;Lorg/telegram/ui/ChatActivity;JJ)Z

    move-result v0

    return v0

    .line 4264
    :cond_1
    const-string/jumbo v0, "Send"

    const v2, 0x7f07058b

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setAnimationValue(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 5238
    iput p1, p0, Lorg/telegram/ui/PhotoViewer;->animationValue:F

    .line 5239
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->invalidate()V

    .line 5240
    return-void
.end method

.method public setParentActivity(Landroid/app/Activity;)V
    .locals 28
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1132
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    move-object/from16 v0, p1

    if-ne v2, v0, :cond_0

    .line 2418
    :goto_0
    return-void

    .line 1135
    :cond_0
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    .line 1136
    new-instance v2, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    const v4, 0x7f090007

    invoke-direct {v2, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actvityContext:Landroid/content/Context;

    .line 1138
    sget-object v2, Lorg/telegram/ui/PhotoViewer;->progressDrawables:[Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_1

    .line 1139
    const/4 v2, 0x4

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    sput-object v2, Lorg/telegram/ui/PhotoViewer;->progressDrawables:[Landroid/graphics/drawable/Drawable;

    .line 1140
    sget-object v2, Lorg/telegram/ui/PhotoViewer;->progressDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02005a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1141
    sget-object v2, Lorg/telegram/ui/PhotoViewer;->progressDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020048

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1142
    sget-object v2, Lorg/telegram/ui/PhotoViewer;->progressDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02012d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1143
    sget-object v2, Lorg/telegram/ui/PhotoViewer;->progressDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020229

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1146
    :cond_1
    new-instance v2, Landroid/widget/Scroller;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->scroller:Landroid/widget/Scroller;

    .line 1148
    new-instance v2, Lorg/telegram/ui/PhotoViewer$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/PhotoViewer$2;-><init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->windowView:Landroid/widget/FrameLayout;

    .line 1278
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->windowView:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->backgroundDrawable:Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1279
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->windowView:Landroid/widget/FrameLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 1280
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->windowView:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 1282
    new-instance v2, Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/ClippingImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    .line 1283
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ClippingImageView;->setAnimationValues([[F)V

    .line 1284
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->windowView:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    const/16 v4, 0x28

    const/high16 v5, 0x42200000    # 40.0f

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1286
    new-instance v2, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;-><init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    .line 1287
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->setFocusable(Z)V

    .line 1288
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->windowView:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/16 v6, 0x33

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1289
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_2

    .line 1290
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->setFitsSystemWindows(Z)V

    .line 1291
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    new-instance v3, Lorg/telegram/ui/PhotoViewer$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PhotoViewer$3;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 1303
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    const/16 v3, 0x500

    invoke-virtual {v2, v3}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->setSystemUiVisibility(I)V

    .line 1306
    :cond_2
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 1307
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x1

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1308
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1309
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x1

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1310
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x33

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1311
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x63

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1312
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_8

    .line 1313
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v3, -0x7ffefef8

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1321
    :goto_1
    new-instance v2, Lorg/telegram/ui/ActionBar/ActionBar;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lorg/telegram/ui/ActionBar/ActionBar;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 1322
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 1323
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitleColor(I)V

    .line 1324
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/high16 v3, 0x7f000000

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 1325
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v2, v4, :cond_9

    const/4 v2, 0x1

    :goto_2
    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 1326
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v3, 0x40ffffff    # 7.9999995f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 1329
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200b6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 1330
    .local v9, "back":Landroid/graphics/drawable/Drawable;
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "theme"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v23

    .line 1332
    .local v23, "themePrefs":Landroid/content/SharedPreferences;
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->chatHeaderIconsColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v9, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1333
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2, v9}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1334
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->chatHeaderIconsColor:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 1335
    const-string/jumbo v2, "themeColor"

    const v3, -0xff6978

    move-object/from16 v0, v23

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 1338
    .local v11, "def":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->chatHeaderColor:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 1339
    const-string/jumbo v2, "chatHeaderGradient"

    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v25

    .line 1340
    .local v25, "val":I
    if-lez v25, :cond_3

    .line 1342
    packed-switch v25, :pswitch_data_0

    .line 1353
    sget-object v13, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 1355
    .local v13, "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    :goto_3
    const-string/jumbo v2, "chatHeaderGradientColor"

    move-object/from16 v0, v23

    invoke-interface {v0, v2, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    .line 1356
    .local v14, "gradColor":I
    const/4 v2, 0x2

    new-array v10, v2, [I

    const/4 v2, 0x0

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->chatHeaderColor:I

    aput v3, v10, v2

    const/4 v2, 0x1

    aput v14, v10, v2

    .line 1357
    .local v10, "colors":[I
    new-instance v12, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v12, v13, v10}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 1358
    .local v12, "gd":Landroid/graphics/drawable/GradientDrawable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2, v12}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1361
    .end local v10    # "colors":[I
    .end local v12    # "gd":Landroid/graphics/drawable/GradientDrawable;
    .end local v13    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    .end local v14    # "gradColor":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v3, "Of"

    const v4, 0x7f070453

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1362
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v4, -0x1

    const/high16 v5, -0x40000000    # -2.0f

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1364
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v3, Lorg/telegram/ui/PhotoViewer$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PhotoViewer$4;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 1627
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v19

    .line 1629
    .local v19, "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    const/16 v2, 0xd

    const v3, 0x7f0200e5

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->masksItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 1631
    const/4 v2, 0x0

    const v3, 0x7f0200bd

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 1632
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0xb

    const-string/jumbo v4, "OpenInExternalApp"

    const v5, 0x7f070464

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    .line 1633
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x2

    const-string/jumbo v4, "ShowAllMedia"

    const v5, 0x7f0705d0

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    .line 1634
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0xa

    const-string/jumbo v4, "ShareFile"

    const v5, 0x7f0705bd

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    .line 1635
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x1

    const-string/jumbo v4, "SaveToGallery"

    const v5, 0x7f070564

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    .line 1636
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x6

    const-string/jumbo v4, "Delete"

    const v5, 0x7f0701d9

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    .line 1637
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0x14

    const-string/jumbo v4, "GoToMessage"

    const v5, 0x7f0702a6

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    .line 1638
    new-instance v2, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->actvityContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    .line 1639
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    const/high16 v3, 0x7f000000

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1640
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    const/4 v4, -0x1

    const/16 v5, 0x30

    const/16 v6, 0x53

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1642
    new-instance v2, Lorg/telegram/ui/PhotoViewer$5;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->actvityContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lorg/telegram/ui/PhotoViewer$5;-><init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionTextViewOld:Landroid/widget/TextView;

    .line 1648
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionTextViewOld:Landroid/widget/TextView;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1649
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionTextViewOld:Landroid/widget/TextView;

    const/high16 v3, 0x7f000000

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1650
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionTextViewOld:Landroid/widget/TextView;

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1651
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionTextViewOld:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 1652
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionTextViewOld:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1653
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionTextViewOld:Landroid/widget/TextView;

    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 1654
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionTextViewOld:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1655
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionTextViewOld:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1656
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->captionTextViewOld:Landroid/widget/TextView;

    move-object/from16 v27, v0

    const/4 v2, -0x1

    const/high16 v3, -0x40000000    # -2.0f

    const/16 v4, 0x53

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-boolean v8, Lorg/telegram/ui/ActionBar/Theme;->plusShowPhotoQualityBar:Z

    if-eqz v8, :cond_a

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/ui/PhotoViewer;->photoQualityLayoutSize:I

    :goto_4
    add-int/lit8 v8, v8, 0x30

    int-to-float v8, v8

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1657
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionTextViewOld:Landroid/widget/TextView;

    new-instance v3, Lorg/telegram/ui/PhotoViewer$6;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PhotoViewer$6;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1666
    new-instance v2, Lorg/telegram/ui/PhotoViewer$7;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->actvityContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lorg/telegram/ui/PhotoViewer$7;-><init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionTextViewNew:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    .line 1672
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionTextViewNew:Landroid/widget/TextView;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1673
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionTextViewNew:Landroid/widget/TextView;

    const/high16 v3, 0x7f000000

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1674
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionTextViewNew:Landroid/widget/TextView;

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1675
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionTextViewNew:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 1676
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionTextViewNew:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1677
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionTextViewNew:Landroid/widget/TextView;

    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 1678
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionTextViewNew:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1679
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionTextViewNew:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1680
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->captionTextViewNew:Landroid/widget/TextView;

    move-object/from16 v27, v0

    const/4 v2, -0x1

    const/high16 v3, -0x40000000    # -2.0f

    const/16 v4, 0x53

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-boolean v8, Lorg/telegram/ui/ActionBar/Theme;->plusShowPhotoQualityBar:Z

    if-eqz v8, :cond_b

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/ui/PhotoViewer;->photoQualityLayoutSize:I

    :goto_5
    add-int/lit8 v8, v8, 0x30

    int-to-float v8, v8

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1681
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionTextViewNew:Landroid/widget/TextView;

    new-instance v3, Lorg/telegram/ui/PhotoViewer$8;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PhotoViewer$8;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1690
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    const/4 v3, 0x0

    new-instance v4, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v5}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5, v6}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;-><init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;Landroid/view/View;)V

    aput-object v4, v2, v3

    .line 1691
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setBackgroundState(IZ)V

    .line 1692
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    const/4 v3, 0x1

    new-instance v4, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v5}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5, v6}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;-><init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;Landroid/view/View;)V

    aput-object v4, v2, v3

    .line 1693
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setBackgroundState(IZ)V

    .line 1694
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    const/4 v3, 0x2

    new-instance v4, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v5}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5, v6}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;-><init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;Landroid/view/View;)V

    aput-object v4, v2, v3

    .line 1695
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setBackgroundState(IZ)V

    .line 1697
    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v3}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->shareButton:Landroid/widget/ImageView;

    .line 1698
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->shareButton:Landroid/widget/ImageView;

    const v3, 0x7f020246

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1699
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->shareButton:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1700
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->shareButton:Landroid/widget/ImageView;

    const v3, 0x40ffffff    # 7.9999995f

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1701
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->shareButton:Landroid/widget/ImageView;

    const/16 v4, 0x32

    const/4 v5, -0x1

    const/16 v6, 0x35

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1702
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->shareButton:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/PhotoViewer$9;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PhotoViewer$9;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1709
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v3}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->nameTextView:Landroid/widget/TextView;

    .line 1710
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->nameTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1711
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->nameTextView:Landroid/widget/TextView;

    const-string/jumbo v3, "fonts/rmedium.ttf"

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1712
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->nameTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1713
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->nameTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1714
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->nameTextView:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1715
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->nameTextView:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1716
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->nameTextView:Landroid/widget/TextView;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 1717
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->nameTextView:Landroid/widget/TextView;

    move-object/from16 v27, v0

    const/4 v2, -0x1

    const/high16 v3, -0x40000000    # -2.0f

    const/16 v4, 0x33

    const/high16 v5, 0x41800000    # 16.0f

    const/high16 v6, 0x40a00000    # 5.0f

    const/high16 v7, 0x42700000    # 60.0f

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1719
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v3}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->dateTextView:Landroid/widget/TextView;

    .line 1720
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->dateTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41500000    # 13.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1721
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->dateTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1722
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->dateTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1723
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->dateTextView:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1724
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->dateTextView:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1725
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->dateTextView:Landroid/widget/TextView;

    const-string/jumbo v3, "fonts/rmedium.ttf"

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1726
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->dateTextView:Landroid/widget/TextView;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 1727
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->dateTextView:Landroid/widget/TextView;

    move-object/from16 v27, v0

    const/4 v2, -0x1

    const/high16 v3, -0x40000000    # -2.0f

    const/16 v4, 0x33

    const/high16 v5, 0x41800000    # 16.0f

    const/high16 v6, 0x41c80000    # 25.0f

    const/high16 v7, 0x42480000    # 50.0f

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1729
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_4

    .line 1730
    new-instance v2, Lorg/telegram/ui/Components/SeekBar;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v3}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/telegram/ui/Components/SeekBar;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->videoPlayerSeekbar:Lorg/telegram/ui/Components/SeekBar;

    .line 1731
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->videoPlayerSeekbar:Lorg/telegram/ui/Components/SeekBar;

    const v3, 0x66ffffff

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-virtual {v2, v3, v4, v5}, Lorg/telegram/ui/Components/SeekBar;->setColors(III)V

    .line 1732
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->videoPlayerSeekbar:Lorg/telegram/ui/Components/SeekBar;

    new-instance v3, Lorg/telegram/ui/PhotoViewer$10;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PhotoViewer$10;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/SeekBar;->setDelegate(Lorg/telegram/ui/Components/SeekBar$SeekBarDelegate;)V

    .line 1744
    new-instance v2, Lorg/telegram/ui/PhotoViewer$11;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v3}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lorg/telegram/ui/PhotoViewer$11;-><init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    .line 1803
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 1804
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/16 v6, 0x33

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1806
    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v3}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->videoPlayButton:Landroid/widget/ImageView;

    .line 1807
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->videoPlayButton:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1808
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->videoPlayButton:Landroid/widget/ImageView;

    const/16 v4, 0x30

    const/16 v5, 0x30

    const/16 v6, 0x33

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1809
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->videoPlayButton:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/PhotoViewer$12;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PhotoViewer$12;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1826
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v3}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->videoPlayerTime:Landroid/widget/TextView;

    .line 1827
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->videoPlayerTime:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1828
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->videoPlayerTime:Landroid/widget/TextView;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 1829
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->videoPlayerTime:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41500000    # 13.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1830
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->videoPlayerTime:Landroid/widget/TextView;

    move-object/from16 v27, v0

    const/4 v2, -0x2

    const/high16 v3, -0x40800000    # -1.0f

    const/16 v4, 0x35

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x41000000    # 8.0f

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1832
    new-instance v2, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->videoTimelineViewContainer:Landroid/widget/FrameLayout;

    .line 1833
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->videoTimelineViewContainer:Landroid/widget/FrameLayout;

    const/high16 v3, 0x7f000000

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1834
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->videoTimelineViewContainer:Landroid/widget/FrameLayout;

    move-object/from16 v27, v0

    const/4 v2, -0x1

    const/high16 v3, 0x42500000    # 52.0f

    const/16 v4, 0x53

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x42c00000    # 96.0f

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1836
    new-instance v2, Lorg/telegram/ui/Components/VideoTimelineView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lorg/telegram/ui/Components/VideoTimelineView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    .line 1837
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    new-instance v3, Lorg/telegram/ui/PhotoViewer$13;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PhotoViewer$13;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/VideoTimelineView;->setDelegate(Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;)V

    .line 1864
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->videoTimelineViewContainer:Landroid/widget/FrameLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    move-object/from16 v27, v0

    const/4 v2, -0x1

    const/high16 v3, 0x42300000    # 44.0f

    const/16 v4, 0x33

    const/4 v5, 0x0

    const/high16 v6, 0x41000000    # 8.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1866
    new-instance v2, Lorg/telegram/ui/Components/RadialProgressView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lorg/telegram/ui/Components/RadialProgressView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    .line 1867
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RadialProgressView;->setProgressColor(I)V

    .line 1868
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const v3, 0x7f02005a

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RadialProgressView;->setBackgroundResource(I)V

    .line 1869
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RadialProgressView;->setVisibility(I)V

    .line 1870
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    move-object/from16 v27, v0

    const/16 v2, 0x36

    const/high16 v3, 0x42580000    # 54.0f

    const/16 v4, 0x11

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x42700000    # 60.0f

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1872
    new-instance v2, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    .line 1873
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const/high16 v3, 0x7f000000

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->setBackgroundColor(I)V

    .line 1874
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->updateSelectedCount(IZ)V

    .line 1875
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const/high16 v3, 0x42f00000    # 120.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->setTranslationY(F)V

    .line 1876
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    iget-object v2, v2, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->doneButton:Landroid/widget/TextView;

    const-string/jumbo v3, "Done"

    const v4, 0x7f070207

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1877
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const/4 v4, -0x1

    const/16 v5, 0x30

    const/16 v6, 0x53

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1878
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    iget-object v2, v2, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->cancelButton:Landroid/widget/TextView;

    new-instance v3, Lorg/telegram/ui/PhotoViewer$14;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PhotoViewer$14;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1887
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    iget-object v2, v2, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->doneButton:Landroid/widget/TextView;

    new-instance v3, Lorg/telegram/ui/PhotoViewer$15;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PhotoViewer$15;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1895
    new-instance v2, Lorg/telegram/ui/PhotoViewer$QualityChooseView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lorg/telegram/ui/PhotoViewer$QualityChooseView;-><init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->qualityChooseView:Lorg/telegram/ui/PhotoViewer$QualityChooseView;

    .line 1896
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->qualityChooseView:Lorg/telegram/ui/PhotoViewer$QualityChooseView;

    const/high16 v3, 0x42f00000    # 120.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->setTranslationY(F)V

    .line 1897
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->qualityChooseView:Lorg/telegram/ui/PhotoViewer$QualityChooseView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->setVisibility(I)V

    .line 1898
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->qualityChooseView:Lorg/telegram/ui/PhotoViewer$QualityChooseView;

    const/high16 v3, 0x7f000000

    invoke-virtual {v2, v3}, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->setBackgroundColor(I)V

    .line 1899
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->qualityChooseView:Lorg/telegram/ui/PhotoViewer$QualityChooseView;

    move-object/from16 v27, v0

    const/4 v2, -0x1

    const/high16 v3, 0x428c0000    # 70.0f

    const/16 v4, 0x53

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x42c00000    # 96.0f

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1902
    :cond_4
    new-instance v2, Lorg/telegram/ui/PhotoViewer$16;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->actvityContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lorg/telegram/ui/PhotoViewer$16;-><init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    .line 1918
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const/high16 v3, 0x7f000000

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->setBackgroundColor(I)V

    .line 1919
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const/4 v4, -0x1

    const/16 v5, 0x30

    const/16 v6, 0x53

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1920
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    iget-object v2, v2, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->cancelButton:Landroid/widget/TextView;

    new-instance v3, Lorg/telegram/ui/PhotoViewer$17;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PhotoViewer$17;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1930
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    iget-object v2, v2, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->doneButton:Landroid/widget/TextView;

    new-instance v3, Lorg/telegram/ui/PhotoViewer$18;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PhotoViewer$18;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1969
    new-instance v2, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->actvityContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoQualityLayout:Landroid/widget/FrameLayout;

    .line 1970
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoQualityLayout:Landroid/widget/FrameLayout;

    const/high16 v3, 0x7f000000

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1971
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoQualityLayout:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1972
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->photoQualityLayout:Landroid/widget/FrameLayout;

    move-object/from16 v27, v0

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/PhotoViewer;->photoQualityLayoutSize:I

    int-to-float v3, v3

    const/16 v4, 0x50

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x42400000    # 48.0f

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1973
    new-instance v2, Landroid/widget/SeekBar;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->actvityContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->qualityBar:Landroid/widget/SeekBar;

    .line 1974
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->qualityBar:Landroid/widget/SeekBar;

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    const/high16 v5, 0x42960000    # 75.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/SeekBar;->setPadding(IIII)V

    .line 1975
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->qualityBar:Landroid/widget/SeekBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setBackgroundColor(I)V

    .line 1976
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->qualityBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    const/4 v4, -0x1

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1977
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_5

    .line 1978
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->qualityBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, -0x1

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1980
    :cond_5
    const/16 v22, 0x1

    .line 1981
    .local v22, "step":I
    const/16 v18, 0x64

    .line 1982
    .local v18, "max":I
    const/16 v20, 0x1

    .line 1983
    .local v20, "min":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->qualityBar:Landroid/widget/SeekBar;

    const/16 v3, 0x63

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1984
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->qualityBar:Landroid/widget/SeekBar;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->plusPhotoQuality:I

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1985
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->plusPhotoQuality:I

    mul-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->barQualityValue:I

    .line 1986
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoQualityLayout:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->qualityBar:Landroid/widget/SeekBar;

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x3

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1988
    new-instance v24, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actvityContext:Landroid/content/Context;

    move-object/from16 v0, v24

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1989
    .local v24, "tvQuality":Landroid/widget/TextView;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1990
    const/4 v2, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1991
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->barQualityValue:I

    const/16 v4, 0x64

    if-le v2, v4, :cond_c

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    :goto_6
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1992
    const/4 v2, 0x1

    const/high16 v3, 0x41800000    # 16.0f

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1993
    const/4 v2, -0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1994
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoQualityLayout:Landroid/widget/FrameLayout;

    const/4 v3, -0x2

    const/4 v4, -0x1

    const/4 v5, 0x5

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v2, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1996
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->qualityBar:Landroid/widget/SeekBar;

    new-instance v3, Lorg/telegram/ui/PhotoViewer$19;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/PhotoViewer$19;-><init>(Lorg/telegram/ui/PhotoViewer;Landroid/widget/TextView;)V

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 2023
    new-instance v16, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2024
    .local v16, "itemsLayout":Landroid/widget/LinearLayout;
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2025
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const/4 v3, -0x2

    const/16 v4, 0x30

    const/16 v5, 0x31

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v3}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2027
    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->tuneItem:Landroid/widget/ImageView;

    .line 2028
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->tuneItem:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2029
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->tuneItem:Landroid/widget/ImageView;

    const v3, 0x7f020213

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2030
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->tuneItem:Landroid/widget/ImageView;

    const v3, 0x40ffffff    # 7.9999995f

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2031
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->tuneItem:Landroid/widget/ImageView;

    const/16 v3, 0x38

    const/16 v4, 0x30

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2032
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->tuneItem:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/PhotoViewer$20;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PhotoViewer$20;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2039
    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->paintItem:Landroid/widget/ImageView;

    .line 2040
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->paintItem:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2041
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->paintItem:Landroid/widget/ImageView;

    const v3, 0x7f02020b

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2042
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->paintItem:Landroid/widget/ImageView;

    const v3, 0x40ffffff    # 7.9999995f

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2043
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->paintItem:Landroid/widget/ImageView;

    const/16 v3, 0x38

    const/16 v4, 0x30

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2044
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->paintItem:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/PhotoViewer$21;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PhotoViewer$21;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2051
    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->cropItem:Landroid/widget/ImageView;

    .line 2052
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->cropItem:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2053
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->cropItem:Landroid/widget/ImageView;

    const v3, 0x7f020208

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2054
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->cropItem:Landroid/widget/ImageView;

    const v3, 0x40ffffff    # 7.9999995f

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2055
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->cropItem:Landroid/widget/ImageView;

    const/16 v3, 0x38

    const/16 v4, 0x30

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2056
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->cropItem:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/PhotoViewer$22;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PhotoViewer$22;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2063
    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionItem:Landroid/widget/ImageView;

    .line 2064
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionItem:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2065
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionItem:Landroid/widget/ImageView;

    const v3, 0x40ffffff    # 7.9999995f

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2066
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionItem:Landroid/widget/ImageView;

    const/16 v3, 0x38

    const/16 v4, 0x30

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2067
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionItem:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/PhotoViewer$23;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PhotoViewer$23;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2074
    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    .line 2075
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2076
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    const v3, 0x40ffffff    # 7.9999995f

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2077
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    const/16 v3, 0x38

    const/16 v4, 0x30

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2078
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/PhotoViewer$24;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PhotoViewer$24;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2086
    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->muteItem:Landroid/widget/ImageView;

    .line 2087
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->muteItem:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2088
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->muteItem:Landroid/widget/ImageView;

    const v3, 0x40ffffff    # 7.9999995f

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2089
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->muteItem:Landroid/widget/ImageView;

    const/16 v3, 0x38

    const/16 v4, 0x30

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2090
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->muteItem:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/PhotoViewer$25;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PhotoViewer$25;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2098
    new-instance v2, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->actvityContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->editorDoneLayout:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    .line 2099
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->editorDoneLayout:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const/high16 v3, 0x7f000000

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->setBackgroundColor(I)V

    .line 2100
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->editorDoneLayout:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->updateSelectedCount(IZ)V

    .line 2101
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->editorDoneLayout:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->setVisibility(I)V

    .line 2102
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->editorDoneLayout:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const/4 v4, -0x1

    const/16 v5, 0x30

    const/16 v6, 0x53

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2103
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->editorDoneLayout:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    iget-object v2, v2, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->cancelButton:Landroid/widget/TextView;

    new-instance v3, Lorg/telegram/ui/PhotoViewer$26;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PhotoViewer$26;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2112
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->editorDoneLayout:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    iget-object v2, v2, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->doneButton:Landroid/widget/TextView;

    new-instance v3, Lorg/telegram/ui/PhotoViewer$27;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PhotoViewer$27;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2123
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->actvityContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->resetButton:Landroid/widget/TextView;

    .line 2124
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->resetButton:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2125
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->resetButton:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2126
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->resetButton:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2127
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->resetButton:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 2128
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->resetButton:Landroid/widget/TextView;

    const v3, -0xc2c2c3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2129
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->resetButton:Landroid/widget/TextView;

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2130
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->resetButton:Landroid/widget/TextView;

    const-string/jumbo v3, "Reset"

    const v4, 0x7f0701b6

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2131
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->resetButton:Landroid/widget/TextView;

    const-string/jumbo v3, "fonts/rmedium.ttf"

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2132
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->editorDoneLayout:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->resetButton:Landroid/widget/TextView;

    const/4 v4, -0x2

    const/4 v5, -0x1

    const/16 v6, 0x31

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2133
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->resetButton:Landroid/widget/TextView;

    new-instance v3, Lorg/telegram/ui/PhotoViewer$28;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PhotoViewer$28;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2140
    new-instance v2, Landroid/view/GestureDetector;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v3}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v2, v3, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->gestureDetector:Landroid/view/GestureDetector;

    .line 2141
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->gestureDetector:Landroid/view/GestureDetector;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 2143
    new-instance v15, Lorg/telegram/ui/PhotoViewer$29;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lorg/telegram/ui/PhotoViewer$29;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    .line 2162
    .local v15, "imageReceiverDelegate":Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    .line 2163
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeAlpha(B)V

    .line 2164
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setInvalidateAll(Z)V

    .line 2165
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2, v15}, Lorg/telegram/messenger/ImageReceiver;->setDelegate(Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;)V

    .line 2166
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    .line 2167
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeAlpha(B)V

    .line 2168
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setInvalidateAll(Z)V

    .line 2169
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2, v15}, Lorg/telegram/messenger/ImageReceiver;->setDelegate(Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;)V

    .line 2170
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    .line 2171
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeAlpha(B)V

    .line 2172
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setInvalidateAll(Z)V

    .line 2173
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2, v15}, Lorg/telegram/messenger/ImageReceiver;->setDelegate(Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;)V

    .line 2175
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/WindowManager;

    .line 2176
    .local v17, "manager":Landroid/view/WindowManager;
    invoke-interface/range {v17 .. v17}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v21

    .line 2178
    .local v21, "rotation":I
    new-instance v2, Lorg/telegram/ui/PhotoViewer$30;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v3}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f020244

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4}, Lorg/telegram/ui/PhotoViewer$30;-><init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    .line 2184
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/CheckBox;->setDrawBackground(Z)V

    .line 2185
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/CheckBox;->setSize(I)V

    .line 2186
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/CheckBox;->setCheckOffset(I)V

    .line 2187
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    const v3, -0xc33511

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Components/CheckBox;->setColor(II)V

    .line 2188
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->defColor:I

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Components/CheckBox;->setColor(II)V

    .line 2189
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/CheckBox;->setVisibility(I)V

    .line 2190
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    move-object/from16 v27, v0

    const/16 v2, 0x2d

    const/high16 v3, 0x42340000    # 45.0f

    const/16 v4, 0x35

    const/4 v5, 0x0

    const/4 v6, 0x3

    move/from16 v0, v21

    if-eq v0, v6, :cond_6

    const/4 v6, 0x1

    move/from16 v0, v21

    if-ne v0, v6, :cond_d

    :cond_6
    const/high16 v6, 0x42680000    # 58.0f

    :goto_7
    const/high16 v7, 0x41200000    # 10.0f

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2191
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_7

    .line 2192
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/CheckBox;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2194
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    new-instance v3, Lorg/telegram/ui/PhotoViewer$31;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PhotoViewer$31;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2205
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->chatHeaderIconsColor:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    .line 2208
    new-instance v2, Lorg/telegram/ui/PhotoViewer$32;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->actvityContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PhotoViewer;->windowView:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lorg/telegram/ui/PhotoViewer$32;-><init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;Landroid/view/View;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    .line 2234
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    new-instance v3, Lorg/telegram/ui/PhotoViewer$33;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PhotoViewer$33;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->setDelegate(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$PhotoViewerCaptionEnterViewDelegate;)V

    .line 2263
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    const/4 v4, -0x1

    const/4 v5, -0x2

    const/16 v6, 0x53

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2265
    new-instance v2, Lorg/telegram/ui/PhotoViewer$34;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->actvityContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lorg/telegram/ui/PhotoViewer$34;-><init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 2281
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setTag(Ljava/lang/Object;)V

    .line 2282
    new-instance v2, Lorg/telegram/ui/PhotoViewer$35;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->actvityContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lorg/telegram/ui/PhotoViewer$35;-><init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->mentionLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    .line 2288
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->mentionLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->setOrientation(I)V

    .line 2289
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->mentionLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 2290
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v3, 0x7f000000

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setBackgroundColor(I)V

    .line 2291
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 2292
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setClipToPadding(Z)V

    .line 2293
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOverScrollMode(I)V

    .line 2294
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v4, -0x1

    const/16 v5, 0x6e

    const/16 v6, 0x53

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2296
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->actvityContext:Landroid/content/Context;

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    new-instance v8, Lorg/telegram/ui/PhotoViewer$36;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lorg/telegram/ui/PhotoViewer$36;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/Adapters/MentionsAdapter;-><init>(Landroid/content/Context;ZJLorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/PhotoViewer;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 2378
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setAllowNewMentions(Z)V

    .line 2380
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/PhotoViewer$37;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PhotoViewer$37;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 2397
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/PhotoViewer$38;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PhotoViewer$38;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    goto/16 :goto_0

    .line 1318
    .end local v9    # "back":Landroid/graphics/drawable/Drawable;
    .end local v11    # "def":I
    .end local v15    # "imageReceiverDelegate":Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;
    .end local v16    # "itemsLayout":Landroid/widget/LinearLayout;
    .end local v17    # "manager":Landroid/view/WindowManager;
    .end local v18    # "max":I
    .end local v19    # "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    .end local v20    # "min":I
    .end local v21    # "rotation":I
    .end local v22    # "step":I
    .end local v23    # "themePrefs":Landroid/content/SharedPreferences;
    .end local v24    # "tvQuality":Landroid/widget/TextView;
    .end local v25    # "val":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x8

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto/16 :goto_1

    .line 1325
    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 1344
    .restart local v9    # "back":Landroid/graphics/drawable/Drawable;
    .restart local v11    # "def":I
    .restart local v23    # "themePrefs":Landroid/content/SharedPreferences;
    .restart local v25    # "val":I
    :pswitch_0
    sget-object v13, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 1345
    .restart local v13    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    goto/16 :goto_3

    .line 1347
    .end local v13    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    :pswitch_1
    sget-object v13, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 1348
    .restart local v13    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    goto/16 :goto_3

    .line 1350
    .end local v13    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    :pswitch_2
    sget-object v13, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 1351
    .restart local v13    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    goto/16 :goto_3

    .line 1656
    .end local v13    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    .restart local v19    # "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    :cond_a
    const/4 v8, 0x0

    goto/16 :goto_4

    .line 1680
    :cond_b
    const/4 v8, 0x0

    goto/16 :goto_5

    .line 1991
    .restart local v18    # "max":I
    .restart local v20    # "min":I
    .restart local v22    # "step":I
    .restart local v24    # "tvQuality":Landroid/widget/TextView;
    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->barQualityValue:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_6

    .line 2190
    .restart local v15    # "imageReceiverDelegate":Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;
    .restart local v16    # "itemsLayout":Landroid/widget/LinearLayout;
    .restart local v17    # "manager":Landroid/view/WindowManager;
    .restart local v21    # "rotation":I
    :cond_d
    const/high16 v6, 0x42880000    # 68.0f

    goto/16 :goto_7

    .line 1342
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setParentAlert(Lorg/telegram/ui/Components/ChatAttachAlert;)V
    .locals 0
    .param p1, "alert"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 1128
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    .line 1129
    return-void
.end method

.method public setParentChatActivity(Lorg/telegram/ui/ChatActivity;)V
    .locals 0
    .param p1, "chatActivity"    # Lorg/telegram/ui/ChatActivity;

    .prologue
    .line 4246
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer;->parentChatActivity:Lorg/telegram/ui/ChatActivity;

    .line 4247
    return-void
.end method

.method public showAlertDialog(Lorg/telegram/ui/ActionBar/AlertDialog$Builder;)V
    .locals 3
    .param p1, "builder"    # Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .prologue
    .line 2689
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 2712
    :goto_0
    return-void

    .line 2693
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz v1, :cond_1

    .line 2694
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    .line 2695
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/PhotoViewer;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2701
    :cond_1
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/PhotoViewer;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 2702
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 2703
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    new-instance v2, Lorg/telegram/ui/PhotoViewer$40;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PhotoViewer$40;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2709
    :catch_0
    move-exception v0

    .line 2710
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2697
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 2698
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public updateMuteButton()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 5820
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_0

    .line 5821
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-boolean v1, p0, Lorg/telegram/ui/PhotoViewer;->muteVideo:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->setMute(Z)V

    .line 5823
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->muteVideo:Z

    if-eqz v0, :cond_2

    .line 5824
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v1, "AttachGif"

    const v2, 0x7f0700a7

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 5825
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 5826
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->muteItem:Landroid/widget/ImageView;

    const v1, 0x7f020292

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5827
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 5828
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 5829
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 5830
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 5832
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    const v1, 0x46ea6000    # 30000.0f

    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->videoDuration:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoTimelineView;->setMaxProgressDiff(F)V

    .line 5844
    :goto_0
    return-void

    .line 5834
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v1, "AttachVideo"

    const v2, 0x7f0700ad

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 5835
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentSubtitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 5836
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->muteItem:Landroid/widget/ImageView;

    const v1, 0x7f020293

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5837
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 5838
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 5839
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 5840
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 5842
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/VideoTimelineView;->setMaxProgressDiff(F)V

    goto :goto_0
.end method
