.class public Lorg/telegram/ui/ArticleViewer;
.super Ljava/lang/Object;
.source "ArticleViewer.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;,
        Lorg/telegram/ui/ArticleViewer$RadialProgressView;,
        Lorg/telegram/ui/ArticleViewer$PhotoBackgroundDrawable;,
        Lorg/telegram/ui/ArticleViewer$BlockSubheaderCell;,
        Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;,
        Lorg/telegram/ui/ArticleViewer$BlockFooterCell;,
        Lorg/telegram/ui/ArticleViewer$BlockTitleCell;,
        Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;,
        Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;,
        Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;,
        Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;,
        Lorg/telegram/ui/ArticleViewer$BlockSubtitleCell;,
        Lorg/telegram/ui/ArticleViewer$BlockDividerCell;,
        Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;,
        Lorg/telegram/ui/ArticleViewer$BlockListCell;,
        Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;,
        Lorg/telegram/ui/ArticleViewer$BlockCollageCell;,
        Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;,
        Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;,
        Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;,
        Lorg/telegram/ui/ArticleViewer$BlockVideoCell;,
        Lorg/telegram/ui/ArticleViewer$WebpageAdapter;,
        Lorg/telegram/ui/ArticleViewer$CheckForLongPress;,
        Lorg/telegram/ui/ArticleViewer$WindowView;,
        Lorg/telegram/ui/ArticleViewer$CheckForTap;,
        Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;
    }
.end annotation


# static fields
.field private static volatile Instance:Lorg/telegram/ui/ArticleViewer; = null
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static final TEXT_FLAG_ITALIC:I = 0x2

.field private static final TEXT_FLAG_MEDIUM:I = 0x1

.field private static final TEXT_FLAG_MONO:I = 0x4

.field private static final TEXT_FLAG_REGULAR:I = 0x0

.field private static final TEXT_FLAG_STRIKE:I = 0x20

.field private static final TEXT_FLAG_UNDERLINE:I = 0x10

.field private static final TEXT_FLAG_URL:I = 0x8

.field private static authorTextPaints:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/text/TextPaint;",
            ">;"
        }
    .end annotation
.end field

.field private static captionTextPaints:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/text/TextPaint;",
            ">;"
        }
    .end annotation
.end field

.field private static decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator; = null

.field private static dividerPaint:Landroid/graphics/Paint; = null

.field private static dotsPaint:Landroid/graphics/Paint; = null

.field private static embedPostAuthorPaint:Landroid/text/TextPaint; = null

.field private static embedPostCaptionTextPaints:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/text/TextPaint;",
            ">;"
        }
    .end annotation
.end field

.field private static embedPostDatePaint:Landroid/text/TextPaint; = null

.field private static embedPostTextPaints:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/text/TextPaint;",
            ">;"
        }
    .end annotation
.end field

.field private static embedTextPaints:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/text/TextPaint;",
            ">;"
        }
    .end annotation
.end field

.field private static errorTextPaint:Landroid/text/TextPaint; = null

.field private static footerTextPaints:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/text/TextPaint;",
            ">;"
        }
    .end annotation
.end field

.field private static final gallery_menu_openin:I = 0x3

.field private static final gallery_menu_save:I = 0x1

.field private static final gallery_menu_share:I = 0x2

.field private static headerTextPaints:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/text/TextPaint;",
            ">;"
        }
    .end annotation
.end field

.field private static listTextPaints:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/text/TextPaint;",
            ">;"
        }
    .end annotation
.end field

.field private static paragraphTextPaints:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/text/TextPaint;",
            ">;"
        }
    .end annotation
.end field

.field private static preformattedBackgroundPaint:Landroid/graphics/Paint;

.field private static preformattedTextPaints:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/text/TextPaint;",
            ">;"
        }
    .end annotation
.end field

.field private static progressDrawables:[Landroid/graphics/drawable/Drawable;

.field private static progressPaint:Landroid/graphics/Paint;

.field private static quoteLinePaint:Landroid/graphics/Paint;

.field private static quoteTextPaints:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/text/TextPaint;",
            ">;"
        }
    .end annotation
.end field

.field private static slideshowTextPaints:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/text/TextPaint;",
            ">;"
        }
    .end annotation
.end field

.field private static subheaderTextPaints:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/text/TextPaint;",
            ">;"
        }
    .end annotation
.end field

.field private static subquoteTextPaints:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/text/TextPaint;",
            ">;"
        }
    .end annotation
.end field

.field private static subtitleTextPaints:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/text/TextPaint;",
            ">;"
        }
    .end annotation
.end field

.field private static titleTextPaints:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/text/TextPaint;",
            ">;"
        }
    .end annotation
.end field

.field private static urlPaint:Landroid/graphics/Paint;

.field private static videoTextPaints:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/text/TextPaint;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

.field private adapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

.field public anchors:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private animateToScale:F

.field private animateToX:F

.field private animateToY:F

.field private animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

.field private animationEndRunnable:Ljava/lang/Runnable;

.field private animationInProgress:I

.field private animationStartTime:J

.field private animationValue:F

.field private animationValues:[[F

.field private aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

.field private attachedToWindow:Z

.field private backButton:Landroid/widget/ImageView;

.field private backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

.field private backgroundPaint:Landroid/graphics/Paint;

.field private barBackground:Landroid/view/View;

.field private blackPaint:Landroid/graphics/Paint;

.field public blocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$PageBlock;",
            ">;"
        }
    .end annotation
.end field

.field private bottomLayout:Landroid/widget/FrameLayout;

.field private canDragDown:Z

.field private canZoom:Z

.field private captionTextView:Landroid/widget/TextView;

.field private captionTextViewNew:Landroid/widget/TextView;

.field private captionTextViewOld:Landroid/widget/TextView;

.field private centerImage:Lorg/telegram/messenger/ImageReceiver;

.field private changingPage:Z

.field private checkingForLongPress:Z

.field private collapsed:Z

.field private containerView:Landroid/widget/FrameLayout;

.field private coords:[I

.field private createdWebViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;",
            ">;"
        }
    .end annotation
.end field

.field private currentActionBarAnimation:Landroid/animation/AnimatorSet;

.field private currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

.field private currentFileNames:[Ljava/lang/String;

.field private currentHeaderHeight:I

.field private currentIndex:I

.field private currentMedia:Lorg/telegram/tgnet/TLRPC$PageBlock;

.field private currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

.field private currentPlaceObject:Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;

.field private currentPlayingVideo:Lorg/telegram/ui/Components/WebPlayerView;

.field private currentRotation:I

.field private currentThumb:Landroid/graphics/Bitmap;

.field private customView:Landroid/view/View;

.field private customViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private disableShowCheck:Z

.field private discardTap:Z

.field private dontResetZoomOnFirstLayout:Z

.field private doubleTap:Z

.field private dragY:F

.field private draggingDown:Z

.field private fullscreenAspectRatioView:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

.field private fullscreenTextureView:Landroid/view/TextureView;

.field private fullscreenVideoContainer:Landroid/widget/FrameLayout;

.field private fullscreenedVideo:Lorg/telegram/ui/Components/WebPlayerView;

.field private gestureDetector:Landroid/view/GestureDetector;

.field private headerView:Landroid/widget/FrameLayout;

.field private hideAfterAnimation:Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;

.field private imageMoveAnimation:Landroid/animation/AnimatorSet;

.field private imagesArr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$PageBlock;",
            ">;"
        }
    .end annotation
.end field

.field private interpolator:Landroid/view/animation/DecelerateInterpolator;

.field private invalidCoords:Z

.field private isActionBarVisible:Z

.field private isPhotoVisible:Z

.field private isPlaying:Z

.field private isVisible:Z

.field private lastInsets:Ljava/lang/Object;

.field private layerShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

.field private leftImage:Lorg/telegram/messenger/ImageReceiver;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private maxX:F

.field private maxY:F

.field private menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private minX:F

.field private minY:F

.field private moveStartX:F

.field private moveStartY:F

.field private moving:Z

.field private openUrlReqId:I

.field private pagesStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$WebPage;",
            ">;"
        }
    .end annotation
.end field

.field private parentActivity:Landroid/app/Activity;

.field private pendingCheckForLongPress:Lorg/telegram/ui/ArticleViewer$CheckForLongPress;

.field private pendingCheckForTap:Lorg/telegram/ui/ArticleViewer$CheckForTap;

.field private photoAnimationEndRunnable:Ljava/lang/Runnable;

.field private photoAnimationInProgress:I

.field private photoBackgroundDrawable:Lorg/telegram/ui/ArticleViewer$PhotoBackgroundDrawable;

.field public photoBlocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$PageBlock;",
            ">;"
        }
    .end annotation
.end field

.field private photoContainerBackground:Landroid/view/View;

.field private photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

.field private photoTransitionAnimationStartTime:J

.field private pinchCenterX:F

.field private pinchCenterY:F

.field private pinchStartDistance:F

.field private pinchStartScale:F

.field private pinchStartX:F

.field private pinchStartY:F

.field private pressCount:I

.field private pressedLink:Lorg/telegram/ui/Components/TextPaintUrlSpan;

.field private pressedLinkOwnerLayout:Landroid/text/StaticLayout;

.field private pressedLinkOwnerView:Landroid/view/View;

.field private previewsReqId:I

.field private progressView:Lorg/telegram/ui/Components/ContextProgressView;

.field private progressViewAnimation:Landroid/animation/AnimatorSet;

.field private radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

.field private rightImage:Lorg/telegram/messenger/ImageReceiver;

.field private scale:F

.field private scrimPaint:Landroid/graphics/Paint;

.field private scroller:Lorg/telegram/ui/Components/Scroller;

.field private shareButton:Landroid/widget/ImageView;

.field private shareContainer:Landroid/widget/FrameLayout;

.field private showAfterAnimation:Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;

.field private slideDotBigDrawable:Landroid/graphics/drawable/Drawable;

.field private slideDotDrawable:Landroid/graphics/drawable/Drawable;

.field private switchImageAfterAnimation:I

.field private textureUploaded:Z

.field private transitionAnimationStartTime:J

.field private translationX:F

.field private translationY:F

.field private updateProgressRunnable:Ljava/lang/Runnable;

.field private urlPath:Lorg/telegram/ui/Components/LinkPath;

.field private velocityTracker:Landroid/view/VelocityTracker;

.field private videoCrossfadeAlpha:F

.field private videoCrossfadeAlphaLastTime:J

.field private videoCrossfadeStarted:Z

.field private videoPlayButton:Landroid/widget/ImageView;

.field private videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

.field private videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

.field private videoPlayerSeekbar:Lorg/telegram/ui/Components/SeekBar;

.field private videoPlayerTime:Landroid/widget/TextView;

.field private videoTextureView:Landroid/view/TextureView;

.field private visibleDialog:Landroid/app/Dialog;

.field private wasLayout:Z

.field private windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

.field private zoomAnimation:Z

.field private zooming:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->Instance:Lorg/telegram/ui/ArticleViewer;

    .line 732
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->captionTextPaints:Ljava/util/HashMap;

    .line 733
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->titleTextPaints:Ljava/util/HashMap;

    .line 734
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->headerTextPaints:Ljava/util/HashMap;

    .line 735
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->subtitleTextPaints:Ljava/util/HashMap;

    .line 736
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->subheaderTextPaints:Ljava/util/HashMap;

    .line 737
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->authorTextPaints:Ljava/util/HashMap;

    .line 738
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->footerTextPaints:Ljava/util/HashMap;

    .line 739
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->paragraphTextPaints:Ljava/util/HashMap;

    .line 740
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->listTextPaints:Ljava/util/HashMap;

    .line 741
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->preformattedTextPaints:Ljava/util/HashMap;

    .line 742
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->quoteTextPaints:Ljava/util/HashMap;

    .line 743
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->subquoteTextPaints:Ljava/util/HashMap;

    .line 744
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->embedTextPaints:Ljava/util/HashMap;

    .line 745
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->slideshowTextPaints:Ljava/util/HashMap;

    .line 746
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->embedPostTextPaints:Ljava/util/HashMap;

    .line 747
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->embedPostCaptionTextPaints:Ljava/util/HashMap;

    .line 748
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->videoTextPaints:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->createdWebViews:Ljava/util/ArrayList;

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    .line 183
    iput-boolean v1, p0, Lorg/telegram/ui/ArticleViewer;->checkingForLongPress:Z

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pendingCheckForLongPress:Lorg/telegram/ui/ArticleViewer$CheckForLongPress;

    .line 185
    iput v1, p0, Lorg/telegram/ui/ArticleViewer;->pressCount:I

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pendingCheckForTap:Lorg/telegram/ui/ArticleViewer$CheckForTap;

    .line 191
    new-instance v0, Lorg/telegram/ui/Components/LinkPath;

    invoke-direct {v0}, Lorg/telegram/ui/Components/LinkPath;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->urlPath:Lorg/telegram/ui/Components/LinkPath;

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->blocks:Ljava/util/ArrayList;

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->photoBlocks:Ljava/util/ArrayList;

    .line 195
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->anchors:Ljava/util/HashMap;

    .line 4679
    new-array v0, v4, [I

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->coords:[I

    .line 4684
    iput-boolean v2, p0, Lorg/telegram/ui/ArticleViewer;->isActionBarVisible:Z

    .line 4692
    new-instance v0, Lorg/telegram/ui/ArticleViewer$PhotoBackgroundDrawable;

    const/high16 v1, -0x1000000

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/ArticleViewer$PhotoBackgroundDrawable;-><init>(Lorg/telegram/ui/ArticleViewer;I)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->photoBackgroundDrawable:Lorg/telegram/ui/ArticleViewer$PhotoBackgroundDrawable;

    .line 4693
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->blackPaint:Landroid/graphics/Paint;

    .line 4695
    new-array v0, v5, [Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    .line 4716
    new-instance v0, Lorg/telegram/ui/ArticleViewer$28;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ArticleViewer$28;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->updateProgressRunnable:Ljava/lang/Runnable;

    .line 4733
    const/16 v0, 0x8

    filled-new-array {v4, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    .line 4742
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    .line 4743
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    .line 4744
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    .line 4747
    new-array v0, v5, [Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->currentFileNames:[Ljava/lang/String;

    .line 4758
    iput v3, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    .line 4767
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 4769
    iput v3, p0, Lorg/telegram/ui/ArticleViewer;->pinchStartScale:F

    .line 4780
    iput-boolean v2, p0, Lorg/telegram/ui/ArticleViewer;->canZoom:Z

    .line 4786
    iput-boolean v2, p0, Lorg/telegram/ui/ArticleViewer;->canDragDown:Z

    .line 4793
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->imagesArr:Ljava/util/ArrayList;

    .line 4962
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ArticleViewer;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->processTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # Landroid/graphics/Canvas;

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->drawContent(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/ui/ArticleViewer;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 127
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->photoContainerBackground:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$10000(Lorg/telegram/ui/ArticleViewer;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 127
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewHeight()I

    move-result v0

    return v0
.end method

.method static synthetic access$10100()[Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->progressDrawables:[Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$10200(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 127
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$10300(Lorg/telegram/ui/ArticleViewer;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 127
    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->textureUploaded:Z

    return v0
.end method

.method static synthetic access$10302(Lorg/telegram/ui/ArticleViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 127
    iput-boolean p1, p0, Lorg/telegram/ui/ArticleViewer;->textureUploaded:Z

    return p1
.end method

.method static synthetic access$10400(Lorg/telegram/ui/ArticleViewer;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 127
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->currentActionBarAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$10402(Lorg/telegram/ui/ArticleViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 127
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->currentActionBarAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$10500(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 127
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$10700(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 127
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->captionTextViewOld:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$10800(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 127
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->captionTextViewNew:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$10902(Lorg/telegram/ui/ArticleViewer;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # I

    .prologue
    .line 127
    iput p1, p0, Lorg/telegram/ui/ArticleViewer;->photoAnimationInProgress:I

    return p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 127
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->fullscreenVideoContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$11002(Lorg/telegram/ui/ArticleViewer;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # J

    .prologue
    .line 127
    iput-wide p1, p0, Lorg/telegram/ui/ArticleViewer;->photoTransitionAnimationStartTime:J

    return-wide p1
.end method

.method static synthetic access$11100(Lorg/telegram/ui/ArticleViewer;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 127
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->setImages()V

    return-void
.end method

.method static synthetic access$11200(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 127
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->showAfterAnimation:Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;

    return-object v0
.end method

.method static synthetic access$11300(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 127
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->hideAfterAnimation:Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;

    return-object v0
.end method

.method static synthetic access$11400(Lorg/telegram/ui/ArticleViewer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 127
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->photoAnimationEndRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$11402(Lorg/telegram/ui/ArticleViewer;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 127
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->photoAnimationEndRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$11602(Lorg/telegram/ui/ArticleViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 127
    iput-boolean p1, p0, Lorg/telegram/ui/ArticleViewer;->disableShowCheck:Z

    return p1
.end method

.method static synthetic access$11700(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->onPhotoClosed(Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;)V

    return-void
.end method

.method static synthetic access$11802(Lorg/telegram/ui/ArticleViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 127
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$1200(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/ClippingImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 127
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    return-object v0
.end method

.method static synthetic access$1302(Lorg/telegram/ui/ArticleViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 127
    iput-boolean p1, p0, Lorg/telegram/ui/ArticleViewer;->attachedToWindow:Z

    return p1
.end method

.method static synthetic access$1400(Lorg/telegram/ui/ArticleViewer;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 127
    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->collapsed:Z

    return v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/ArticleViewer;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 127
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/ArticleViewer;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 127
    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->isVisible:Z

    return v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/ArticleViewer;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 127
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->scrimPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/ArticleViewer;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 127
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->layerShadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/ArticleViewer;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 127
    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->isPhotoVisible:Z

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 127
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/ArticleViewer;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 127
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->saveCurrentPagePosition()V

    return-void
.end method

.method static synthetic access$2100(Lorg/telegram/ui/ArticleViewer;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 127
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->onClosed()V

    return-void
.end method

.method static synthetic access$2400(Lorg/telegram/ui/ArticleViewer;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 127
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->backgroundPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/ArticleViewer;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 127
    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->checkingForLongPress:Z

    return v0
.end method

.method static synthetic access$2502(Lorg/telegram/ui/ArticleViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 127
    iput-boolean p1, p0, Lorg/telegram/ui/ArticleViewer;->checkingForLongPress:Z

    return p1
.end method

.method static synthetic access$2600(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/TextPaintUrlSpan;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 127
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pressedLink:Lorg/telegram/ui/Components/TextPaintUrlSpan;

    return-object v0
.end method

.method static synthetic access$2602(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/Components/TextPaintUrlSpan;)Lorg/telegram/ui/Components/TextPaintUrlSpan;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # Lorg/telegram/ui/Components/TextPaintUrlSpan;

    .prologue
    .line 127
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->pressedLink:Lorg/telegram/ui/Components/TextPaintUrlSpan;

    return-object p1
.end method

.method static synthetic access$2700(Lorg/telegram/ui/ArticleViewer;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 127
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->hideActionBar()V

    return-void
.end method

.method static synthetic access$2802(Lorg/telegram/ui/ArticleViewer;Landroid/text/StaticLayout;)Landroid/text/StaticLayout;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # Landroid/text/StaticLayout;

    .prologue
    .line 127
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->pressedLinkOwnerLayout:Landroid/text/StaticLayout;

    return-object p1
.end method

.method static synthetic access$2900(Lorg/telegram/ui/ArticleViewer;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 127
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pressedLinkOwnerView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ArticleViewer$CheckForLongPress;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 127
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pendingCheckForLongPress:Lorg/telegram/ui/ArticleViewer$CheckForLongPress;

    return-object v0
.end method

.method static synthetic access$302(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$CheckForLongPress;)Lorg/telegram/ui/ArticleViewer$CheckForLongPress;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # Lorg/telegram/ui/ArticleViewer$CheckForLongPress;

    .prologue
    .line 127
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->pendingCheckForLongPress:Lorg/telegram/ui/ArticleViewer$CheckForLongPress;

    return-object p1
.end method

.method static synthetic access$3100(Lorg/telegram/ui/ArticleViewer;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 127
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->openUrlReqId:I

    return v0
.end method

.method static synthetic access$3102(Lorg/telegram/ui/ArticleViewer;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # I

    .prologue
    .line 127
    iput p1, p0, Lorg/telegram/ui/ArticleViewer;->openUrlReqId:I

    return p1
.end method

.method static synthetic access$3200(Lorg/telegram/ui/ArticleViewer;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->showProgressView(Z)V

    return-void
.end method

.method static synthetic access$3300(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/tgnet/TLRPC$WebPage;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$WebPage;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 127
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ArticleViewer;->addPageToStack(Lorg/telegram/tgnet/TLRPC$WebPage;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3400(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 127
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 127
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->bottomLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/tgnet/TLRPC$WebPage;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 127
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    return-object v0
.end method

.method static synthetic access$3602(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/tgnet/TLRPC$WebPage;)Lorg/telegram/tgnet/TLRPC$WebPage;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$WebPage;

    .prologue
    .line 127
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    return-object p1
.end method

.method static synthetic access$3700(Lorg/telegram/ui/ArticleViewer;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 127
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->previewsReqId:I

    return v0
.end method

.method static synthetic access$3702(Lorg/telegram/ui/ArticleViewer;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # I

    .prologue
    .line 127
    iput p1, p0, Lorg/telegram/ui/ArticleViewer;->previewsReqId:I

    return p1
.end method

.method static synthetic access$3800(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/tgnet/TLRPC$User;J)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p2, "x2"    # J

    .prologue
    .line 127
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ArticleViewer;->openPreviewsChat(Lorg/telegram/tgnet/TLRPC$User;J)V

    return-void
.end method

.method static synthetic access$3900(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 127
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/ArticleViewer;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # I

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->checkScroll(I)V

    return-void
.end method

.method static synthetic access$404(Lorg/telegram/ui/ArticleViewer;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 127
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->pressCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/ui/ArticleViewer;->pressCount:I

    return v0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/ArticleViewer;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 127
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->currentIndex:I

    return v0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/ArticleViewer;I)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # I

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->getMediaFile(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/ArticleViewer;I)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # I

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->isMediaVideo(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/ArticleViewer;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 127
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->onSharePressed()V

    return-void
.end method

.method static synthetic access$4500(Lorg/telegram/ui/ArticleViewer;I)Lorg/telegram/tgnet/TLObject;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # I

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->getMedia(I)Lorg/telegram/tgnet/TLObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/VideoPlayer;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 127
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    return-object v0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/SeekBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 127
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayerSeekbar:Lorg/telegram/ui/Components/SeekBar;

    return-object v0
.end method

.method static synthetic access$4800(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 127
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayerTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/ArticleViewer;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 127
    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->isPlaying:Z

    return v0
.end method

.method static synthetic access$4902(Lorg/telegram/ui/ArticleViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 127
    iput-boolean p1, p0, Lorg/telegram/ui/ArticleViewer;->isPlaying:Z

    return p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ArticleViewer$WindowView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 127
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    return-object v0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/messenger/ImageReceiver;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 127
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    return-object v0
.end method

.method static synthetic access$5100(Lorg/telegram/ui/ArticleViewer;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 127
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->scaleToFill()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5200(Lorg/telegram/ui/ArticleViewer;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 127
    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->wasLayout:Z

    return v0
.end method

.method static synthetic access$5302(Lorg/telegram/ui/ArticleViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 127
    iput-boolean p1, p0, Lorg/telegram/ui/ArticleViewer;->dontResetZoomOnFirstLayout:Z

    return p1
.end method

.method static synthetic access$5400(Lorg/telegram/ui/ArticleViewer;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 127
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->setScaleToFill()V

    return-void
.end method

.method static synthetic access$5500(Lorg/telegram/ui/ArticleViewer;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 127
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5600(Lorg/telegram/ui/ArticleViewer;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->updateInterfaceForCurrentPage(Z)V

    return-void
.end method

.method static synthetic access$5702(Lorg/telegram/ui/ArticleViewer;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # I

    .prologue
    .line 127
    iput p1, p0, Lorg/telegram/ui/ArticleViewer;->animationInProgress:I

    return p1
.end method

.method static synthetic access$5800(Lorg/telegram/ui/ArticleViewer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 127
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->animationEndRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$5802(Lorg/telegram/ui/ArticleViewer;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 127
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->animationEndRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$5900(Lorg/telegram/ui/ArticleViewer;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 127
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->progressViewAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$5902(Lorg/telegram/ui/ArticleViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 127
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->progressViewAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/ArticleViewer;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 127
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->lastInsets:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$6000(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/ContextProgressView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 127
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    return-object v0
.end method

.method static synthetic access$602(Lorg/telegram/ui/ArticleViewer;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 127
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->lastInsets:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6100(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 127
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->shareButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$6200(Lorg/telegram/ui/ArticleViewer;)Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 127
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$6300(Lorg/telegram/ui/ArticleViewer;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # I

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->showActionBar(I)V

    return-void
.end method

.method static synthetic access$6402(Lorg/telegram/ui/ArticleViewer;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # Landroid/app/Dialog;

    .prologue
    .line 127
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->visibleDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$6500(Lorg/telegram/ui/ArticleViewer;J)Lorg/telegram/tgnet/TLRPC$Document;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # J

    .prologue
    .line 127
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ArticleViewer;->getDocumentWithId(J)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6600(Lorg/telegram/ui/ArticleViewer;Landroid/view/MotionEvent;Landroid/view/View;Landroid/text/StaticLayout;II)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # Landroid/view/MotionEvent;
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # Landroid/text/StaticLayout;
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .prologue
    .line 127
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/ArticleViewer;->checkLayoutForLinks(Landroid/view/MotionEvent;Landroid/view/View;Landroid/text/StaticLayout;II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6700(Lorg/telegram/ui/ArticleViewer;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;ILorg/telegram/tgnet/TLRPC$PageBlock;)Landroid/text/StaticLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # Ljava/lang/CharSequence;
    .param p2, "x2"    # Lorg/telegram/tgnet/TLRPC$RichText;
    .param p3, "x3"    # I
    .param p4, "x4"    # Lorg/telegram/tgnet/TLRPC$PageBlock;

    .prologue
    .line 127
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ArticleViewer;->createLayoutForText(Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;ILorg/telegram/tgnet/TLRPC$PageBlock;)Landroid/text/StaticLayout;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6800(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;Landroid/text/StaticLayout;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # Landroid/graphics/Canvas;
    .param p2, "x2"    # Landroid/text/StaticLayout;

    .prologue
    .line 127
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ArticleViewer;->drawLayoutLink(Landroid/graphics/Canvas;Landroid/text/StaticLayout;)V

    return-void
.end method

.method static synthetic access$6900()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->quoteLinePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/ArticleViewer;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 127
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->barBackground:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$7000(Lorg/telegram/ui/ArticleViewer;J)Lorg/telegram/tgnet/TLRPC$Photo;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # J

    .prologue
    .line 127
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ArticleViewer;->getPhotoWithId(J)Lorg/telegram/tgnet/TLRPC$Photo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7400(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 127
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->fullscreenAspectRatioView:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    return-object v0
.end method

.method static synthetic access$7500(Lorg/telegram/ui/ArticleViewer;)Landroid/view/TextureView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 127
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->fullscreenTextureView:Landroid/view/TextureView;

    return-object v0
.end method

.method static synthetic access$7602(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/Components/WebPlayerView;)Lorg/telegram/ui/Components/WebPlayerView;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # Lorg/telegram/ui/Components/WebPlayerView;

    .prologue
    .line 127
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->fullscreenedVideo:Lorg/telegram/ui/Components/WebPlayerView;

    return-object p1
.end method

.method static synthetic access$7700(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/WebPlayerView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 127
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->currentPlayingVideo:Lorg/telegram/ui/Components/WebPlayerView;

    return-object v0
.end method

.method static synthetic access$7702(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/Components/WebPlayerView;)Lorg/telegram/ui/Components/WebPlayerView;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # Lorg/telegram/ui/Components/WebPlayerView;

    .prologue
    .line 127
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->currentPlayingVideo:Lorg/telegram/ui/Components/WebPlayerView;

    return-object p1
.end method

.method static synthetic access$7800(Lorg/telegram/ui/ArticleViewer;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 127
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->createdWebViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$7900(Lorg/telegram/ui/ArticleViewer;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 127
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->customView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$7902(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 127
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->customView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$800(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 127
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$8000(Lorg/telegram/ui/ArticleViewer;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 127
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->customViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object v0
.end method

.method static synthetic access$8002(Lorg/telegram/ui/ArticleViewer;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # Landroid/webkit/WebChromeClient$CustomViewCallback;

    .prologue
    .line 127
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->customViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object p1
.end method

.method static synthetic access$8300()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->dotsPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$8302(Landroid/graphics/Paint;)Landroid/graphics/Paint;
    .locals 0
    .param p0, "x0"    # Landroid/graphics/Paint;

    .prologue
    .line 127
    sput-object p0, Lorg/telegram/ui/ArticleViewer;->dotsPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$8900(Lorg/telegram/ui/ArticleViewer;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 127
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->slideDotBigDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 127
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    return-object v0
.end method

.method static synthetic access$9000(Lorg/telegram/ui/ArticleViewer;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 127
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->slideDotDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$9100()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->dividerPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$9102(Landroid/graphics/Paint;)Landroid/graphics/Paint;
    .locals 0
    .param p0, "x0"    # Landroid/graphics/Paint;

    .prologue
    .line 127
    sput-object p0, Lorg/telegram/ui/ArticleViewer;->dividerPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$9200(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$RichText;
    .param p2, "x2"    # Lorg/telegram/tgnet/TLRPC$RichText;
    .param p3, "x3"    # Lorg/telegram/tgnet/TLRPC$PageBlock;

    .prologue
    .line 127
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ArticleViewer;->getText(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9300()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->preformattedBackgroundPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$9400(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 127
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$9500(Lorg/telegram/ui/ArticleViewer;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 127
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->updateVideoPlayerTime()V

    return-void
.end method

.method static synthetic access$9600(Lorg/telegram/ui/ArticleViewer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 127
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->updateProgressRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$9700()Landroid/view/animation/DecelerateInterpolator;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    return-object v0
.end method

.method static synthetic access$9702(Landroid/view/animation/DecelerateInterpolator;)Landroid/view/animation/DecelerateInterpolator;
    .locals 0
    .param p0, "x0"    # Landroid/view/animation/DecelerateInterpolator;

    .prologue
    .line 127
    sput-object p0, Lorg/telegram/ui/ArticleViewer;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    return-object p0
.end method

.method static synthetic access$9800()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->progressPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$9802(Landroid/graphics/Paint;)Landroid/graphics/Paint;
    .locals 0
    .param p0, "x0"    # Landroid/graphics/Paint;

    .prologue
    .line 127
    sput-object p0, Lorg/telegram/ui/ArticleViewer;->progressPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$9900(Lorg/telegram/ui/ArticleViewer;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 127
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewWidth()I

    move-result v0

    return v0
.end method

.method private addAllMediaFromBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)V
    .locals 7
    .param p1, "block"    # Lorg/telegram/tgnet/TLRPC$PageBlock;

    .prologue
    .line 1698
    instance-of v5, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    if-nez v5, :cond_0

    instance-of v5, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    if-eqz v5, :cond_2

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->isVideoBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1699
    :cond_0
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->photoBlocks:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1721
    :cond_1
    :goto_0
    return-void

    .line 1700
    :cond_2
    instance-of v5, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;

    if-eqz v5, :cond_5

    move-object v4, p1

    .line 1701
    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;

    .line 1702
    .local v4, "slideshow":Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;->items:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1703
    .local v2, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 1704
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;->items:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$PageBlock;

    .line 1705
    .local v3, "innerBlock":Lorg/telegram/tgnet/TLRPC$PageBlock;
    instance-of v5, v3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    if-nez v5, :cond_3

    instance-of v5, v3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    if-eqz v5, :cond_4

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->isVideoBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1706
    :cond_3
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->photoBlocks:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1703
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1709
    .end local v0    # "a":I
    .end local v2    # "count":I
    .end local v3    # "innerBlock":Lorg/telegram/tgnet/TLRPC$PageBlock;
    .end local v4    # "slideshow":Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;
    :cond_5
    instance-of v5, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

    if-eqz v5, :cond_8

    move-object v1, p1

    .line 1710
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

    .line 1711
    .local v1, "collage":Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;->items:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1712
    .restart local v2    # "count":I
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_2
    if-ge v0, v2, :cond_1

    .line 1713
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;->items:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$PageBlock;

    .line 1714
    .restart local v3    # "innerBlock":Lorg/telegram/tgnet/TLRPC$PageBlock;
    instance-of v5, v3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    if-nez v5, :cond_6

    instance-of v5, v3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    if-eqz v5, :cond_7

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->isVideoBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1715
    :cond_6
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->photoBlocks:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1712
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1718
    .end local v0    # "a":I
    .end local v1    # "collage":Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;
    .end local v2    # "count":I
    .end local v3    # "innerBlock":Lorg/telegram/tgnet/TLRPC$PageBlock;
    :cond_8
    instance-of v5, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCover;

    if-eqz v5, :cond_1

    iget-object v5, p1, Lorg/telegram/tgnet/TLRPC$PageBlock;->cover:Lorg/telegram/tgnet/TLRPC$PageBlock;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    if-nez v5, :cond_9

    iget-object v5, p1, Lorg/telegram/tgnet/TLRPC$PageBlock;->cover:Lorg/telegram/tgnet/TLRPC$PageBlock;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    if-eqz v5, :cond_1

    iget-object v5, p1, Lorg/telegram/tgnet/TLRPC$PageBlock;->cover:Lorg/telegram/tgnet/TLRPC$PageBlock;

    invoke-direct {p0, v5}, Lorg/telegram/ui/ArticleViewer;->isVideoBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1719
    :cond_9
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->photoBlocks:Ljava/util/ArrayList;

    iget-object v6, p1, Lorg/telegram/tgnet/TLRPC$PageBlock;->cover:Lorg/telegram/tgnet/TLRPC$PageBlock;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private addPageToStack(Lorg/telegram/tgnet/TLRPC$WebPage;Ljava/lang/String;)V
    .locals 4
    .param p1, "webPage"    # Lorg/telegram/tgnet/TLRPC$WebPage;
    .param p2, "anchor"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 679
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->saveCurrentPagePosition()V

    .line 680
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    .line 681
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 682
    invoke-direct {p0, v3}, Lorg/telegram/ui/ArticleViewer;->updateInterfaceForCurrentPage(Z)V

    .line 684
    if-eqz p2, :cond_0

    .line 685
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->anchors:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 686
    .local v0, "row":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 687
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 690
    .end local v0    # "row":Ljava/lang/Integer;
    :cond_0
    return-void
.end method

.method private animateTo(FFFZ)V
    .locals 6
    .param p1, "newScale"    # F
    .param p2, "newTx"    # F
    .param p3, "newTy"    # F
    .param p4, "isZoom"    # Z

    .prologue
    .line 6304
    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ArticleViewer;->animateTo(FFFZI)V

    .line 6305
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
    .line 6308
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->translationX:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    cmpl-float v0, v0, p3

    if-nez v0, :cond_0

    .line 6330
    :goto_0
    return-void

    .line 6311
    :cond_0
    iput-boolean p4, p0, Lorg/telegram/ui/ArticleViewer;->zoomAnimation:Z

    .line 6312
    iput p1, p0, Lorg/telegram/ui/ArticleViewer;->animateToScale:F

    .line 6313
    iput p2, p0, Lorg/telegram/ui/ArticleViewer;->animateToX:F

    .line 6314
    iput p3, p0, Lorg/telegram/ui/ArticleViewer;->animateToY:F

    .line 6315
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/ArticleViewer;->animationStartTime:J

    .line 6316
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    .line 6317
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    const-string/jumbo v3, "animationValue"

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    .line 6318
    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    .line 6317
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 6320
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 6321
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    int-to-long v2, p5

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 6322
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/ArticleViewer$41;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ArticleViewer$41;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 6329
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 6317
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private checkAnimation()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 2246
    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->animationInProgress:I

    if-eqz v1, :cond_1

    .line 2247
    iget-wide v2, p0, Lorg/telegram/ui/ArticleViewer;->transitionAnimationStartTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1

    .line 2248
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->animationEndRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 2249
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->animationEndRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 2250
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer;->animationEndRunnable:Ljava/lang/Runnable;

    .line 2252
    :cond_0
    iput v0, p0, Lorg/telegram/ui/ArticleViewer;->animationInProgress:I

    .line 2255
    :cond_1
    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->animationInProgress:I

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private checkLayoutForLinks(Landroid/view/MotionEvent;Landroid/view/View;Landroid/text/StaticLayout;II)Z
    .locals 31
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "parentView"    # Landroid/view/View;
    .param p3, "layout"    # Landroid/text/StaticLayout;
    .param p4, "layoutX"    # I
    .param p5, "layoutY"    # I

    .prologue
    .line 1042
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 1043
    :cond_0
    const/16 v28, 0x0

    .line 1159
    :goto_0
    return v28

    .line 1045
    :cond_1
    invoke-virtual/range {p3 .. p3}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v24

    .line 1046
    .local v24, "text":Ljava/lang/CharSequence;
    move-object/from16 v0, v24

    instance-of v0, v0, Landroid/text/Spannable;

    move/from16 v28, v0

    if-nez v28, :cond_2

    .line 1047
    const/16 v28, 0x0

    goto :goto_0

    .line 1049
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v28

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v26, v0

    .line 1050
    .local v26, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v28

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v27, v0

    .line 1051
    .local v27, "y":I
    const/16 v19, 0x0

    .line 1052
    .local v19, "removeLink":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v28

    if-nez v28, :cond_a

    .line 1053
    move/from16 v0, v26

    move/from16 v1, p4

    if-lt v0, v1, :cond_6

    invoke-virtual/range {p3 .. p3}, Landroid/text/StaticLayout;->getWidth()I

    move-result v28

    add-int v28, v28, p4

    move/from16 v0, v26

    move/from16 v1, v28

    if-gt v0, v1, :cond_6

    move/from16 v0, v27

    move/from16 v1, p5

    if-lt v0, v1, :cond_6

    invoke-virtual/range {p3 .. p3}, Landroid/text/StaticLayout;->getHeight()I

    move-result v28

    add-int v28, v28, p5

    move/from16 v0, v27

    move/from16 v1, v28

    if-gt v0, v1, :cond_6

    .line 1055
    sub-int v7, v26, p4

    .line 1056
    .local v7, "checkX":I
    sub-int v8, v27, p5

    .line 1057
    .local v8, "checkY":I
    :try_start_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/text/StaticLayout;->getLineForVertical(I)I

    move-result v14

    .line 1058
    .local v14, "line":I
    int-to-float v0, v7

    move/from16 v28, v0

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v14, v1}, Landroid/text/StaticLayout;->getOffsetForHorizontal(IF)I

    move-result v16

    .line 1059
    .local v16, "off":I
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v13

    .line 1060
    .local v13, "left":F
    int-to-float v0, v7

    move/from16 v28, v0

    cmpg-float v28, v13, v28

    if-gtz v28, :cond_6

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v28

    add-float v28, v28, v13

    int-to-float v0, v7

    move/from16 v29, v0

    cmpl-float v28, v28, v29

    if-ltz v28, :cond_6

    .line 1061
    invoke-virtual/range {p3 .. p3}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Landroid/text/Spannable;

    .line 1062
    .local v6, "buffer":Landroid/text/Spannable;
    const-class v28, Lorg/telegram/ui/Components/TextPaintUrlSpan;

    move/from16 v0, v16

    move/from16 v1, v16

    move-object/from16 v2, v28

    invoke-interface {v6, v0, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Lorg/telegram/ui/Components/TextPaintUrlSpan;

    .line 1063
    .local v15, "link":[Lorg/telegram/ui/Components/TextPaintUrlSpan;
    if-eqz v15, :cond_6

    array-length v0, v15

    move/from16 v28, v0

    if-lez v28, :cond_6

    .line 1064
    const/16 v28, 0x0

    aget-object v28, v15, v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/ArticleViewer;->pressedLink:Lorg/telegram/ui/Components/TextPaintUrlSpan;

    .line 1065
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->pressedLink:Lorg/telegram/ui/Components/TextPaintUrlSpan;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-interface {v6, v0}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v18

    .line 1066
    .local v18, "pressedStart":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->pressedLink:Lorg/telegram/ui/Components/TextPaintUrlSpan;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-interface {v6, v0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v17

    .line 1067
    .local v17, "pressedEnd":I
    const/4 v4, 0x1

    .local v4, "a":I
    :goto_1
    array-length v0, v15

    move/from16 v28, v0

    move/from16 v0, v28

    if-ge v4, v0, :cond_5

    .line 1068
    aget-object v22, v15, v4

    .line 1069
    .local v22, "span":Lorg/telegram/ui/Components/TextPaintUrlSpan;
    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v23

    .line 1070
    .local v23, "start":I
    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v10

    .line 1071
    .local v10, "end":I
    move/from16 v0, v18

    move/from16 v1, v23

    if-gt v0, v1, :cond_3

    move/from16 v0, v17

    if-le v10, v0, :cond_4

    .line 1072
    :cond_3
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/ArticleViewer;->pressedLink:Lorg/telegram/ui/Components/TextPaintUrlSpan;

    .line 1073
    move/from16 v18, v23

    .line 1074
    move/from16 v17, v10

    .line 1067
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1077
    .end local v10    # "end":I
    .end local v22    # "span":Lorg/telegram/ui/Components/TextPaintUrlSpan;
    .end local v23    # "start":I
    :cond_5
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/ArticleViewer;->pressedLinkOwnerLayout:Landroid/text/StaticLayout;

    .line 1078
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/ArticleViewer;->pressedLinkOwnerView:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1080
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->urlPath:Lorg/telegram/ui/Components/LinkPath;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p3

    move/from16 v2, v18

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Components/LinkPath;->setCurrentLayout(Landroid/text/StaticLayout;IF)V

    .line 1081
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->urlPath:Lorg/telegram/ui/Components/LinkPath;

    move-object/from16 v28, v0

    move-object/from16 v0, p3

    move/from16 v1, v18

    move/from16 v2, v17

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/StaticLayout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 1082
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->invalidate()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1147
    .end local v4    # "a":I
    .end local v6    # "buffer":Landroid/text/Spannable;
    .end local v7    # "checkX":I
    .end local v8    # "checkY":I
    .end local v13    # "left":F
    .end local v14    # "line":I
    .end local v15    # "link":[Lorg/telegram/ui/Components/TextPaintUrlSpan;
    .end local v16    # "off":I
    .end local v17    # "pressedEnd":I
    .end local v18    # "pressedStart":I
    :cond_6
    :goto_2
    if-eqz v19, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->pressedLink:Lorg/telegram/ui/Components/TextPaintUrlSpan;

    move-object/from16 v28, v0

    if-eqz v28, :cond_7

    .line 1148
    const/16 v28, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/ArticleViewer;->pressedLink:Lorg/telegram/ui/Components/TextPaintUrlSpan;

    .line 1149
    const/16 v28, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/ArticleViewer;->pressedLinkOwnerLayout:Landroid/text/StaticLayout;

    .line 1150
    const/16 v28, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/ArticleViewer;->pressedLinkOwnerView:Landroid/view/View;

    .line 1151
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->invalidate()V

    .line 1153
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->pressedLink:Lorg/telegram/ui/Components/TextPaintUrlSpan;

    move-object/from16 v28, v0

    if-eqz v28, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v28

    if-nez v28, :cond_8

    .line 1154
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ArticleViewer;->startCheckLongPress()V

    .line 1156
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v28

    if-eqz v28, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v28

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_9

    .line 1157
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ArticleViewer;->cancelCheckLongPress()V

    .line 1159
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->pressedLink:Lorg/telegram/ui/Components/TextPaintUrlSpan;

    move-object/from16 v28, v0

    if-eqz v28, :cond_e

    const/16 v28, 0x1

    goto/16 :goto_0

    .line 1083
    .restart local v4    # "a":I
    .restart local v6    # "buffer":Landroid/text/Spannable;
    .restart local v7    # "checkX":I
    .restart local v8    # "checkY":I
    .restart local v13    # "left":F
    .restart local v14    # "line":I
    .restart local v15    # "link":[Lorg/telegram/ui/Components/TextPaintUrlSpan;
    .restart local v16    # "off":I
    .restart local v17    # "pressedEnd":I
    .restart local v18    # "pressedStart":I
    :catch_0
    move-exception v9

    .line 1084
    .local v9, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 1088
    .end local v4    # "a":I
    .end local v6    # "buffer":Landroid/text/Spannable;
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v13    # "left":F
    .end local v14    # "line":I
    .end local v15    # "link":[Lorg/telegram/ui/Components/TextPaintUrlSpan;
    .end local v16    # "off":I
    .end local v17    # "pressedEnd":I
    .end local v18    # "pressedStart":I
    :catch_1
    move-exception v9

    .line 1089
    .restart local v9    # "e":Ljava/lang/Exception;
    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 1092
    .end local v7    # "checkX":I
    .end local v8    # "checkY":I
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_d

    .line 1093
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->pressedLink:Lorg/telegram/ui/Components/TextPaintUrlSpan;

    move-object/from16 v28, v0

    if-eqz v28, :cond_6

    .line 1094
    const/16 v19, 0x1

    .line 1095
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->pressedLink:Lorg/telegram/ui/Components/TextPaintUrlSpan;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lorg/telegram/ui/Components/TextPaintUrlSpan;->getUrl()Ljava/lang/String;

    move-result-object v25

    .line 1096
    .local v25, "url":Ljava/lang/String;
    if-eqz v25, :cond_6

    .line 1098
    const/4 v12, 0x0

    .line 1100
    .local v12, "isAnchor":Z
    const/16 v28, 0x23

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v11

    .local v11, "index":I
    const/16 v28, -0x1

    move/from16 v0, v28

    if-eq v11, v0, :cond_c

    .line 1101
    add-int/lit8 v28, v11, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 1102
    .local v5, "anchor":Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_b

    .line 1103
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->anchors:Ljava/util/HashMap;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    .line 1104
    .local v21, "row":Ljava/lang/Integer;
    if-eqz v21, :cond_b

    .line 1105
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-object/from16 v28, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v29

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 1106
    const/4 v12, 0x1

    .line 1112
    .end local v21    # "row":Ljava/lang/Integer;
    :cond_b
    :goto_3
    if-nez v12, :cond_6

    .line 1113
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->openUrlReqId:I

    move/from16 v28, v0

    if-nez v28, :cond_6

    .line 1114
    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lorg/telegram/ui/ArticleViewer;->showProgressView(Z)V

    .line 1115
    new-instance v20, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;

    invoke-direct/range {v20 .. v20}, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;-><init>()V

    .line 1116
    .local v20, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->pressedLink:Lorg/telegram/ui/Components/TextPaintUrlSpan;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lorg/telegram/ui/Components/TextPaintUrlSpan;->getUrl()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;->url:Ljava/lang/String;

    .line 1117
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, v20

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;->hash:I

    .line 1118
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v28

    new-instance v29, Lorg/telegram/ui/ArticleViewer$1;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v5, v2}, Lorg/telegram/ui/ArticleViewer$1;-><init>(Lorg/telegram/ui/ArticleViewer;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/ArticleViewer;->openUrlReqId:I

    goto/16 :goto_2

    .line 1110
    .end local v5    # "anchor":Ljava/lang/String;
    .end local v20    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;
    :cond_c
    const/4 v5, 0x0

    .restart local v5    # "anchor":Ljava/lang/String;
    goto :goto_3

    .line 1144
    .end local v5    # "anchor":Ljava/lang/String;
    .end local v11    # "index":I
    .end local v12    # "isAnchor":Z
    .end local v25    # "url":Ljava/lang/String;
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v28

    const/16 v29, 0x3

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_6

    .line 1145
    const/16 v19, 0x1

    goto/16 :goto_2

    .line 1159
    :cond_e
    const/16 v28, 0x0

    goto/16 :goto_0
.end method

.method private checkMinMax(Z)V
    .locals 4
    .param p1, "zoom"    # Z

    .prologue
    .line 6269
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->translationX:F

    .line 6270
    .local v0, "moveToX":F
    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    .line 6271
    .local v1, "moveToY":F
    iget v2, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    invoke-direct {p0, v2}, Lorg/telegram/ui/ArticleViewer;->updateMinMax(F)V

    .line 6272
    iget v2, p0, Lorg/telegram/ui/ArticleViewer;->translationX:F

    iget v3, p0, Lorg/telegram/ui/ArticleViewer;->minX:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 6273
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->minX:F

    .line 6277
    :cond_0
    :goto_0
    iget v2, p0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    iget v3, p0, Lorg/telegram/ui/ArticleViewer;->minY:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    .line 6278
    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->minY:F

    .line 6282
    :cond_1
    :goto_1
    iget v2, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    invoke-direct {p0, v2, v0, v1, p1}, Lorg/telegram/ui/ArticleViewer;->animateTo(FFFZ)V

    .line 6283
    return-void

    .line 6274
    :cond_2
    iget v2, p0, Lorg/telegram/ui/ArticleViewer;->translationX:F

    iget v3, p0, Lorg/telegram/ui/ArticleViewer;->maxX:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 6275
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->maxX:F

    goto :goto_0

    .line 6279
    :cond_3
    iget v2, p0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    iget v3, p0, Lorg/telegram/ui/ArticleViewer;->maxY:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 6280
    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->maxY:F

    goto :goto_1
.end method

.method private checkPhotoAnimation()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 5622
    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->photoAnimationInProgress:I

    if-eqz v1, :cond_1

    .line 5623
    iget-wide v2, p0, Lorg/telegram/ui/ArticleViewer;->photoTransitionAnimationStartTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1

    .line 5624
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->photoAnimationEndRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 5625
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->photoAnimationEndRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 5626
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer;->photoAnimationEndRunnable:Ljava/lang/Runnable;

    .line 5628
    :cond_0
    iput v0, p0, Lorg/telegram/ui/ArticleViewer;->photoAnimationInProgress:I

    .line 5631
    :cond_1
    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->photoAnimationInProgress:I

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private checkProgress(IZ)V
    .locals 9
    .param p1, "a"    # I
    .param p2, "animated"    # Z

    .prologue
    const/4 v8, 0x2

    const/4 v7, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 5534
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v6, v6, p1

    if-eqz v6, :cond_9

    .line 5535
    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->currentIndex:I

    .line 5536
    .local v1, "index":I
    if-ne p1, v4, :cond_2

    .line 5537
    add-int/lit8 v1, v1, 0x1

    .line 5541
    :cond_0
    :goto_0
    invoke-direct {p0, v1}, Lorg/telegram/ui/ArticleViewer;->getMediaFile(I)Ljava/io/File;

    move-result-object v0

    .line 5542
    .local v0, "f":Ljava/io/File;
    invoke-direct {p0, v1}, Lorg/telegram/ui/ArticleViewer;->isMediaVideo(I)Z

    move-result v2

    .line 5543
    .local v2, "isVideo":Z
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 5544
    if-eqz v2, :cond_3

    .line 5545
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    aget-object v6, v6, p1

    const/4 v7, 0x3

    invoke-virtual {v6, v7, p2}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->setBackgroundState(IZ)V

    .line 5565
    :goto_1
    if-nez p1, :cond_1

    .line 5566
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v6, v6, v5

    if-eqz v6, :cond_8

    if-nez v2, :cond_8

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    aget-object v6, v6, v5

    invoke-static {v6}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->access$10600(Lorg/telegram/ui/ArticleViewer$RadialProgressView;)I

    move-result v6

    if-eqz v6, :cond_8

    :goto_2
    iput-boolean v4, p0, Lorg/telegram/ui/ArticleViewer;->canZoom:Z

    .line 5571
    .end local v0    # "f":Ljava/io/File;
    .end local v1    # "index":I
    .end local v2    # "isVideo":Z
    :cond_1
    :goto_3
    return-void

    .line 5538
    .restart local v1    # "index":I
    :cond_2
    if-ne p1, v8, :cond_0

    .line 5539
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 5547
    .restart local v0    # "f":Ljava/io/File;
    .restart local v2    # "isVideo":Z
    :cond_3
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    aget-object v6, v6, p1

    invoke-virtual {v6, v7, p2}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->setBackgroundState(IZ)V

    goto :goto_1

    .line 5550
    :cond_4
    if-eqz v2, :cond_7

    .line 5551
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v7, v7, p1

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/FileLoader;->isLoadingFile(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 5552
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    aget-object v6, v6, p1

    invoke-virtual {v6, v8, v5}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->setBackgroundState(IZ)V

    .line 5559
    :goto_4
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v7, v7, p1

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/ImageLoader;->getFileProgress(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    .line 5560
    .local v3, "progress":Ljava/lang/Float;
    if-nez v3, :cond_5

    .line 5561
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 5563
    :cond_5
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    aget-object v6, v6, p1

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v6, v7, v5}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->setProgress(FZ)V

    goto :goto_1

    .line 5554
    .end local v3    # "progress":Ljava/lang/Float;
    :cond_6
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    aget-object v6, v6, p1

    invoke-virtual {v6, v4, v5}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->setBackgroundState(IZ)V

    goto :goto_4

    .line 5557
    :cond_7
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    aget-object v6, v6, p1

    invoke-virtual {v6, v5, p2}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->setBackgroundState(IZ)V

    goto :goto_4

    :cond_8
    move v4, v5

    .line 5566
    goto :goto_2

    .line 5569
    .end local v0    # "f":Ljava/io/File;
    .end local v1    # "index":I
    .end local v2    # "isVideo":Z
    :cond_9
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    aget-object v4, v4, p1

    invoke-virtual {v4, v7, p2}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->setBackgroundState(IZ)V

    goto :goto_3
.end method

.method private checkScroll(I)V
    .locals 9
    .param p1, "dy"    # I

    .prologue
    .line 1664
    const/high16 v6, 0x42600000    # 56.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    .line 1665
    .local v1, "maxHeight":I
    sget v6, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    const/high16 v7, 0x41c00000    # 24.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1666
    .local v2, "minHeight":I
    sub-int v6, v1, v2

    int-to-float v0, v6

    .line 1667
    .local v0, "heightDiff":F
    iget v6, p0, Lorg/telegram/ui/ArticleViewer;->currentHeaderHeight:I

    sub-int v3, v6, p1

    .line 1668
    .local v3, "newHeight":I
    if-ge v3, v2, :cond_1

    .line 1669
    move v3, v2

    .line 1673
    :cond_0
    :goto_0
    iput v3, p0, Lorg/telegram/ui/ArticleViewer;->currentHeaderHeight:I

    .line 1674
    const v6, 0x3f4ccccd    # 0.8f

    iget v7, p0, Lorg/telegram/ui/ArticleViewer;->currentHeaderHeight:I

    sub-int/2addr v7, v2

    int-to-float v7, v7

    div-float/2addr v7, v0

    const v8, 0x3e4ccccd    # 0.2f

    mul-float/2addr v7, v8

    add-float v4, v6, v7

    .line 1675
    .local v4, "scale":F
    int-to-float v6, v1

    mul-float/2addr v6, v4

    float-to-int v5, v6

    .line 1676
    .local v5, "scaledHeight":I
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->backButton:Landroid/widget/ImageView;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 1677
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->backButton:Landroid/widget/ImageView;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 1678
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->backButton:Landroid/widget/ImageView;

    iget v7, p0, Lorg/telegram/ui/ArticleViewer;->currentHeaderHeight:I

    sub-int v7, v1, v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 1679
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->shareContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v4}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 1680
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->shareContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v4}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 1681
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->shareContainer:Landroid/widget/FrameLayout;

    iget v7, p0, Lorg/telegram/ui/ArticleViewer;->currentHeaderHeight:I

    sub-int v7, v1, v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1682
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->headerView:Landroid/widget/FrameLayout;

    iget v7, p0, Lorg/telegram/ui/ArticleViewer;->currentHeaderHeight:I

    sub-int/2addr v7, v1

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1683
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v7, p0, Lorg/telegram/ui/ArticleViewer;->currentHeaderHeight:I

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/RecyclerListView;->setTopGlowOffset(I)V

    .line 1684
    return-void

    .line 1670
    .end local v4    # "scale":F
    .end local v5    # "scaledHeight":I
    :cond_1
    if-le v3, v1, :cond_0

    .line 1671
    move v3, v1

    goto :goto_0
.end method

.method private createLayoutForText(Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;ILorg/telegram/tgnet/TLRPC$PageBlock;)Landroid/text/StaticLayout;
    .locals 9
    .param p1, "plainText"    # Ljava/lang/CharSequence;
    .param p2, "richText"    # Lorg/telegram/tgnet/TLRPC$RichText;
    .param p3, "width"    # I
    .param p4, "parentBlock"    # Lorg/telegram/tgnet/TLRPC$PageBlock;

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v6, -0x1000000

    const/high16 v5, 0x3f800000    # 1.0f

    .line 981
    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    instance-of v3, p2, Lorg/telegram/tgnet/TLRPC$TL_textEmpty;

    if-eqz v3, :cond_1

    .line 1028
    :cond_0
    :goto_0
    return-object v0

    .line 985
    :cond_1
    sget-object v3, Lorg/telegram/ui/ArticleViewer;->quoteLinePaint:Landroid/graphics/Paint;

    if-nez v3, :cond_2

    .line 986
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    sput-object v3, Lorg/telegram/ui/ArticleViewer;->quoteLinePaint:Landroid/graphics/Paint;

    .line 987
    sget-object v3, Lorg/telegram/ui/ArticleViewer;->quoteLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 989
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    sput-object v3, Lorg/telegram/ui/ArticleViewer;->preformattedBackgroundPaint:Landroid/graphics/Paint;

    .line 990
    sget-object v3, Lorg/telegram/ui/ArticleViewer;->preformattedBackgroundPaint:Landroid/graphics/Paint;

    const v4, -0xa0704

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 992
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    sput-object v3, Lorg/telegram/ui/ArticleViewer;->urlPaint:Landroid/graphics/Paint;

    .line 993
    sget-object v3, Lorg/telegram/ui/ArticleViewer;->urlPaint:Landroid/graphics/Paint;

    const v4, 0x3362a9e3

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 997
    :cond_2
    if-eqz p1, :cond_4

    .line 998
    move-object v1, p1

    .line 1002
    .local v1, "text":Ljava/lang/CharSequence;
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1006
    instance-of v0, p4, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    if-eqz v0, :cond_7

    if-nez p2, :cond_7

    .line 1007
    iget-object v0, p4, Lorg/telegram/tgnet/TLRPC$PageBlock;->author:Ljava/lang/String;

    if-ne v0, p1, :cond_5

    .line 1008
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->embedPostAuthorPaint:Landroid/text/TextPaint;

    if-nez v0, :cond_3

    .line 1009
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v8}, Landroid/text/TextPaint;-><init>(I)V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->embedPostAuthorPaint:Landroid/text/TextPaint;

    .line 1010
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->embedPostAuthorPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v6}, Landroid/text/TextPaint;->setColor(I)V

    .line 1012
    :cond_3
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->embedPostAuthorPaint:Landroid/text/TextPaint;

    const/high16 v3, 0x41700000    # 15.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1013
    sget-object v2, Lorg/telegram/ui/ArticleViewer;->embedPostAuthorPaint:Landroid/text/TextPaint;

    .line 1025
    .local v2, "paint":Landroid/text/TextPaint;
    :goto_2
    instance-of v0, p4, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPullquote;

    if-eqz v0, :cond_8

    .line 1026
    new-instance v0, Landroid/text/StaticLayout;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/4 v6, 0x0

    move v3, p3

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    goto :goto_0

    .line 1000
    .end local v1    # "text":Ljava/lang/CharSequence;
    .end local v2    # "paint":Landroid/text/TextPaint;
    :cond_4
    invoke-direct {p0, p2, p2, p4}, Lorg/telegram/ui/ArticleViewer;->getText(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;)Ljava/lang/CharSequence;

    move-result-object v1

    .restart local v1    # "text":Ljava/lang/CharSequence;
    goto :goto_1

    .line 1015
    :cond_5
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->embedPostDatePaint:Landroid/text/TextPaint;

    if-nez v0, :cond_6

    .line 1016
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v8}, Landroid/text/TextPaint;-><init>(I)V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->embedPostDatePaint:Landroid/text/TextPaint;

    .line 1017
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->embedPostDatePaint:Landroid/text/TextPaint;

    const v3, -0x706860

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 1019
    :cond_6
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->embedPostDatePaint:Landroid/text/TextPaint;

    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1020
    sget-object v2, Lorg/telegram/ui/ArticleViewer;->embedPostDatePaint:Landroid/text/TextPaint;

    .restart local v2    # "paint":Landroid/text/TextPaint;
    goto :goto_2

    .line 1023
    .end local v2    # "paint":Landroid/text/TextPaint;
    :cond_7
    invoke-direct {p0, p2, p2, p4}, Lorg/telegram/ui/ArticleViewer;->getTextPaint(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;)Landroid/text/TextPaint;

    move-result-object v2

    .restart local v2    # "paint":Landroid/text/TextPaint;
    goto :goto_2

    .line 1028
    :cond_8
    new-instance v0, Landroid/text/StaticLayout;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v6, v3

    move v3, p3

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    goto/16 :goto_0
.end method

.method private drawContent(Landroid/graphics/Canvas;)V
    .locals 36
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 6342
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->photoAnimationInProgress:I

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/ArticleViewer;->isPhotoVisible:Z

    move/from16 v31, v0

    if-nez v31, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->photoAnimationInProgress:I

    move/from16 v31, v0

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_1

    .line 6557
    :cond_0
    :goto_0
    return-void

    .line 6349
    :cond_1
    const/high16 v5, -0x40800000    # -1.0f

    .line 6351
    .local v5, "aty":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v31, v0

    if-eqz v31, :cond_12

    .line 6352
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lorg/telegram/ui/Components/Scroller;->isFinished()Z

    move-result v31

    if-nez v31, :cond_2

    .line 6353
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lorg/telegram/ui/Components/Scroller;->abortAnimation()V

    .line 6356
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->scale:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->animateToScale:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->scale:F

    move/from16 v33, v0

    sub-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->animationValue:F

    move/from16 v33, v0

    mul-float v32, v32, v33

    add-float v27, v31, v32

    .line 6357
    .local v27, "ts":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->translationX:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->animateToX:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->translationX:F

    move/from16 v33, v0

    sub-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->animationValue:F

    move/from16 v33, v0

    mul-float v32, v32, v33

    add-float v28, v31, v32

    .line 6358
    .local v28, "tx":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->animateToY:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    move/from16 v33, v0

    sub-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->animationValue:F

    move/from16 v33, v0

    mul-float v32, v32, v33

    add-float v29, v31, v32

    .line 6360
    .local v29, "ty":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->animateToScale:F

    move/from16 v31, v0

    const/high16 v32, 0x3f800000    # 1.0f

    cmpl-float v31, v31, v32

    if-nez v31, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->scale:F

    move/from16 v31, v0

    const/high16 v32, 0x3f800000    # 1.0f

    cmpl-float v31, v31, v32

    if-nez v31, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->translationX:F

    move/from16 v31, v0

    const/16 v32, 0x0

    cmpl-float v31, v31, v32

    if-nez v31, :cond_3

    .line 6361
    move/from16 v5, v29

    .line 6363
    :cond_3
    move/from16 v8, v27

    .line 6364
    .local v8, "currentScale":F
    move/from16 v10, v29

    .line 6365
    .local v10, "currentTranslationY":F
    move/from16 v9, v28

    .line 6366
    .local v9, "currentTranslationX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;->invalidate()V

    .line 6403
    .end local v27    # "ts":F
    .end local v28    # "tx":F
    .end local v29    # "ty":F
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->scale:F

    move/from16 v31, v0

    const/high16 v32, 0x3f800000    # 1.0f

    cmpl-float v31, v31, v32

    if-nez v31, :cond_1a

    const/high16 v31, -0x40800000    # -1.0f

    cmpl-float v31, v5, v31

    if-eqz v31, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/ArticleViewer;->zoomAnimation:Z

    move/from16 v31, v0

    if-nez v31, :cond_1a

    .line 6404
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewHeight()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    const/high16 v32, 0x40800000    # 4.0f

    div-float v15, v31, v32

    .line 6405
    .local v15, "maxValue":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->photoBackgroundDrawable:Lorg/telegram/ui/ArticleViewer$PhotoBackgroundDrawable;

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

    invoke-virtual/range {v31 .. v32}, Lorg/telegram/ui/ArticleViewer$PhotoBackgroundDrawable;->setAlpha(I)V

    .line 6410
    .end local v15    # "maxValue":F
    :goto_2
    const/16 v24, 0x0

    .line 6412
    .local v24, "sideImage":Lorg/telegram/messenger/ImageReceiver;
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->scale:F

    move/from16 v31, v0

    const/high16 v32, 0x3f800000    # 1.0f

    cmpl-float v31, v31, v32

    if-ltz v31, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/ArticleViewer;->zoomAnimation:Z

    move/from16 v31, v0

    if-nez v31, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/ArticleViewer;->zooming:Z

    move/from16 v31, v0

    if-nez v31, :cond_5

    .line 6413
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->maxX:F

    move/from16 v31, v0

    const/high16 v32, 0x40a00000    # 5.0f

    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    add-float v31, v31, v32

    cmpl-float v31, v9, v31

    if-lez v31, :cond_1b

    .line 6414
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v24, v0

    .line 6419
    :cond_5
    :goto_3
    if-eqz v24, :cond_1c

    const/16 v31, 0x1

    :goto_4
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/ArticleViewer;->changingPage:Z

    .line 6421
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v31, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_8

    .line 6422
    move/from16 v25, v9

    .line 6423
    .local v25, "tranlateX":F
    const/16 v21, 0x0

    .line 6424
    .local v21, "scaleDiff":F
    const/high16 v4, 0x3f800000    # 1.0f

    .line 6425
    .local v4, "alpha":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/ArticleViewer;->zoomAnimation:Z

    move/from16 v31, v0

    if-nez v31, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->minX:F

    move/from16 v31, v0

    cmpg-float v31, v25, v31

    if-gez v31, :cond_6

    .line 6426
    const/high16 v31, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->minX:F

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

    .line 6427
    const/high16 v31, 0x3f800000    # 1.0f

    sub-float v31, v31, v4

    const v32, 0x3e99999a    # 0.3f

    mul-float v21, v31, v32

    .line 6428
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

    .line 6431
    :cond_6
    invoke-virtual/range {v24 .. v24}, Lorg/telegram/messenger/ImageReceiver;->hasBitmapImage()Z

    move-result v31

    if-eqz v31, :cond_7

    .line 6432
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 6433
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewWidth()I

    move-result v31

    div-int/lit8 v31, v31, 0x2

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewHeight()I

    move-result v32

    div-int/lit8 v32, v32, 0x2

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p1

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6434
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

    .line 6435
    const/high16 v31, 0x3f800000    # 1.0f

    sub-float v31, v31, v21

    const/high16 v32, 0x3f800000    # 1.0f

    sub-float v32, v32, v21

    move-object/from16 v0, p1

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 6436
    invoke-virtual/range {v24 .. v24}, Lorg/telegram/messenger/ImageReceiver;->getBitmapWidth()I

    move-result v7

    .line 6437
    .local v7, "bitmapWidth":I
    invoke-virtual/range {v24 .. v24}, Lorg/telegram/messenger/ImageReceiver;->getBitmapHeight()I

    move-result v6

    .line 6439
    .local v6, "bitmapHeight":I
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewWidth()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    int-to-float v0, v7

    move/from16 v32, v0

    div-float v22, v31, v32

    .line 6440
    .local v22, "scaleX":F
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewHeight()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    int-to-float v0, v6

    move/from16 v32, v0

    div-float v23, v31, v32

    .line 6441
    .local v23, "scaleY":F
    cmpl-float v31, v22, v23

    if-lez v31, :cond_1d

    move/from16 v18, v23

    .line 6442
    .local v18, "scale":F
    :goto_5
    int-to-float v0, v7

    move/from16 v31, v0

    mul-float v31, v31, v18

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v30, v0

    .line 6443
    .local v30, "width":I
    int-to-float v0, v6

    move/from16 v31, v0

    mul-float v31, v31, v18

    move/from16 v0, v31

    float-to-int v14, v0

    .line 6445
    .local v14, "height":I
    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 6446
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

    .line 6447
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 6448
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 6451
    .end local v6    # "bitmapHeight":I
    .end local v7    # "bitmapWidth":I
    .end local v14    # "height":I
    .end local v18    # "scale":F
    .end local v22    # "scaleX":F
    .end local v23    # "scaleY":F
    .end local v30    # "width":I
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 6452
    div-float v31, v10, v8

    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6453
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->scale:F

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

    .line 6454
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    aget-object v31, v31, v32

    const/high16 v32, 0x3f800000    # 1.0f

    sub-float v32, v32, v21

    invoke-virtual/range {v31 .. v32}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->setScale(F)V

    .line 6455
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    aget-object v31, v31, v32

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->setAlpha(F)V

    .line 6456
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    aget-object v31, v31, v32

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->onDraw(Landroid/graphics/Canvas;)V

    .line 6457
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 6460
    .end local v4    # "alpha":F
    .end local v21    # "scaleDiff":F
    .end local v25    # "tranlateX":F
    :cond_8
    move/from16 v26, v9

    .line 6461
    .local v26, "translateX":F
    const/16 v21, 0x0

    .line 6462
    .restart local v21    # "scaleDiff":F
    const/high16 v4, 0x3f800000    # 1.0f

    .line 6463
    .restart local v4    # "alpha":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/ArticleViewer;->zoomAnimation:Z

    move/from16 v31, v0

    if-nez v31, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->maxX:F

    move/from16 v31, v0

    cmpl-float v31, v26, v31

    if-lez v31, :cond_9

    .line 6464
    const/high16 v31, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->maxX:F

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

    .line 6465
    const v31, 0x3e99999a    # 0.3f

    mul-float v21, v4, v31

    .line 6466
    const/high16 v31, 0x3f800000    # 1.0f

    sub-float v4, v31, v4

    .line 6467
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->maxX:F

    move/from16 v26, v0

    .line 6469
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    move-object/from16 v31, v0

    if-eqz v31, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->getVisibility()I

    move-result v31

    if-nez v31, :cond_1e

    const/4 v11, 0x1

    .line 6470
    .local v11, "drawTextureView":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lorg/telegram/messenger/ImageReceiver;->hasBitmapImage()Z

    move-result v31

    if-eqz v31, :cond_f

    .line 6471
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 6472
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewWidth()I

    move-result v31

    div-int/lit8 v31, v31, 0x2

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewHeight()I

    move-result v32

    div-int/lit8 v32, v32, 0x2

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p1

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6473
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6474
    sub-float v31, v8, v21

    sub-float v32, v8, v21

    move-object/from16 v0, p1

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 6476
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lorg/telegram/messenger/ImageReceiver;->getBitmapWidth()I

    move-result v7

    .line 6477
    .restart local v7    # "bitmapWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lorg/telegram/messenger/ImageReceiver;->getBitmapHeight()I

    move-result v6

    .line 6478
    .restart local v6    # "bitmapHeight":I
    if-eqz v11, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/ArticleViewer;->textureUploaded:Z

    move/from16 v31, v0

    if-eqz v31, :cond_a

    .line 6479
    int-to-float v0, v7

    move/from16 v31, v0

    int-to-float v0, v6

    move/from16 v32, v0

    div-float v19, v31, v32

    .line 6480
    .local v19, "scale1":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->videoTextureView:Landroid/view/TextureView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/TextureView;->getMeasuredWidth()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->videoTextureView:Landroid/view/TextureView;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/view/TextureView;->getMeasuredHeight()I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    div-float v20, v31, v32

    .line 6481
    .local v20, "scale2":F
    sub-float v31, v19, v20

    invoke-static/range {v31 .. v31}, Ljava/lang/Math;->abs(F)F

    move-result v31

    const v32, 0x3c23d70a    # 0.01f

    cmpl-float v31, v31, v32

    if-lez v31, :cond_a

    .line 6482
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->videoTextureView:Landroid/view/TextureView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/TextureView;->getMeasuredWidth()I

    move-result v7

    .line 6483
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->videoTextureView:Landroid/view/TextureView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/TextureView;->getMeasuredHeight()I

    move-result v6

    .line 6487
    .end local v19    # "scale1":F
    .end local v20    # "scale2":F
    :cond_a
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewWidth()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    int-to-float v0, v7

    move/from16 v32, v0

    div-float v22, v31, v32

    .line 6488
    .restart local v22    # "scaleX":F
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewHeight()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    int-to-float v0, v6

    move/from16 v32, v0

    div-float v23, v31, v32

    .line 6489
    .restart local v23    # "scaleY":F
    cmpl-float v31, v22, v23

    if-lez v31, :cond_1f

    move/from16 v18, v23

    .line 6490
    .restart local v18    # "scale":F
    :goto_7
    int-to-float v0, v7

    move/from16 v31, v0

    mul-float v31, v31, v18

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v30, v0

    .line 6491
    .restart local v30    # "width":I
    int-to-float v0, v6

    move/from16 v31, v0

    mul-float v31, v31, v18

    move/from16 v0, v31

    float-to-int v14, v0

    .line 6493
    .restart local v14    # "height":I
    if-eqz v11, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/ArticleViewer;->textureUploaded:Z

    move/from16 v31, v0

    if-eqz v31, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/ArticleViewer;->videoCrossfadeStarted:Z

    move/from16 v31, v0

    if-eqz v31, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->videoCrossfadeAlpha:F

    move/from16 v31, v0

    const/high16 v32, 0x3f800000    # 1.0f

    cmpl-float v31, v31, v32

    if-eqz v31, :cond_c

    .line 6494
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 6495
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

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

    .line 6496
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 6498
    :cond_c
    if-eqz v11, :cond_e

    .line 6499
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/ArticleViewer;->videoCrossfadeStarted:Z

    move/from16 v31, v0

    if-nez v31, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/ArticleViewer;->textureUploaded:Z

    move/from16 v31, v0

    if-eqz v31, :cond_d

    .line 6500
    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/ArticleViewer;->videoCrossfadeStarted:Z

    .line 6501
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/ArticleViewer;->videoCrossfadeAlpha:F

    .line 6502
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/ui/ArticleViewer;->videoCrossfadeAlphaLastTime:J

    .line 6504
    :cond_d
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

    .line 6505
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->videoTextureView:Landroid/view/TextureView;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->videoCrossfadeAlpha:F

    move/from16 v32, v0

    mul-float v32, v32, v4

    invoke-virtual/range {v31 .. v32}, Landroid/view/TextureView;->setAlpha(F)V

    .line 6506
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 6507
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/ArticleViewer;->videoCrossfadeStarted:Z

    move/from16 v31, v0

    if-eqz v31, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->videoCrossfadeAlpha:F

    move/from16 v31, v0

    const/high16 v32, 0x3f800000    # 1.0f

    cmpg-float v31, v31, v32

    if-gez v31, :cond_e

    .line 6508
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 6509
    .local v16, "newUpdateTime":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/ui/ArticleViewer;->videoCrossfadeAlphaLastTime:J

    move-wide/from16 v32, v0

    sub-long v12, v16, v32

    .line 6510
    .local v12, "dt":J
    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/ui/ArticleViewer;->videoCrossfadeAlphaLastTime:J

    .line 6511
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->videoCrossfadeAlpha:F

    move/from16 v31, v0

    long-to-float v0, v12

    move/from16 v32, v0

    const/high16 v33, 0x43960000    # 300.0f

    div-float v32, v32, v33

    add-float v31, v31, v32

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/ArticleViewer;->videoCrossfadeAlpha:F

    .line 6512
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;->invalidate()V

    .line 6513
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->videoCrossfadeAlpha:F

    move/from16 v31, v0

    const/high16 v32, 0x3f800000    # 1.0f

    cmpl-float v31, v31, v32

    if-lez v31, :cond_e

    .line 6514
    const/high16 v31, 0x3f800000    # 1.0f

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/ArticleViewer;->videoCrossfadeAlpha:F

    .line 6518
    .end local v12    # "dt":J
    .end local v16    # "newUpdateTime":J
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 6520
    .end local v6    # "bitmapHeight":I
    .end local v7    # "bitmapWidth":I
    .end local v14    # "height":I
    .end local v18    # "scale":F
    .end local v22    # "scaleX":F
    .end local v23    # "scaleY":F
    .end local v30    # "width":I
    :cond_f
    if-nez v11, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->bottomLayout:Landroid/widget/FrameLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v31

    if-eqz v31, :cond_10

    .line 6521
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 6522
    div-float v31, v10, v8

    move-object/from16 v0, p1

    move/from16 v1, v26

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6523
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aget-object v31, v31, v32

    const/high16 v32, 0x3f800000    # 1.0f

    sub-float v32, v32, v21

    invoke-virtual/range {v31 .. v32}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->setScale(F)V

    .line 6524
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aget-object v31, v31, v32

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->setAlpha(F)V

    .line 6525
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aget-object v31, v31, v32

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->onDraw(Landroid/graphics/Canvas;)V

    .line 6526
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 6529
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v31, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_0

    .line 6530
    invoke-virtual/range {v24 .. v24}, Lorg/telegram/messenger/ImageReceiver;->hasBitmapImage()Z

    move-result v31

    if-eqz v31, :cond_11

    .line 6531
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 6532
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewWidth()I

    move-result v31

    div-int/lit8 v31, v31, 0x2

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewHeight()I

    move-result v32

    div-int/lit8 v32, v32, 0x2

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p1

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6533
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->scale:F

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

    .line 6534
    invoke-virtual/range {v24 .. v24}, Lorg/telegram/messenger/ImageReceiver;->getBitmapWidth()I

    move-result v7

    .line 6535
    .restart local v7    # "bitmapWidth":I
    invoke-virtual/range {v24 .. v24}, Lorg/telegram/messenger/ImageReceiver;->getBitmapHeight()I

    move-result v6

    .line 6537
    .restart local v6    # "bitmapHeight":I
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewWidth()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    int-to-float v0, v7

    move/from16 v32, v0

    div-float v22, v31, v32

    .line 6538
    .restart local v22    # "scaleX":F
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewHeight()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    int-to-float v0, v6

    move/from16 v32, v0

    div-float v23, v31, v32

    .line 6539
    .restart local v23    # "scaleY":F
    cmpl-float v31, v22, v23

    if-lez v31, :cond_20

    move/from16 v18, v23

    .line 6540
    .restart local v18    # "scale":F
    :goto_8
    int-to-float v0, v7

    move/from16 v31, v0

    mul-float v31, v31, v18

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v30, v0

    .line 6541
    .restart local v30    # "width":I
    int-to-float v0, v6

    move/from16 v31, v0

    mul-float v31, v31, v18

    move/from16 v0, v31

    float-to-int v14, v0

    .line 6543
    .restart local v14    # "height":I
    const/high16 v31, 0x3f800000    # 1.0f

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 6544
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

    .line 6545
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 6546
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 6549
    .end local v6    # "bitmapHeight":I
    .end local v7    # "bitmapWidth":I
    .end local v14    # "height":I
    .end local v18    # "scale":F
    .end local v22    # "scaleX":F
    .end local v23    # "scaleY":F
    .end local v30    # "width":I
    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 6550
    div-float v31, v10, v8

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v9, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6551
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->scale:F

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

    .line 6552
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    move-object/from16 v31, v0

    const/16 v32, 0x2

    aget-object v31, v31, v32

    const/high16 v32, 0x3f800000    # 1.0f

    invoke-virtual/range {v31 .. v32}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->setScale(F)V

    .line 6553
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    move-object/from16 v31, v0

    const/16 v32, 0x2

    aget-object v31, v31, v32

    const/high16 v32, 0x3f800000    # 1.0f

    invoke-virtual/range {v31 .. v32}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->setAlpha(F)V

    .line 6554
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    move-object/from16 v31, v0

    const/16 v32, 0x2

    aget-object v31, v31, v32

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->onDraw(Landroid/graphics/Canvas;)V

    .line 6555
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 6368
    .end local v4    # "alpha":F
    .end local v8    # "currentScale":F
    .end local v9    # "currentTranslationX":F
    .end local v10    # "currentTranslationY":F
    .end local v11    # "drawTextureView":Z
    .end local v21    # "scaleDiff":F
    .end local v24    # "sideImage":Lorg/telegram/messenger/ImageReceiver;
    .end local v26    # "translateX":F
    :cond_12
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/ui/ArticleViewer;->animationStartTime:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x0

    cmp-long v31, v32, v34

    if-eqz v31, :cond_13

    .line 6369
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->animateToX:F

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/ArticleViewer;->translationX:F

    .line 6370
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->animateToY:F

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/ArticleViewer;->translationY:F

    .line 6371
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->animateToScale:F

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/ArticleViewer;->scale:F

    .line 6372
    const-wide/16 v32, 0x0

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/ui/ArticleViewer;->animationStartTime:J

    .line 6373
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->scale:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1}, Lorg/telegram/ui/ArticleViewer;->updateMinMax(F)V

    .line 6374
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/ArticleViewer;->zoomAnimation:Z

    .line 6376
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lorg/telegram/ui/Components/Scroller;->isFinished()Z

    move-result v31

    if-nez v31, :cond_16

    .line 6377
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lorg/telegram/ui/Components/Scroller;->computeScrollOffset()Z

    move-result v31

    if-eqz v31, :cond_16

    .line 6378
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lorg/telegram/ui/Components/Scroller;->getStartX()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->maxX:F

    move/from16 v32, v0

    cmpg-float v31, v31, v32

    if-gez v31, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lorg/telegram/ui/Components/Scroller;->getStartX()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->minX:F

    move/from16 v32, v0

    cmpl-float v31, v31, v32

    if-lez v31, :cond_14

    .line 6379
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lorg/telegram/ui/Components/Scroller;->getCurrX()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/ArticleViewer;->translationX:F

    .line 6381
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lorg/telegram/ui/Components/Scroller;->getStartY()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->maxY:F

    move/from16 v32, v0

    cmpg-float v31, v31, v32

    if-gez v31, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lorg/telegram/ui/Components/Scroller;->getStartY()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->minY:F

    move/from16 v32, v0

    cmpl-float v31, v31, v32

    if-lez v31, :cond_15

    .line 6382
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lorg/telegram/ui/Components/Scroller;->getCurrY()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/ArticleViewer;->translationY:F

    .line 6384
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;->invalidate()V

    .line 6387
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->switchImageAfterAnimation:I

    move/from16 v31, v0

    if-eqz v31, :cond_18

    .line 6388
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->switchImageAfterAnimation:I

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_19

    .line 6389
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->currentIndex:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, 0x1

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ArticleViewer;->setImageIndex(IZ)V

    .line 6393
    :cond_17
    :goto_9
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/ArticleViewer;->switchImageAfterAnimation:I

    .line 6395
    :cond_18
    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/ui/ArticleViewer;->scale:F

    .line 6396
    .restart local v8    # "currentScale":F
    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    .line 6397
    .restart local v10    # "currentTranslationY":F
    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/ui/ArticleViewer;->translationX:F

    .line 6398
    .restart local v9    # "currentTranslationX":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/ArticleViewer;->moving:Z

    move/from16 v31, v0

    if-nez v31, :cond_4

    .line 6399
    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    goto/16 :goto_1

    .line 6390
    .end local v8    # "currentScale":F
    .end local v9    # "currentTranslationX":F
    .end local v10    # "currentTranslationY":F
    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->switchImageAfterAnimation:I

    move/from16 v31, v0

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_17

    .line 6391
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->currentIndex:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, -0x1

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ArticleViewer;->setImageIndex(IZ)V

    goto :goto_9

    .line 6407
    .restart local v8    # "currentScale":F
    .restart local v9    # "currentTranslationX":F
    .restart local v10    # "currentTranslationY":F
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->photoBackgroundDrawable:Lorg/telegram/ui/ArticleViewer$PhotoBackgroundDrawable;

    move-object/from16 v31, v0

    const/16 v32, 0xff

    invoke-virtual/range {v31 .. v32}, Lorg/telegram/ui/ArticleViewer$PhotoBackgroundDrawable;->setAlpha(I)V

    goto/16 :goto_2

    .line 6415
    .restart local v24    # "sideImage":Lorg/telegram/messenger/ImageReceiver;
    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->minX:F

    move/from16 v31, v0

    const/high16 v32, 0x40a00000    # 5.0f

    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v31, v31, v32

    cmpg-float v31, v9, v31

    if-gez v31, :cond_5

    .line 6416
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v24, v0

    goto/16 :goto_3

    .line 6419
    :cond_1c
    const/16 v31, 0x0

    goto/16 :goto_4

    .restart local v4    # "alpha":F
    .restart local v6    # "bitmapHeight":I
    .restart local v7    # "bitmapWidth":I
    .restart local v21    # "scaleDiff":F
    .restart local v22    # "scaleX":F
    .restart local v23    # "scaleY":F
    .restart local v25    # "tranlateX":F
    :cond_1d
    move/from16 v18, v22

    .line 6441
    goto/16 :goto_5

    .line 6469
    .end local v6    # "bitmapHeight":I
    .end local v7    # "bitmapWidth":I
    .end local v22    # "scaleX":F
    .end local v23    # "scaleY":F
    .end local v25    # "tranlateX":F
    .restart local v26    # "translateX":F
    :cond_1e
    const/4 v11, 0x0

    goto/16 :goto_6

    .restart local v6    # "bitmapHeight":I
    .restart local v7    # "bitmapWidth":I
    .restart local v11    # "drawTextureView":Z
    .restart local v22    # "scaleX":F
    .restart local v23    # "scaleY":F
    :cond_1f
    move/from16 v18, v22

    .line 6489
    goto/16 :goto_7

    :cond_20
    move/from16 v18, v22

    .line 6539
    goto/16 :goto_8
.end method

.method private drawLayoutLink(Landroid/graphics/Canvas;Landroid/text/StaticLayout;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "layout"    # Landroid/text/StaticLayout;

    .prologue
    .line 1033
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pressedLink:Lorg/telegram/ui/Components/TextPaintUrlSpan;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pressedLinkOwnerLayout:Landroid/text/StaticLayout;

    if-eq v0, p2, :cond_1

    .line 1039
    :cond_0
    :goto_0
    return-void

    .line 1036
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pressedLink:Lorg/telegram/ui/Components/TextPaintUrlSpan;

    if-eqz v0, :cond_0

    .line 1037
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->urlPath:Lorg/telegram/ui/Components/LinkPath;

    sget-object v1, Lorg/telegram/ui/ArticleViewer;->urlPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private getContainerViewHeight()I
    .locals 1

    .prologue
    .line 6083
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;->getHeight()I

    move-result v0

    return v0
.end method

.method private getContainerViewWidth()I
    .locals 1

    .prologue
    .line 6079
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;->getWidth()I

    move-result v0

    return v0
.end method

.method private getDocumentWithId(J)Lorg/telegram/tgnet/TLRPC$Document;
    .locals 7
    .param p1, "id"    # J

    .prologue
    const/4 v2, 0x0

    .line 1179
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    if-nez v3, :cond_2

    :cond_0
    move-object v1, v2

    .line 1191
    :cond_1
    :goto_0
    return-object v1

    .line 1182
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    cmp-long v3, v4, p1

    if-nez v3, :cond_3

    .line 1183
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    goto :goto_0

    .line 1185
    :cond_3
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Page;->videos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 1186
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Page;->videos:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Document;

    .line 1187
    .local v1, "document":Lorg/telegram/tgnet/TLRPC$Document;
    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    cmp-long v3, v4, p1

    if-eqz v3, :cond_1

    .line 1185
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    :cond_4
    move-object v1, v2

    .line 1191
    goto :goto_0
.end method

.method private getFileLocation(I[I)Lorg/telegram/tgnet/TLRPC$FileLocation;
    .locals 9
    .param p1, "index"    # I
    .param p2, "size"    # [I

    .prologue
    const/4 v4, 0x0

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 5296
    if-ltz p1, :cond_0

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt p1, v5, :cond_1

    .line 5322
    :cond_0
    :goto_0
    return-object v4

    .line 5299
    :cond_1
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->getMedia(I)Lorg/telegram/tgnet/TLObject;

    move-result-object v1

    .line 5300
    .local v1, "media":Lorg/telegram/tgnet/TLObject;
    instance-of v5, v1, Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v5, :cond_4

    move-object v2, v1

    .line 5301
    check-cast v2, Lorg/telegram/tgnet/TLRPC$Photo;

    .line 5302
    .local v2, "photo":Lorg/telegram/tgnet/TLRPC$Photo;
    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v6

    invoke-static {v5, v6}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v3

    .line 5303
    .local v3, "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v3, :cond_3

    .line 5304
    iget v4, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    aput v4, p2, v7

    .line 5305
    aget v4, p2, v7

    if-nez v4, :cond_2

    .line 5306
    aput v8, p2, v7

    .line 5308
    :cond_2
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto :goto_0

    .line 5310
    :cond_3
    aput v8, p2, v7

    goto :goto_0

    .line 5312
    .end local v2    # "photo":Lorg/telegram/tgnet/TLRPC$Photo;
    .end local v3    # "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_4
    instance-of v5, v1, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v5, :cond_0

    move-object v0, v1

    .line 5313
    check-cast v0, Lorg/telegram/tgnet/TLRPC$Document;

    .line 5314
    .local v0, "document":Lorg/telegram/tgnet/TLRPC$Document;
    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v5, :cond_0

    .line 5315
    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    aput v4, p2, v7

    .line 5316
    aget v4, p2, v7

    if-nez v4, :cond_5

    .line 5317
    aput v8, p2, v7

    .line 5319
    :cond_5
    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto :goto_0
.end method

.method private getFileName(I)Ljava/lang/String;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 5239
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->getMedia(I)Lorg/telegram/tgnet/TLObject;

    move-result-object v0

    .line 5240
    .local v0, "media":Lorg/telegram/tgnet/TLObject;
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v1, :cond_0

    .line 5241
    check-cast v0, Lorg/telegram/tgnet/TLRPC$Photo;

    .end local v0    # "media":Lorg/telegram/tgnet/TLObject;
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    .line 5243
    .restart local v0    # "media":Lorg/telegram/tgnet/TLObject;
    :cond_0
    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getImageReceiverFromListView(Landroid/view/ViewGroup;Lorg/telegram/tgnet/TLRPC$PageBlock;[I)Lorg/telegram/messenger/ImageReceiver;
    .locals 6
    .param p1, "listView"    # Landroid/view/ViewGroup;
    .param p2, "pageBlock"    # Lorg/telegram/tgnet/TLRPC$PageBlock;
    .param p3, "coords"    # [I

    .prologue
    .line 6679
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 6680
    .local v2, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v2, :cond_5

    .line 6681
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 6682
    .local v4, "view":Landroid/view/View;
    instance-of v5, v4, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;

    if-eqz v5, :cond_1

    move-object v1, v4

    .line 6683
    check-cast v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;

    .line 6684
    .local v1, "cell":Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->access$11900(Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    move-result-object v5

    if-ne v5, p2, :cond_3

    .line 6685
    invoke-virtual {v4, p3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 6686
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->access$12000(Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    .line 6706
    .end local v1    # "cell":Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;
    .end local v4    # "view":Landroid/view/View;
    :cond_0
    :goto_1
    return-object v3

    .line 6688
    .restart local v4    # "view":Landroid/view/View;
    :cond_1
    instance-of v5, v4, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;

    if-eqz v5, :cond_2

    move-object v1, v4

    .line 6689
    check-cast v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;

    .line 6690
    .local v1, "cell":Lorg/telegram/ui/ArticleViewer$BlockVideoCell;
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->access$12100(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    move-result-object v5

    if-ne v5, p2, :cond_3

    .line 6691
    invoke-virtual {v4, p3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 6692
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->access$12200(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    goto :goto_1

    .line 6694
    .end local v1    # "cell":Lorg/telegram/ui/ArticleViewer$BlockVideoCell;
    :cond_2
    instance-of v5, v4, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;

    if-eqz v5, :cond_4

    .line 6695
    check-cast v4, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;

    .end local v4    # "view":Landroid/view/View;
    invoke-static {v4}, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->access$12300(Lorg/telegram/ui/ArticleViewer$BlockCollageCell;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    invoke-direct {p0, v5, p2, p3}, Lorg/telegram/ui/ArticleViewer;->getImageReceiverFromListView(Landroid/view/ViewGroup;Lorg/telegram/tgnet/TLRPC$PageBlock;[I)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    .line 6696
    .local v3, "imageReceiver":Lorg/telegram/messenger/ImageReceiver;
    if-nez v3, :cond_0

    .line 6680
    .end local v3    # "imageReceiver":Lorg/telegram/messenger/ImageReceiver;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6699
    .restart local v4    # "view":Landroid/view/View;
    :cond_4
    instance-of v5, v4, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    if-eqz v5, :cond_3

    .line 6700
    check-cast v4, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    .end local v4    # "view":Landroid/view/View;
    invoke-static {v4}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->access$8800(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;)Landroid/support/v4/view/ViewPager;

    move-result-object v5

    invoke-direct {p0, v5, p2, p3}, Lorg/telegram/ui/ArticleViewer;->getImageReceiverFromListView(Landroid/view/ViewGroup;Lorg/telegram/tgnet/TLRPC$PageBlock;[I)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    .line 6701
    .restart local v3    # "imageReceiver":Lorg/telegram/messenger/ImageReceiver;
    if-eqz v3, :cond_3

    goto :goto_1

    .line 6706
    .end local v3    # "imageReceiver":Lorg/telegram/messenger/ImageReceiver;
    :cond_5
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static getInstance()Lorg/telegram/ui/ArticleViewer;
    .locals 4

    .prologue
    .line 201
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->Instance:Lorg/telegram/ui/ArticleViewer;

    .line 202
    .local v0, "localInstance":Lorg/telegram/ui/ArticleViewer;
    if-nez v0, :cond_1

    .line 203
    const-class v3, Lorg/telegram/ui/ArticleViewer;

    monitor-enter v3

    .line 204
    :try_start_0
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->Instance:Lorg/telegram/ui/ArticleViewer;

    .line 205
    if-nez v0, :cond_0

    .line 206
    new-instance v1, Lorg/telegram/ui/ArticleViewer;

    invoke-direct {v1}, Lorg/telegram/ui/ArticleViewer;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "localInstance":Lorg/telegram/ui/ArticleViewer;
    .local v1, "localInstance":Lorg/telegram/ui/ArticleViewer;
    :try_start_1
    sput-object v1, Lorg/telegram/ui/ArticleViewer;->Instance:Lorg/telegram/ui/ArticleViewer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 208
    .end local v1    # "localInstance":Lorg/telegram/ui/ArticleViewer;
    .restart local v0    # "localInstance":Lorg/telegram/ui/ArticleViewer;
    :cond_0
    :try_start_2
    monitor-exit v3

    .line 210
    :cond_1
    return-object v0

    .line 208
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "localInstance":Lorg/telegram/ui/ArticleViewer;
    .restart local v1    # "localInstance":Lorg/telegram/ui/ArticleViewer;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "localInstance":Lorg/telegram/ui/ArticleViewer;
    .restart local v0    # "localInstance":Lorg/telegram/ui/ArticleViewer;
    goto :goto_0
.end method

.method private getMedia(I)Lorg/telegram/tgnet/TLObject;
    .locals 6
    .param p1, "index"    # I

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 5247
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    if-gez p1, :cond_1

    .line 5256
    :cond_0
    :goto_0
    return-object v1

    .line 5250
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$PageBlock;

    .line 5251
    .local v0, "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$PageBlock;->photo_id:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 5252
    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$PageBlock;->photo_id:J

    invoke-direct {p0, v2, v3}, Lorg/telegram/ui/ArticleViewer;->getPhotoWithId(J)Lorg/telegram/tgnet/TLRPC$Photo;

    move-result-object v1

    goto :goto_0

    .line 5253
    :cond_2
    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$PageBlock;->video_id:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 5254
    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$PageBlock;->video_id:J

    invoke-direct {p0, v2, v3}, Lorg/telegram/ui/ArticleViewer;->getDocumentWithId(J)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    goto :goto_0
.end method

.method private getMediaFile(I)Ljava/io/File;
    .locals 12
    .param p1, "index"    # I

    .prologue
    const-wide/16 v10, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 5260
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge p1, v5, :cond_0

    if-gez p1, :cond_1

    .line 5278
    :cond_0
    :goto_0
    return-object v4

    .line 5263
    :cond_1
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$PageBlock;

    .line 5264
    .local v0, "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$PageBlock;->photo_id:J

    cmp-long v5, v6, v10

    if-eqz v5, :cond_2

    .line 5265
    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$PageBlock;->photo_id:J

    invoke-direct {p0, v6, v7}, Lorg/telegram/ui/ArticleViewer;->getPhotoWithId(J)Lorg/telegram/tgnet/TLRPC$Photo;

    move-result-object v2

    .line 5266
    .local v2, "photo":Lorg/telegram/tgnet/TLRPC$Photo;
    if-eqz v2, :cond_0

    .line 5267
    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v6

    invoke-static {v5, v6}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v3

    .line 5268
    .local v3, "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v3, :cond_0

    .line 5269
    invoke-static {v3, v8}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v4

    goto :goto_0

    .line 5272
    .end local v2    # "photo":Lorg/telegram/tgnet/TLRPC$Photo;
    .end local v3    # "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_2
    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$PageBlock;->video_id:J

    cmp-long v5, v6, v10

    if-eqz v5, :cond_0

    .line 5273
    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$PageBlock;->video_id:J

    invoke-direct {p0, v6, v7}, Lorg/telegram/ui/ArticleViewer;->getDocumentWithId(J)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    .line 5274
    .local v1, "document":Lorg/telegram/tgnet/TLRPC$Document;
    if-eqz v1, :cond_0

    .line 5275
    invoke-static {v1, v8}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v4

    goto :goto_0
.end method

.method private getPhotoWithId(J)Lorg/telegram/tgnet/TLRPC$Photo;
    .locals 7
    .param p1, "id"    # J

    .prologue
    const/4 v2, 0x0

    .line 1163
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    if-nez v3, :cond_2

    :cond_0
    move-object v1, v2

    .line 1175
    :cond_1
    :goto_0
    return-object v1

    .line 1166
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    cmp-long v3, v4, p1

    if-nez v3, :cond_3

    .line 1167
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    goto :goto_0

    .line 1169
    :cond_3
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Page;->photos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 1170
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Page;->photos:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Photo;

    .line 1171
    .local v1, "photo":Lorg/telegram/tgnet/TLRPC$Photo;
    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    cmp-long v3, v4, p1

    if-eqz v3, :cond_1

    .line 1169
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1    # "photo":Lorg/telegram/tgnet/TLRPC$Photo;
    :cond_4
    move-object v1, v2

    .line 1175
    goto :goto_0
.end method

.method private getPlaceForPhoto(Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;
    .locals 4
    .param p1, "pageBlock"    # Lorg/telegram/tgnet/TLRPC$PageBlock;

    .prologue
    .line 6710
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->coords:[I

    invoke-direct {p0, v2, p1, v3}, Lorg/telegram/ui/ArticleViewer;->getImageReceiverFromListView(Landroid/view/ViewGroup;Lorg/telegram/tgnet/TLRPC$PageBlock;[I)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    .line 6711
    .local v0, "imageReceiver":Lorg/telegram/messenger/ImageReceiver;
    if-nez v0, :cond_0

    .line 6712
    const/4 v1, 0x0

    .line 6722
    :goto_0
    return-object v1

    .line 6714
    :cond_0
    new-instance v1, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;

    invoke-direct {v1}, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;-><init>()V

    .line 6715
    .local v1, "object":Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->coords:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    iput v2, v1, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->viewX:I

    .line 6716
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->coords:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    iput v2, v1, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->viewY:I

    .line 6717
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iput-object v2, v1, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    .line 6718
    iput-object v0, v1, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 6719
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->thumb:Landroid/graphics/Bitmap;

    .line 6720
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius()I

    move-result v2

    iput v2, v1, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->radius:I

    .line 6721
    iget v2, p0, Lorg/telegram/ui/ArticleViewer;->currentHeaderHeight:I

    iput v2, v1, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->clipTopAddition:I

    goto :goto_0
.end method

.method private getText(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;)Ljava/lang/CharSequence;
    .locals 14
    .param p1, "parentRichText"    # Lorg/telegram/tgnet/TLRPC$RichText;
    .param p2, "richText"    # Lorg/telegram/tgnet/TLRPC$RichText;
    .param p3, "parentBlock"    # Lorg/telegram/tgnet/TLRPC$PageBlock;

    .prologue
    .line 780
    move-object/from16 v0, p2

    instance-of v10, v0, Lorg/telegram/tgnet/TLRPC$TL_textFixed;

    if-eqz v10, :cond_1

    .line 781
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_textFixed;

    .end local p2    # "richText":Lorg/telegram/tgnet/TLRPC$RichText;
    move-object/from16 v0, p2

    iget-object v10, v0, Lorg/telegram/tgnet/TLRPC$TL_textFixed;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    move-object/from16 v0, p3

    invoke-direct {p0, p1, v10, v0}, Lorg/telegram/ui/ArticleViewer;->getText(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 827
    :cond_0
    :goto_0
    return-object v7

    .line 782
    .restart local p2    # "richText":Lorg/telegram/tgnet/TLRPC$RichText;
    :cond_1
    move-object/from16 v0, p2

    instance-of v10, v0, Lorg/telegram/tgnet/TLRPC$TL_textItalic;

    if-eqz v10, :cond_2

    .line 783
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_textItalic;

    .end local p2    # "richText":Lorg/telegram/tgnet/TLRPC$RichText;
    move-object/from16 v0, p2

    iget-object v10, v0, Lorg/telegram/tgnet/TLRPC$TL_textItalic;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    move-object/from16 v0, p3

    invoke-direct {p0, p1, v10, v0}, Lorg/telegram/ui/ArticleViewer;->getText(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;)Ljava/lang/CharSequence;

    move-result-object v7

    goto :goto_0

    .line 784
    .restart local p2    # "richText":Lorg/telegram/tgnet/TLRPC$RichText;
    :cond_2
    move-object/from16 v0, p2

    instance-of v10, v0, Lorg/telegram/tgnet/TLRPC$TL_textBold;

    if-eqz v10, :cond_3

    .line 785
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_textBold;

    .end local p2    # "richText":Lorg/telegram/tgnet/TLRPC$RichText;
    move-object/from16 v0, p2

    iget-object v10, v0, Lorg/telegram/tgnet/TLRPC$TL_textBold;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    move-object/from16 v0, p3

    invoke-direct {p0, p1, v10, v0}, Lorg/telegram/ui/ArticleViewer;->getText(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;)Ljava/lang/CharSequence;

    move-result-object v7

    goto :goto_0

    .line 786
    .restart local p2    # "richText":Lorg/telegram/tgnet/TLRPC$RichText;
    :cond_3
    move-object/from16 v0, p2

    instance-of v10, v0, Lorg/telegram/tgnet/TLRPC$TL_textUnderline;

    if-eqz v10, :cond_4

    .line 787
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_textUnderline;

    .end local p2    # "richText":Lorg/telegram/tgnet/TLRPC$RichText;
    move-object/from16 v0, p2

    iget-object v10, v0, Lorg/telegram/tgnet/TLRPC$TL_textUnderline;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    move-object/from16 v0, p3

    invoke-direct {p0, p1, v10, v0}, Lorg/telegram/ui/ArticleViewer;->getText(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;)Ljava/lang/CharSequence;

    move-result-object v7

    goto :goto_0

    .line 788
    .restart local p2    # "richText":Lorg/telegram/tgnet/TLRPC$RichText;
    :cond_4
    move-object/from16 v0, p2

    instance-of v10, v0, Lorg/telegram/tgnet/TLRPC$TL_textStrike;

    if-eqz v10, :cond_5

    .line 789
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_textStrike;

    .end local p2    # "richText":Lorg/telegram/tgnet/TLRPC$RichText;
    move-object/from16 v0, p2

    iget-object v10, v0, Lorg/telegram/tgnet/TLRPC$TL_textStrike;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    move-object/from16 v0, p3

    invoke-direct {p0, p1, v10, v0}, Lorg/telegram/ui/ArticleViewer;->getText(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;)Ljava/lang/CharSequence;

    move-result-object v7

    goto :goto_0

    .line 790
    .restart local p2    # "richText":Lorg/telegram/tgnet/TLRPC$RichText;
    :cond_5
    move-object/from16 v0, p2

    instance-of v10, v0, Lorg/telegram/tgnet/TLRPC$TL_textEmail;

    if-eqz v10, :cond_8

    .line 791
    new-instance v7, Landroid/text/SpannableStringBuilder;

    move-object/from16 v10, p2

    check-cast v10, Lorg/telegram/tgnet/TLRPC$TL_textEmail;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$TL_textEmail;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    move-object/from16 v0, p3

    invoke-direct {p0, p1, v10, v0}, Lorg/telegram/ui/ArticleViewer;->getText(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-direct {v7, v10}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 792
    .local v7, "spannableStringBuilder":Landroid/text/SpannableStringBuilder;
    const/4 v10, 0x0

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    const-class v12, Landroid/text/style/MetricAffectingSpan;

    invoke-virtual {v7, v10, v11, v12}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/MetricAffectingSpan;

    .line 793
    .local v5, "innerSpans":[Landroid/text/style/MetricAffectingSpan;
    new-instance v11, Lorg/telegram/ui/Components/TextPaintUrlSpan;

    if-eqz v5, :cond_6

    array-length v10, v5

    if-nez v10, :cond_7

    :cond_6
    invoke-direct/range {p0 .. p3}, Lorg/telegram/ui/ArticleViewer;->getTextPaint(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;)Landroid/text/TextPaint;

    move-result-object v10

    :goto_1
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->getUrl(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v10, v12}, Lorg/telegram/ui/Components/TextPaintUrlSpan;-><init>(Landroid/text/TextPaint;Ljava/lang/String;)V

    const/4 v10, 0x0

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v12

    const/16 v13, 0x21

    invoke-virtual {v7, v11, v10, v12, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_0

    :cond_7
    const/4 v10, 0x0

    goto :goto_1

    .line 795
    .end local v5    # "innerSpans":[Landroid/text/style/MetricAffectingSpan;
    .end local v7    # "spannableStringBuilder":Landroid/text/SpannableStringBuilder;
    :cond_8
    move-object/from16 v0, p2

    instance-of v10, v0, Lorg/telegram/tgnet/TLRPC$TL_textUrl;

    if-eqz v10, :cond_b

    .line 796
    new-instance v7, Landroid/text/SpannableStringBuilder;

    move-object/from16 v10, p2

    check-cast v10, Lorg/telegram/tgnet/TLRPC$TL_textUrl;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$TL_textUrl;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    move-object/from16 v0, p3

    invoke-direct {p0, p1, v10, v0}, Lorg/telegram/ui/ArticleViewer;->getText(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-direct {v7, v10}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 797
    .restart local v7    # "spannableStringBuilder":Landroid/text/SpannableStringBuilder;
    const/4 v10, 0x0

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    const-class v12, Landroid/text/style/MetricAffectingSpan;

    invoke-virtual {v7, v10, v11, v12}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/MetricAffectingSpan;

    .line 798
    .restart local v5    # "innerSpans":[Landroid/text/style/MetricAffectingSpan;
    new-instance v11, Lorg/telegram/ui/Components/TextPaintUrlSpan;

    if-eqz v5, :cond_9

    array-length v10, v5

    if-nez v10, :cond_a

    :cond_9
    invoke-direct/range {p0 .. p3}, Lorg/telegram/ui/ArticleViewer;->getTextPaint(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;)Landroid/text/TextPaint;

    move-result-object v10

    :goto_2
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->getUrl(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v10, v12}, Lorg/telegram/ui/Components/TextPaintUrlSpan;-><init>(Landroid/text/TextPaint;Ljava/lang/String;)V

    const/4 v10, 0x0

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v12

    const/16 v13, 0x21

    invoke-virtual {v7, v11, v10, v12, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_0

    :cond_a
    const/4 v10, 0x0

    goto :goto_2

    .line 800
    .end local v5    # "innerSpans":[Landroid/text/style/MetricAffectingSpan;
    .end local v7    # "spannableStringBuilder":Landroid/text/SpannableStringBuilder;
    :cond_b
    move-object/from16 v0, p2

    instance-of v10, v0, Lorg/telegram/tgnet/TLRPC$TL_textPlain;

    if-eqz v10, :cond_c

    .line 801
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_textPlain;

    .end local p2    # "richText":Lorg/telegram/tgnet/TLRPC$RichText;
    move-object/from16 v0, p2

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$TL_textPlain;->text:Ljava/lang/String;

    goto/16 :goto_0

    .line 802
    .restart local p2    # "richText":Lorg/telegram/tgnet/TLRPC$RichText;
    :cond_c
    move-object/from16 v0, p2

    instance-of v10, v0, Lorg/telegram/tgnet/TLRPC$TL_textEmpty;

    if-eqz v10, :cond_d

    .line 803
    const-string/jumbo v7, ""

    goto/16 :goto_0

    .line 804
    :cond_d
    move-object/from16 v0, p2

    instance-of v10, v0, Lorg/telegram/tgnet/TLRPC$TL_textConcat;

    if-eqz v10, :cond_11

    .line 805
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 806
    .restart local v7    # "spannableStringBuilder":Landroid/text/SpannableStringBuilder;
    move-object/from16 v0, p2

    iget-object v10, v0, Lorg/telegram/tgnet/TLRPC$RichText;->texts:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 807
    .local v2, "count":I
    const/4 v1, 0x0

    .local v1, "a":I
    :goto_3
    if-ge v1, v2, :cond_0

    .line 808
    move-object/from16 v0, p2

    iget-object v10, v0, Lorg/telegram/tgnet/TLRPC$RichText;->texts:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$RichText;

    .line 809
    .local v4, "innerRichText":Lorg/telegram/tgnet/TLRPC$RichText;
    move-object/from16 v0, p3

    invoke-direct {p0, p1, v4, v0}, Lorg/telegram/ui/ArticleViewer;->getText(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 810
    .local v6, "innerText":Ljava/lang/CharSequence;
    invoke-direct {p0, v4}, Lorg/telegram/ui/ArticleViewer;->getTextFlags(Lorg/telegram/tgnet/TLRPC$RichText;)I

    move-result v3

    .line 811
    .local v3, "flags":I
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    .line 812
    .local v8, "startLength":I
    invoke-virtual {v7, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 813
    if-eqz v3, :cond_f

    instance-of v10, v6, Landroid/text/SpannableStringBuilder;

    if-nez v10, :cond_f

    .line 814
    and-int/lit8 v10, v3, 0x8

    if-eqz v10, :cond_10

    .line 815
    invoke-direct {p0, v4}, Lorg/telegram/ui/ArticleViewer;->getUrl(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/String;

    move-result-object v9

    .line 816
    .local v9, "url":Ljava/lang/String;
    if-nez v9, :cond_e

    .line 817
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->getUrl(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/String;

    move-result-object v9

    .line 819
    :cond_e
    new-instance v10, Lorg/telegram/ui/Components/TextPaintUrlSpan;

    move-object/from16 v0, p3

    invoke-direct {p0, p1, v4, v0}, Lorg/telegram/ui/ArticleViewer;->getTextPaint(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;)Landroid/text/TextPaint;

    move-result-object v11

    invoke-direct {v10, v11, v9}, Lorg/telegram/ui/Components/TextPaintUrlSpan;-><init>(Landroid/text/TextPaint;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    const/16 v12, 0x21

    invoke-virtual {v7, v10, v8, v11, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 807
    .end local v9    # "url":Ljava/lang/String;
    :cond_f
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 821
    :cond_10
    new-instance v10, Lorg/telegram/ui/Components/TextPaintSpan;

    move-object/from16 v0, p3

    invoke-direct {p0, p1, v4, v0}, Lorg/telegram/ui/ArticleViewer;->getTextPaint(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;)Landroid/text/TextPaint;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/telegram/ui/Components/TextPaintSpan;-><init>(Landroid/text/TextPaint;)V

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    const/16 v12, 0x21

    invoke-virtual {v7, v10, v8, v11, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_4

    .line 827
    .end local v1    # "a":I
    .end local v2    # "count":I
    .end local v3    # "flags":I
    .end local v4    # "innerRichText":Lorg/telegram/tgnet/TLRPC$RichText;
    .end local v6    # "innerText":Ljava/lang/CharSequence;
    .end local v7    # "spannableStringBuilder":Landroid/text/SpannableStringBuilder;
    .end local v8    # "startLength":I
    :cond_11
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "not supported "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0
.end method

.method private getTextFlags(Lorg/telegram/tgnet/TLRPC$RichText;)I
    .locals 1
    .param p1, "richText"    # Lorg/telegram/tgnet/TLRPC$RichText;

    .prologue
    .line 759
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textFixed;

    if-eqz v0, :cond_0

    .line 760
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$RichText;->parentRichText:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->getTextFlags(Lorg/telegram/tgnet/TLRPC$RichText;)I

    move-result v0

    or-int/lit8 v0, v0, 0x4

    .line 776
    :goto_0
    return v0

    .line 761
    :cond_0
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textItalic;

    if-eqz v0, :cond_1

    .line 762
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$RichText;->parentRichText:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->getTextFlags(Lorg/telegram/tgnet/TLRPC$RichText;)I

    move-result v0

    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 763
    :cond_1
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textBold;

    if-eqz v0, :cond_2

    .line 764
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$RichText;->parentRichText:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->getTextFlags(Lorg/telegram/tgnet/TLRPC$RichText;)I

    move-result v0

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 765
    :cond_2
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textUnderline;

    if-eqz v0, :cond_3

    .line 766
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$RichText;->parentRichText:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->getTextFlags(Lorg/telegram/tgnet/TLRPC$RichText;)I

    move-result v0

    or-int/lit8 v0, v0, 0x10

    goto :goto_0

    .line 767
    :cond_3
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textStrike;

    if-eqz v0, :cond_4

    .line 768
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$RichText;->parentRichText:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->getTextFlags(Lorg/telegram/tgnet/TLRPC$RichText;)I

    move-result v0

    or-int/lit8 v0, v0, 0x20

    goto :goto_0

    .line 769
    :cond_4
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textEmail;

    if-eqz v0, :cond_5

    .line 770
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$RichText;->parentRichText:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->getTextFlags(Lorg/telegram/tgnet/TLRPC$RichText;)I

    move-result v0

    or-int/lit8 v0, v0, 0x8

    goto :goto_0

    .line 771
    :cond_5
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textUrl;

    if-eqz v0, :cond_6

    .line 772
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$RichText;->parentRichText:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->getTextFlags(Lorg/telegram/tgnet/TLRPC$RichText;)I

    move-result v0

    or-int/lit8 v0, v0, 0x8

    goto :goto_0

    .line 773
    :cond_6
    if-eqz p1, :cond_7

    .line 774
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$RichText;->parentRichText:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->getTextFlags(Lorg/telegram/tgnet/TLRPC$RichText;)I

    move-result v0

    goto :goto_0

    .line 776
    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTextPaint(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;)Landroid/text/TextPaint;
    .locals 10
    .param p1, "parentRichText"    # Lorg/telegram/tgnet/TLRPC$RichText;
    .param p2, "richText"    # Lorg/telegram/tgnet/TLRPC$RichText;
    .param p3, "parentBlock"    # Lorg/telegram/tgnet/TLRPC$PageBlock;

    .prologue
    const/high16 v9, 0x41a80000    # 21.0f

    const/high16 v8, 0x41700000    # 15.0f

    const/4 v6, 0x1

    const/high16 v7, 0x41600000    # 14.0f

    .line 850
    invoke-direct {p0, p2}, Lorg/telegram/ui/ArticleViewer;->getTextFlags(Lorg/telegram/tgnet/TLRPC$RichText;)I

    move-result v1

    .line 851
    .local v1, "flags":I
    const/4 v0, 0x0

    .line 852
    .local v0, "currentMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/text/TextPaint;>;"
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    .line 853
    .local v4, "textSize":I
    const/high16 v3, -0x10000

    .line 855
    .local v3, "textColor":I
    instance-of v5, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    if-eqz v5, :cond_2

    .line 856
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->captionTextPaints:Ljava/util/HashMap;

    .line 857
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    .line 858
    const v3, -0x7c736a

    .line 930
    :cond_0
    :goto_0
    if-nez v0, :cond_13

    .line 931
    sget-object v5, Lorg/telegram/ui/ArticleViewer;->errorTextPaint:Landroid/text/TextPaint;

    if-nez v5, :cond_1

    .line 932
    new-instance v5, Landroid/text/TextPaint;

    invoke-direct {v5, v6}, Landroid/text/TextPaint;-><init>(I)V

    sput-object v5, Lorg/telegram/ui/ArticleViewer;->errorTextPaint:Landroid/text/TextPaint;

    .line 933
    sget-object v5, Lorg/telegram/ui/ArticleViewer;->errorTextPaint:Landroid/text/TextPaint;

    const/high16 v6, -0x10000

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setColor(I)V

    .line 935
    :cond_1
    sget-object v5, Lorg/telegram/ui/ArticleViewer;->errorTextPaint:Landroid/text/TextPaint;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 936
    sget-object v2, Lorg/telegram/ui/ArticleViewer;->errorTextPaint:Landroid/text/TextPaint;

    .line 977
    :goto_1
    return-object v2

    .line 859
    :cond_2
    instance-of v5, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTitle;

    if-eqz v5, :cond_3

    .line 860
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->titleTextPaints:Ljava/util/HashMap;

    .line 861
    const/high16 v5, 0x41c00000    # 24.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    .line 862
    const/high16 v3, -0x1000000

    goto :goto_0

    .line 863
    :cond_3
    instance-of v5, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;

    if-eqz v5, :cond_4

    .line 864
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->authorTextPaints:Ljava/util/HashMap;

    .line 865
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    .line 866
    const v3, -0x7c736a

    goto :goto_0

    .line 867
    :cond_4
    instance-of v5, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockFooter;

    if-eqz v5, :cond_5

    .line 868
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->footerTextPaints:Ljava/util/HashMap;

    .line 869
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    .line 870
    const v3, -0x7c736a

    goto :goto_0

    .line 871
    :cond_5
    instance-of v5, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubtitle;

    if-eqz v5, :cond_6

    .line 872
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->subtitleTextPaints:Ljava/util/HashMap;

    .line 873
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    .line 874
    const/high16 v3, -0x1000000

    goto :goto_0

    .line 875
    :cond_6
    instance-of v5, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockHeader;

    if-eqz v5, :cond_7

    .line 876
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->headerTextPaints:Ljava/util/HashMap;

    .line 877
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    .line 878
    const/high16 v3, -0x1000000

    goto :goto_0

    .line 879
    :cond_7
    instance-of v5, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubheader;

    if-eqz v5, :cond_8

    .line 880
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->subheaderTextPaints:Ljava/util/HashMap;

    .line 881
    const/high16 v5, 0x41900000    # 18.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    .line 882
    const/high16 v3, -0x1000000

    goto :goto_0

    .line 883
    :cond_8
    instance-of v5, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;

    if-nez v5, :cond_9

    instance-of v5, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPullquote;

    if-eqz v5, :cond_b

    .line 884
    :cond_9
    iget-object v5, p3, Lorg/telegram/tgnet/TLRPC$PageBlock;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    if-ne v5, p1, :cond_a

    .line 885
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->quoteTextPaints:Ljava/util/HashMap;

    .line 886
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    .line 887
    const/high16 v3, -0x1000000

    goto/16 :goto_0

    .line 888
    :cond_a
    iget-object v5, p3, Lorg/telegram/tgnet/TLRPC$PageBlock;->caption:Lorg/telegram/tgnet/TLRPC$RichText;

    if-ne v5, p1, :cond_0

    .line 889
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->subquoteTextPaints:Ljava/util/HashMap;

    .line 890
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    .line 891
    const v3, -0x7c736a

    goto/16 :goto_0

    .line 893
    :cond_b
    instance-of v5, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPreformatted;

    if-eqz v5, :cond_c

    .line 894
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->preformattedTextPaints:Ljava/util/HashMap;

    .line 895
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    .line 896
    const/high16 v3, -0x1000000

    goto/16 :goto_0

    .line 897
    :cond_c
    instance-of v5, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;

    if-eqz v5, :cond_e

    .line 898
    iget-object v5, p3, Lorg/telegram/tgnet/TLRPC$PageBlock;->caption:Lorg/telegram/tgnet/TLRPC$RichText;

    if-ne v5, p1, :cond_d

    .line 899
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->embedPostCaptionTextPaints:Ljava/util/HashMap;

    .line 900
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    .line 901
    const v3, -0x7c736a

    goto/16 :goto_0

    .line 903
    :cond_d
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->paragraphTextPaints:Ljava/util/HashMap;

    .line 904
    const/high16 v5, 0x41800000    # 16.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    .line 905
    const/high16 v3, -0x1000000

    goto/16 :goto_0

    .line 907
    :cond_e
    instance-of v5, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;

    if-eqz v5, :cond_f

    .line 908
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->listTextPaints:Ljava/util/HashMap;

    .line 909
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    .line 910
    const/high16 v3, -0x1000000

    goto/16 :goto_0

    .line 911
    :cond_f
    instance-of v5, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;

    if-eqz v5, :cond_10

    .line 912
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->embedTextPaints:Ljava/util/HashMap;

    .line 913
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    .line 914
    const v3, -0x7c736a

    goto/16 :goto_0

    .line 915
    :cond_10
    instance-of v5, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;

    if-eqz v5, :cond_11

    .line 916
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->slideshowTextPaints:Ljava/util/HashMap;

    .line 917
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    .line 918
    const v3, -0x7c736a

    goto/16 :goto_0

    .line 919
    :cond_11
    instance-of v5, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    if-eqz v5, :cond_12

    .line 920
    if-eqz p2, :cond_0

    .line 921
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->embedPostTextPaints:Ljava/util/HashMap;

    .line 922
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    .line 923
    const/high16 v3, -0x1000000

    goto/16 :goto_0

    .line 925
    :cond_12
    instance-of v5, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    if-eqz v5, :cond_0

    .line 926
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->videoTextPaints:Ljava/util/HashMap;

    .line 927
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    .line 928
    const/high16 v3, -0x1000000

    goto/16 :goto_0

    .line 938
    :cond_13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/text/TextPaint;

    .line 939
    .local v2, "paint":Landroid/text/TextPaint;
    if-nez v2, :cond_18

    .line 940
    new-instance v2, Landroid/text/TextPaint;

    .end local v2    # "paint":Landroid/text/TextPaint;
    invoke-direct {v2, v6}, Landroid/text/TextPaint;-><init>(I)V

    .line 941
    .restart local v2    # "paint":Landroid/text/TextPaint;
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_19

    .line 942
    const-string/jumbo v5, "fonts/rmono.ttf"

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 964
    :cond_14
    :goto_2
    and-int/lit8 v5, v1, 0x20

    if-eqz v5, :cond_15

    .line 965
    invoke-virtual {v2}, Landroid/text/TextPaint;->getFlags()I

    move-result v5

    or-int/lit8 v5, v5, 0x10

    invoke-virtual {v2, v5}, Landroid/text/TextPaint;->setFlags(I)V

    .line 967
    :cond_15
    and-int/lit8 v5, v1, 0x10

    if-eqz v5, :cond_16

    .line 968
    invoke-virtual {v2}, Landroid/text/TextPaint;->getFlags()I

    move-result v5

    or-int/lit8 v5, v5, 0x8

    invoke-virtual {v2, v5}, Landroid/text/TextPaint;->setFlags(I)V

    .line 970
    :cond_16
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_17

    .line 971
    const v3, -0xb27c4d

    .line 973
    :cond_17
    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 974
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 976
    :cond_18
    int-to-float v5, v4

    invoke-virtual {v2, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    goto/16 :goto_1

    .line 944
    :cond_19
    instance-of v5, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTitle;

    if-nez v5, :cond_1a

    instance-of v5, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockHeader;

    if-nez v5, :cond_1a

    instance-of v5, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubtitle;

    if-nez v5, :cond_1a

    instance-of v5, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubheader;

    if-eqz v5, :cond_1e

    .line 945
    :cond_1a
    and-int/lit8 v5, v1, 0x1

    if-eqz v5, :cond_1b

    and-int/lit8 v5, v1, 0x2

    if-eqz v5, :cond_1b

    .line 946
    const-string/jumbo v5, "serif"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_2

    .line 947
    :cond_1b
    and-int/lit8 v5, v1, 0x1

    if-eqz v5, :cond_1c

    .line 948
    const-string/jumbo v5, "serif"

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_2

    .line 949
    :cond_1c
    and-int/lit8 v5, v1, 0x2

    if-eqz v5, :cond_1d

    .line 950
    const-string/jumbo v5, "serif"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_2

    .line 952
    :cond_1d
    const-string/jumbo v5, "serif"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_2

    .line 955
    :cond_1e
    and-int/lit8 v5, v1, 0x1

    if-eqz v5, :cond_1f

    and-int/lit8 v5, v1, 0x2

    if-eqz v5, :cond_1f

    .line 956
    const-string/jumbo v5, "fonts/rmediumitalic.ttf"

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto/16 :goto_2

    .line 957
    :cond_1f
    and-int/lit8 v5, v1, 0x1

    if-eqz v5, :cond_20

    .line 958
    const-string/jumbo v5, "fonts/rmedium.ttf"

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto/16 :goto_2

    .line 959
    :cond_20
    and-int/lit8 v5, v1, 0x2

    if-eqz v5, :cond_14

    .line 960
    const-string/jumbo v5, "fonts/ritalic.ttf"

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto/16 :goto_2
.end method

.method private getUrl(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/String;
    .locals 1
    .param p1, "richText"    # Lorg/telegram/tgnet/TLRPC$RichText;

    .prologue
    .line 831
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textFixed;

    if-eqz v0, :cond_0

    .line 832
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_textFixed;

    .end local p1    # "richText":Lorg/telegram/tgnet/TLRPC$RichText;
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textFixed;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->getUrl(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/String;

    move-result-object v0

    .line 846
    :goto_0
    return-object v0

    .line 833
    .restart local p1    # "richText":Lorg/telegram/tgnet/TLRPC$RichText;
    :cond_0
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textItalic;

    if-eqz v0, :cond_1

    .line 834
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_textItalic;

    .end local p1    # "richText":Lorg/telegram/tgnet/TLRPC$RichText;
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textItalic;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->getUrl(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 835
    .restart local p1    # "richText":Lorg/telegram/tgnet/TLRPC$RichText;
    :cond_1
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textBold;

    if-eqz v0, :cond_2

    .line 836
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_textBold;

    .end local p1    # "richText":Lorg/telegram/tgnet/TLRPC$RichText;
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textBold;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->getUrl(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 837
    .restart local p1    # "richText":Lorg/telegram/tgnet/TLRPC$RichText;
    :cond_2
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textUnderline;

    if-eqz v0, :cond_3

    .line 838
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_textUnderline;

    .end local p1    # "richText":Lorg/telegram/tgnet/TLRPC$RichText;
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textUnderline;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->getUrl(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 839
    .restart local p1    # "richText":Lorg/telegram/tgnet/TLRPC$RichText;
    :cond_3
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textStrike;

    if-eqz v0, :cond_4

    .line 840
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_textStrike;

    .end local p1    # "richText":Lorg/telegram/tgnet/TLRPC$RichText;
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textStrike;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->getUrl(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 841
    .restart local p1    # "richText":Lorg/telegram/tgnet/TLRPC$RichText;
    :cond_4
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textEmail;

    if-eqz v0, :cond_5

    .line 842
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_textEmail;

    .end local p1    # "richText":Lorg/telegram/tgnet/TLRPC$RichText;
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textEmail;->email:Ljava/lang/String;

    goto :goto_0

    .line 843
    .restart local p1    # "richText":Lorg/telegram/tgnet/TLRPC$RichText;
    :cond_5
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textUrl;

    if-eqz v0, :cond_6

    .line 844
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_textUrl;

    .end local p1    # "richText":Lorg/telegram/tgnet/TLRPC$RichText;
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textUrl;->url:Ljava/lang/String;

    goto :goto_0

    .line 846
    .restart local p1    # "richText":Lorg/telegram/tgnet/TLRPC$RichText;
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private goToNext()V
    .locals 5

    .prologue
    .line 6286
    const/4 v0, 0x0

    .line 6287
    .local v0, "extra":F
    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 6288
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewWidth()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    mul-float v0, v1, v2

    .line 6290
    :cond_0
    const/4 v1, 0x1

    iput v1, p0, Lorg/telegram/ui/ArticleViewer;->switchImageAfterAnimation:I

    .line 6291
    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    iget v2, p0, Lorg/telegram/ui/ArticleViewer;->minX:F

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewWidth()I

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

    iget v3, p0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    const/4 v4, 0x0

    invoke-direct {p0, v1, v2, v3, v4}, Lorg/telegram/ui/ArticleViewer;->animateTo(FFFZ)V

    .line 6292
    return-void
.end method

.method private goToPrev()V
    .locals 5

    .prologue
    .line 6295
    const/4 v0, 0x0

    .line 6296
    .local v0, "extra":F
    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 6297
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewWidth()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    mul-float v0, v1, v2

    .line 6299
    :cond_0
    const/4 v1, 0x2

    iput v1, p0, Lorg/telegram/ui/ArticleViewer;->switchImageAfterAnimation:I

    .line 6300
    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    iget v2, p0, Lorg/telegram/ui/ArticleViewer;->maxX:F

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewWidth()I

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

    iget v3, p0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    const/4 v4, 0x0

    invoke-direct {p0, v1, v2, v3, v4}, Lorg/telegram/ui/ArticleViewer;->animateTo(FFFZ)V

    .line 6301
    return-void
.end method

.method private hideActionBar()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1898
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1899
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->backButton:Landroid/widget/ImageView;

    const-string/jumbo v3, "alpha"

    new-array v4, v6, [F

    aput v7, v4, v5

    .line 1900
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->shareContainer:Landroid/widget/FrameLayout;

    const-string/jumbo v3, "alpha"

    new-array v4, v6, [F

    aput v7, v4, v5

    .line 1901
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    .line 1899
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1902
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1903
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1904
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1905
    return-void
.end method

.method private isMediaVideo(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 5292
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$PageBlock;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->isVideoBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVideoBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)Z
    .locals 6
    .param p1, "block"    # Lorg/telegram/tgnet/TLRPC$PageBlock;

    .prologue
    .line 5282
    if-eqz p1, :cond_0

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$PageBlock;->video_id:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 5283
    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$PageBlock;->video_id:J

    invoke-direct {p0, v2, v3}, Lorg/telegram/ui/ArticleViewer;->getDocumentWithId(J)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    .line 5284
    .local v0, "document":Lorg/telegram/tgnet/TLRPC$Document;
    if-eqz v0, :cond_0

    .line 5285
    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v1

    .line 5288
    .end local v0    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onActionClick(Z)V
    .locals 7
    .param p1, "download"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 6560
    iget v3, p0, Lorg/telegram/ui/ArticleViewer;->currentIndex:I

    invoke-direct {p0, v3}, Lorg/telegram/ui/ArticleViewer;->getMedia(I)Lorg/telegram/tgnet/TLObject;

    move-result-object v2

    .line 6561
    .local v2, "media":Lorg/telegram/tgnet/TLObject;
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v3, v3, v6

    if-nez v3, :cond_1

    .line 6583
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, v2

    .line 6564
    check-cast v0, Lorg/telegram/tgnet/TLRPC$Document;

    .line 6565
    .local v0, "document":Lorg/telegram/tgnet/TLRPC$Document;
    const/4 v1, 0x0

    .line 6566
    .local v1, "file":Ljava/io/File;
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->currentMedia:Lorg/telegram/tgnet/TLRPC$PageBlock;

    if-eqz v3, :cond_2

    .line 6567
    iget v3, p0, Lorg/telegram/ui/ArticleViewer;->currentIndex:I

    invoke-direct {p0, v3}, Lorg/telegram/ui/ArticleViewer;->getMediaFile(I)Ljava/io/File;

    move-result-object v1

    .line 6568
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 6569
    const/4 v1, 0x0

    .line 6572
    :cond_2
    if-nez v1, :cond_4

    .line 6573
    if-eqz p1, :cond_0

    .line 6574
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/FileLoader;->isLoadingFile(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 6575
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    invoke-virtual {v3, v0, v5, v5}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;ZZ)V

    goto :goto_0

    .line 6577
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    goto :goto_0

    .line 6581
    :cond_4
    invoke-direct {p0, v1, v5}, Lorg/telegram/ui/ArticleViewer;->preparePlayer(Ljava/io/File;Z)V

    goto :goto_0
.end method

.method private onClosed()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2216
    iput-boolean v5, p0, Lorg/telegram/ui/ArticleViewer;->isVisible:Z

    .line 2217
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    .line 2218
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2219
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->photoBlocks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2220
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->adapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-virtual {v3}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->notifyDataSetChanged()V

    .line 2222
    :try_start_0
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, v4}, Landroid/view/Window;->clearFlags(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2226
    :goto_0
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->createdWebViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 2227
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->createdWebViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    .line 2228
    .local v1, "cell":Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;
    invoke-virtual {v1, v5}, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->destroyWebView(Z)V

    .line 2226
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2223
    .end local v0    # "a":I
    .end local v1    # "cell":Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;
    :catch_0
    move-exception v2

    .line 2224
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2230
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "a":I
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    new-instance v4, Lorg/telegram/ui/ArticleViewer$26;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ArticleViewer$26;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 2243
    return-void
.end method

.method private onPhotoClosed(Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;)V
    .locals 6
    .param p1, "object"    # Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 6027
    iput-boolean v4, p0, Lorg/telegram/ui/ArticleViewer;->isPhotoVisible:Z

    .line 6028
    iput-boolean v5, p0, Lorg/telegram/ui/ArticleViewer;->disableShowCheck:Z

    .line 6029
    iput-object v2, p0, Lorg/telegram/ui/ArticleViewer;->currentMedia:Lorg/telegram/tgnet/TLRPC$PageBlock;

    .line 6030
    iput-object v2, p0, Lorg/telegram/ui/ArticleViewer;->currentThumb:Landroid/graphics/Bitmap;

    .line 6031
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v1, :cond_0

    .line 6032
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setSecondParentView(Landroid/view/View;)V

    .line 6033
    iput-object v2, p0, Lorg/telegram/ui/ArticleViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    .line 6035
    :cond_0
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    .line 6036
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 6037
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    aget-object v1, v1, v0

    const/4 v3, -0x1

    invoke-virtual {v1, v3, v4}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->setBackgroundState(IZ)V

    .line 6035
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6040
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object v1, v2

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v3, v1}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 6041
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    move-object v1, v2

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v3, v1}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 6042
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 6043
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    new-instance v2, Lorg/telegram/ui/ArticleViewer$40;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ArticleViewer$40;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;->post(Ljava/lang/Runnable;)Z

    .line 6049
    iput-boolean v4, p0, Lorg/telegram/ui/ArticleViewer;->disableShowCheck:Z

    .line 6050
    if-eqz p1, :cond_3

    .line 6051
    iget-object v1, p1, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v5, v5}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 6053
    :cond_3
    return-void
.end method

.method private onPhotoShow(ILorg/telegram/ui/ArticleViewer$PlaceProviderObject;)V
    .locals 8
    .param p1, "index"    # I
    .param p2, "object"    # Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 5326
    iput v5, p0, Lorg/telegram/ui/ArticleViewer;->currentIndex:I

    .line 5327
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->currentFileNames:[Ljava/lang/String;

    aput-object v2, v1, v4

    .line 5328
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->currentFileNames:[Ljava/lang/String;

    aput-object v2, v1, v6

    .line 5329
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->currentFileNames:[Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 5330
    if-eqz p2, :cond_1

    iget-object v1, p2, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->thumb:Landroid/graphics/Bitmap;

    :goto_0
    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer;->currentThumb:Landroid/graphics/Bitmap;

    .line 5331
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 5332
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 5333
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTranslationY(F)V

    .line 5334
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 5335
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5337
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    if-ge v0, v7, :cond_2

    .line 5338
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 5339
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v5, v4}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->setBackgroundState(IZ)V

    .line 5337
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "a":I
    :cond_1
    move-object v1, v2

    .line 5330
    goto :goto_0

    .line 5343
    .restart local v0    # "a":I
    :cond_2
    invoke-direct {p0, p1, v6}, Lorg/telegram/ui/ArticleViewer;->setImageIndex(IZ)V

    .line 5345
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->currentMedia:Lorg/telegram/tgnet/TLRPC$PageBlock;

    if-eqz v1, :cond_3

    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->currentIndex:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/ArticleViewer;->isMediaVideo(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5346
    invoke-direct {p0, v4}, Lorg/telegram/ui/ArticleViewer;->onActionClick(Z)V

    .line 5348
    :cond_3
    return-void
.end method

.method private onSharePressed()V
    .locals 7

    .prologue
    .line 4977
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->currentMedia:Lorg/telegram/tgnet/TLRPC$PageBlock;

    if-nez v4, :cond_1

    .line 5001
    :cond_0
    :goto_0
    return-void

    .line 4981
    :cond_1
    :try_start_0
    iget v4, p0, Lorg/telegram/ui/ArticleViewer;->currentIndex:I

    invoke-direct {p0, v4}, Lorg/telegram/ui/ArticleViewer;->getMediaFile(I)Ljava/io/File;

    move-result-object v2

    .line 4982
    .local v2, "f":Ljava/io/File;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4983
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.SEND"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4984
    .local v3, "intent":Landroid/content/Intent;
    iget v4, p0, Lorg/telegram/ui/ArticleViewer;->currentIndex:I

    invoke-direct {p0, v4}, Lorg/telegram/ui/ArticleViewer;->isMediaVideo(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4985
    const-string/jumbo v4, "video/mp4"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 4989
    :goto_1
    const-string/jumbo v4, "android.intent.extra.STREAM"

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4990
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    const-string/jumbo v5, "ShareFile"

    const v6, 0x7f0705bd

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v5

    const/16 v6, 0x1f4

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4998
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 4999
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4987
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "f":Ljava/io/File;
    .restart local v3    # "intent":Landroid/content/Intent;
    :cond_2
    :try_start_1
    const-string/jumbo v4, "image/jpeg"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 4992
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_3
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v0, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4993
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v4, "AppName"

    const v5, 0x7f070078

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 4994
    const-string/jumbo v4, "OK"

    const v5, 0x7f070452

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 4995
    const-string/jumbo v4, "PleaseDownload"

    const v5, 0x7f0704e6

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 4996
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/telegram/ui/ArticleViewer;->showDialog(Landroid/app/Dialog;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private open(Lorg/telegram/messenger/MessageObject;Z)Z
    .locals 20
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "first"    # Z

    .prologue
    .line 1728
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/telegram/ui/ArticleViewer;->isVisible:Z

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/telegram/ui/ArticleViewer;->collapsed:Z

    if-eqz v13, :cond_1

    :cond_0
    if-nez p1, :cond_2

    .line 1729
    :cond_1
    const/4 v13, 0x0

    .line 1894
    :goto_0
    return v13

    .line 1732
    :cond_2
    if-eqz p2, :cond_3

    .line 1733
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;-><init>()V

    .line 1734
    .local v8, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;
    move-object/from16 v0, p1

    iget-object v13, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    iput-object v13, v8, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;->url:Ljava/lang/String;

    .line 1735
    move-object/from16 v0, p1

    iget-object v13, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    instance-of v13, v13, Lorg/telegram/tgnet/TLRPC$TL_pagePart;

    if-eqz v13, :cond_9

    .line 1736
    const/4 v13, 0x0

    iput v13, v8, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;->hash:I

    .line 1740
    :goto_1
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v13

    new-instance v14, Lorg/telegram/ui/ArticleViewer$15;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v14, v0, v1}, Lorg/telegram/ui/ArticleViewer$15;-><init>(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/messenger/MessageObject;)V

    invoke-virtual {v13, v8, v14}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 1770
    .end local v8    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 1771
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lorg/telegram/ui/ArticleViewer;->collapsed:Z

    .line 1772
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotation(FZ)V

    .line 1773
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 1774
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1775
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    .line 1776
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v13, v14}, Lorg/telegram/ui/Components/RecyclerListView;->setAlpha(F)V

    .line 1777
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lorg/telegram/ui/ArticleViewer$WindowView;->setInnerTranslationX(F)V

    .line 1779
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Lorg/telegram/ui/ActionBar/ActionBar;->setVisibility(I)V

    .line 1780
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->bottomLayout:Landroid/widget/FrameLayout;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1781
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->captionTextViewNew:Landroid/widget/TextView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1782
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->captionTextViewOld:Landroid/widget/TextView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1783
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->shareContainer:Landroid/widget/FrameLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1784
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->backButton:Landroid/widget/ImageView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1785
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 1786
    const/high16 v13, 0x42600000    # 56.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    neg-int v13, v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/telegram/ui/ArticleViewer;->checkScroll(I)V

    .line 1788
    move-object/from16 v0, p1

    iget-object v13, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v10, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    .line 1789
    .local v10, "webPage":Lorg/telegram/tgnet/TLRPC$WebPage;
    iget-object v13, v10, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    .line 1791
    .local v11, "webPageUrl":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1792
    .local v3, "anchor":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_2
    move-object/from16 v0, p1

    iget-object v13, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v2, v13, :cond_5

    .line 1793
    move-object/from16 v0, p1

    iget-object v13, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    .line 1794
    .local v6, "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    instance-of v13, v6, Lorg/telegram/tgnet/TLRPC$TL_messageEntityUrl;

    if-eqz v13, :cond_a

    .line 1796
    :try_start_0
    move-object/from16 v0, p1

    iget-object v13, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    iget v14, v6, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    iget v15, v6, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    iget v0, v6, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    move/from16 v16, v0

    add-int v15, v15, v16

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 1797
    .local v9, "url":Ljava/lang/String;
    invoke-virtual {v9, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_4

    invoke-virtual {v11, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 1798
    :cond_4
    const/16 v13, 0x23

    invoke-virtual {v9, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    .local v7, "index":I
    const/4 v13, -0x1

    if-eq v7, v13, :cond_5

    .line 1799
    add-int/lit8 v13, v7, 0x1

    invoke-virtual {v9, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1808
    .end local v6    # "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    .end local v7    # "index":I
    .end local v9    # "url":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v3}, Lorg/telegram/ui/ArticleViewer;->addPageToStack(Lorg/telegram/tgnet/TLRPC$WebPage;Ljava/lang/String;)V

    .line 1810
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/telegram/ui/ArticleViewer;->lastInsets:Ljava/lang/Object;

    .line 1811
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/telegram/ui/ArticleViewer;->isVisible:Z

    if-nez v13, :cond_b

    .line 1812
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    const-string/jumbo v14, "window"

    invoke-virtual {v13, v14}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/WindowManager;

    .line 1813
    .local v12, "wm":Landroid/view/WindowManager;
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/telegram/ui/ArticleViewer;->attachedToWindow:Z

    if-eqz v13, :cond_6

    .line 1815
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    invoke-interface {v12, v13}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1821
    :cond_6
    :goto_3
    :try_start_2
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x15

    if-lt v13, v14, :cond_7

    .line 1822
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v14, -0x7ffeff00

    iput v14, v13, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1826
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v14, v13, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v14, v14, 0x408

    iput v14, v13, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1827
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lorg/telegram/ui/ArticleViewer$WindowView;->setFocusable(Z)V

    .line 1828
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 1829
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ArticleViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v12, v13, v14}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1839
    :goto_4
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lorg/telegram/ui/ArticleViewer;->isVisible:Z

    .line 1840
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/ArticleViewer;->animationInProgress:I

    .line 1841
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lorg/telegram/ui/ArticleViewer$WindowView;->setAlpha(F)V

    .line 1842
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1844
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1845
    .local v4, "animatorSet":Landroid/animation/AnimatorSet;
    const/4 v13, 0x3

    new-array v13, v13, [Landroid/animation/Animator;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    const-string/jumbo v16, "alpha"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    fill-array-data v17, :array_0

    .line 1846
    invoke-static/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    const-string/jumbo v16, "alpha"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    fill-array-data v17, :array_1

    .line 1847
    invoke-static/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    const-string/jumbo v16, "translationX"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/high16 v19, 0x42600000    # 56.0f

    .line 1848
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    aput v19, v17, v18

    const/16 v18, 0x1

    const/16 v19, 0x0

    aput v19, v17, v18

    invoke-static/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    aput-object v15, v13, v14

    .line 1845
    invoke-virtual {v4, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1851
    new-instance v13, Lorg/telegram/ui/ArticleViewer$16;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lorg/telegram/ui/ArticleViewer$16;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/telegram/ui/ArticleViewer;->animationEndRunnable:Ljava/lang/Runnable;

    .line 1864
    const-wide/16 v14, 0x96

    invoke-virtual {v4, v14, v15}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1865
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v4, v13}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1866
    new-instance v13, Lorg/telegram/ui/ArticleViewer$17;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lorg/telegram/ui/ArticleViewer$17;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v4, v13}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1881
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lorg/telegram/ui/ArticleViewer;->transitionAnimationStartTime:J

    .line 1882
    new-instance v13, Lorg/telegram/ui/ArticleViewer$18;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v4}, Lorg/telegram/ui/ArticleViewer$18;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/animation/AnimatorSet;)V

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1890
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x12

    if-lt v13, v14, :cond_8

    .line 1891
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    const/4 v14, 0x2

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1893
    :cond_8
    const/16 v13, 0xc8

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/telegram/ui/ArticleViewer;->showActionBar(I)V

    .line 1894
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 1738
    .end local v2    # "a":I
    .end local v3    # "anchor":Ljava/lang/String;
    .end local v4    # "animatorSet":Landroid/animation/AnimatorSet;
    .end local v10    # "webPage":Lorg/telegram/tgnet/TLRPC$WebPage;
    .end local v11    # "webPageUrl":Ljava/lang/String;
    .end local v12    # "wm":Landroid/view/WindowManager;
    .restart local v8    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;
    :cond_9
    move-object/from16 v0, p1

    iget-object v13, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget v13, v13, Lorg/telegram/tgnet/TLRPC$WebPage;->hash:I

    iput v13, v8, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;->hash:I

    goto/16 :goto_1

    .line 1803
    .end local v8    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;
    .restart local v2    # "a":I
    .restart local v3    # "anchor":Ljava/lang/String;
    .restart local v6    # "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    .restart local v10    # "webPage":Lorg/telegram/tgnet/TLRPC$WebPage;
    .restart local v11    # "webPageUrl":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 1804
    .local v5, "e":Ljava/lang/Exception;
    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1792
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 1830
    .end local v6    # "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    .restart local v12    # "wm":Landroid/view/WindowManager;
    :catch_1
    move-exception v5

    .line 1831
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1832
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 1835
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v12    # "wm":Landroid/view/WindowManager;
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v14, v13, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v14, v14, -0x11

    iput v14, v13, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1836
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    const-string/jumbo v14, "window"

    invoke-virtual {v13, v14}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/WindowManager;

    .line 1837
    .restart local v12    # "wm":Landroid/view/WindowManager;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ArticleViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v12, v13, v14}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_4

    .line 1816
    :catch_2
    move-exception v13

    goto/16 :goto_3

    .line 1845
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 1846
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private openPreviewsChat(Lorg/telegram/tgnet/TLRPC$User;J)V
    .locals 6
    .param p1, "user"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p2, "wid"    # J

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1687
    if-eqz p1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 1695
    :cond_0
    :goto_0
    return-void

    .line 1690
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1691
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "user_id"

    iget v2, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1692
    const-string/jumbo v1, "botUser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "webpage"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1693
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    check-cast v1, Lorg/telegram/ui/LaunchActivity;

    new-instance v2, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v2, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v1, v2, v4, v5}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZ)Z

    .line 1694
    invoke-virtual {p0, v4, v5}, Lorg/telegram/ui/ArticleViewer;->close(ZZ)V

    goto :goto_0
.end method

.method private preparePlayer(Ljava/io/File;Z)V
    .locals 12
    .param p1, "file"    # Ljava/io/File;
    .param p2, "playWhenReady"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/16 v7, 0x11

    const/4 v6, 0x4

    const-wide/16 v10, 0x3c

    const/4 v5, -0x1

    const/4 v8, 0x0

    .line 5036
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    if-nez v2, :cond_0

    .line 5150
    :goto_0
    return-void

    .line 5039
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->releasePlayer()V

    .line 5040
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->videoTextureView:Landroid/view/TextureView;

    if-nez v2, :cond_1

    .line 5041
    new-instance v2, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/ArticleViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    .line 5042
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v2, v6}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->setVisibility(I)V

    .line 5043
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-static {v5, v5, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v8, v4}, Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 5045
    new-instance v2, Landroid/view/TextureView;

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/ArticleViewer;->videoTextureView:Landroid/view/TextureView;

    .line 5046
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->videoTextureView:Landroid/view/TextureView;

    invoke-virtual {v2, v8}, Landroid/view/TextureView;->setOpaque(Z)V

    .line 5047
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->videoTextureView:Landroid/view/TextureView;

    invoke-static {v5, v5, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5049
    :cond_1
    iput-boolean v8, p0, Lorg/telegram/ui/ArticleViewer;->textureUploaded:Z

    .line 5050
    iput-boolean v8, p0, Lorg/telegram/ui/ArticleViewer;->videoCrossfadeStarted:Z

    .line 5051
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->videoTextureView:Landroid/view/TextureView;

    const/4 v3, 0x0

    iput v3, p0, Lorg/telegram/ui/ArticleViewer;->videoCrossfadeAlpha:F

    invoke-virtual {v2, v3}, Landroid/view/TextureView;->setAlpha(F)V

    .line 5052
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayButton:Landroid/widget/ImageView;

    const v3, 0x7f020115

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5053
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-nez v2, :cond_3

    .line 5054
    new-instance v2, Lorg/telegram/ui/Components/VideoPlayer;

    invoke-direct {v2}, Lorg/telegram/ui/Components/VideoPlayer;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    .line 5055
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->videoTextureView:Landroid/view/TextureView;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/VideoPlayer;->setTextureView(Landroid/view/TextureView;)V

    .line 5056
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    new-instance v3, Lorg/telegram/ui/ArticleViewer$29;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ArticleViewer$29;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/VideoPlayer;->setDelegate(Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;)V

    .line 5136
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v2, :cond_4

    .line 5137
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v0

    .line 5138
    .local v0, "duration":J
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    .line 5139
    const-wide/16 v0, 0x0

    .line 5144
    :cond_2
    :goto_1
    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 5145
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayerTime:Landroid/widget/TextView;

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

    .line 5147
    .end local v0    # "duration":J
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    const-string/jumbo v4, "other"

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Components/VideoPlayer;->preparePlayer(Landroid/net/Uri;Ljava/lang/String;)V

    .line 5148
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->bottomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5149
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v2, p2}, Lorg/telegram/ui/Components/VideoPlayer;->setPlayWhenReady(Z)V

    goto/16 :goto_0

    .line 5142
    :cond_4
    const-wide/16 v0, 0x0

    .restart local v0    # "duration":J
    goto :goto_1
.end method

.method private processTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 6087
    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->photoAnimationInProgress:I

    if-nez v9, :cond_0

    iget-wide v10, p0, Lorg/telegram/ui/ArticleViewer;->animationStartTime:J

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-eqz v9, :cond_1

    .line 6088
    :cond_0
    const/4 v9, 0x0

    .line 6265
    :goto_0
    return v9

    .line 6091
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v9, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-boolean v9, p0, Lorg/telegram/ui/ArticleViewer;->doubleTap:Z

    if-eqz v9, :cond_2

    .line 6092
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/ArticleViewer;->doubleTap:Z

    .line 6093
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/ArticleViewer;->moving:Z

    .line 6094
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/ArticleViewer;->zooming:Z

    .line 6095
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lorg/telegram/ui/ArticleViewer;->checkMinMax(Z)V

    .line 6096
    const/4 v9, 0x1

    goto :goto_0

    .line 6099
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    const/4 v10, 0x5

    if-ne v9, v10, :cond_7

    .line 6100
    :cond_3
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/ArticleViewer;->discardTap:Z

    .line 6101
    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/Scroller;->isFinished()Z

    move-result v9

    if-nez v9, :cond_4

    .line 6102
    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/Scroller;->abortAnimation()V

    .line 6104
    :cond_4
    iget-boolean v9, p0, Lorg/telegram/ui/ArticleViewer;->draggingDown:Z

    if-nez v9, :cond_5

    iget-boolean v9, p0, Lorg/telegram/ui/ArticleViewer;->changingPage:Z

    if-nez v9, :cond_5

    .line 6105
    iget-boolean v9, p0, Lorg/telegram/ui/ArticleViewer;->canZoom:Z

    if-eqz v9, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_6

    .line 6106
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

    iput v9, p0, Lorg/telegram/ui/ArticleViewer;->pinchStartDistance:F

    .line 6107
    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    iput v9, p0, Lorg/telegram/ui/ArticleViewer;->pinchStartScale:F

    .line 6108
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    add-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    iput v9, p0, Lorg/telegram/ui/ArticleViewer;->pinchCenterX:F

    .line 6109
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    add-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    iput v9, p0, Lorg/telegram/ui/ArticleViewer;->pinchCenterY:F

    .line 6110
    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->translationX:F

    iput v9, p0, Lorg/telegram/ui/ArticleViewer;->pinchStartX:F

    .line 6111
    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    iput v9, p0, Lorg/telegram/ui/ArticleViewer;->pinchStartY:F

    .line 6112
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/ui/ArticleViewer;->zooming:Z

    .line 6113
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/ArticleViewer;->moving:Z

    .line 6114
    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_5

    .line 6115
    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->clear()V

    .line 6265
    :cond_5
    :goto_1
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 6117
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_5

    .line 6118
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iput v9, p0, Lorg/telegram/ui/ArticleViewer;->moveStartX:F

    .line 6119
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iput v9, p0, Lorg/telegram/ui/ArticleViewer;->moveStartY:F

    iput v9, p0, Lorg/telegram/ui/ArticleViewer;->dragY:F

    .line 6120
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/ArticleViewer;->draggingDown:Z

    .line 6121
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/ui/ArticleViewer;->canDragDown:Z

    .line 6122
    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_5

    .line 6123
    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_1

    .line 6127
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1b

    .line 6128
    iget-boolean v9, p0, Lorg/telegram/ui/ArticleViewer;->canZoom:Z

    if-eqz v9, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_8

    iget-boolean v9, p0, Lorg/telegram/ui/ArticleViewer;->draggingDown:Z

    if-nez v9, :cond_8

    iget-boolean v9, p0, Lorg/telegram/ui/ArticleViewer;->zooming:Z

    if-eqz v9, :cond_8

    iget-boolean v9, p0, Lorg/telegram/ui/ArticleViewer;->changingPage:Z

    if-nez v9, :cond_8

    .line 6129
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/ui/ArticleViewer;->discardTap:Z

    .line 6130
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

    iget v10, p0, Lorg/telegram/ui/ArticleViewer;->pinchStartDistance:F

    div-float/2addr v9, v10

    iget v10, p0, Lorg/telegram/ui/ArticleViewer;->pinchStartScale:F

    mul-float/2addr v9, v10

    iput v9, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    .line 6131
    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->pinchCenterX:F

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    sub-float/2addr v9, v10

    iget v10, p0, Lorg/telegram/ui/ArticleViewer;->pinchCenterX:F

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    sub-float/2addr v10, v11

    iget v11, p0, Lorg/telegram/ui/ArticleViewer;->pinchStartX:F

    sub-float/2addr v10, v11

    iget v11, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    iget v12, p0, Lorg/telegram/ui/ArticleViewer;->pinchStartScale:F

    div-float/2addr v11, v12

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    iput v9, p0, Lorg/telegram/ui/ArticleViewer;->translationX:F

    .line 6132
    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->pinchCenterY:F

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    sub-float/2addr v9, v10

    iget v10, p0, Lorg/telegram/ui/ArticleViewer;->pinchCenterY:F

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewHeight()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    sub-float/2addr v10, v11

    iget v11, p0, Lorg/telegram/ui/ArticleViewer;->pinchStartY:F

    sub-float/2addr v10, v11

    iget v11, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    iget v12, p0, Lorg/telegram/ui/ArticleViewer;->pinchStartScale:F

    div-float/2addr v11, v12

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    iput v9, p0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    .line 6133
    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    invoke-direct {p0, v9}, Lorg/telegram/ui/ArticleViewer;->updateMinMax(F)V

    .line 6134
    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    invoke-virtual {v9}, Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;->invalidate()V

    goto/16 :goto_1

    .line 6135
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_5

    .line 6136
    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_9

    .line 6137
    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 6139
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iget v10, p0, Lorg/telegram/ui/ArticleViewer;->moveStartX:F

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 6140
    .local v2, "dx":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iget v10, p0, Lorg/telegram/ui/ArticleViewer;->dragY:F

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 6141
    .local v3, "dy":F
    const/high16 v9, 0x40400000    # 3.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    cmpl-float v9, v2, v9

    if-gtz v9, :cond_a

    const/high16 v9, 0x40400000    # 3.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    cmpl-float v9, v3, v9

    if-lez v9, :cond_b

    .line 6142
    :cond_a
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/ui/ArticleViewer;->discardTap:Z

    .line 6144
    :cond_b
    iget-boolean v9, p0, Lorg/telegram/ui/ArticleViewer;->canDragDown:Z

    if-eqz v9, :cond_d

    iget-boolean v9, p0, Lorg/telegram/ui/ArticleViewer;->draggingDown:Z

    if-nez v9, :cond_d

    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v9, v9, v10

    if-nez v9, :cond_d

    const/high16 v9, 0x41f00000    # 30.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    cmpl-float v9, v3, v9

    if-ltz v9, :cond_d

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v3, v9

    cmpl-float v9, v9, v2

    if-lez v9, :cond_d

    .line 6145
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/ui/ArticleViewer;->draggingDown:Z

    .line 6146
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/ArticleViewer;->moving:Z

    .line 6147
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iput v9, p0, Lorg/telegram/ui/ArticleViewer;->dragY:F

    .line 6148
    iget-boolean v9, p0, Lorg/telegram/ui/ArticleViewer;->isActionBarVisible:Z

    if-eqz v9, :cond_c

    .line 6149
    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-direct {p0, v9, v10}, Lorg/telegram/ui/ArticleViewer;->toggleActionBar(ZZ)V

    .line 6151
    :cond_c
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 6152
    :cond_d
    iget-boolean v9, p0, Lorg/telegram/ui/ArticleViewer;->draggingDown:Z

    if-eqz v9, :cond_e

    .line 6153
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iget v10, p0, Lorg/telegram/ui/ArticleViewer;->dragY:F

    sub-float/2addr v9, v10

    iput v9, p0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    .line 6154
    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    invoke-virtual {v9}, Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;->invalidate()V

    goto/16 :goto_1

    .line 6155
    :cond_e
    iget-boolean v9, p0, Lorg/telegram/ui/ArticleViewer;->invalidCoords:Z

    if-nez v9, :cond_1a

    iget-wide v10, p0, Lorg/telegram/ui/ArticleViewer;->animationStartTime:J

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-nez v9, :cond_1a

    .line 6156
    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->moveStartX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    sub-float v4, v9, v10

    .line 6157
    .local v4, "moveDx":F
    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->moveStartY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    sub-float v5, v9, v10

    .line 6158
    .local v5, "moveDy":F
    iget-boolean v9, p0, Lorg/telegram/ui/ArticleViewer;->moving:Z

    if-nez v9, :cond_10

    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v9, v9, v10

    if-nez v9, :cond_f

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

    if-ltz v9, :cond_10

    :cond_f
    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_5

    .line 6159
    :cond_10
    iget-boolean v9, p0, Lorg/telegram/ui/ArticleViewer;->moving:Z

    if-nez v9, :cond_11

    .line 6160
    const/4 v4, 0x0

    .line 6161
    const/4 v5, 0x0

    .line 6162
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/ui/ArticleViewer;->moving:Z

    .line 6163
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/ArticleViewer;->canDragDown:Z

    .line 6166
    :cond_11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iput v9, p0, Lorg/telegram/ui/ArticleViewer;->moveStartX:F

    .line 6167
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iput v9, p0, Lorg/telegram/ui/ArticleViewer;->moveStartY:F

    .line 6168
    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    invoke-direct {p0, v9}, Lorg/telegram/ui/ArticleViewer;->updateMinMax(F)V

    .line 6169
    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->translationX:F

    iget v10, p0, Lorg/telegram/ui/ArticleViewer;->minX:F

    cmpg-float v9, v9, v10

    if-gez v9, :cond_12

    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v9}, Lorg/telegram/messenger/ImageReceiver;->hasImage()Z

    move-result v9

    if-eqz v9, :cond_13

    :cond_12
    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->translationX:F

    iget v10, p0, Lorg/telegram/ui/ArticleViewer;->maxX:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_14

    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v9}, Lorg/telegram/messenger/ImageReceiver;->hasImage()Z

    move-result v9

    if-nez v9, :cond_14

    .line 6170
    :cond_13
    const/high16 v9, 0x40400000    # 3.0f

    div-float/2addr v4, v9

    .line 6172
    :cond_14
    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->maxY:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-nez v9, :cond_18

    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->minY:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-nez v9, :cond_18

    .line 6173
    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    sub-float/2addr v9, v5

    iget v10, p0, Lorg/telegram/ui/ArticleViewer;->minY:F

    cmpg-float v9, v9, v10

    if-gez v9, :cond_17

    .line 6174
    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->minY:F

    iput v9, p0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    .line 6175
    const/4 v5, 0x0

    .line 6186
    :cond_15
    :goto_2
    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->translationX:F

    sub-float/2addr v9, v4

    iput v9, p0, Lorg/telegram/ui/ArticleViewer;->translationX:F

    .line 6187
    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_16

    .line 6188
    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    sub-float/2addr v9, v5

    iput v9, p0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    .line 6191
    :cond_16
    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    invoke-virtual {v9}, Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;->invalidate()V

    goto/16 :goto_1

    .line 6176
    :cond_17
    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    sub-float/2addr v9, v5

    iget v10, p0, Lorg/telegram/ui/ArticleViewer;->maxY:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_15

    .line 6177
    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->maxY:F

    iput v9, p0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    .line 6178
    const/4 v5, 0x0

    goto :goto_2

    .line 6181
    :cond_18
    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    iget v10, p0, Lorg/telegram/ui/ArticleViewer;->minY:F

    cmpg-float v9, v9, v10

    if-ltz v9, :cond_19

    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    iget v10, p0, Lorg/telegram/ui/ArticleViewer;->maxY:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_15

    .line 6182
    :cond_19
    const/high16 v9, 0x40400000    # 3.0f

    div-float/2addr v5, v9

    goto :goto_2

    .line 6194
    .end local v4    # "moveDx":F
    .end local v5    # "moveDy":F
    :cond_1a
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/ArticleViewer;->invalidCoords:Z

    .line 6195
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iput v9, p0, Lorg/telegram/ui/ArticleViewer;->moveStartX:F

    .line 6196
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iput v9, p0, Lorg/telegram/ui/ArticleViewer;->moveStartY:F

    goto/16 :goto_1

    .line 6199
    .end local v2    # "dx":F
    .end local v3    # "dy":F
    :cond_1b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    const/4 v10, 0x3

    if-eq v9, v10, :cond_1c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_1c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    const/4 v10, 0x6

    if-ne v9, v10, :cond_5

    .line 6200
    :cond_1c
    iget-boolean v9, p0, Lorg/telegram/ui/ArticleViewer;->zooming:Z

    if-eqz v9, :cond_23

    .line 6201
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/ui/ArticleViewer;->invalidCoords:Z

    .line 6202
    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    const/high16 v10, 0x3f800000    # 1.0f

    cmpg-float v9, v9, v10

    if-gez v9, :cond_1d

    .line 6203
    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {p0, v9}, Lorg/telegram/ui/ArticleViewer;->updateMinMax(F)V

    .line 6204
    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-direct {p0, v9, v10, v11, v12}, Lorg/telegram/ui/ArticleViewer;->animateTo(FFFZ)V

    .line 6223
    :goto_3
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/ArticleViewer;->zooming:Z

    goto/16 :goto_1

    .line 6205
    :cond_1d
    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    const/high16 v10, 0x40400000    # 3.0f

    cmpl-float v9, v9, v10

    if-lez v9, :cond_22

    .line 6206
    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->pinchCenterX:F

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    sub-float/2addr v9, v10

    iget v10, p0, Lorg/telegram/ui/ArticleViewer;->pinchCenterX:F

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    sub-float/2addr v10, v11

    iget v11, p0, Lorg/telegram/ui/ArticleViewer;->pinchStartX:F

    sub-float/2addr v10, v11

    const/high16 v11, 0x40400000    # 3.0f

    iget v12, p0, Lorg/telegram/ui/ArticleViewer;->pinchStartScale:F

    div-float/2addr v11, v12

    mul-float/2addr v10, v11

    sub-float v0, v9, v10

    .line 6207
    .local v0, "atx":F
    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->pinchCenterY:F

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    sub-float/2addr v9, v10

    iget v10, p0, Lorg/telegram/ui/ArticleViewer;->pinchCenterY:F

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewHeight()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    sub-float/2addr v10, v11

    iget v11, p0, Lorg/telegram/ui/ArticleViewer;->pinchStartY:F

    sub-float/2addr v10, v11

    const/high16 v11, 0x40400000    # 3.0f

    iget v12, p0, Lorg/telegram/ui/ArticleViewer;->pinchStartScale:F

    div-float/2addr v11, v12

    mul-float/2addr v10, v11

    sub-float v1, v9, v10

    .line 6208
    .local v1, "aty":F
    const/high16 v9, 0x40400000    # 3.0f

    invoke-direct {p0, v9}, Lorg/telegram/ui/ArticleViewer;->updateMinMax(F)V

    .line 6209
    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->minX:F

    cmpg-float v9, v0, v9

    if-gez v9, :cond_20

    .line 6210
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->minX:F

    .line 6214
    :cond_1e
    :goto_4
    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->minY:F

    cmpg-float v9, v1, v9

    if-gez v9, :cond_21

    .line 6215
    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->minY:F

    .line 6219
    :cond_1f
    :goto_5
    const/high16 v9, 0x40400000    # 3.0f

    const/4 v10, 0x1

    invoke-direct {p0, v9, v0, v1, v10}, Lorg/telegram/ui/ArticleViewer;->animateTo(FFFZ)V

    goto :goto_3

    .line 6211
    :cond_20
    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->maxX:F

    cmpl-float v9, v0, v9

    if-lez v9, :cond_1e

    .line 6212
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->maxX:F

    goto :goto_4

    .line 6216
    :cond_21
    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->maxY:F

    cmpl-float v9, v1, v9

    if-lez v9, :cond_1f

    .line 6217
    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->maxY:F

    goto :goto_5

    .line 6221
    .end local v0    # "atx":F
    .end local v1    # "aty":F
    :cond_22
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lorg/telegram/ui/ArticleViewer;->checkMinMax(Z)V

    goto :goto_3

    .line 6224
    :cond_23
    iget-boolean v9, p0, Lorg/telegram/ui/ArticleViewer;->draggingDown:Z

    if-eqz v9, :cond_25

    .line 6225
    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->dragY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewHeight()I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x40c00000    # 6.0f

    div-float/2addr v10, v11

    cmpl-float v9, v9, v10

    if-lez v9, :cond_24

    .line 6226
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lorg/telegram/ui/ArticleViewer;->closePhoto(Z)V

    .line 6230
    :goto_6
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/ArticleViewer;->draggingDown:Z

    goto/16 :goto_1

    .line 6228
    :cond_24
    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {p0, v9, v10, v11, v12}, Lorg/telegram/ui/ArticleViewer;->animateTo(FFFZ)V

    goto :goto_6

    .line 6231
    :cond_25
    iget-boolean v9, p0, Lorg/telegram/ui/ArticleViewer;->moving:Z

    if-eqz v9, :cond_5

    .line 6232
    iget v6, p0, Lorg/telegram/ui/ArticleViewer;->translationX:F

    .line 6233
    .local v6, "moveToX":F
    iget v7, p0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    .line 6234
    .local v7, "moveToY":F
    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    invoke-direct {p0, v9}, Lorg/telegram/ui/ArticleViewer;->updateMinMax(F)V

    .line 6235
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/ArticleViewer;->moving:Z

    .line 6236
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/ui/ArticleViewer;->canDragDown:Z

    .line 6237
    const/4 v8, 0x0

    .line 6238
    .local v8, "velocity":F
    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_26

    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v9, v9, v10

    if-nez v9, :cond_26

    .line 6239
    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer;->velocityTracker:Landroid/view/VelocityTracker;

    const/16 v10, 0x3e8

    invoke-virtual {v9, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 6240
    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v8

    .line 6243
    :cond_26
    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->translationX:F

    iget v10, p0, Lorg/telegram/ui/ArticleViewer;->minX:F

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x3

    int-to-float v11, v11

    sub-float/2addr v10, v11

    cmpg-float v9, v9, v10

    if-ltz v9, :cond_27

    const v9, 0x44228000    # 650.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    cmpg-float v9, v8, v9

    if-gez v9, :cond_28

    :cond_27
    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v9}, Lorg/telegram/messenger/ImageReceiver;->hasImage()Z

    move-result v9

    if-eqz v9, :cond_28

    .line 6244
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->goToNext()V

    .line 6245
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 6247
    :cond_28
    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->translationX:F

    iget v10, p0, Lorg/telegram/ui/ArticleViewer;->maxX:F

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x3

    int-to-float v11, v11

    add-float/2addr v10, v11

    cmpl-float v9, v9, v10

    if-gtz v9, :cond_29

    const v9, 0x44228000    # 650.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    cmpl-float v9, v8, v9

    if-lez v9, :cond_2a

    :cond_29
    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v9}, Lorg/telegram/messenger/ImageReceiver;->hasImage()Z

    move-result v9

    if-eqz v9, :cond_2a

    .line 6248
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->goToPrev()V

    .line 6249
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 6252
    :cond_2a
    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->translationX:F

    iget v10, p0, Lorg/telegram/ui/ArticleViewer;->minX:F

    cmpg-float v9, v9, v10

    if-gez v9, :cond_2d

    .line 6253
    iget v6, p0, Lorg/telegram/ui/ArticleViewer;->minX:F

    .line 6257
    :cond_2b
    :goto_7
    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    iget v10, p0, Lorg/telegram/ui/ArticleViewer;->minY:F

    cmpg-float v9, v9, v10

    if-gez v9, :cond_2e

    .line 6258
    iget v7, p0, Lorg/telegram/ui/ArticleViewer;->minY:F

    .line 6262
    :cond_2c
    :goto_8
    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    const/4 v10, 0x0

    invoke-direct {p0, v9, v6, v7, v10}, Lorg/telegram/ui/ArticleViewer;->animateTo(FFFZ)V

    goto/16 :goto_1

    .line 6254
    :cond_2d
    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->translationX:F

    iget v10, p0, Lorg/telegram/ui/ArticleViewer;->maxX:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_2b

    .line 6255
    iget v6, p0, Lorg/telegram/ui/ArticleViewer;->maxX:F

    goto :goto_7

    .line 6259
    :cond_2e
    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    iget v10, p0, Lorg/telegram/ui/ArticleViewer;->maxY:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_2c

    .line 6260
    iget v7, p0, Lorg/telegram/ui/ArticleViewer;->maxY:F

    goto :goto_8
.end method

.method private releasePlayer()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 5153
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v1, :cond_0

    .line 5154
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoPlayer;->releasePlayer()V

    .line 5155
    iput-object v3, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    .line 5158
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5162
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    if-eqz v1, :cond_1

    .line 5163
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;->removeView(Landroid/view/View;)V

    .line 5164
    iput-object v3, p0, Lorg/telegram/ui/ArticleViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    .line 5166
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->videoTextureView:Landroid/view/TextureView;

    if-eqz v1, :cond_2

    .line 5167
    iput-object v3, p0, Lorg/telegram/ui/ArticleViewer;->videoTextureView:Landroid/view/TextureView;

    .line 5169
    :cond_2
    iget-boolean v1, p0, Lorg/telegram/ui/ArticleViewer;->isPlaying:Z

    if-eqz v1, :cond_3

    .line 5170
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/telegram/ui/ArticleViewer;->isPlaying:Z

    .line 5171
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayButton:Landroid/widget/ImageView;

    const v2, 0x7f020115

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5172
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->updateProgressRunnable:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 5174
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->bottomLayout:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5175
    return-void

    .line 5159
    :catch_0
    move-exception v0

    .line 5160
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private removeLastPageFromStack()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 693
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    .line 694
    const/4 v0, 0x0

    .line 699
    :goto_0
    return v0

    .line 696
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 697
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$WebPage;

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    .line 698
    invoke-direct {p0, v1}, Lorg/telegram/ui/ArticleViewer;->updateInterfaceForCurrentPage(Z)V

    move v0, v1

    .line 699
    goto :goto_0
.end method

.method private saveCurrentPagePosition()V
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 2110
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-nez v6, :cond_1

    .line 2126
    :cond_0
    :goto_0
    return-void

    .line 2113
    :cond_1
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {v6}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v3

    .line 2114
    .local v3, "position":I
    const/4 v6, -0x1

    if-eq v3, v6, :cond_0

    .line 2116
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {v6, v3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v4

    .line 2117
    .local v4, "view":Landroid/view/View;
    if-eqz v4, :cond_3

    .line 2118
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v2

    .line 2122
    .local v2, "offset":I
    :goto_1
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "articles"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lorg/telegram/messenger/ChangeUserHelper;->getUserTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2123
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "article"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-wide v8, v7, Lorg/telegram/tgnet/TLRPC$WebPage;->id:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2124
    .local v1, "key":Ljava/lang/String;
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "o"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "r"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    sget-object v9, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    if-le v8, v9, :cond_2

    const/4 v5, 0x1

    :cond_2
    invoke-interface {v6, v7, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 2120
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "offset":I
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "offset":I
    goto :goto_1
.end method

.method private scaleToFill()Z
    .locals 1

    .prologue
    .line 6726
    const/4 v0, 0x0

    return v0
.end method

.method private setCurrentCaption(Ljava/lang/CharSequence;)V
    .locals 6
    .param p1, "caption"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    const/4 v5, -0x1

    .line 5508
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5509
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->captionTextViewOld:Landroid/widget/TextView;

    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;

    .line 5510
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->captionTextViewNew:Landroid/widget/TextView;

    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer;->captionTextViewOld:Landroid/widget/TextView;

    .line 5511
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;

    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer;->captionTextViewNew:Landroid/widget/TextView;

    .line 5512
    const/4 v1, 0x1

    invoke-static {v2, v1}, Lorg/telegram/ui/ActionBar/Theme;->createChatResources(Landroid/content/Context;Z)V

    .line 5513
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v0

    .line 5514
    .local v0, "str":Ljava/lang/CharSequence;
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 5515
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5516
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5517
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 5518
    new-instance v1, Lorg/telegram/ui/ArticleViewer$31;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ArticleViewer$31;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 5531
    .end local v0    # "str":Ljava/lang/CharSequence;
    :goto_1
    return-void

    .line 5517
    .restart local v0    # "str":Ljava/lang/CharSequence;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 5527
    .end local v0    # "str":Ljava/lang/CharSequence;
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5528
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 5529
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private setImageIndex(IZ)V
    .locals 19
    .param p1, "index"    # I
    .param p2, "init"    # Z

    .prologue
    .line 5359
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/ArticleViewer;->currentIndex:I

    move/from16 v0, p1

    if-ne v13, v0, :cond_1

    .line 5505
    :cond_0
    :goto_0
    return-void

    .line 5362
    :cond_1
    if-nez p2, :cond_2

    .line 5363
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/telegram/ui/ArticleViewer;->currentThumb:Landroid/graphics/Bitmap;

    .line 5365
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->currentFileNames:[Ljava/lang/String;

    const/4 v14, 0x0

    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/ArticleViewer;->getFileName(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    .line 5366
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->currentFileNames:[Ljava/lang/String;

    const/4 v14, 0x1

    add-int/lit8 v15, p1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lorg/telegram/ui/ArticleViewer;->getFileName(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    .line 5367
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->currentFileNames:[Ljava/lang/String;

    const/4 v14, 0x2

    add-int/lit8 v15, p1, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lorg/telegram/ui/ArticleViewer;->getFileName(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    .line 5369
    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/ui/ArticleViewer;->currentIndex:I

    .line 5370
    .local v9, "prevIndex":I
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/ArticleViewer;->currentIndex:I

    .line 5371
    const/4 v7, 0x0

    .line 5372
    .local v7, "isVideo":Z
    const/4 v10, 0x0

    .line 5374
    .local v10, "sameImage":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_6

    .line 5375
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/ArticleViewer;->currentIndex:I

    if-ltz v13, :cond_3

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/ArticleViewer;->currentIndex:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ArticleViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lt v13, v14, :cond_4

    .line 5376
    :cond_3
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/telegram/ui/ArticleViewer;->closePhoto(Z)V

    goto :goto_0

    .line 5379
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->imagesArr:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/ArticleViewer;->currentIndex:I

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$PageBlock;

    .line 5380
    .local v8, "newMedia":Lorg/telegram/tgnet/TLRPC$PageBlock;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->currentMedia:Lorg/telegram/tgnet/TLRPC$PageBlock;

    if-eqz v13, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->currentMedia:Lorg/telegram/tgnet/TLRPC$PageBlock;

    if-ne v13, v8, :cond_c

    const/4 v10, 0x1

    .line 5381
    :goto_1
    move-object/from16 v0, p0

    iput-object v8, v0, Lorg/telegram/ui/ArticleViewer;->currentMedia:Lorg/telegram/tgnet/TLRPC$PageBlock;

    .line 5382
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/ArticleViewer;->currentIndex:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/telegram/ui/ArticleViewer;->isMediaVideo(I)Z

    move-result v7

    .line 5383
    if-eqz v7, :cond_5

    .line 5384
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v14, 0x3

    invoke-virtual {v13, v14}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    .line 5386
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->currentMedia:Lorg/telegram/tgnet/TLRPC$PageBlock;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$PageBlock;->caption:Lorg/telegram/tgnet/TLRPC$RichText;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ArticleViewer;->currentMedia:Lorg/telegram/tgnet/TLRPC$PageBlock;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$PageBlock;->caption:Lorg/telegram/tgnet/TLRPC$RichText;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ArticleViewer;->currentMedia:Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lorg/telegram/ui/ArticleViewer;->getText(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;)Ljava/lang/CharSequence;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/telegram/ui/ArticleViewer;->setCurrentCaption(Ljava/lang/CharSequence;)V

    .line 5387
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v13, :cond_d

    .line 5388
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 5389
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 5390
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v14, "AttachGif"

    const v15, 0x7f0700a7

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 5406
    .end local v8    # "newMedia":Lorg/telegram/tgnet/TLRPC$PageBlock;
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v13}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v5

    .line 5407
    .local v5, "count":I
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_3
    if-ge v2, v5, :cond_7

    .line 5408
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v13, v2}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 5409
    .local v4, "child":Landroid/view/View;
    instance-of v13, v4, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    if-eqz v13, :cond_10

    move-object v3, v4

    .line 5410
    check-cast v3, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    .line 5411
    .local v3, "cell":Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;
    invoke-static {v3}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->access$8500(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;

    move-result-object v13

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;->items:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ArticleViewer;->currentMedia:Lorg/telegram/tgnet/TLRPC$PageBlock;

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 5412
    .local v6, "idx":I
    const/4 v13, -0x1

    if-eq v6, v13, :cond_10

    .line 5413
    invoke-static {v3}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->access$8800(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;)Landroid/support/v4/view/ViewPager;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v6, v14}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 5419
    .end local v3    # "cell":Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;
    .end local v4    # "child":Landroid/view/View;
    .end local v6    # "idx":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->currentPlaceObject:Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;

    if-eqz v13, :cond_8

    .line 5420
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/ArticleViewer;->photoAnimationInProgress:I

    if-nez v13, :cond_11

    .line 5421
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->currentPlaceObject:Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;

    iget-object v13, v13, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 5426
    :cond_8
    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->currentMedia:Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/telegram/ui/ArticleViewer;->getPlaceForPhoto(Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/telegram/ui/ArticleViewer;->currentPlaceObject:Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;

    .line 5427
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->currentPlaceObject:Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;

    if-eqz v13, :cond_9

    .line 5428
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/ArticleViewer;->photoAnimationInProgress:I

    if-nez v13, :cond_12

    .line 5429
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->currentPlaceObject:Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;

    iget-object v13, v13, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 5435
    :cond_9
    :goto_5
    if-nez v10, :cond_b

    .line 5436
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lorg/telegram/ui/ArticleViewer;->draggingDown:Z

    .line 5437
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/ArticleViewer;->translationX:F

    .line 5438
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    .line 5439
    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/ArticleViewer;->scale:F

    .line 5440
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/ArticleViewer;->animateToX:F

    .line 5441
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/ArticleViewer;->animateToY:F

    .line 5442
    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/ArticleViewer;->animateToScale:F

    .line 5443
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lorg/telegram/ui/ArticleViewer;->animationStartTime:J

    .line 5444
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/telegram/ui/ArticleViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    .line 5445
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    if-eqz v13, :cond_a

    .line 5446
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->setVisibility(I)V

    .line 5448
    :cond_a
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ArticleViewer;->releasePlayer()V

    .line 5450
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/ArticleViewer;->pinchStartDistance:F

    .line 5451
    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/ArticleViewer;->pinchStartScale:F

    .line 5452
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/ArticleViewer;->pinchCenterX:F

    .line 5453
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/ArticleViewer;->pinchCenterY:F

    .line 5454
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/ArticleViewer;->pinchStartX:F

    .line 5455
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/ArticleViewer;->pinchStartY:F

    .line 5456
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/ArticleViewer;->moveStartX:F

    .line 5457
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/ArticleViewer;->moveStartY:F

    .line 5458
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lorg/telegram/ui/ArticleViewer;->zooming:Z

    .line 5459
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lorg/telegram/ui/ArticleViewer;->moving:Z

    .line 5460
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lorg/telegram/ui/ArticleViewer;->doubleTap:Z

    .line 5461
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lorg/telegram/ui/ArticleViewer;->invalidCoords:Z

    .line 5462
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lorg/telegram/ui/ArticleViewer;->canDragDown:Z

    .line 5463
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lorg/telegram/ui/ArticleViewer;->changingPage:Z

    .line 5464
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/ArticleViewer;->switchImageAfterAnimation:I

    .line 5465
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->currentFileNames:[Ljava/lang/String;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    if-eqz v13, :cond_13

    if-nez v7, :cond_13

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    invoke-static {v13}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->access$10600(Lorg/telegram/ui/ArticleViewer$RadialProgressView;)I

    move-result v13

    if-eqz v13, :cond_13

    const/4 v13, 0x1

    :goto_6
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lorg/telegram/ui/ArticleViewer;->canZoom:Z

    .line 5466
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/ArticleViewer;->scale:F

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/telegram/ui/ArticleViewer;->updateMinMax(F)V

    .line 5469
    :cond_b
    const/4 v13, -0x1

    if-ne v9, v13, :cond_14

    .line 5470
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ArticleViewer;->setImages()V

    .line 5472
    const/4 v2, 0x0

    :goto_7
    const/4 v13, 0x3

    if-ge v2, v13, :cond_0

    .line 5473
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v13}, Lorg/telegram/ui/ArticleViewer;->checkProgress(IZ)V

    .line 5472
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 5380
    .end local v2    # "a":I
    .end local v5    # "count":I
    .restart local v8    # "newMedia":Lorg/telegram/tgnet/TLRPC$PageBlock;
    :cond_c
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 5392
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 5393
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_f

    .line 5394
    if-eqz v7, :cond_e

    .line 5395
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v14, "AttachVideo"

    const v15, 0x7f0700ad

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 5402
    :goto_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    goto/16 :goto_2

    .line 5397
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v14, "AttachPhoto"

    const v15, 0x7f0700aa

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 5400
    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v14, "Of"

    const v15, 0x7f070453

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->currentIndex:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->imagesArr:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v14 .. v16}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 5407
    .end local v8    # "newMedia":Lorg/telegram/tgnet/TLRPC$PageBlock;
    .restart local v2    # "a":I
    .restart local v4    # "child":Landroid/view/View;
    .restart local v5    # "count":I
    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    .line 5423
    .end local v4    # "child":Landroid/view/View;
    :cond_11
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->currentPlaceObject:Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/telegram/ui/ArticleViewer;->showAfterAnimation:Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;

    goto/16 :goto_4

    .line 5431
    :cond_12
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->currentPlaceObject:Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/telegram/ui/ArticleViewer;->hideAfterAnimation:Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;

    goto/16 :goto_5

    .line 5465
    :cond_13
    const/4 v13, 0x0

    goto/16 :goto_6

    .line 5476
    :cond_14
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lorg/telegram/ui/ArticleViewer;->checkProgress(IZ)V

    .line 5477
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/ArticleViewer;->currentIndex:I

    if-le v9, v13, :cond_15

    .line 5478
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/ArticleViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    .line 5479
    .local v11, "temp":Lorg/telegram/messenger/ImageReceiver;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/telegram/ui/ArticleViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    .line 5480
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    .line 5481
    move-object/from16 v0, p0

    iput-object v11, v0, Lorg/telegram/ui/ArticleViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    .line 5483
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    const/4 v14, 0x0

    aget-object v12, v13, v14

    .line 5484
    .local v12, "tempProgress":Lorg/telegram/ui/ArticleViewer$RadialProgressView;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    const/16 v16, 0x2

    aget-object v15, v15, v16

    aput-object v15, v13, v14

    .line 5485
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    const/4 v14, 0x2

    aput-object v12, v13, v14

    .line 5486
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/ArticleViewer;->currentIndex:I

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lorg/telegram/ui/ArticleViewer;->setIndexToImage(Lorg/telegram/messenger/ImageReceiver;I)V

    .line 5488
    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lorg/telegram/ui/ArticleViewer;->checkProgress(IZ)V

    .line 5489
    const/4 v13, 0x2

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lorg/telegram/ui/ArticleViewer;->checkProgress(IZ)V

    goto/16 :goto_0

    .line 5490
    .end local v11    # "temp":Lorg/telegram/messenger/ImageReceiver;
    .end local v12    # "tempProgress":Lorg/telegram/ui/ArticleViewer$RadialProgressView;
    :cond_15
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/ArticleViewer;->currentIndex:I

    if-ge v9, v13, :cond_0

    .line 5491
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/ArticleViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    .line 5492
    .restart local v11    # "temp":Lorg/telegram/messenger/ImageReceiver;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/telegram/ui/ArticleViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    .line 5493
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    .line 5494
    move-object/from16 v0, p0

    iput-object v11, v0, Lorg/telegram/ui/ArticleViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    .line 5496
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    const/4 v14, 0x0

    aget-object v12, v13, v14

    .line 5497
    .restart local v12    # "tempProgress":Lorg/telegram/ui/ArticleViewer$RadialProgressView;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    const/16 v16, 0x1

    aget-object v15, v15, v16

    aput-object v15, v13, v14

    .line 5498
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    const/4 v14, 0x1

    aput-object v12, v13, v14

    .line 5499
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ArticleViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/ArticleViewer;->currentIndex:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lorg/telegram/ui/ArticleViewer;->setIndexToImage(Lorg/telegram/messenger/ImageReceiver;I)V

    .line 5501
    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lorg/telegram/ui/ArticleViewer;->checkProgress(IZ)V

    .line 5502
    const/4 v13, 0x2

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lorg/telegram/ui/ArticleViewer;->checkProgress(IZ)V

    goto/16 :goto_0
.end method

.method private setImages()V
    .locals 2

    .prologue
    .line 5351
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->photoAnimationInProgress:I

    if-nez v0, :cond_0

    .line 5352
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->currentIndex:I

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/ArticleViewer;->setIndexToImage(Lorg/telegram/messenger/ImageReceiver;I)V

    .line 5353
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->currentIndex:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/ArticleViewer;->setIndexToImage(Lorg/telegram/messenger/ImageReceiver;I)V

    .line 5354
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->currentIndex:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/ArticleViewer;->setIndexToImage(Lorg/telegram/messenger/ImageReceiver;I)V

    .line 5356
    :cond_0
    return-void
.end method

.method private setIndexToImage(Lorg/telegram/messenger/ImageReceiver;I)V
    .locals 20
    .param p1, "imageReceiver"    # Lorg/telegram/messenger/ImageReceiver;
    .param p2, "index"    # I

    .prologue
    .line 5574
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Lorg/telegram/messenger/ImageReceiver;->setOrientation(IZ)V

    .line 5576
    const/4 v3, 0x1

    new-array v0, v3, [I

    move-object/from16 v18, v0

    .line 5577
    .local v18, "size":[I
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ArticleViewer;->getFileLocation(I[I)Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-result-object v4

    .line 5579
    .local v4, "fileLocation":Lorg/telegram/tgnet/TLRPC$FileLocation;
    if-eqz v4, :cond_a

    .line 5580
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/telegram/ui/ArticleViewer;->getMedia(I)Lorg/telegram/tgnet/TLObject;

    move-result-object v15

    .line 5581
    .local v15, "media":Lorg/telegram/tgnet/TLObject;
    instance-of v3, v15, Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v3, :cond_5

    move-object/from16 v16, v15

    .line 5582
    check-cast v16, Lorg/telegram/tgnet/TLRPC$Photo;

    .line 5583
    .local v16, "photo":Lorg/telegram/tgnet/TLRPC$Photo;
    const/16 v17, 0x0

    .line 5584
    .local v17, "placeHolder":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ArticleViewer;->currentThumb:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_0

    .line 5585
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->currentThumb:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    .line 5587
    :cond_0
    const/4 v3, 0x0

    aget v3, v18, v3

    if-nez v3, :cond_1

    .line 5588
    const/4 v3, 0x0

    const/4 v5, -0x1

    aput v5, v18, v3

    .line 5590
    :cond_1
    move-object/from16 v0, v16

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    const/16 v5, 0x50

    invoke-static {v3, v5}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v19

    .line 5591
    .local v19, "thumbLocation":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v17, :cond_3

    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-direct {v7, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_0
    if-eqz v19, :cond_4

    move-object/from16 v0, v19

    iget-object v8, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    :goto_1
    const-string/jumbo v9, "b"

    const/4 v3, 0x0

    aget v10, v18, v3

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v12}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 5615
    .end local v15    # "media":Lorg/telegram/tgnet/TLObject;
    .end local v16    # "photo":Lorg/telegram/tgnet/TLRPC$Photo;
    .end local v17    # "placeHolder":Landroid/graphics/Bitmap;
    .end local v19    # "thumbLocation":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_2
    :goto_2
    return-void

    .line 5591
    .restart local v15    # "media":Lorg/telegram/tgnet/TLObject;
    .restart local v16    # "photo":Lorg/telegram/tgnet/TLRPC$Photo;
    .restart local v17    # "placeHolder":Landroid/graphics/Bitmap;
    .restart local v19    # "thumbLocation":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_3
    const/4 v7, 0x0

    goto :goto_0

    :cond_4
    const/4 v8, 0x0

    goto :goto_1

    .line 5592
    .end local v16    # "photo":Lorg/telegram/tgnet/TLRPC$Photo;
    .end local v17    # "placeHolder":Landroid/graphics/Bitmap;
    .end local v19    # "thumbLocation":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/telegram/ui/ArticleViewer;->isMediaVideo(I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 5593
    instance-of v3, v4, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;

    if-nez v3, :cond_8

    .line 5594
    const/16 v17, 0x0

    .line 5595
    .restart local v17    # "placeHolder":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ArticleViewer;->currentThumb:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_6

    .line 5596
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->currentThumb:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    .line 5598
    :cond_6
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz v17, :cond_7

    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-direct {v9, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_3
    const-string/jumbo v11, "b"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v5, p1

    move-object v10, v4

    invoke-virtual/range {v5 .. v14}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;ILjava/lang/String;Z)V

    goto :goto_2

    :cond_7
    const/4 v9, 0x0

    goto :goto_3

    .line 5600
    .end local v17    # "placeHolder":Landroid/graphics/Bitmap;
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f02021d

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 5602
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ArticleViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v3, :cond_2

    .line 5603
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ArticleViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    .line 5604
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ArticleViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setSecondParentView(Landroid/view/View;)V

    goto :goto_2

    .line 5609
    .end local v15    # "media":Lorg/telegram/tgnet/TLObject;
    :cond_a
    const/4 v3, 0x0

    aget v3, v18, v3

    if-nez v3, :cond_b

    .line 5610
    const/4 v3, 0x0

    check-cast v3, Landroid/graphics/Bitmap;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_2

    .line 5612
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f02021d

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2
.end method

.method private setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V
    .locals 3
    .param p1, "parentRichText"    # Lorg/telegram/tgnet/TLRPC$RichText;
    .param p2, "richText"    # Lorg/telegram/tgnet/TLRPC$RichText;

    .prologue
    .line 563
    if-nez p2, :cond_1

    .line 587
    .end local p2    # "richText":Lorg/telegram/tgnet/TLRPC$RichText;
    :cond_0
    :goto_0
    return-void

    .line 566
    .restart local p2    # "richText":Lorg/telegram/tgnet/TLRPC$RichText;
    :cond_1
    iput-object p1, p2, Lorg/telegram/tgnet/TLRPC$RichText;->parentRichText:Lorg/telegram/tgnet/TLRPC$RichText;

    .line 567
    instance-of v2, p2, Lorg/telegram/tgnet/TLRPC$TL_textFixed;

    if-eqz v2, :cond_2

    move-object v2, p2

    .line 568
    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_textFixed;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_textFixed;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p2, v2}, Lorg/telegram/ui/ArticleViewer;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    goto :goto_0

    .line 569
    :cond_2
    instance-of v2, p2, Lorg/telegram/tgnet/TLRPC$TL_textItalic;

    if-eqz v2, :cond_3

    move-object v2, p2

    .line 570
    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_textItalic;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_textItalic;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p2, v2}, Lorg/telegram/ui/ArticleViewer;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    goto :goto_0

    .line 571
    :cond_3
    instance-of v2, p2, Lorg/telegram/tgnet/TLRPC$TL_textBold;

    if-eqz v2, :cond_4

    move-object v2, p2

    .line 572
    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_textBold;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_textBold;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p2, v2}, Lorg/telegram/ui/ArticleViewer;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    goto :goto_0

    .line 573
    :cond_4
    instance-of v2, p2, Lorg/telegram/tgnet/TLRPC$TL_textUnderline;

    if-eqz v2, :cond_5

    move-object v2, p2

    .line 574
    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_textUnderline;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_textUnderline;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p2, v2}, Lorg/telegram/ui/ArticleViewer;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    goto :goto_0

    .line 575
    :cond_5
    instance-of v2, p2, Lorg/telegram/tgnet/TLRPC$TL_textStrike;

    if-eqz v2, :cond_6

    .line 576
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_textStrike;

    .end local p2    # "richText":Lorg/telegram/tgnet/TLRPC$RichText;
    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$TL_textStrike;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p1, v2}, Lorg/telegram/ui/ArticleViewer;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    goto :goto_0

    .line 577
    .restart local p2    # "richText":Lorg/telegram/tgnet/TLRPC$RichText;
    :cond_6
    instance-of v2, p2, Lorg/telegram/tgnet/TLRPC$TL_textEmail;

    if-eqz v2, :cond_7

    move-object v2, p2

    .line 578
    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_textEmail;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_textEmail;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p2, v2}, Lorg/telegram/ui/ArticleViewer;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    goto :goto_0

    .line 579
    :cond_7
    instance-of v2, p2, Lorg/telegram/tgnet/TLRPC$TL_textUrl;

    if-eqz v2, :cond_8

    move-object v2, p2

    .line 580
    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_textUrl;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_textUrl;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p2, v2}, Lorg/telegram/ui/ArticleViewer;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    goto :goto_0

    .line 581
    :cond_8
    instance-of v2, p2, Lorg/telegram/tgnet/TLRPC$TL_textConcat;

    if-eqz v2, :cond_0

    .line 582
    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$RichText;->texts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 583
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 584
    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$RichText;->texts:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p2, v2}, Lorg/telegram/ui/ArticleViewer;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 583
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private setScaleToFill()V
    .locals 9

    .prologue
    .line 5004
    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v7}, Lorg/telegram/messenger/ImageReceiver;->getBitmapWidth()I

    move-result v7

    int-to-float v1, v7

    .line 5005
    .local v1, "bitmapWidth":F
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewWidth()I

    move-result v7

    int-to-float v3, v7

    .line 5006
    .local v3, "containerWidth":F
    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v7}, Lorg/telegram/messenger/ImageReceiver;->getBitmapHeight()I

    move-result v7

    int-to-float v0, v7

    .line 5007
    .local v0, "bitmapHeight":F
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewHeight()I

    move-result v7

    int-to-float v2, v7

    .line 5008
    .local v2, "containerHeight":F
    div-float v7, v2, v0

    div-float v8, v3, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 5009
    .local v5, "scaleFit":F
    mul-float v7, v1, v5

    float-to-int v7, v7

    int-to-float v6, v7

    .line 5010
    .local v6, "width":F
    mul-float v7, v0, v5

    float-to-int v7, v7

    int-to-float v4, v7

    .line 5011
    .local v4, "height":F
    div-float v7, v3, v6

    div-float v8, v2, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iput v7, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    .line 5012
    iget v7, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    invoke-direct {p0, v7}, Lorg/telegram/ui/ArticleViewer;->updateMinMax(F)V

    .line 5013
    return-void
.end method

.method private showActionBar(I)V
    .locals 8
    .param p1, "delay"    # I

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1908
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1909
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->backButton:Landroid/widget/ImageView;

    const-string/jumbo v3, "alpha"

    new-array v4, v6, [F

    aput v7, v4, v5

    .line 1910
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->shareContainer:Landroid/widget/FrameLayout;

    const-string/jumbo v3, "alpha"

    new-array v4, v6, [F

    aput v7, v4, v5

    .line 1911
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    .line 1909
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1912
    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1913
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 1914
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1915
    return-void
.end method

.method private showProgressView(Z)V
    .locals 10
    .param p1, "show"    # Z

    .prologue
    const/4 v9, 0x0

    const v5, 0x3dcccccd    # 0.1f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1918
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->progressViewAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 1919
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->progressViewAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1921
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->progressViewAnimation:Landroid/animation/AnimatorSet;

    .line 1922
    if-eqz p1, :cond_1

    .line 1923
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/ContextProgressView;->setVisibility(I)V

    .line 1924
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->shareContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1925
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->progressViewAnimation:Landroid/animation/AnimatorSet;

    const/4 v1, 0x6

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->shareButton:Landroid/widget/ImageView;

    const-string/jumbo v3, "scaleX"

    new-array v4, v7, [F

    aput v5, v4, v6

    .line 1926
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->shareButton:Landroid/widget/ImageView;

    const-string/jumbo v3, "scaleY"

    new-array v4, v7, [F

    aput v5, v4, v6

    .line 1927
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->shareButton:Landroid/widget/ImageView;

    const-string/jumbo v4, "alpha"

    new-array v5, v7, [F

    aput v9, v5, v6

    .line 1928
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const-string/jumbo v4, "scaleX"

    new-array v5, v7, [F

    aput v8, v5, v6

    .line 1929
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const-string/jumbo v4, "scaleY"

    new-array v5, v7, [F

    aput v8, v5, v6

    .line 1930
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const-string/jumbo v4, "alpha"

    new-array v5, v7, [F

    aput v8, v5, v6

    .line 1931
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1925
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1944
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->progressViewAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/ArticleViewer$19;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/ArticleViewer$19;-><init>(Lorg/telegram/ui/ArticleViewer;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1963
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->progressViewAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1964
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->progressViewAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1965
    return-void

    .line 1933
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->shareButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1934
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->shareContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1935
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->progressViewAnimation:Landroid/animation/AnimatorSet;

    const/4 v1, 0x6

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const-string/jumbo v3, "scaleX"

    new-array v4, v7, [F

    aput v5, v4, v6

    .line 1936
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const-string/jumbo v3, "scaleY"

    new-array v4, v7, [F

    aput v5, v4, v6

    .line 1937
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const-string/jumbo v4, "alpha"

    new-array v5, v7, [F

    aput v9, v5, v6

    .line 1938
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->shareButton:Landroid/widget/ImageView;

    const-string/jumbo v4, "scaleX"

    new-array v5, v7, [F

    aput v8, v5, v6

    .line 1939
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->shareButton:Landroid/widget/ImageView;

    const-string/jumbo v4, "scaleY"

    new-array v5, v7, [F

    aput v8, v5, v6

    .line 1940
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->shareButton:Landroid/widget/ImageView;

    const-string/jumbo v4, "alpha"

    new-array v5, v7, [F

    aput v8, v5, v6

    .line 1941
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1935
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/16 :goto_0
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

    .line 5178
    if-eqz p1, :cond_1

    .line 5179
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, v7}, Lorg/telegram/ui/ActionBar/ActionBar;->setVisibility(I)V

    .line 5180
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v1, :cond_0

    .line 5181
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->bottomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5183
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5184
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5187
    :cond_1
    iput-boolean p1, p0, Lorg/telegram/ui/ArticleViewer;->isActionBarVisible:Z

    .line 5188
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->setEnabled(Z)V

    .line 5189
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->bottomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 5191
    if-eqz p2, :cond_8

    .line 5192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5193
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v5, "alpha"

    new-array v6, v8, [F

    if-eqz p1, :cond_5

    move v1, v2

    :goto_0
    aput v1, v6, v7

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5194
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->bottomLayout:Landroid/widget/FrameLayout;

    const-string/jumbo v5, "alpha"

    new-array v6, v8, [F

    if-eqz p1, :cond_6

    move v1, v2

    :goto_1
    aput v1, v6, v7

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5195
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 5196
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "alpha"

    new-array v5, v8, [F

    if-eqz p1, :cond_7

    :goto_2
    aput v2, v5, v7

    invoke-static {v1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5198
    :cond_2
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer;->currentActionBarAnimation:Landroid/animation/AnimatorSet;

    .line 5199
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->currentActionBarAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 5200
    if-nez p1, :cond_3

    .line 5201
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->currentActionBarAnimation:Landroid/animation/AnimatorSet;

    new-instance v2, Lorg/telegram/ui/ArticleViewer$30;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ArticleViewer$30;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5218
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->currentActionBarAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 5219
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->currentActionBarAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 5236
    .end local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :cond_4
    :goto_3
    return-void

    .restart local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :cond_5
    move v1, v3

    .line 5193
    goto :goto_0

    :cond_6
    move v1, v3

    .line 5194
    goto :goto_1

    :cond_7
    move v2, v3

    .line 5196
    goto :goto_2

    .line 5221
    .end local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :cond_8
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz p1, :cond_b

    move v1, v2

    :goto_4
    invoke-virtual {v4, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAlpha(F)V

    .line 5222
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->bottomLayout:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_c

    move v1, v2

    :goto_5
    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 5223
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 5224
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_d

    :goto_6
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 5226
    :cond_9
    if-nez p1, :cond_4

    .line 5227
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setVisibility(I)V

    .line 5228
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v1, :cond_a

    .line 5229
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->bottomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5231
    :cond_a
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 5232
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    :cond_b
    move v1, v3

    .line 5221
    goto :goto_4

    :cond_c
    move v1, v3

    .line 5222
    goto :goto_5

    :cond_d
    move v2, v3

    .line 5224
    goto :goto_6
.end method

.method private updateInterfaceForCurrentPage(Z)V
    .locals 14
    .param p1, "back"    # Z

    .prologue
    .line 590
    iget-object v11, p0, Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    if-nez v11, :cond_1

    .line 676
    :cond_0
    :goto_0
    return-void

    .line 593
    :cond_1
    iget-object v11, p0, Lorg/telegram/ui/ArticleViewer;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 594
    iget-object v11, p0, Lorg/telegram/ui/ArticleViewer;->photoBlocks:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 595
    const/4 v7, 0x0

    .line 596
    .local v7, "numBlocks":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    iget-object v11, p0, Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$Page;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v0, v11, :cond_e

    .line 597
    iget-object v11, p0, Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$Page;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$PageBlock;

    .line 598
    .local v2, "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    instance-of v11, v2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockUnsupported;

    if-eqz v11, :cond_3

    .line 596
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 600
    :cond_3
    instance-of v11, v2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAnchor;

    if-eqz v11, :cond_4

    .line 601
    iget-object v11, p0, Lorg/telegram/ui/ArticleViewer;->anchors:Ljava/util/HashMap;

    iget-object v12, v2, Lorg/telegram/tgnet/TLRPC$PageBlock;->name:Ljava/lang/String;

    iget-object v13, p0, Lorg/telegram/ui/ArticleViewer;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 604
    :cond_4
    const/4 v11, 0x0

    iget-object v12, v2, Lorg/telegram/tgnet/TLRPC$PageBlock;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v11, v12}, Lorg/telegram/ui/ArticleViewer;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 605
    const/4 v11, 0x0

    iget-object v12, v2, Lorg/telegram/tgnet/TLRPC$PageBlock;->caption:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v11, v12}, Lorg/telegram/ui/ArticleViewer;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 606
    instance-of v11, v2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;

    if-eqz v11, :cond_7

    .line 607
    const/4 v12, 0x0

    move-object v11, v2

    check-cast v11, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;->author:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v12, v11}, Lorg/telegram/ui/ArticleViewer;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 626
    :cond_5
    if-nez v0, :cond_6

    .line 627
    const/4 v11, 0x1

    iput-boolean v11, v2, Lorg/telegram/tgnet/TLRPC$PageBlock;->first:Z

    .line 629
    :cond_6
    invoke-direct {p0, v2}, Lorg/telegram/ui/ArticleViewer;->addAllMediaFromBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    .line 630
    iget-object v11, p0, Lorg/telegram/ui/ArticleViewer;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 631
    instance-of v11, v2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    if-eqz v11, :cond_2

    .line 632
    iget-object v11, v2, Lorg/telegram/tgnet/TLRPC$PageBlock;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_d

    .line 633
    const/4 v11, -0x1

    iput v11, v2, Lorg/telegram/tgnet/TLRPC$PageBlock;->level:I

    .line 634
    const/4 v1, 0x0

    .local v1, "b":I
    :goto_3
    iget-object v11, v2, Lorg/telegram/tgnet/TLRPC$PageBlock;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v1, v11, :cond_d

    .line 635
    iget-object v11, v2, Lorg/telegram/tgnet/TLRPC$PageBlock;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$PageBlock;

    .line 636
    .local v5, "innerBlock":Lorg/telegram/tgnet/TLRPC$PageBlock;
    instance-of v11, v5, Lorg/telegram/tgnet/TLRPC$TL_pageBlockUnsupported;

    if-eqz v11, :cond_a

    .line 634
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 608
    .end local v1    # "b":I
    .end local v5    # "innerBlock":Lorg/telegram/tgnet/TLRPC$PageBlock;
    :cond_7
    instance-of v11, v2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

    if-eqz v11, :cond_8

    move-object v5, v2

    .line 609
    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

    .line 610
    .local v5, "innerBlock":Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_5
    iget-object v11, v5, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;->items:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v4, v11, :cond_5

    .line 611
    const/4 v12, 0x0

    iget-object v11, v5, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;->items:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$PageBlock;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$PageBlock;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v12, v11}, Lorg/telegram/ui/ArticleViewer;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 612
    const/4 v12, 0x0

    iget-object v11, v5, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;->items:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$PageBlock;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$PageBlock;->caption:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v12, v11}, Lorg/telegram/ui/ArticleViewer;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 610
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 614
    .end local v4    # "i":I
    .end local v5    # "innerBlock":Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;
    :cond_8
    instance-of v11, v2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;

    if-eqz v11, :cond_9

    move-object v5, v2

    .line 615
    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;

    .line 616
    .local v5, "innerBlock":Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_6
    iget-object v11, v5, Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;->items:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v4, v11, :cond_5

    .line 617
    const/4 v12, 0x0

    iget-object v11, v5, Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;->items:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v12, v11}, Lorg/telegram/ui/ArticleViewer;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 616
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 619
    .end local v4    # "i":I
    .end local v5    # "innerBlock":Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;
    :cond_9
    instance-of v11, v2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;

    if-eqz v11, :cond_5

    move-object v5, v2

    .line 620
    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;

    .line 621
    .local v5, "innerBlock":Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_7
    iget-object v11, v5, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;->items:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v4, v11, :cond_5

    .line 622
    const/4 v12, 0x0

    iget-object v11, v5, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;->items:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$PageBlock;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$PageBlock;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v12, v11}, Lorg/telegram/ui/ArticleViewer;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 623
    const/4 v12, 0x0

    iget-object v11, v5, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;->items:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$PageBlock;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$PageBlock;->caption:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v12, v11}, Lorg/telegram/ui/ArticleViewer;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 621
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 638
    .end local v4    # "i":I
    .restart local v1    # "b":I
    .local v5, "innerBlock":Lorg/telegram/tgnet/TLRPC$PageBlock;
    :cond_a
    instance-of v11, v5, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAnchor;

    if-eqz v11, :cond_b

    .line 639
    iget-object v11, p0, Lorg/telegram/ui/ArticleViewer;->anchors:Ljava/util/HashMap;

    iget-object v12, v5, Lorg/telegram/tgnet/TLRPC$PageBlock;->name:Ljava/lang/String;

    iget-object v13, p0, Lorg/telegram/ui/ArticleViewer;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 642
    :cond_b
    const/4 v11, 0x1

    iput v11, v5, Lorg/telegram/tgnet/TLRPC$PageBlock;->level:I

    .line 643
    iget-object v11, v2, Lorg/telegram/tgnet/TLRPC$PageBlock;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    if-ne v1, v11, :cond_c

    .line 644
    const/4 v11, 0x1

    iput-boolean v11, v5, Lorg/telegram/tgnet/TLRPC$PageBlock;->bottom:Z

    .line 646
    :cond_c
    iget-object v11, p0, Lorg/telegram/ui/ArticleViewer;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 647
    invoke-direct {p0, v5}, Lorg/telegram/ui/ArticleViewer;->addAllMediaFromBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    goto/16 :goto_4

    .line 650
    .end local v1    # "b":I
    .end local v5    # "innerBlock":Lorg/telegram/tgnet/TLRPC$PageBlock;
    :cond_d
    iget-object v11, v2, Lorg/telegram/tgnet/TLRPC$PageBlock;->caption:Lorg/telegram/tgnet/TLRPC$RichText;

    instance-of v11, v11, Lorg/telegram/tgnet/TLRPC$TL_textEmpty;

    if-nez v11, :cond_2

    .line 651
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;-><init>()V

    .line 652
    .local v3, "caption":Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;
    iget-object v11, v2, Lorg/telegram/tgnet/TLRPC$PageBlock;->caption:Lorg/telegram/tgnet/TLRPC$RichText;

    iput-object v11, v3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;->caption:Lorg/telegram/tgnet/TLRPC$RichText;

    .line 653
    iget-object v11, p0, Lorg/telegram/ui/ArticleViewer;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 658
    .end local v2    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    .end local v3    # "caption":Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;
    :cond_e
    iget-object v11, p0, Lorg/telegram/ui/ArticleViewer;->adapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-virtual {v11}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->notifyDataSetChanged()V

    .line 660
    iget-object v11, p0, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_f

    if-eqz p1, :cond_12

    .line 661
    :cond_f
    sget-object v11, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "articles"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Lorg/telegram/messenger/ChangeUserHelper;->getUserTag()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 662
    .local v10, "preferences":Landroid/content/SharedPreferences;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "article"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-wide v12, v12, Lorg/telegram/tgnet/TLRPC$WebPage;->id:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 663
    .local v6, "key":Ljava/lang/String;
    const/4 v11, -0x1

    invoke-interface {v10, v6, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 665
    .local v9, "position":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "r"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    sget-object v11, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->x:I

    sget-object v13, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v13, v13, Landroid/graphics/Point;->y:I

    if-le v11, v13, :cond_10

    const/4 v11, 0x1

    :goto_8
    if-ne v12, v11, :cond_11

    .line 666
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "o"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    iget-object v12, p0, Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v12}, Lorg/telegram/ui/Components/RecyclerListView;->getPaddingTop()I

    move-result v12

    sub-int v8, v11, v12

    .line 670
    .local v8, "offset":I
    :goto_9
    const/4 v11, -0x1

    if-eq v9, v11, :cond_0

    .line 671
    iget-object v11, p0, Lorg/telegram/ui/ArticleViewer;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {v11, v9, v8}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto/16 :goto_0

    .line 665
    .end local v8    # "offset":I
    :cond_10
    const/4 v11, 0x0

    goto :goto_8

    .line 668
    :cond_11
    const/high16 v11, 0x41200000    # 10.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    .restart local v8    # "offset":I
    goto :goto_9

    .line 674
    .end local v6    # "key":Ljava/lang/String;
    .end local v8    # "offset":I
    .end local v9    # "position":I
    .end local v10    # "preferences":Landroid/content/SharedPreferences;
    :cond_12
    iget-object v11, p0, Lorg/telegram/ui/ArticleViewer;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto/16 :goto_0
.end method

.method private updateMinMax(F)V
    .locals 5
    .param p1, "scale"    # F

    .prologue
    const/4 v4, 0x0

    .line 6062
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    div-int/lit8 v1, v2, 0x2

    .line 6063
    .local v1, "maxW":I
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    div-int/lit8 v0, v2, 0x2

    .line 6064
    .local v0, "maxH":I
    if-lez v1, :cond_0

    .line 6065
    neg-int v2, v1

    int-to-float v2, v2

    iput v2, p0, Lorg/telegram/ui/ArticleViewer;->minX:F

    .line 6066
    int-to-float v2, v1

    iput v2, p0, Lorg/telegram/ui/ArticleViewer;->maxX:F

    .line 6070
    :goto_0
    if-lez v0, :cond_1

    .line 6071
    neg-int v2, v0

    int-to-float v2, v2

    iput v2, p0, Lorg/telegram/ui/ArticleViewer;->minY:F

    .line 6072
    int-to-float v2, v0

    iput v2, p0, Lorg/telegram/ui/ArticleViewer;->maxY:F

    .line 6076
    :goto_1
    return-void

    .line 6068
    :cond_0
    iput v4, p0, Lorg/telegram/ui/ArticleViewer;->maxX:F

    iput v4, p0, Lorg/telegram/ui/ArticleViewer;->minX:F

    goto :goto_0

    .line 6074
    :cond_1
    iput v4, p0, Lorg/telegram/ui/ArticleViewer;->maxY:F

    iput v4, p0, Lorg/telegram/ui/ArticleViewer;->minY:F

    goto :goto_1
.end method

.method private updateVideoPlayerTime()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x3e8

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v10, 0x3c

    .line 5017
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-nez v3, :cond_1

    .line 5018
    const-string/jumbo v2, "00:00 / 00:00"

    .line 5029
    .local v2, "newText":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayerTime:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 5030
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayerTime:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5032
    :cond_0
    return-void

    .line 5020
    .end local v2    # "newText":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v6

    div-long v0, v6, v12

    .line 5021
    .local v0, "current":J
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v4

    .line 5022
    .local v4, "total":J
    div-long/2addr v4, v12

    .line 5023
    cmp-long v3, v4, v8

    if-eqz v3, :cond_2

    cmp-long v3, v0, v8

    if-eqz v3, :cond_2

    .line 5024
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
    goto :goto_0

    .line 5026
    .end local v2    # "newText":Ljava/lang/String;
    :cond_2
    const-string/jumbo v2, "00:00 / 00:00"

    .restart local v2    # "newText":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method protected cancelCheckLongPress()V
    .locals 2

    .prologue
    .line 714
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->checkingForLongPress:Z

    .line 715
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pendingCheckForLongPress:Lorg/telegram/ui/ArticleViewer$CheckForLongPress;

    if-eqz v0, :cond_0

    .line 716
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->pendingCheckForLongPress:Lorg/telegram/ui/ArticleViewer$CheckForLongPress;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ArticleViewer$WindowView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 718
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pendingCheckForTap:Lorg/telegram/ui/ArticleViewer$CheckForTap;

    if-eqz v0, :cond_1

    .line 719
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->pendingCheckForTap:Lorg/telegram/ui/ArticleViewer$CheckForTap;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ArticleViewer$WindowView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 721
    :cond_1
    return-void
.end method

.method public close(ZZ)V
    .locals 11
    .param p1, "byBackPress"    # Z
    .param p2, "force"    # Z

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2129
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lorg/telegram/ui/ArticleViewer;->isVisible:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->checkAnimation()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2213
    :cond_0
    :goto_0
    return-void

    .line 2132
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->fullscreenVideoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    .line 2133
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->customView:Landroid/view/View;

    if-eqz v2, :cond_a

    .line 2134
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->fullscreenVideoContainer:Landroid/widget/FrameLayout;

    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2135
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->customViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v2}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 2136
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->fullscreenVideoContainer:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->customView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 2137
    iput-object v10, p0, Lorg/telegram/ui/ArticleViewer;->customView:Landroid/view/View;

    .line 2141
    :cond_2
    :goto_1
    if-eqz p2, :cond_0

    .line 2145
    :cond_3
    iget-boolean v2, p0, Lorg/telegram/ui/ArticleViewer;->isPhotoVisible:Z

    if-eqz v2, :cond_4

    .line 2146
    if-nez p2, :cond_b

    move v2, v3

    :goto_2
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ArticleViewer;->closePhoto(Z)V

    .line 2147
    if-eqz p2, :cond_0

    .line 2151
    :cond_4
    iget v2, p0, Lorg/telegram/ui/ArticleViewer;->openUrlReqId:I

    if-eqz v2, :cond_5

    .line 2152
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    iget v5, p0, Lorg/telegram/ui/ArticleViewer;->openUrlReqId:I

    invoke-virtual {v2, v5, v3}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 2153
    iput v4, p0, Lorg/telegram/ui/ArticleViewer;->openUrlReqId:I

    .line 2154
    invoke-direct {p0, v4}, Lorg/telegram/ui/ArticleViewer;->showProgressView(Z)V

    .line 2156
    :cond_5
    iget v2, p0, Lorg/telegram/ui/ArticleViewer;->previewsReqId:I

    if-eqz v2, :cond_6

    .line 2157
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    iget v5, p0, Lorg/telegram/ui/ArticleViewer;->previewsReqId:I

    invoke-virtual {v2, v5, v3}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 2158
    iput v4, p0, Lorg/telegram/ui/ArticleViewer;->previewsReqId:I

    .line 2159
    invoke-direct {p0, v4}, Lorg/telegram/ui/ArticleViewer;->showProgressView(Z)V

    .line 2161
    :cond_6
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->saveCurrentPagePosition()V

    .line 2162
    if-eqz p1, :cond_7

    if-nez p2, :cond_7

    .line 2163
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->removeLastPageFromStack()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2169
    :cond_7
    :try_start_0
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->visibleDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_8

    .line 2170
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->visibleDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 2171
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/ui/ArticleViewer;->visibleDialog:Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2177
    :cond_8
    :goto_3
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2178
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    const/4 v2, 0x3

    new-array v2, v2, [Landroid/animation/Animator;

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    const-string/jumbo v6, "alpha"

    new-array v7, v3, [F

    aput v9, v7, v4

    .line 2179
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v2, v4

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    const-string/jumbo v6, "alpha"

    new-array v7, v3, [F

    aput v9, v7, v4

    .line 2180
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v2, v3

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    const-string/jumbo v6, "translationX"

    new-array v7, v8, [F

    aput v9, v7, v4

    const/high16 v4, 0x42600000    # 56.0f

    .line 2181
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    aput v4, v7, v3

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v8

    .line 2178
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2183
    iput v8, p0, Lorg/telegram/ui/ArticleViewer;->animationInProgress:I

    .line 2184
    new-instance v2, Lorg/telegram/ui/ArticleViewer$24;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ArticleViewer$24;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    iput-object v2, p0, Lorg/telegram/ui/ArticleViewer;->animationEndRunnable:Ljava/lang/Runnable;

    .line 2197
    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2198
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2199
    new-instance v2, Lorg/telegram/ui/ArticleViewer$25;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ArticleViewer$25;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2208
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/ArticleViewer;->transitionAnimationStartTime:J

    .line 2209
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_9

    .line 2210
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v8, v10}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2212
    :cond_9
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 2138
    .end local v0    # "animatorSet":Landroid/animation/AnimatorSet;
    :cond_a
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->fullscreenedVideo:Lorg/telegram/ui/Components/WebPlayerView;

    if-eqz v2, :cond_2

    .line 2139
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->fullscreenedVideo:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/WebPlayerView;->exitFullscreen()V

    goto/16 :goto_1

    :cond_b
    move v2, v4

    .line 2146
    goto/16 :goto_2

    .line 2173
    :catch_0
    move-exception v1

    .line 2174
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_3
.end method

.method public closePhoto(Z)V
    .locals 31
    .param p1, "animated"    # Z

    .prologue
    .line 5820
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/ArticleViewer;->isPhotoVisible:Z

    move/from16 v23, v0

    if-eqz v23, :cond_0

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ArticleViewer;->checkPhotoAnimation()Z

    move-result v23

    if-eqz v23, :cond_1

    .line 6024
    :cond_0
    :goto_0
    return-void

    .line 5824
    :cond_1
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ArticleViewer;->releasePlayer()V

    .line 5825
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v23

    sget v24, Lorg/telegram/messenger/NotificationCenter;->FileDidFailedLoad:I

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 5826
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v23

    sget v24, Lorg/telegram/messenger/NotificationCenter;->FileDidLoaded:I

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 5827
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v23

    sget v24, Lorg/telegram/messenger/NotificationCenter;->FileLoadProgressChanged:I

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 5828
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v23

    sget v24, Lorg/telegram/messenger/NotificationCenter;->emojiDidLoaded:I

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 5830
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/ArticleViewer;->isActionBarVisible:Z

    .line 5832
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->velocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v23, v0

    if-eqz v23, :cond_2

    .line 5833
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->velocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/VelocityTracker;->recycle()V

    .line 5834
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/ArticleViewer;->velocityTracker:Landroid/view/VelocityTracker;

    .line 5837
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->currentMedia:Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lorg/telegram/ui/ArticleViewer;->getPlaceForPhoto(Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;

    move-result-object v15

    .line 5839
    .local v15, "object":Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;
    if-eqz p1, :cond_e

    .line 5840
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/ArticleViewer;->photoAnimationInProgress:I

    .line 5841
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/Components/ClippingImageView;->setVisibility(I)V

    .line 5842
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;->invalidate()V

    .line 5844
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 5846
    .local v5, "animatorSet":Landroid/animation/AnimatorSet;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/Components/ClippingImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    .line 5847
    .local v14, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v11, 0x0

    .line 5848
    .local v11, "drawRegion":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/messenger/ImageReceiver;->getOrientation()I

    move-result v16

    .line 5849
    .local v16, "orientation":I
    const/4 v4, 0x0

    .line 5850
    .local v4, "animatedOrientation":I
    if-eqz v15, :cond_3

    iget-object v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v23, v0

    if-eqz v23, :cond_3

    .line 5851
    iget-object v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/messenger/ImageReceiver;->getAnimatedOrientation()I

    move-result v4

    .line 5853
    :cond_3
    if-eqz v4, :cond_4

    .line 5854
    move/from16 v16, v4

    .line 5856
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ClippingImageView;->setOrientation(I)V

    .line 5857
    if-eqz v15, :cond_a

    .line 5858
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v24, v0

    iget v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->radius:I

    move/from16 v23, v0

    if-eqz v23, :cond_9

    const/16 v23, 0x1

    :goto_1
    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ClippingImageView;->setNeedRadius(Z)V

    .line 5859
    iget-object v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/messenger/ImageReceiver;->getDrawRegion()Landroid/graphics/Rect;

    move-result-object v11

    .line 5860
    iget v0, v11, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    iget v0, v11, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move/from16 v0, v23

    iput v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 5861
    iget v0, v11, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    iget v0, v11, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move/from16 v0, v23

    iput v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 5862
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v23, v0

    iget-object v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->thumb:Landroid/graphics/Bitmap;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/Components/ClippingImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 5869
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Lorg/telegram/ui/Components/ClippingImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5871
    sget-object v23, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v18, v23, v24

    .line 5872
    .local v18, "scaleX":F
    sget-object v23, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v23, v0

    sget v24, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v19, v23, v24

    .line 5873
    .local v19, "scaleY":F
    cmpl-float v23, v18, v19

    if-lez v23, :cond_b

    move/from16 v17, v19

    .line 5874
    .local v17, "scale2":F
    :goto_3
    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->scale:F

    move/from16 v24, v0

    mul-float v23, v23, v24

    mul-float v20, v23, v17

    .line 5875
    .local v20, "width":F
    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->scale:F

    move/from16 v24, v0

    mul-float v23, v23, v24

    mul-float v13, v23, v17

    .line 5876
    .local v13, "height":F
    sget-object v23, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v23, v23, v20

    const/high16 v24, 0x40000000    # 2.0f

    div-float v21, v23, v24

    .line 5877
    .local v21, "xPos":F
    sget v23, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v24, 0x15

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->lastInsets:Ljava/lang/Object;

    move-object/from16 v23, v0

    if-eqz v23, :cond_5

    .line 5878
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->lastInsets:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Landroid/view/WindowInsets;

    invoke-virtual/range {v23 .. v23}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    add-float v21, v21, v23

    .line 5880
    :cond_5
    sget-object v23, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v23, v0

    sget v24, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v23, v23, v13

    const/high16 v24, 0x40000000    # 2.0f

    div-float v22, v23, v24

    .line 5881
    .local v22, "yPos":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->translationX:F

    move/from16 v24, v0

    add-float v24, v24, v21

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/Components/ClippingImageView;->setTranslationX(F)V

    .line 5882
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    move/from16 v24, v0

    add-float v24, v24, v22

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/Components/ClippingImageView;->setTranslationY(F)V

    .line 5883
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->scale:F

    move/from16 v24, v0

    mul-float v24, v24, v17

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/Components/ClippingImageView;->setScaleX(F)V

    .line 5884
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->scale:F

    move/from16 v24, v0

    mul-float v24, v24, v17

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/Components/ClippingImageView;->setScaleY(F)V

    .line 5886
    if-eqz v15, :cond_c

    .line 5887
    iget-object v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x1

    invoke-virtual/range {v23 .. v25}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 5888
    iget v0, v11, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    iget-object v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/messenger/ImageReceiver;->getImageX()I

    move-result v24

    sub-int v23, v23, v24

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 5889
    .local v7, "clipHorizontal":I
    iget v0, v11, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    iget-object v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/messenger/ImageReceiver;->getImageY()I

    move-result v24

    sub-int v23, v23, v24

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(I)I

    move-result v9

    .line 5891
    .local v9, "clipVertical":I
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v10, v0, [I

    .line 5892
    .local v10, "coords2":[I
    iget-object v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Landroid/view/View;->getLocationInWindow([I)V

    .line 5893
    const/16 v23, 0x1

    aget v23, v10, v23

    iget v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->viewY:I

    move/from16 v24, v0

    iget v0, v11, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    add-int v24, v24, v25

    sub-int v23, v23, v24

    iget v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->clipTopAddition:I

    move/from16 v24, v0

    add-int v8, v23, v24

    .line 5894
    .local v8, "clipTop":I
    if-gez v8, :cond_6

    .line 5895
    const/4 v8, 0x0

    .line 5897
    :cond_6
    iget v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->viewY:I

    move/from16 v23, v0

    iget v0, v11, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    add-int v23, v23, v24

    iget v0, v11, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    iget v0, v11, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    add-int v23, v23, v24

    const/16 v24, 0x1

    aget v24, v10, v24

    iget-object v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getHeight()I

    move-result v25

    add-int v24, v24, v25

    sub-int v23, v23, v24

    iget v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->clipBottomAddition:I

    move/from16 v24, v0

    add-int v6, v23, v24

    .line 5898
    .local v6, "clipBottom":I
    if-gez v6, :cond_7

    .line 5899
    const/4 v6, 0x0

    .line 5902
    :cond_7
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 5903
    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 5905
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/ui/Components/ClippingImageView;->getScaleX()F

    move-result v25

    aput v25, v23, v24

    .line 5906
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/ui/Components/ClippingImageView;->getScaleY()F

    move-result v25

    aput v25, v23, v24

    .line 5907
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/ui/Components/ClippingImageView;->getTranslationX()F

    move-result v25

    aput v25, v23, v24

    .line 5908
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/ui/Components/ClippingImageView;->getTranslationY()F

    move-result v25

    aput v25, v23, v24

    .line 5909
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x4

    const/16 v25, 0x0

    aput v25, v23, v24

    .line 5910
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x5

    const/16 v25, 0x0

    aput v25, v23, v24

    .line 5911
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x6

    const/16 v25, 0x0

    aput v25, v23, v24

    .line 5912
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x7

    const/16 v25, 0x0

    aput v25, v23, v24

    .line 5914
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x0

    iget v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->scale:F

    move/from16 v25, v0

    aput v25, v23, v24

    .line 5915
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x1

    iget v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->scale:F

    move/from16 v25, v0

    aput v25, v23, v24

    .line 5916
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x2

    iget v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->viewX:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    iget v0, v11, Landroid/graphics/Rect;->left:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    iget v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->scale:F

    move/from16 v27, v0

    mul-float v26, v26, v27

    add-float v25, v25, v26

    aput v25, v23, v24

    .line 5917
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x3

    iget v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->viewY:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    iget v0, v11, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    iget v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->scale:F

    move/from16 v27, v0

    mul-float v26, v26, v27

    add-float v25, v25, v26

    aput v25, v23, v24

    .line 5918
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x4

    int-to-float v0, v7

    move/from16 v25, v0

    iget v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->scale:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    aput v25, v23, v24

    .line 5919
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x5

    int-to-float v0, v8

    move/from16 v25, v0

    iget v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->scale:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    aput v25, v23, v24

    .line 5920
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x6

    int-to-float v0, v6

    move/from16 v25, v0

    iget v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->scale:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    aput v25, v23, v24

    .line 5921
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x7

    iget v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->radius:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    aput v25, v23, v24

    .line 5923
    const/16 v23, 0x5

    move/from16 v0, v23

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v25, v0

    const-string/jumbo v26, "animationProgress"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    fill-array-data v27, :array_0

    .line 5924
    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->photoBackgroundDrawable:Lorg/telegram/ui/ArticleViewer$PhotoBackgroundDrawable;

    move-object/from16 v25, v0

    const-string/jumbo v26, "alpha"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    aput v29, v27, v28

    .line 5925
    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    move-object/from16 v25, v0

    const-string/jumbo v26, "alpha"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    aput v29, v27, v28

    .line 5926
    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->bottomLayout:Landroid/widget/FrameLayout;

    move-object/from16 v25, v0

    const-string/jumbo v26, "alpha"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    aput v29, v27, v28

    .line 5927
    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    const-string/jumbo v26, "alpha"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    aput v29, v27, v28

    .line 5928
    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v25

    aput-object v25, v23, v24

    .line 5923
    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 5942
    .end local v6    # "clipBottom":I
    .end local v7    # "clipHorizontal":I
    .end local v8    # "clipTop":I
    .end local v9    # "clipVertical":I
    .end local v10    # "coords2":[I
    :goto_4
    new-instance v23, Lorg/telegram/ui/ArticleViewer$36;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v15}, Lorg/telegram/ui/ArticleViewer$36;-><init>(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/ArticleViewer;->photoAnimationEndRunnable:Ljava/lang/Runnable;

    .line 5955
    const-wide/16 v24, 0xc8

    move-wide/from16 v0, v24

    invoke-virtual {v5, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 5956
    new-instance v23, Lorg/telegram/ui/ArticleViewer$37;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/ArticleViewer$37;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5970
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/ui/ArticleViewer;->photoTransitionAnimationStartTime:J

    .line 5971
    sget v23, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v24, 0x12

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_8

    .line 5972
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;->setLayerType(ILandroid/graphics/Paint;)V

    .line 5974
    :cond_8
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 6019
    .end local v4    # "animatedOrientation":I
    .end local v11    # "drawRegion":Landroid/graphics/Rect;
    .end local v13    # "height":F
    .end local v14    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v16    # "orientation":I
    .end local v17    # "scale2":F
    .end local v18    # "scaleX":F
    .end local v19    # "scaleY":F
    .end local v20    # "width":F
    .end local v21    # "xPos":F
    .end local v22    # "yPos":F
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    .line 6020
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setSecondParentView(Landroid/view/View;)V

    .line 6021
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/ArticleViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    .line 6022
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v24, v0

    const/16 v23, 0x0

    check-cast v23, Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 5858
    .restart local v4    # "animatedOrientation":I
    .restart local v11    # "drawRegion":Landroid/graphics/Rect;
    .restart local v14    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .restart local v16    # "orientation":I
    :cond_9
    const/16 v23, 0x0

    goto/16 :goto_1

    .line 5864
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/Components/ClippingImageView;->setNeedRadius(Z)V

    .line 5865
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()I

    move-result v23

    move/from16 v0, v23

    iput v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 5866
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()I

    move-result v23

    move/from16 v0, v23

    iput v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 5867
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/Components/ClippingImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_2

    .restart local v18    # "scaleX":F
    .restart local v19    # "scaleY":F
    :cond_b
    move/from16 v17, v18

    .line 5873
    goto/16 :goto_3

    .line 5931
    .restart local v13    # "height":F
    .restart local v17    # "scale2":F
    .restart local v20    # "width":F
    .restart local v21    # "xPos":F
    .restart local v22    # "yPos":F
    :cond_c
    sget-object v23, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v23, v0

    sget v24, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int v12, v23, v24

    .line 5932
    .local v12, "h":I
    const/16 v23, 0x6

    move/from16 v0, v23

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v24, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->photoBackgroundDrawable:Lorg/telegram/ui/ArticleViewer$PhotoBackgroundDrawable;

    move-object/from16 v25, v0

    const-string/jumbo v26, "alpha"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    aput v29, v27, v28

    .line 5933
    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v25

    aput-object v25, v24, v23

    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v25, v0

    const-string/jumbo v26, "alpha"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    aput v29, v27, v28

    .line 5934
    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v25

    aput-object v25, v24, v23

    const/16 v25, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v26, v0

    const-string/jumbo v27, "translationY"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    move/from16 v23, v0

    const/16 v30, 0x0

    cmpl-float v23, v23, v30

    if-ltz v23, :cond_d

    int-to-float v0, v12

    move/from16 v23, v0

    :goto_6
    aput v23, v28, v29

    .line 5935
    invoke-static/range {v26 .. v28}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v23

    aput-object v23, v24, v25

    const/16 v23, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    move-object/from16 v25, v0

    const-string/jumbo v26, "alpha"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    aput v29, v27, v28

    .line 5936
    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v25

    aput-object v25, v24, v23

    const/16 v23, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->bottomLayout:Landroid/widget/FrameLayout;

    move-object/from16 v25, v0

    const-string/jumbo v26, "alpha"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    aput v29, v27, v28

    .line 5937
    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v25

    aput-object v25, v24, v23

    const/16 v23, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    const-string/jumbo v26, "alpha"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    aput v29, v27, v28

    .line 5938
    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v25

    aput-object v25, v24, v23

    .line 5932
    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/16 :goto_4

    .line 5934
    :cond_d
    neg-int v0, v12

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    goto :goto_6

    .line 5976
    .end local v4    # "animatedOrientation":I
    .end local v5    # "animatorSet":Landroid/animation/AnimatorSet;
    .end local v11    # "drawRegion":Landroid/graphics/Rect;
    .end local v12    # "h":I
    .end local v13    # "height":F
    .end local v14    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v16    # "orientation":I
    .end local v17    # "scale2":F
    .end local v18    # "scaleX":F
    .end local v19    # "scaleY":F
    .end local v20    # "width":F
    .end local v21    # "xPos":F
    .end local v22    # "yPos":F
    :cond_e
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 5977
    .restart local v5    # "animatorSet":Landroid/animation/AnimatorSet;
    const/16 v23, 0x6

    move/from16 v0, v23

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    move-object/from16 v25, v0

    const-string/jumbo v26, "scaleX"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const v29, 0x3f666666    # 0.9f

    aput v29, v27, v28

    .line 5978
    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    move-object/from16 v25, v0

    const-string/jumbo v26, "scaleY"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const v29, 0x3f666666    # 0.9f

    aput v29, v27, v28

    .line 5979
    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->photoBackgroundDrawable:Lorg/telegram/ui/ArticleViewer$PhotoBackgroundDrawable;

    move-object/from16 v25, v0

    const-string/jumbo v26, "alpha"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    aput v29, v27, v28

    .line 5980
    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    move-object/from16 v25, v0

    const-string/jumbo v26, "alpha"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    aput v29, v27, v28

    .line 5981
    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->bottomLayout:Landroid/widget/FrameLayout;

    move-object/from16 v25, v0

    const-string/jumbo v26, "alpha"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    aput v29, v27, v28

    .line 5982
    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    const-string/jumbo v26, "alpha"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    aput v29, v27, v28

    .line 5983
    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v25

    aput-object v25, v23, v24

    .line 5977
    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 5985
    const/16 v23, 0x2

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/ArticleViewer;->photoAnimationInProgress:I

    .line 5986
    new-instance v23, Lorg/telegram/ui/ArticleViewer$38;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v15}, Lorg/telegram/ui/ArticleViewer$38;-><init>(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/ArticleViewer;->photoAnimationEndRunnable:Ljava/lang/Runnable;

    .line 6003
    const-wide/16 v24, 0xc8

    move-wide/from16 v0, v24

    invoke-virtual {v5, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 6004
    new-instance v23, Lorg/telegram/ui/ArticleViewer$39;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/ArticleViewer$39;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 6013
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/ui/ArticleViewer;->photoTransitionAnimationStartTime:J

    .line 6014
    sget v23, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v24, 0x12

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_f

    .line 6015
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;->setLayerType(ILandroid/graphics/Paint;)V

    .line 6017
    :cond_f
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_5

    .line 5923
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public collapse()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v3, 0x0

    .line 1968
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lorg/telegram/ui/ArticleViewer;->isVisible:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->checkAnimation()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2048
    :cond_0
    :goto_0
    return-void

    .line 1971
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->fullscreenVideoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 1972
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->customView:Landroid/view/View;

    if-eqz v2, :cond_6

    .line 1973
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->fullscreenVideoContainer:Landroid/widget/FrameLayout;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1974
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->customViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v2}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 1975
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->fullscreenVideoContainer:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->customView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1976
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/ui/ArticleViewer;->customView:Landroid/view/View;

    .line 1981
    :cond_2
    :goto_1
    iget-boolean v2, p0, Lorg/telegram/ui/ArticleViewer;->isPhotoVisible:Z

    if-eqz v2, :cond_3

    .line 1982
    invoke-virtual {p0, v3}, Lorg/telegram/ui/ArticleViewer;->closePhoto(Z)V

    .line 1985
    :cond_3
    :try_start_0
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->visibleDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_4

    .line 1986
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->visibleDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 1987
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/ui/ArticleViewer;->visibleDialog:Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1993
    :cond_4
    :goto_2
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1994
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    const/16 v2, 0xc

    new-array v4, v2, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    const-string/jumbo v5, "translationX"

    new-array v6, v10, [F

    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    .line 1995
    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v7

    const/high16 v8, 0x42600000    # 56.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    aput v7, v6, v3

    invoke-static {v2, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v4, v3

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    const-string/jumbo v6, "translationY"

    new-array v7, v10, [F

    .line 1996
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v8

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v2, v9, :cond_7

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_3
    add-int/2addr v2, v8

    int-to-float v2, v2

    aput v2, v7, v3

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v4, v10

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    const-string/jumbo v5, "alpha"

    new-array v6, v10, [F

    aput v11, v6, v3

    .line 1997
    invoke-static {v2, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v4, v13

    const/4 v2, 0x3

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const-string/jumbo v6, "alpha"

    new-array v7, v10, [F

    aput v11, v7, v3

    .line 1998
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x4

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const-string/jumbo v6, "translationY"

    new-array v7, v10, [F

    const/high16 v8, 0x42600000    # 56.0f

    .line 1999
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    aput v8, v7, v3

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x5

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->headerView:Landroid/widget/FrameLayout;

    const-string/jumbo v6, "translationY"

    new-array v7, v10, [F

    aput v11, v7, v3

    .line 2000
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x6

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->backButton:Landroid/widget/ImageView;

    const-string/jumbo v6, "scaleX"

    new-array v7, v10, [F

    aput v12, v7, v3

    .line 2002
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x7

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->backButton:Landroid/widget/ImageView;

    const-string/jumbo v6, "scaleY"

    new-array v7, v10, [F

    aput v12, v7, v3

    .line 2003
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v2

    const/16 v2, 0x8

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->backButton:Landroid/widget/ImageView;

    const-string/jumbo v6, "translationY"

    new-array v7, v10, [F

    aput v11, v7, v3

    .line 2004
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v2

    const/16 v2, 0x9

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->shareContainer:Landroid/widget/FrameLayout;

    const-string/jumbo v6, "scaleX"

    new-array v7, v10, [F

    aput v12, v7, v3

    .line 2005
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v2

    const/16 v2, 0xa

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->shareContainer:Landroid/widget/FrameLayout;

    const-string/jumbo v6, "translationY"

    new-array v7, v10, [F

    aput v11, v7, v3

    .line 2006
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v2

    const/16 v2, 0xb

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->shareContainer:Landroid/widget/FrameLayout;

    const-string/jumbo v6, "scaleY"

    new-array v7, v10, [F

    aput v12, v7, v3

    .line 2007
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v4, v2

    .line 1994
    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2009
    iput-boolean v10, p0, Lorg/telegram/ui/ArticleViewer;->collapsed:Z

    .line 2010
    iput v13, p0, Lorg/telegram/ui/ArticleViewer;->animationInProgress:I

    .line 2011
    new-instance v2, Lorg/telegram/ui/ArticleViewer$20;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ArticleViewer$20;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    iput-object v2, p0, Lorg/telegram/ui/ArticleViewer;->animationEndRunnable:Ljava/lang/Runnable;

    .line 2031
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2032
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2033
    new-instance v2, Lorg/telegram/ui/ArticleViewer$21;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ArticleViewer$21;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2042
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/ArticleViewer;->transitionAnimationStartTime:J

    .line 2043
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_5

    .line 2044
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v13, v3}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2046
    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-virtual {v2, v12, v10}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotation(FZ)V

    .line 2047
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 1977
    .end local v0    # "animatorSet":Landroid/animation/AnimatorSet;
    :cond_6
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->fullscreenedVideo:Lorg/telegram/ui/Components/WebPlayerView;

    if-eqz v2, :cond_2

    .line 1978
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->fullscreenedVideo:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/WebPlayerView;->exitFullscreen()V

    goto/16 :goto_1

    .line 1989
    :catch_0
    move-exception v1

    .line 1990
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "animatorSet":Landroid/animation/AnimatorSet;
    :cond_7
    move v2, v3

    .line 1996
    goto/16 :goto_3
.end method

.method public destroyArticleViewer()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2259
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    if-nez v4, :cond_1

    .line 2283
    :cond_0
    :goto_0
    return-void

    .line 2262
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->releasePlayer()V

    .line 2264
    :try_start_0
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    invoke-virtual {v4}, Lorg/telegram/ui/ArticleViewer$WindowView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 2265
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    const-string/jumbo v5, "window"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 2266
    .local v3, "wm":Landroid/view/WindowManager;
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    invoke-interface {v3, v4}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 2268
    .end local v3    # "wm":Landroid/view/WindowManager;
    :cond_2
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2272
    :goto_1
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_2
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->createdWebViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 2273
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->createdWebViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    .line 2274
    .local v1, "cell":Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->destroyWebView(Z)V

    .line 2272
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2269
    .end local v0    # "a":I
    .end local v1    # "cell":Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;
    :catch_0
    move-exception v2

    .line 2270
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 2276
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "a":I
    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->createdWebViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 2278
    :try_start_1
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v4, v5}, Landroid/view/Window;->clearFlags(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2282
    :goto_3
    sput-object v6, Lorg/telegram/ui/ArticleViewer;->Instance:Lorg/telegram/ui/ArticleViewer;

    goto :goto_0

    .line 2279
    :catch_1
    move-exception v2

    .line 2280
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 8
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1197
    sget v3, Lorg/telegram/messenger/NotificationCenter;->FileDidFailedLoad:I

    if-ne p1, v3, :cond_2

    .line 1198
    aget-object v1, p2, v4

    check-cast v1, Ljava/lang/String;

    .line 1199
    .local v1, "location":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v6, :cond_0

    .line 1200
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v3, v3, v0

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1201
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    aget-object v3, v3, v0

    invoke-virtual {v3, v7, v5}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->setProgress(FZ)V

    .line 1202
    invoke-direct {p0, v0, v5}, Lorg/telegram/ui/ArticleViewer;->checkProgress(IZ)V

    .line 1231
    .end local v0    # "a":I
    .end local v1    # "location":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 1199
    .restart local v0    # "a":I
    .restart local v1    # "location":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1206
    .end local v0    # "a":I
    .end local v1    # "location":Ljava/lang/String;
    :cond_2
    sget v3, Lorg/telegram/messenger/NotificationCenter;->FileDidLoaded:I

    if-ne p1, v3, :cond_4

    .line 1207
    aget-object v1, p2, v4

    check-cast v1, Ljava/lang/String;

    .line 1208
    .restart local v1    # "location":Ljava/lang/String;
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_2
    if-ge v0, v6, :cond_0

    .line 1209
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v3, v3, v0

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1210
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    aget-object v3, v3, v0

    invoke-virtual {v3, v7, v5}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->setProgress(FZ)V

    .line 1211
    invoke-direct {p0, v0, v5}, Lorg/telegram/ui/ArticleViewer;->checkProgress(IZ)V

    .line 1212
    if-nez v0, :cond_0

    iget v3, p0, Lorg/telegram/ui/ArticleViewer;->currentIndex:I

    invoke-direct {p0, v3}, Lorg/telegram/ui/ArticleViewer;->isMediaVideo(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1213
    invoke-direct {p0, v4}, Lorg/telegram/ui/ArticleViewer;->onActionClick(Z)V

    goto :goto_1

    .line 1208
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1218
    .end local v0    # "a":I
    .end local v1    # "location":Ljava/lang/String;
    :cond_4
    sget v3, Lorg/telegram/messenger/NotificationCenter;->FileLoadProgressChanged:I

    if-ne p1, v3, :cond_6

    .line 1219
    aget-object v1, p2, v4

    check-cast v1, Ljava/lang/String;

    .line 1220
    .restart local v1    # "location":Ljava/lang/String;
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_3
    if-ge v0, v6, :cond_0

    .line 1221
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v3, v3, v0

    if-eqz v3, :cond_5

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1222
    aget-object v2, p2, v5

    check-cast v2, Ljava/lang/Float;

    .line 1223
    .local v2, "progress":Ljava/lang/Float;
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    aget-object v3, v3, v0

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->setProgress(FZ)V

    .line 1220
    .end local v2    # "progress":Ljava/lang/Float;
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1226
    .end local v0    # "a":I
    .end local v1    # "location":Ljava/lang/String;
    :cond_6
    sget v3, Lorg/telegram/messenger/NotificationCenter;->emojiDidLoaded:I

    if-ne p1, v3, :cond_0

    .line 1227
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 1228
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->invalidate()V

    goto :goto_1
.end method

.method public getAnimationValue()F
    .locals 1

    .prologue
    .line 6338
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->animationValue:F

    return v0
.end method

.method public isShowingImage(Lorg/telegram/tgnet/TLRPC$PageBlock;)Z
    .locals 1
    .param p1, "object"    # Lorg/telegram/tgnet/TLRPC$PageBlock;

    .prologue
    .line 5618
    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->isPhotoVisible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->disableShowCheck:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->currentMedia:Lorg/telegram/tgnet/TLRPC$PageBlock;

    if-ne v0, p1, :cond_0

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
    .line 2286
    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->isVisible:Z

    return v0
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

    .line 6645
    iget-boolean v4, p0, Lorg/telegram/ui/ArticleViewer;->canZoom:Z

    if-eqz v4, :cond_0

    iget v4, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    cmpl-float v4, v4, v10

    if-nez v4, :cond_1

    iget v4, p0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    cmpl-float v4, v4, v8

    if-nez v4, :cond_0

    iget v4, p0, Lorg/telegram/ui/ArticleViewer;->translationX:F

    cmpl-float v4, v4, v8

    if-eqz v4, :cond_1

    :cond_0
    move v2, v3

    .line 6670
    :goto_0
    return v2

    .line 6648
    :cond_1
    iget-wide v4, p0, Lorg/telegram/ui/ArticleViewer;->animationStartTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    iget v4, p0, Lorg/telegram/ui/ArticleViewer;->photoAnimationInProgress:I

    if-eqz v4, :cond_3

    :cond_2
    move v2, v3

    .line 6649
    goto :goto_0

    .line 6651
    :cond_3
    iget v3, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    cmpl-float v3, v3, v10

    if-nez v3, :cond_8

    .line 6652
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget v5, p0, Lorg/telegram/ui/ArticleViewer;->translationX:F

    sub-float/2addr v4, v5

    iget v5, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    div-float v5, v9, v5

    mul-float/2addr v4, v5

    sub-float v0, v3, v4

    .line 6653
    .local v0, "atx":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget v5, p0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    sub-float/2addr v4, v5

    iget v5, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    div-float v5, v9, v5

    mul-float/2addr v4, v5

    sub-float v1, v3, v4

    .line 6654
    .local v1, "aty":F
    invoke-direct {p0, v9}, Lorg/telegram/ui/ArticleViewer;->updateMinMax(F)V

    .line 6655
    iget v3, p0, Lorg/telegram/ui/ArticleViewer;->minX:F

    cmpg-float v3, v0, v3

    if-gez v3, :cond_6

    .line 6656
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->minX:F

    .line 6660
    :cond_4
    :goto_1
    iget v3, p0, Lorg/telegram/ui/ArticleViewer;->minY:F

    cmpg-float v3, v1, v3

    if-gez v3, :cond_7

    .line 6661
    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->minY:F

    .line 6665
    :cond_5
    :goto_2
    invoke-direct {p0, v9, v0, v1, v2}, Lorg/telegram/ui/ArticleViewer;->animateTo(FFFZ)V

    .line 6669
    .end local v0    # "atx":F
    .end local v1    # "aty":F
    :goto_3
    iput-boolean v2, p0, Lorg/telegram/ui/ArticleViewer;->doubleTap:Z

    goto :goto_0

    .line 6657
    .restart local v0    # "atx":F
    .restart local v1    # "aty":F
    :cond_6
    iget v3, p0, Lorg/telegram/ui/ArticleViewer;->maxX:F

    cmpl-float v3, v0, v3

    if-lez v3, :cond_4

    .line 6658
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->maxX:F

    goto :goto_1

    .line 6662
    :cond_7
    iget v3, p0, Lorg/telegram/ui/ArticleViewer;->maxY:F

    cmpl-float v3, v1, v3

    if-lez v3, :cond_5

    .line 6663
    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->maxY:F

    goto :goto_2

    .line 6667
    .end local v0    # "atx":F
    .end local v1    # "aty":F
    :cond_8
    invoke-direct {p0, v10, v8, v8, v2}, Lorg/telegram/ui/ArticleViewer;->animateTo(FFFZ)V

    goto :goto_3
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 6675
    const/4 v0, 0x0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 6587
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
    .line 6612
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 6613
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Scroller;->abortAnimation()V

    .line 6614
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->translationX:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v5, p0, Lorg/telegram/ui/ArticleViewer;->minX:F

    float-to-int v5, v5

    iget v6, p0, Lorg/telegram/ui/ArticleViewer;->maxX:F

    float-to-int v6, v6

    iget v7, p0, Lorg/telegram/ui/ArticleViewer;->minY:F

    float-to-int v7, v7

    iget v8, p0, Lorg/telegram/ui/ArticleViewer;->maxY:F

    float-to-int v8, v8

    invoke-virtual/range {v0 .. v8}, Lorg/telegram/ui/Components/Scroller;->fling(IIIIIIII)V

    .line 6615
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;->postInvalidate()V

    .line 6617
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 6608
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 6056
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v0, :cond_0

    .line 6057
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ArticleViewer;->closePhoto(Z)V

    .line 6059
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
    .line 6602
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 6593
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v9, 0x42c80000    # 100.0f

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 6622
    iget-boolean v6, p0, Lorg/telegram/ui/ArticleViewer;->discardTap:Z

    if-eqz v6, :cond_0

    move v4, v5

    .line 6640
    :goto_0
    return v4

    .line 6625
    :cond_0
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v6}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    move v0, v4

    .line 6626
    .local v0, "drawTextureView":Z
    :goto_1
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    aget-object v6, v6, v5

    if-eqz v6, :cond_2

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    if-eqz v6, :cond_2

    if-nez v0, :cond_2

    .line 6627
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    aget-object v6, v6, v5

    invoke-static {v6}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->access$10600(Lorg/telegram/ui/ArticleViewer$RadialProgressView;)I

    move-result v1

    .line 6628
    .local v1, "state":I
    if-lez v1, :cond_2

    const/4 v6, 0x3

    if-gt v1, v6, :cond_2

    .line 6629
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 6630
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 6631
    .local v3, "y":F
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewWidth()I

    move-result v6

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v8

    cmpl-float v6, v2, v6

    if-ltz v6, :cond_2

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewWidth()I

    move-result v6

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v8

    cmpg-float v6, v2, v6

    if-gtz v6, :cond_2

    .line 6632
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewHeight()I

    move-result v6

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v8

    cmpl-float v6, v3, v6

    if-ltz v6, :cond_2

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewHeight()I

    move-result v6

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v8

    cmpg-float v6, v3, v6

    if-gtz v6, :cond_2

    .line 6633
    invoke-direct {p0, v4}, Lorg/telegram/ui/ArticleViewer;->onActionClick(Z)V

    .line 6634
    invoke-direct {p0, v5, v4}, Lorg/telegram/ui/ArticleViewer;->checkProgress(IZ)V

    goto :goto_0

    .end local v0    # "drawTextureView":Z
    .end local v1    # "state":I
    .end local v2    # "x":F
    .end local v3    # "y":F
    :cond_1
    move v0, v5

    .line 6625
    goto :goto_1

    .line 6639
    .restart local v0    # "drawTextureView":Z
    :cond_2
    iget-boolean v6, p0, Lorg/telegram/ui/ArticleViewer;->isActionBarVisible:Z

    if-nez v6, :cond_3

    move v5, v4

    :cond_3
    invoke-direct {p0, v5, v4}, Lorg/telegram/ui/ArticleViewer;->toggleActionBar(ZZ)V

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 6597
    const/4 v0, 0x0

    return v0
.end method

.method public open(Lorg/telegram/messenger/MessageObject;)Z
    .locals 1
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 1724
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/ArticleViewer;->open(Lorg/telegram/messenger/MessageObject;Z)Z

    move-result v0

    return v0
.end method

.method public openPhoto(Lorg/telegram/tgnet/TLRPC$PageBlock;)Z
    .locals 28
    .param p1, "block"    # Lorg/telegram/tgnet/TLRPC$PageBlock;

    .prologue
    .line 5635
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/ArticleViewer;->isPhotoVisible:Z

    move/from16 v23, v0

    if-nez v23, :cond_0

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ArticleViewer;->checkPhotoAnimation()Z

    move-result v23

    if-nez v23, :cond_0

    if-nez p1, :cond_1

    .line 5636
    :cond_0
    const/16 v23, 0x0

    .line 5816
    :goto_0
    return v23

    .line 5639
    :cond_1
    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/ArticleViewer;->getPlaceForPhoto(Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;

    move-result-object v15

    .line 5640
    .local v15, "object":Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;
    if-nez v15, :cond_2

    .line 5641
    const/16 v23, 0x0

    goto :goto_0

    .line 5644
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v23

    sget v24, Lorg/telegram/messenger/NotificationCenter;->FileDidFailedLoad:I

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 5645
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v23

    sget v24, Lorg/telegram/messenger/NotificationCenter;->FileDidLoaded:I

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 5646
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v23

    sget v24, Lorg/telegram/messenger/NotificationCenter;->FileLoadProgressChanged:I

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 5647
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v23

    sget v24, Lorg/telegram/messenger/NotificationCenter;->emojiDidLoaded:I

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 5649
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->velocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v23, v0

    if-nez v23, :cond_3

    .line 5650
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/ArticleViewer;->velocityTracker:Landroid/view/VelocityTracker;

    .line 5653
    :cond_3
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/ArticleViewer;->isPhotoVisible:Z

    .line 5654
    const/16 v23, 0x1

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ArticleViewer;->toggleActionBar(ZZ)V

    .line 5655
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/ActionBar/ActionBar;->setAlpha(F)V

    .line 5656
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->bottomLayout:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 5657
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setAlpha(F)V

    .line 5658
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->photoBackgroundDrawable:Lorg/telegram/ui/ArticleViewer$PhotoBackgroundDrawable;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/ArticleViewer$PhotoBackgroundDrawable;->setAlpha(I)V

    .line 5659
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/ArticleViewer;->disableShowCheck:Z

    .line 5660
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/ArticleViewer;->photoAnimationInProgress:I

    .line 5661
    if-eqz p1, :cond_4

    .line 5662
    iget-object v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/ArticleViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    .line 5664
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->photoBlocks:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v13

    .line 5666
    .local v13, "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->imagesArr:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->clear()V

    .line 5667
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    move/from16 v23, v0

    if-eqz v23, :cond_5

    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/ArticleViewer;->isVideoBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)Z

    move-result v23

    if-eqz v23, :cond_b

    .line 5668
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->imagesArr:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->photoBlocks:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5674
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v15}, Lorg/telegram/ui/ArticleViewer;->onPhotoShow(ILorg/telegram/ui/ArticleViewer$PlaceProviderObject;)V

    .line 5676
    iget-object v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/messenger/ImageReceiver;->getDrawRegion()Landroid/graphics/Rect;

    move-result-object v11

    .line 5677
    .local v11, "drawRegion":Landroid/graphics/Rect;
    iget-object v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/messenger/ImageReceiver;->getOrientation()I

    move-result v16

    .line 5678
    .local v16, "orientation":I
    iget-object v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/messenger/ImageReceiver;->getAnimatedOrientation()I

    move-result v4

    .line 5679
    .local v4, "animatedOrientation":I
    if-eqz v4, :cond_6

    .line 5680
    move/from16 v16, v4

    .line 5683
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/Components/ClippingImageView;->setVisibility(I)V

    .line 5684
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v23, v0

    iget v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->radius:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/Components/ClippingImageView;->setRadius(I)V

    .line 5685
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ClippingImageView;->setOrientation(I)V

    .line 5686
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v24, v0

    iget v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->radius:I

    move/from16 v23, v0

    if-eqz v23, :cond_c

    const/16 v23, 0x1

    :goto_2
    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ClippingImageView;->setNeedRadius(Z)V

    .line 5687
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v23, v0

    iget-object v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->thumb:Landroid/graphics/Bitmap;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/Components/ClippingImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 5689
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v23, v0

    const/high16 v24, 0x3f800000    # 1.0f

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/Components/ClippingImageView;->setAlpha(F)V

    .line 5690
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/Components/ClippingImageView;->setPivotX(F)V

    .line 5691
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/Components/ClippingImageView;->setPivotY(F)V

    .line 5692
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v23, v0

    iget v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->scale:F

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/Components/ClippingImageView;->setScaleX(F)V

    .line 5693
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v23, v0

    iget v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->scale:F

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/Components/ClippingImageView;->setScaleY(F)V

    .line 5694
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v23, v0

    iget v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->viewX:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    iget v0, v11, Landroid/graphics/Rect;->left:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    iget v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->scale:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    add-float v24, v24, v25

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/Components/ClippingImageView;->setTranslationX(F)V

    .line 5695
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v23, v0

    iget v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->viewY:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    iget v0, v11, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    iget v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->scale:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    add-float v24, v24, v25

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/Components/ClippingImageView;->setTranslationY(F)V

    .line 5696
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/Components/ClippingImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    .line 5697
    .local v14, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget v0, v11, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    iget v0, v11, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move/from16 v0, v23

    iput v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 5698
    iget v0, v11, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    iget v0, v11, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move/from16 v0, v23

    iput v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 5699
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Lorg/telegram/ui/Components/ClippingImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5701
    sget-object v23, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v18, v23, v24

    .line 5702
    .local v18, "scaleX":F
    sget-object v23, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v23, v0

    sget v24, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v19, v23, v24

    .line 5703
    .local v19, "scaleY":F
    cmpl-float v23, v18, v19

    if-lez v23, :cond_d

    move/from16 v17, v19

    .line 5704
    .local v17, "scale":F
    :goto_3
    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v20, v23, v17

    .line 5705
    .local v20, "width":F
    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v12, v23, v17

    .line 5706
    .local v12, "height":F
    sget-object v23, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v23, v23, v20

    const/high16 v24, 0x40000000    # 2.0f

    div-float v21, v23, v24

    .line 5707
    .local v21, "xPos":F
    sget v23, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v24, 0x15

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->lastInsets:Ljava/lang/Object;

    move-object/from16 v23, v0

    if-eqz v23, :cond_7

    .line 5708
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->lastInsets:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Landroid/view/WindowInsets;

    invoke-virtual/range {v23 .. v23}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    add-float v21, v21, v23

    .line 5710
    :cond_7
    sget-object v23, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v23, v0

    sget v24, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v23, v23, v12

    const/high16 v24, 0x40000000    # 2.0f

    div-float v22, v23, v24

    .line 5711
    .local v22, "yPos":F
    iget v0, v11, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    iget-object v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/messenger/ImageReceiver;->getImageX()I

    move-result v24

    sub-int v23, v23, v24

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 5712
    .local v7, "clipHorizontal":I
    iget v0, v11, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    iget-object v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/messenger/ImageReceiver;->getImageY()I

    move-result v24

    sub-int v23, v23, v24

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(I)I

    move-result v9

    .line 5714
    .local v9, "clipVertical":I
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v10, v0, [I

    .line 5715
    .local v10, "coords2":[I
    iget-object v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Landroid/view/View;->getLocationInWindow([I)V

    .line 5716
    const/16 v23, 0x1

    aget v23, v10, v23

    iget v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->viewY:I

    move/from16 v24, v0

    iget v0, v11, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    add-int v24, v24, v25

    sub-int v23, v23, v24

    iget v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->clipTopAddition:I

    move/from16 v24, v0

    add-int v8, v23, v24

    .line 5717
    .local v8, "clipTop":I
    if-gez v8, :cond_8

    .line 5718
    const/4 v8, 0x0

    .line 5720
    :cond_8
    iget v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->viewY:I

    move/from16 v23, v0

    iget v0, v11, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    add-int v23, v23, v24

    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v24, v0

    add-int v23, v23, v24

    const/16 v24, 0x1

    aget v24, v10, v24

    iget-object v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getHeight()I

    move-result v25

    add-int v24, v24, v25

    sub-int v23, v23, v24

    iget v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->clipBottomAddition:I

    move/from16 v24, v0

    add-int v6, v23, v24

    .line 5721
    .local v6, "clipBottom":I
    if-gez v6, :cond_9

    .line 5722
    const/4 v6, 0x0

    .line 5724
    :cond_9
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 5725
    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 5727
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/ui/Components/ClippingImageView;->getScaleX()F

    move-result v25

    aput v25, v23, v24

    .line 5728
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/ui/Components/ClippingImageView;->getScaleY()F

    move-result v25

    aput v25, v23, v24

    .line 5729
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/ui/Components/ClippingImageView;->getTranslationX()F

    move-result v25

    aput v25, v23, v24

    .line 5730
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/ui/Components/ClippingImageView;->getTranslationY()F

    move-result v25

    aput v25, v23, v24

    .line 5731
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x4

    int-to-float v0, v7

    move/from16 v25, v0

    iget v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->scale:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    aput v25, v23, v24

    .line 5732
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x5

    int-to-float v0, v8

    move/from16 v25, v0

    iget v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->scale:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    aput v25, v23, v24

    .line 5733
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x6

    int-to-float v0, v6

    move/from16 v25, v0

    iget v0, v15, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->scale:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    aput v25, v23, v24

    .line 5734
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x7

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/ui/Components/ClippingImageView;->getRadius()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    aput v25, v23, v24

    .line 5736
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x0

    aput v17, v23, v24

    .line 5737
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x1

    aput v17, v23, v24

    .line 5738
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x2

    aput v21, v23, v24

    .line 5739
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x3

    aput v22, v23, v24

    .line 5740
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x4

    const/16 v25, 0x0

    aput v25, v23, v24

    .line 5741
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x5

    const/16 v25, 0x0

    aput v25, v23, v24

    .line 5742
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x6

    const/16 v25, 0x0

    aput v25, v23, v24

    .line 5743
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x7

    const/16 v25, 0x0

    aput v25, v23, v24

    .line 5745
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;->setVisibility(I)V

    .line 5746
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->photoContainerBackground:Landroid/view/View;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    .line 5747
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/Components/ClippingImageView;->setAnimationProgress(F)V

    .line 5749
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 5750
    .local v5, "animatorSet":Landroid/animation/AnimatorSet;
    const/16 v23, 0x5

    move/from16 v0, v23

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v25, v0

    const-string/jumbo v26, "animationProgress"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    fill-array-data v27, :array_0

    .line 5751
    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->photoBackgroundDrawable:Lorg/telegram/ui/ArticleViewer$PhotoBackgroundDrawable;

    move-object/from16 v25, v0

    const-string/jumbo v26, "alpha"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [I

    move-object/from16 v27, v0

    fill-array-data v27, :array_1

    .line 5752
    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    move-object/from16 v25, v0

    const-string/jumbo v26, "alpha"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    fill-array-data v27, :array_2

    .line 5753
    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->bottomLayout:Landroid/widget/FrameLayout;

    move-object/from16 v25, v0

    const-string/jumbo v26, "alpha"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    fill-array-data v27, :array_3

    .line 5754
    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    const-string/jumbo v26, "alpha"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    fill-array-data v27, :array_4

    .line 5755
    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v25

    aput-object v25, v23, v24

    .line 5750
    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 5758
    new-instance v23, Lorg/telegram/ui/ArticleViewer$32;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/ArticleViewer$32;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/ArticleViewer;->photoAnimationEndRunnable:Ljava/lang/Runnable;

    .line 5781
    const-wide/16 v24, 0xc8

    move-wide/from16 v0, v24

    invoke-virtual {v5, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 5782
    new-instance v23, Lorg/telegram/ui/ArticleViewer$33;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/ArticleViewer$33;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5797
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/ui/ArticleViewer;->photoTransitionAnimationStartTime:J

    .line 5798
    new-instance v23, Lorg/telegram/ui/ArticleViewer$34;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lorg/telegram/ui/ArticleViewer$34;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/animation/AnimatorSet;)V

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 5806
    sget v23, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v24, 0x12

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_a

    .line 5807
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;->setLayerType(ILandroid/graphics/Paint;)V

    .line 5809
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->photoBackgroundDrawable:Lorg/telegram/ui/ArticleViewer$PhotoBackgroundDrawable;

    move-object/from16 v23, v0

    new-instance v24, Lorg/telegram/ui/ArticleViewer$35;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v15}, Lorg/telegram/ui/ArticleViewer$35;-><init>(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;)V

    invoke-static/range {v23 .. v24}, Lorg/telegram/ui/ArticleViewer$PhotoBackgroundDrawable;->access$11502(Lorg/telegram/ui/ArticleViewer$PhotoBackgroundDrawable;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 5816
    const/16 v23, 0x1

    goto/16 :goto_0

    .line 5670
    .end local v4    # "animatedOrientation":I
    .end local v5    # "animatorSet":Landroid/animation/AnimatorSet;
    .end local v6    # "clipBottom":I
    .end local v7    # "clipHorizontal":I
    .end local v8    # "clipTop":I
    .end local v9    # "clipVertical":I
    .end local v10    # "coords2":[I
    .end local v11    # "drawRegion":Landroid/graphics/Rect;
    .end local v12    # "height":F
    .end local v14    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v16    # "orientation":I
    .end local v17    # "scale":F
    .end local v18    # "scaleX":F
    .end local v19    # "scaleY":F
    .end local v20    # "width":F
    .end local v21    # "xPos":F
    .end local v22    # "yPos":F
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->imagesArr:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5671
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 5686
    .restart local v4    # "animatedOrientation":I
    .restart local v11    # "drawRegion":Landroid/graphics/Rect;
    .restart local v16    # "orientation":I
    :cond_c
    const/16 v23, 0x0

    goto/16 :goto_2

    .restart local v14    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .restart local v18    # "scaleX":F
    .restart local v19    # "scaleY":F
    :cond_d
    move/from16 v17, v18

    .line 5703
    goto/16 :goto_3

    .line 5750
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 5751
    :array_1
    .array-data 4
        0x0
        0xff
    .end array-data

    .line 5752
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 5753
    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 5754
    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setAnimationValue(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 6333
    iput p1, p0, Lorg/telegram/ui/ArticleViewer;->animationValue:F

    .line 6334
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;->invalidate()V

    .line 6335
    return-void
.end method

.method public setParentActivity(Landroid/app/Activity;)V
    .locals 13
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/high16 v9, 0x42600000    # 56.0f

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 1234
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    if-ne v0, p1, :cond_0

    .line 1661
    :goto_0
    return-void

    .line 1237
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    .line 1239
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->backgroundPaint:Landroid/graphics/Paint;

    .line 1240
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1242
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02011f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->layerShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 1243
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02024e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->slideDotDrawable:Landroid/graphics/drawable/Drawable;

    .line 1244
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02024d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->slideDotBigDrawable:Landroid/graphics/drawable/Drawable;

    .line 1245
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->scrimPaint:Landroid/graphics/Paint;

    .line 1247
    new-instance v0, Lorg/telegram/ui/ArticleViewer$WindowView;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ArticleViewer$WindowView;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    .line 1248
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/ArticleViewer$WindowView;->setWillNotDraw(Z)V

    .line 1249
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    invoke-virtual {v0, v11}, Lorg/telegram/ui/ArticleViewer$WindowView;->setClipChildren(Z)V

    .line 1250
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/ArticleViewer$WindowView;->setFocusable(Z)V

    .line 1252
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    .line 1253
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    const/16 v2, 0x33

    invoke-static {v5, v5, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ArticleViewer$WindowView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1254
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v11}, Landroid/widget/FrameLayout;->setFitsSystemWindows(Z)V

    .line 1255
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 1256
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/ArticleViewer$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ArticleViewer$2;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 1269
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    const/16 v1, 0x404

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    .line 1271
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->photoContainerBackground:Landroid/view/View;

    .line 1272
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->photoContainerBackground:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1273
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->photoContainerBackground:Landroid/view/View;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->photoBackgroundDrawable:Lorg/telegram/ui/ArticleViewer$PhotoBackgroundDrawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1274
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->photoContainerBackground:Landroid/view/View;

    const/16 v2, 0x33

    invoke-static {v5, v5, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ArticleViewer$WindowView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1276
    new-instance v0, Lorg/telegram/ui/Components/ClippingImageView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/ClippingImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    .line 1277
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ClippingImageView;->setAnimationValues([[F)V

    .line 1278
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ClippingImageView;->setVisibility(I)V

    .line 1279
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    const/16 v2, 0x28

    const/high16 v3, 0x42200000    # 40.0f

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ArticleViewer$WindowView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1281
    new-instance v0, Lorg/telegram/ui/ArticleViewer$3;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ArticleViewer$3;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    .line 1292
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;->setVisibility(I)V

    .line 1293
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;->setWillNotDraw(Z)V

    .line 1294
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    const/16 v2, 0x33

    invoke-static {v5, v5, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ArticleViewer$WindowView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1296
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->fullscreenVideoContainer:Landroid/widget/FrameLayout;

    .line 1297
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->fullscreenVideoContainer:Landroid/widget/FrameLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1298
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->fullscreenVideoContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1299
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->fullscreenVideoContainer:Landroid/widget/FrameLayout;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v5, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ArticleViewer$WindowView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1301
    new-instance v0, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-direct {v0, p1}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->fullscreenAspectRatioView:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    .line 1302
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->fullscreenAspectRatioView:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->setVisibility(I)V

    .line 1303
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->fullscreenVideoContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->fullscreenAspectRatioView:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    const/16 v2, 0x11

    invoke-static {v5, v5, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1305
    new-instance v0, Landroid/view/TextureView;

    invoke-direct {v0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->fullscreenTextureView:Landroid/view/TextureView;

    .line 1307
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 1308
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->barBackground:Landroid/view/View;

    .line 1309
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->barBackground:Landroid/view/View;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1310
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->barBackground:Landroid/view/View;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ArticleViewer$WindowView;->addView(Landroid/view/View;)V

    .line 1313
    :cond_2
    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 1314
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v1, v2, v11, v6}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 1315
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v1, p0, v2}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer;->adapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 1316
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/RecyclerListView;->setClipToPadding(Z)V

    .line 1317
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v6, v1, v6, v6}, Lorg/telegram/ui/Components/RecyclerListView;->setPadding(IIII)V

    .line 1318
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setTopGlowOffset(I)V

    .line 1319
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const v1, -0xa0909

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setGlowColor(I)V

    .line 1320
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v5, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1321
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/ArticleViewer$4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ArticleViewer$4;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 1327
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/ArticleViewer$5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ArticleViewer$5;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 1369
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/ArticleViewer$6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ArticleViewer$6;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;)V

    .line 1378
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->headerView:Landroid/widget/FrameLayout;

    .line 1379
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->headerView:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/ArticleViewer$7;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ArticleViewer$7;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1385
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->headerView:Landroid/widget/FrameLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1386
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->headerView:Landroid/widget/FrameLayout;

    invoke-static {v5, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1388
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->backButton:Landroid/widget/ImageView;

    .line 1389
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->backButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1390
    new-instance v0, Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-direct {v0, v6}, Lorg/telegram/ui/ActionBar/BackDrawable;-><init>(Z)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    .line 1391
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    const/high16 v1, 0x43480000    # 200.0f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BackDrawable;->setAnimationTime(F)V

    .line 1392
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    const v1, -0x4c4c4d

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BackDrawable;->setColor(I)V

    .line 1393
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotated(Z)V

    .line 1394
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->backButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1395
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->backButton:Landroid/widget/ImageView;

    const v1, 0x40ffffff    # 7.9999995f

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1396
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->headerView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->backButton:Landroid/widget/ImageView;

    const/16 v2, 0x36

    invoke-static {v2, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1397
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->backButton:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/ArticleViewer$8;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ArticleViewer$8;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1409
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->shareContainer:Landroid/widget/FrameLayout;

    .line 1410
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->headerView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->shareContainer:Landroid/widget/FrameLayout;

    const/16 v2, 0x30

    const/16 v3, 0x38

    const/16 v4, 0x35

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1411
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->shareContainer:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/ArticleViewer$9;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ArticleViewer$9;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1422
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->shareButton:Landroid/widget/ImageView;

    .line 1423
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->shareButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1424
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->shareButton:Landroid/widget/ImageView;

    const v1, 0x7f0200ff

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1425
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->shareButton:Landroid/widget/ImageView;

    const v1, 0x40ffffff    # 7.9999995f

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1426
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->shareContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->shareButton:Landroid/widget/ImageView;

    const/16 v2, 0x30

    invoke-static {v2, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1428
    new-instance v0, Lorg/telegram/ui/Components/ContextProgressView;

    invoke-direct {v0, p1, v12}, Lorg/telegram/ui/Components/ContextProgressView;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    .line 1429
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ContextProgressView;->setVisibility(I)V

    .line 1430
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->shareContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const/16 v2, 0x30

    invoke-static {v2, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1432
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 1433
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1434
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1435
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1436
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1437
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x63

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1438
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_4

    .line 1439
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v1, -0x7ffefef8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1447
    :goto_1
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->progressDrawables:[Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    .line 1448
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->progressDrawables:[Landroid/graphics/drawable/Drawable;

    .line 1449
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->progressDrawables:[Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02005a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v6

    .line 1450
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->progressDrawables:[Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020048

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v11

    .line 1451
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->progressDrawables:[Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02012d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v12

    .line 1452
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->progressDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x3

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020229

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1455
    :cond_3
    new-instance v0, Lorg/telegram/ui/Components/Scroller;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    .line 1457
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->blackPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1459
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 1460
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/high16 v1, 0x7f000000

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 1461
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 1462
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 1463
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v1, 0x40ffffff    # 7.9999995f

    invoke-virtual {v0, v1, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 1464
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v1, 0x7f0200b6

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 1465
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v1, "Of"

    const v2, 0x7f070453

    new-array v3, v12, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v11

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1466
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/high16 v2, -0x40000000    # -2.0f

    invoke-static {v5, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1468
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/ArticleViewer$10;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ArticleViewer$10;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 1507
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v8

    .line 1509
    .local v8, "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    const v0, 0x7f020246

    invoke-virtual {v8, v12, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 1510
    const v0, 0x7f0200bd

    invoke-virtual {v8, v6, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 1511
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v11}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setLayoutInScreen(Z)V

    .line 1512
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x3

    const-string/jumbo v2, "OpenInExternalApp"

    const v3, 0x7f070464

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    .line 1514
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string/jumbo v1, "SaveToGallery"

    const v2, 0x7f070564

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v11, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    .line 1516
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->bottomLayout:Landroid/widget/FrameLayout;

    .line 1517
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->bottomLayout:Landroid/widget/FrameLayout;

    const/high16 v1, 0x7f000000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1518
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->bottomLayout:Landroid/widget/FrameLayout;

    const/16 v2, 0x30

    const/16 v3, 0x53

    invoke-static {v5, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1520
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->captionTextViewOld:Landroid/widget/TextView;

    .line 1521
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->captionTextViewOld:Landroid/widget/TextView;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1522
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->captionTextViewOld:Landroid/widget/TextView;

    const/high16 v1, 0x7f000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1523
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->captionTextViewOld:Landroid/widget/TextView;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1524
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->captionTextViewOld:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 1525
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->captionTextViewOld:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1526
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->captionTextViewOld:Landroid/widget/TextView;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1527
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->captionTextViewOld:Landroid/widget/TextView;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v11, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1528
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->captionTextViewOld:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1529
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->captionTextViewOld:Landroid/widget/TextView;

    const/4 v2, -0x2

    const/16 v3, 0x53

    invoke-static {v5, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1531
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->captionTextViewNew:Landroid/widget/TextView;

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;

    .line 1532
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->captionTextViewNew:Landroid/widget/TextView;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1533
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->captionTextViewNew:Landroid/widget/TextView;

    const/high16 v1, 0x7f000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1534
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->captionTextViewNew:Landroid/widget/TextView;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1535
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->captionTextViewNew:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 1536
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->captionTextViewNew:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1537
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->captionTextViewNew:Landroid/widget/TextView;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1538
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->captionTextViewNew:Landroid/widget/TextView;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v11, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1539
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->captionTextViewNew:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1540
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->captionTextViewNew:Landroid/widget/TextView;

    const/4 v2, -0x2

    const/16 v3, 0x53

    invoke-static {v5, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1542
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    new-instance v1, Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    invoke-direct {v1, p0, p1, v2}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Landroid/view/View;)V

    aput-object v1, v0, v6

    .line 1543
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    aget-object v0, v0, v6

    invoke-virtual {v0, v6, v6}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->setBackgroundState(IZ)V

    .line 1544
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    new-instance v1, Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    invoke-direct {v1, p0, p1, v2}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Landroid/view/View;)V

    aput-object v1, v0, v11

    .line 1545
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    aget-object v0, v0, v11

    invoke-virtual {v0, v6, v6}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->setBackgroundState(IZ)V

    .line 1546
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    new-instance v1, Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    invoke-direct {v1, p0, p1, v2}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Landroid/view/View;)V

    aput-object v1, v0, v12

    .line 1547
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    aget-object v0, v0, v12

    invoke-virtual {v0, v6, v6}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->setBackgroundState(IZ)V

    .line 1549
    new-instance v0, Lorg/telegram/ui/Components/SeekBar;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/SeekBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayerSeekbar:Lorg/telegram/ui/Components/SeekBar;

    .line 1550
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayerSeekbar:Lorg/telegram/ui/Components/SeekBar;

    const v1, 0x66ffffff

    invoke-virtual {v0, v1, v5, v5}, Lorg/telegram/ui/Components/SeekBar;->setColors(III)V

    .line 1551
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayerSeekbar:Lorg/telegram/ui/Components/SeekBar;

    new-instance v1, Lorg/telegram/ui/ArticleViewer$11;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ArticleViewer$11;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SeekBar;->setDelegate(Lorg/telegram/ui/Components/SeekBar$SeekBarDelegate;)V

    .line 1560
    new-instance v0, Lorg/telegram/ui/ArticleViewer$12;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ArticleViewer$12;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    .line 1608
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 1609
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->bottomLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    const/16 v2, 0x33

    invoke-static {v5, v5, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1611
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayButton:Landroid/widget/ImageView;

    .line 1612
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1613
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayButton:Landroid/widget/ImageView;

    const/16 v2, 0x30

    const/16 v3, 0x30

    const/16 v4, 0x33

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1614
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayButton:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/ArticleViewer$13;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ArticleViewer$13;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1627
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayerTime:Landroid/widget/TextView;

    .line 1628
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayerTime:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1629
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayerTime:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1630
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayerTime:Landroid/widget/TextView;

    const/high16 v1, 0x41500000    # 13.0f

    invoke-virtual {v0, v11, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1631
    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    iget-object v10, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayerTime:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/high16 v1, -0x40800000    # -1.0f

    const/16 v2, 0x35

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x41000000    # 8.0f

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v9, v10, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1633
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->gestureDetector:Landroid/view/GestureDetector;

    .line 1634
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 1636
    new-instance v7, Lorg/telegram/ui/ArticleViewer$14;

    invoke-direct {v7, p0}, Lorg/telegram/ui/ArticleViewer$14;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    .line 1649
    .local v7, "imageReceiverDelegate":Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    .line 1650
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, v12}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeAlpha(B)V

    .line 1651
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, v11}, Lorg/telegram/messenger/ImageReceiver;->setInvalidateAll(Z)V

    .line 1652
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, v7}, Lorg/telegram/messenger/ImageReceiver;->setDelegate(Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;)V

    .line 1653
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    .line 1654
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, v12}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeAlpha(B)V

    .line 1655
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, v11}, Lorg/telegram/messenger/ImageReceiver;->setInvalidateAll(Z)V

    .line 1656
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, v7}, Lorg/telegram/messenger/ImageReceiver;->setDelegate(Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;)V

    .line 1657
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    .line 1658
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, v12}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeAlpha(B)V

    .line 1659
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, v11}, Lorg/telegram/messenger/ImageReceiver;->setInvalidateAll(Z)V

    .line 1660
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, v7}, Lorg/telegram/messenger/ImageReceiver;->setDelegate(Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;)V

    goto/16 :goto_0

    .line 1444
    .end local v7    # "imageReceiverDelegate":Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;
    .end local v8    # "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto/16 :goto_1
.end method

.method public showDialog(Landroid/app/Dialog;)V
    .locals 3
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 2290
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 2315
    :goto_0
    return-void

    .line 2294
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->visibleDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_1

    .line 2295
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->visibleDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 2296
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer;->visibleDialog:Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2302
    :cond_1
    :goto_1
    :try_start_1
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->visibleDialog:Landroid/app/Dialog;

    .line 2303
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->visibleDialog:Landroid/app/Dialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 2304
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->visibleDialog:Landroid/app/Dialog;

    new-instance v2, Lorg/telegram/ui/ArticleViewer$27;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ArticleViewer$27;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2311
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2312
    :catch_0
    move-exception v0

    .line 2313
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2298
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 2299
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected startCheckLongPress()V
    .locals 4

    .prologue
    .line 703
    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->checkingForLongPress:Z

    if-eqz v0, :cond_0

    .line 711
    :goto_0
    return-void

    .line 706
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->checkingForLongPress:Z

    .line 707
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pendingCheckForTap:Lorg/telegram/ui/ArticleViewer$CheckForTap;

    if-nez v0, :cond_1

    .line 708
    new-instance v0, Lorg/telegram/ui/ArticleViewer$CheckForTap;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/ArticleViewer$CheckForTap;-><init>(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$1;)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pendingCheckForTap:Lorg/telegram/ui/ArticleViewer$CheckForTap;

    .line 710
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->pendingCheckForTap:Lorg/telegram/ui/ArticleViewer$CheckForTap;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/ArticleViewer$WindowView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public uncollapse()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2051
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/telegram/ui/ArticleViewer;->isVisible:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->checkAnimation()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2107
    :cond_0
    :goto_0
    return-void

    .line 2059
    :cond_1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2060
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    const/16 v1, 0xc

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    const-string/jumbo v3, "translationX"

    new-array v4, v7, [F

    aput v8, v4, v6

    .line 2061
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    const-string/jumbo v3, "translationY"

    new-array v4, v7, [F

    aput v8, v4, v6

    .line 2062
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    const-string/jumbo v3, "alpha"

    new-array v4, v7, [F

    aput v9, v4, v6

    .line 2063
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v10

    const/4 v2, 0x3

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const-string/jumbo v4, "alpha"

    new-array v5, v7, [F

    aput v9, v5, v6

    .line 2064
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const-string/jumbo v4, "translationY"

    new-array v5, v7, [F

    aput v8, v5, v6

    .line 2065
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->headerView:Landroid/widget/FrameLayout;

    const-string/jumbo v4, "translationY"

    new-array v5, v7, [F

    aput v8, v5, v6

    .line 2066
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->backButton:Landroid/widget/ImageView;

    const-string/jumbo v4, "scaleX"

    new-array v5, v7, [F

    aput v9, v5, v6

    .line 2068
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->backButton:Landroid/widget/ImageView;

    const-string/jumbo v4, "scaleY"

    new-array v5, v7, [F

    aput v9, v5, v6

    .line 2069
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->backButton:Landroid/widget/ImageView;

    const-string/jumbo v4, "translationY"

    new-array v5, v7, [F

    aput v8, v5, v6

    .line 2070
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->shareContainer:Landroid/widget/FrameLayout;

    const-string/jumbo v4, "scaleX"

    new-array v5, v7, [F

    aput v9, v5, v6

    .line 2071
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xa

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->shareContainer:Landroid/widget/FrameLayout;

    const-string/jumbo v4, "translationY"

    new-array v5, v7, [F

    aput v8, v5, v6

    .line 2072
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xb

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->shareContainer:Landroid/widget/FrameLayout;

    const-string/jumbo v4, "scaleY"

    new-array v5, v7, [F

    aput v9, v5, v6

    .line 2073
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2060
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2075
    iput-boolean v6, p0, Lorg/telegram/ui/ArticleViewer;->collapsed:Z

    .line 2076
    iput v10, p0, Lorg/telegram/ui/ArticleViewer;->animationInProgress:I

    .line 2077
    new-instance v1, Lorg/telegram/ui/ArticleViewer$22;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ArticleViewer$22;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer;->animationEndRunnable:Ljava/lang/Runnable;

    .line 2090
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2091
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2092
    new-instance v1, Lorg/telegram/ui/ArticleViewer$23;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ArticleViewer$23;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/ArticleViewer;->transitionAnimationStartTime:J

    .line 2102
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_2

    .line 2103
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v10, v2}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2105
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-virtual {v1, v8, v7}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotation(FZ)V

    .line 2106
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0
.end method
