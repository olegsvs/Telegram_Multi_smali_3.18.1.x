.class public Lorg/telegram/ui/Components/InstantCameraView;
.super Landroid/widget/FrameLayout;
.source "InstantCameraView.java"


# instance fields
.field private actionBar:Landroid/view/View;

.field private animatorSet:Landroid/animation/AnimatorSet;

.field private baseFragment:Lorg/telegram/ui/ChatActivity;

.field private cameraContainer:Landroid/widget/FrameLayout;

.field private cameraFile:Ljava/io/File;

.field private cameraView:Lorg/telegram/messenger/camera/CameraView;

.field private deviceHasGoodCamera:Z

.field private position:[I

.field private recordStartTime:J

.field private recording:Z

.field private requestingPermissions:Z

.field private timerRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ChatActivity;Landroid/view/View;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parentFragment"    # Lorg/telegram/ui/ChatActivity;
    .param p3, "actionBarOverlay"    # Landroid/view/View;

    .prologue
    const/16 v8, 0x15

    const/4 v7, 0x2

    const/4 v6, 0x1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-array v4, v7, [I

    iput-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView;->position:[I

    new-instance v4, Lorg/telegram/ui/Components/InstantCameraView$1;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/InstantCameraView$1;-><init>(Lorg/telegram/ui/Components/InstantCameraView;)V

    iput-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView;->timerRunnable:Ljava/lang/Runnable;

    iput-object p3, p0, Lorg/telegram/ui/Components/InstantCameraView;->actionBar:Landroid/view/View;

    const/high16 v4, 0x7f000000

    invoke-virtual {p0, v4}, Lorg/telegram/ui/Components/InstantCameraView;->setBackgroundColor(I)V

    iput-object p2, p0, Lorg/telegram/ui/Components/InstantCameraView;->baseFragment:Lorg/telegram/ui/ChatActivity;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v8, :cond_0

    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Landroid/widget/FrameLayout;

    :goto_0
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_1

    const/high16 v4, 0x42c80000    # 100.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    .local v3, "size":I
    :goto_1
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x11

    invoke-direct {v0, v3, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v4, 0x42400000    # 48.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v4, v0}, Lorg/telegram/ui/Components/InstantCameraView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v8, :cond_2

    iget-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Landroid/widget/FrameLayout;

    new-instance v5, Lorg/telegram/ui/Components/InstantCameraView$3;

    invoke-direct {v5, p0, v3}, Lorg/telegram/ui/Components/InstantCameraView$3;-><init>(Lorg/telegram/ui/Components/InstantCameraView;I)V


    iget-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Landroid/widget/FrameLayout;


    :goto_2
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lorg/telegram/ui/Components/InstantCameraView;->setVisibility(I)V

    return-void

    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "size":I
    :cond_0
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .local v2, "path":Landroid/graphics/Path;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v6}, Landroid/graphics/Paint;-><init>(I)V

    .local v1, "paint":Landroid/graphics/Paint;
    const/high16 v4, -0x1000000

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v4, Lorg/telegram/ui/Components/InstantCameraView$2;

    invoke-direct {v4, p0, p1, v2, v1}, Lorg/telegram/ui/Components/InstantCameraView$2;-><init>(Lorg/telegram/ui/Components/InstantCameraView;Landroid/content/Context;Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iput-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Landroid/widget/FrameLayout;

    goto :goto_0

    .end local v1    # "paint":Landroid/graphics/Paint;
    .end local v2    # "path":Landroid/graphics/Path;
    :cond_1
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    div-int/lit8 v3, v4, 0x2

    .restart local v3    # "size":I
    goto :goto_1

    .restart local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Landroid/widget/FrameLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v7, v5}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_2
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/InstantCameraView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/InstantCameraView;

    .prologue
    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->recording:Z

    return v0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/InstantCameraView;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/InstantCameraView;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->recording:Z

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/InstantCameraView;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/InstantCameraView;

    .prologue
    iget-wide v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->recordStartTime:J

    return-wide v0
.end method

.method static synthetic access$102(Lorg/telegram/ui/Components/InstantCameraView;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/InstantCameraView;
    .param p1, "x1"    # J

    .prologue
    iput-wide p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->recordStartTime:J

    return-wide p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/InstantCameraView;

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->timerRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/ChatActivity;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/InstantCameraView;

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->baseFragment:Lorg/telegram/ui/ChatActivity;

    return-object v0
.end method

.method static synthetic access$402(Lorg/telegram/ui/Components/InstantCameraView;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/InstantCameraView;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->requestingPermissions:Z

    return p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/InstantCameraView;

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$502(Lorg/telegram/ui/Components/InstantCameraView;Ljava/io/File;)Ljava/io/File;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/InstantCameraView;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraFile:Ljava/io/File;

    return-object p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/camera/CameraView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/InstantCameraView;

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    return-object v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/InstantCameraView;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/InstantCameraView;

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->animatorSet:Landroid/animation/AnimatorSet;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraFile:Ljava/io/File;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->recording:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->timerRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->recordStopped:I

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSession;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/camera/CameraController;->stopVideoRecording(Lorg/telegram/messenger/camera/CameraSession;Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraFile:Ljava/io/File;

    invoke-virtual {p0, v3}, Lorg/telegram/ui/Components/InstantCameraView;->startAnimation(Z)V

    goto :goto_0
.end method

.method public checkCamera(Z)V
    .locals 5
    .param p1, "request"    # Z

    .prologue
    const/4 v4, 0x0

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->baseFragment:Lorg/telegram/ui/ChatActivity;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->deviceHasGoodCamera:Z

    .local v0, "old":Z
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->baseFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "android.permission.CAMERA"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_4

    if-eqz p1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->baseFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "android.permission.CAMERA"

    aput-object v3, v2, v4

    const/16 v3, 0x11

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    :cond_2
    iput-boolean v4, p0, Lorg/telegram/ui/Components/InstantCameraView;->deviceHasGoodCamera:Z

    :cond_3
    :goto_1
    iget-boolean v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->deviceHasGoodCamera:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->baseFragment:Lorg/telegram/ui/ChatActivity;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/InstantCameraView;->showCamera()V

    goto :goto_0

    :cond_4
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/CameraController;->initCamera()V

    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/CameraController;->isCameraInitied()Z

    move-result v1

    iput-boolean v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->deviceHasGoodCamera:Z

    goto :goto_1

    :cond_5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_3

    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/CameraController;->initCamera()V

    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/CameraController;->isCameraInitied()Z

    move-result v1

    iput-boolean v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->deviceHasGoodCamera:Z

    goto :goto_1
.end method

.method public getCameraContainer()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getCameraRect()Lorg/telegram/ui/Components/Rect;
    .locals 5

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->position:[I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    new-instance v0, Lorg/telegram/ui/Components/Rect;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->position:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->position:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Components/Rect;-><init>(FFFF)V

    return-object v0
.end method

.method public hideCamera(Z)V
    .locals 3
    .param p1, "async"    # Z

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v0, p1, v2}, Lorg/telegram/messenger/camera/CameraView;->destroy(ZLjava/lang/Runnable;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    goto :goto_0
.end method

.method public send()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraFile:Ljava/io/File;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->recording:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->timerRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->recordStopped:I

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSession;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/camera/CameraController;->stopVideoRecording(Lorg/telegram/messenger/camera/CameraSession;Z)V

    invoke-virtual {p0, v3}, Lorg/telegram/ui/Components/InstantCameraView;->startAnimation(Z)V

    goto :goto_0
.end method

.method public setAlpha(F)V
    .locals 2
    .param p1, "alpha"    # F

    .prologue
    invoke-virtual {p0}, Lorg/telegram/ui/Components/InstantCameraView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    .local v0, "colorDrawable":Landroid/graphics/drawable/ColorDrawable;
    const/high16 v1, 0x42fe0000    # 127.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    const v2, 0x3dcccccd    # 0.1f

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->actionBar:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/InstantCameraView;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->actionBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setScaleX(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setScaleY(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setPivotX(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setPivotY(F)V

    :cond_0
    return-void
.end method

.method public showCamera()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v2, 0x1

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/InstantCameraView;->setVisibility(I)V

    new-instance v0, Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/InstantCameraView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/camera/CameraView;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/camera/CameraView;->setMirror(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    const/4 v2, -0x1

    const/high16 v3, -0x40800000    # -1.0f

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    new-instance v1, Lorg/telegram/ui/Components/InstantCameraView$4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/InstantCameraView$4;-><init>(Lorg/telegram/ui/Components/InstantCameraView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/camera/CameraView;->setDelegate(Lorg/telegram/messenger/camera/CameraView$CameraViewDelegate;)V

    goto :goto_0
.end method

.method public startAnimation(Z)V
    .locals 12
    .param p1, "open"    # Z

    .prologue
    const v3, 0x3dcccccd    # 0.1f

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->animatorSet:Landroid/animation/AnimatorSet;

    iget-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView;->animatorSet:Landroid/animation/AnimatorSet;

    const/4 v0, 0x6

    new-array v5, v0, [Landroid/animation/Animator;

    iget-object v6, p0, Lorg/telegram/ui/Components/InstantCameraView;->actionBar:Landroid/view/View;

    const-string/jumbo v7, "alpha"

    new-array v8, v11, [F

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    aput v0, v8, v10

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v5, v10

    const-string/jumbo v6, "alpha"

    new-array v7, v11, [F

    if-eqz p1, :cond_3

    move v0, v1

    :goto_1
    aput v0, v7, v10

    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v5, v11

    const/4 v6, 0x2

    iget-object v7, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Landroid/widget/FrameLayout;

    const-string/jumbo v8, "alpha"

    new-array v9, v11, [F

    if-eqz p1, :cond_4

    move v0, v1

    :goto_2
    aput v0, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v6, 0x3

    iget-object v7, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Landroid/widget/FrameLayout;

    const-string/jumbo v8, "scaleX"

    new-array v9, v11, [F

    if-eqz p1, :cond_5

    move v0, v1

    :goto_3
    aput v0, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x4

    iget-object v6, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Landroid/widget/FrameLayout;

    const-string/jumbo v7, "scaleY"

    new-array v8, v11, [F

    if-eqz p1, :cond_6

    :goto_4
    aput v1, v8, v10

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v1, 0x5

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Landroid/widget/FrameLayout;

    const-string/jumbo v6, "translationY"

    const/4 v0, 0x2

    new-array v7, v0, [F

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lorg/telegram/ui/Components/InstantCameraView;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    :goto_5
    aput v0, v7, v10

    if-eqz p1, :cond_8

    :goto_6
    aput v2, v7, v11

    invoke-static {v3, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    if-nez p1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/Components/InstantCameraView$5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/InstantCameraView$5;-><init>(Lorg/telegram/ui/Components/InstantCameraView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->animatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0xb4

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_2
    move v0, v2

    goto/16 :goto_0

    :cond_3
    move v0, v2

    goto/16 :goto_1

    :cond_4
    move v0, v2

    goto :goto_2

    :cond_5
    move v0, v3

    goto :goto_3

    :cond_6
    move v1, v3

    goto :goto_4

    :cond_7
    move v0, v2

    goto :goto_5

    :cond_8
    invoke-virtual {p0}, Lorg/telegram/ui/Components/InstantCameraView;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v2, v0

    goto :goto_6
.end method
