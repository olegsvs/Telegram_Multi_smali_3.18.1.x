.class public Lorg/telegram/messenger/camera/CameraSession;
.super Ljava/lang/Object;
.source "CameraSession.java"


# static fields
.field public static final ORIENTATION_HYSTERESIS:I = 0x5


# instance fields
.field private autoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

.field protected cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

.field private currentFlashMode:Ljava/lang/String;

.field private currentOrientation:I

.field private initied:Z

.field private isVideo:Z

.field private jpegOrientation:I

.field private lastDisplayOrientation:I

.field private lastOrientation:I

.field private meteringAreaSupported:Z

.field private orientationEventListener:Landroid/view/OrientationEventListener;

.field private final pictureFormat:I

.field private final pictureSize:Lorg/telegram/messenger/camera/Size;

.field private final previewSize:Lorg/telegram/messenger/camera/Size;

.field private sameTakePictureOrientation:Z


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/camera/CameraInfo;Lorg/telegram/messenger/camera/Size;Lorg/telegram/messenger/camera/Size;I)V
    .locals 4
    .param p1, "info"    # Lorg/telegram/messenger/camera/CameraInfo;
    .param p2, "preview"    # Lorg/telegram/messenger/camera/Size;
    .param p3, "picture"    # Lorg/telegram/messenger/camera/Size;
    .param p4, "format"    # I

    .prologue
    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v1, "off"

    iput-object v1, p0, Lorg/telegram/messenger/camera/CameraSession;->currentFlashMode:Ljava/lang/String;

    iput v2, p0, Lorg/telegram/messenger/camera/CameraSession;->lastOrientation:I

    iput v2, p0, Lorg/telegram/messenger/camera/CameraSession;->lastDisplayOrientation:I

    new-instance v1, Lorg/telegram/messenger/camera/CameraSession$1;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/camera/CameraSession$1;-><init>(Lorg/telegram/messenger/camera/CameraSession;)V

    iput-object v1, p0, Lorg/telegram/messenger/camera/CameraSession;->autoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    iput-object p2, p0, Lorg/telegram/messenger/camera/CameraSession;->previewSize:Lorg/telegram/messenger/camera/Size;

    iput-object p3, p0, Lorg/telegram/messenger/camera/CameraSession;->pictureSize:Lorg/telegram/messenger/camera/Size;

    iput p4, p0, Lorg/telegram/messenger/camera/CameraSession;->pictureFormat:I

    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "camera"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iget v1, v1, Lorg/telegram/messenger/camera/CameraInfo;->frontCamera:I

    if-eqz v1, :cond_0

    const-string/jumbo v1, "flashMode_front"

    :goto_0
    const-string/jumbo v2, "off"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/camera/CameraSession;->currentFlashMode:Ljava/lang/String;

    new-instance v1, Lorg/telegram/messenger/camera/CameraSession$2;

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lorg/telegram/messenger/camera/CameraSession$2;-><init>(Lorg/telegram/messenger/camera/CameraSession;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/messenger/camera/CameraSession;->orientationEventListener:Landroid/view/OrientationEventListener;

    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraSession;->orientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraSession;->orientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->enable()V

    :goto_1
    return-void

    :cond_0
    const-string/jumbo v1, "flashMode"

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraSession;->orientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->disable()V

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/messenger/camera/CameraSession;->orientationEventListener:Landroid/view/OrientationEventListener;

    goto :goto_1
.end method

.method static synthetic access$000(Lorg/telegram/messenger/camera/CameraSession;)Landroid/view/OrientationEventListener;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/camera/CameraSession;

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraSession;->orientationEventListener:Landroid/view/OrientationEventListener;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/messenger/camera/CameraSession;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/camera/CameraSession;

    .prologue
    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraSession;->initied:Z

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/messenger/camera/CameraSession;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/camera/CameraSession;

    .prologue
    iget v0, p0, Lorg/telegram/messenger/camera/CameraSession;->jpegOrientation:I

    return v0
.end method

.method static synthetic access$202(Lorg/telegram/messenger/camera/CameraSession;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/camera/CameraSession;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lorg/telegram/messenger/camera/CameraSession;->jpegOrientation:I

    return p1
.end method

.method static synthetic access$300(Lorg/telegram/messenger/camera/CameraSession;II)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/camera/CameraSession;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/camera/CameraSession;->roundOrientation(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lorg/telegram/messenger/camera/CameraSession;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/camera/CameraSession;

    .prologue
    iget v0, p0, Lorg/telegram/messenger/camera/CameraSession;->lastOrientation:I

    return v0
.end method

.method static synthetic access$402(Lorg/telegram/messenger/camera/CameraSession;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/camera/CameraSession;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lorg/telegram/messenger/camera/CameraSession;->lastOrientation:I

    return p1
.end method

.method static synthetic access$500(Lorg/telegram/messenger/camera/CameraSession;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/camera/CameraSession;

    .prologue
    iget v0, p0, Lorg/telegram/messenger/camera/CameraSession;->lastDisplayOrientation:I

    return v0
.end method

.method static synthetic access$502(Lorg/telegram/messenger/camera/CameraSession;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/camera/CameraSession;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lorg/telegram/messenger/camera/CameraSession;->lastDisplayOrientation:I

    return p1
.end method

.method static synthetic access$600(Lorg/telegram/messenger/camera/CameraSession;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/camera/CameraSession;

    .prologue
    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraSession;->isVideo:Z

    return v0
.end method

.method private getDisplayOrientation(Landroid/hardware/Camera$CameraInfo;Z)I
    .locals 6
    .param p1, "info"    # Landroid/hardware/Camera$CameraInfo;
    .param p2, "isStillCapture"    # Z

    .prologue
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .local v2, "mgr":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v3

    .local v3, "rotation":I
    const/4 v0, 0x0

    .local v0, "degrees":I
    packed-switch v3, :pswitch_data_0

    :goto_0
    iget v4, p1, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    iget v4, p1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v4, v0

    rem-int/lit16 v1, v4, 0x168

    .local v1, "displayOrientation":I
    rsub-int v4, v1, 0x168

    rem-int/lit16 v1, v4, 0x168

    if-nez p2, :cond_0

    const/16 v4, 0x5a

    if-ne v1, v4, :cond_0

    const/16 v1, 0x10e

    :cond_0
    if-nez p2, :cond_1

    const-string/jumbo v4, "Huawei"

    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "angler"

    sget-object v5, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x10e

    if-ne v1, v4, :cond_1

    const/16 v1, 0x5a

    :cond_1
    :goto_1
    return v1

    .end local v1    # "displayOrientation":I
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x5a

    goto :goto_0

    :pswitch_2
    const/16 v0, 0xb4

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    :cond_2
    iget v4, p1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v4, v0

    add-int/lit16 v4, v4, 0x168

    rem-int/lit16 v1, v4, 0x168

    .restart local v1    # "displayOrientation":I
    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getHigh()I
    .locals 2

    .prologue
    const-string/jumbo v0, "LGE"

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "g3_tmo_us"

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private roundOrientation(II)I
    .locals 3
    .param p1, "orientation"    # I
    .param p2, "orientationHistory"    # I

    .prologue
    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    const/4 v0, 0x1

    .local v0, "changeOrientation":Z
    :goto_0
    if-eqz v0, :cond_0

    add-int/lit8 v2, p1, 0x2d

    div-int/lit8 v2, v2, 0x5a

    mul-int/lit8 v2, v2, 0x5a

    rem-int/lit16 p2, v2, 0x168

    .end local p2    # "orientationHistory":I
    :cond_0
    return p2

    .end local v0    # "changeOrientation":Z
    .restart local p2    # "orientationHistory":I
    :cond_1
    sub-int v2, p1, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .local v1, "dist":I
    rsub-int v2, v1, 0x168

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/16 v2, 0x32

    if-lt v1, v2, :cond_2

    const/4 v0, 0x1

    .restart local v0    # "changeOrientation":Z
    :goto_1
    goto :goto_0

    .end local v0    # "changeOrientation":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public checkFlashMode(Ljava/lang/String;)V
    .locals 5
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v2

    iget-object v0, v2, Lorg/telegram/messenger/camera/CameraController;->availableFlashModes:Ljava/util/ArrayList;

    .local v0, "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraSession;->currentFlashMode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraSession;->currentFlashMode:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/telegram/messenger/camera/CameraSession;->configurePhotoCamera()V

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "camera"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iget v2, v2, Lorg/telegram/messenger/camera/CameraInfo;->frontCamera:I

    if-eqz v2, :cond_1

    const-string/jumbo v2, "flashMode_front"

    :goto_1
    invoke-interface {v3, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "flashMode"

    goto :goto_1
.end method

.method protected configurePhotoCamera()V
    .locals 14

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    :try_start_0
    iget-object v12, p0, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iget-object v0, v12, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    .local v0, "camera":Landroid/hardware/Camera;
    if-eqz v0, :cond_2

    new-instance v6, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v6}, Landroid/hardware/Camera$CameraInfo;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .local v6, "info":Landroid/hardware/Camera$CameraInfo;
    const/4 v8, 0x0

    .local v8, "params":Landroid/hardware/Camera$Parameters;
    :try_start_1
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    :goto_0
    :try_start_2
    iget-object v12, p0, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    invoke-virtual {v12}, Lorg/telegram/messenger/camera/CameraInfo;->getCameraId()I

    move-result v12

    invoke-static {v12, v6}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    const/4 v12, 0x1

    invoke-direct {p0, v6, v12}, Lorg/telegram/messenger/camera/CameraSession;->getDisplayOrientation(Landroid/hardware/Camera$CameraInfo;Z)I

    move-result v4

    .local v4, "displayOrientation":I
    const-string/jumbo v12, "samsung"

    sget-object v13, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    const-string/jumbo v12, "sf2wifixx"

    sget-object v13, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v1, 0x0

    .local v1, "cameraDisplayOrientation":I
    :goto_1
    iput v1, p0, Lorg/telegram/messenger/camera/CameraSession;->currentOrientation:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    if-eqz v8, :cond_2

    iget-object v12, p0, Lorg/telegram/messenger/camera/CameraSession;->previewSize:Lorg/telegram/messenger/camera/Size;

    invoke-virtual {v12}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v12

    iget-object v13, p0, Lorg/telegram/messenger/camera/CameraSession;->previewSize:Lorg/telegram/messenger/camera/Size;

    invoke-virtual {v13}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v13

    invoke-virtual {v8, v12, v13}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    iget-object v12, p0, Lorg/telegram/messenger/camera/CameraSession;->pictureSize:Lorg/telegram/messenger/camera/Size;

    invoke-virtual {v12}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v12

    iget-object v13, p0, Lorg/telegram/messenger/camera/CameraSession;->pictureSize:Lorg/telegram/messenger/camera/Size;

    invoke-virtual {v13}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v13

    invoke-virtual {v8, v12, v13}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    iget v12, p0, Lorg/telegram/messenger/camera/CameraSession;->pictureFormat:I

    invoke-virtual {v8, v12}, Landroid/hardware/Camera$Parameters;->setPictureFormat(I)V

    const-string/jumbo v3, "continuous-picture"

    .local v3, "desiredMode":Ljava/lang/String;
    invoke-virtual {v8}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-virtual {v8, v3}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    :cond_0
    const/4 v7, 0x0

    .local v7, "outputOrientation":I
    iget v12, p0, Lorg/telegram/messenger/camera/CameraSession;->jpegOrientation:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_1

    iget v12, v6, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v12, v10, :cond_6

    iget v12, v6, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iget v13, p0, Lorg/telegram/messenger/camera/CameraSession;->jpegOrientation:I

    sub-int/2addr v12, v13

    add-int/lit16 v12, v12, 0x168

    rem-int/lit16 v7, v12, 0x168
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_2
    :try_start_3
    invoke-virtual {v8, v7}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    iget v12, v6, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v12, v10, :cond_8

    rsub-int v12, v4, 0x168

    rem-int/lit16 v12, v12, 0x168

    if-ne v12, v7, :cond_7

    :goto_3
    iput-boolean v10, p0, Lorg/telegram/messenger/camera/CameraSession;->sameTakePictureOrientation:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    iget-object v10, p0, Lorg/telegram/messenger/camera/CameraSession;->currentFlashMode:Ljava/lang/String;

    invoke-virtual {v8, v10}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    :try_start_5
    invoke-virtual {v0, v8}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    :goto_5
    :try_start_6
    invoke-virtual {v8}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v10

    if-lez v10, :cond_2

    const/4 v10, 0x1

    iput-boolean v10, p0, Lorg/telegram/messenger/camera/CameraSession;->meteringAreaSupported:Z

    .end local v0    # "camera":Landroid/hardware/Camera;
    .end local v1    # "cameraDisplayOrientation":I
    .end local v3    # "desiredMode":Ljava/lang/String;
    .end local v4    # "displayOrientation":I
    .end local v6    # "info":Landroid/hardware/Camera$CameraInfo;
    .end local v7    # "outputOrientation":I
    .end local v8    # "params":Landroid/hardware/Camera$Parameters;
    :cond_2
    :goto_6
    return-void

    .restart local v0    # "camera":Landroid/hardware/Camera;
    .restart local v6    # "info":Landroid/hardware/Camera$CameraInfo;
    .restart local v8    # "params":Landroid/hardware/Camera$Parameters;
    :catch_0
    move-exception v5

    .local v5, "e":Ljava/lang/Exception;
    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .end local v0    # "camera":Landroid/hardware/Camera;
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v6    # "info":Landroid/hardware/Camera$CameraInfo;
    .end local v8    # "params":Landroid/hardware/Camera$Parameters;
    :catch_1
    move-exception v5

    .local v5, "e":Ljava/lang/Throwable;
    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_6

    .end local v5    # "e":Ljava/lang/Throwable;
    .restart local v0    # "camera":Landroid/hardware/Camera;
    .restart local v4    # "displayOrientation":I
    .restart local v6    # "info":Landroid/hardware/Camera$CameraInfo;
    .restart local v8    # "params":Landroid/hardware/Camera$Parameters;
    :cond_3
    const/4 v2, 0x0

    .local v2, "degrees":I
    move v9, v4

    .local v9, "temp":I
    packed-switch v9, :pswitch_data_0

    :goto_7
    :try_start_7
    iget v12, v6, Landroid/hardware/Camera$CameraInfo;->orientation:I

    rem-int/lit8 v12, v12, 0x5a

    if-eqz v12, :cond_4

    const/4 v12, 0x0

    iput v12, v6, Landroid/hardware/Camera$CameraInfo;->orientation:I

    :cond_4
    iget v12, v6, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v12, v10, :cond_5

    iget v12, v6, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v12, v2

    rem-int/lit16 v9, v12, 0x168

    rsub-int v12, v9, 0x168

    rem-int/lit16 v9, v12, 0x168

    :goto_8
    move v1, v9

    .restart local v1    # "cameraDisplayOrientation":I
    goto/16 :goto_1

    .end local v1    # "cameraDisplayOrientation":I
    :pswitch_0
    const/4 v2, 0x0

    goto :goto_7

    :pswitch_1
    const/16 v2, 0x5a

    goto :goto_7

    :pswitch_2
    const/16 v2, 0xb4

    goto :goto_7

    :pswitch_3
    const/16 v2, 0x10e

    goto :goto_7

    :cond_5
    iget v12, v6, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v12, v2

    add-int/lit16 v12, v12, 0x168

    rem-int/lit16 v9, v12, 0x168

    goto :goto_8

    .end local v2    # "degrees":I
    .end local v9    # "temp":I
    .restart local v1    # "cameraDisplayOrientation":I
    .restart local v3    # "desiredMode":Ljava/lang/String;
    .restart local v7    # "outputOrientation":I
    :cond_6
    iget v12, v6, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iget v13, p0, Lorg/telegram/messenger/camera/CameraSession;->jpegOrientation:I

    add-int/2addr v12, v13

    rem-int/lit16 v7, v12, 0x168
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    :cond_7
    move v10, v11

    goto :goto_3

    :cond_8
    if-ne v4, v7, :cond_9

    :goto_9
    :try_start_8
    iput-boolean v10, p0, Lorg/telegram/messenger/camera/CameraSession;->sameTakePictureOrientation:Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_4

    :catch_2
    move-exception v10

    goto :goto_4

    :cond_9
    move v10, v11

    goto :goto_9

    :catch_3
    move-exception v10

    goto :goto_5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected configureRecorder(ILandroid/media/MediaRecorder;)V
    .locals 8
    .param p1, "quality"    # I
    .param p2, "recorder"    # Landroid/media/MediaRecorder;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v4, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v4}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .local v4, "info":Landroid/hardware/Camera$CameraInfo;
    iget-object v5, p0, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iget v5, v5, Lorg/telegram/messenger/camera/CameraInfo;->cameraId:I

    invoke-static {v5, v4}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    invoke-direct {p0, v4, v6}, Lorg/telegram/messenger/camera/CameraSession;->getDisplayOrientation(Landroid/hardware/Camera$CameraInfo;Z)I

    move-result v2

    .local v2, "displayOrientation":I
    invoke-virtual {p2, v2}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    invoke-direct {p0}, Lorg/telegram/messenger/camera/CameraSession;->getHigh()I

    move-result v3

    .local v3, "highProfile":I
    iget-object v5, p0, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iget v5, v5, Lorg/telegram/messenger/camera/CameraInfo;->cameraId:I

    invoke-static {v5, v3}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v0

    .local v0, "canGoHigh":Z
    iget-object v5, p0, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iget v5, v5, Lorg/telegram/messenger/camera/CameraInfo;->cameraId:I

    invoke-static {v5, v6}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    .local v1, "canGoLow":Z
    if-eqz v0, :cond_1

    if-eq p1, v7, :cond_0

    if-nez v1, :cond_1

    :cond_0
    iget-object v5, p0, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iget v5, v5, Lorg/telegram/messenger/camera/CameraInfo;->cameraId:I

    invoke-static {v5, v3}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    :goto_0
    iput-boolean v7, p0, Lorg/telegram/messenger/camera/CameraSession;->isVideo:Z

    return-void

    :cond_1
    if-eqz v1, :cond_2

    iget-object v5, p0, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iget v5, v5, Lorg/telegram/messenger/camera/CameraInfo;->cameraId:I

    invoke-static {v5, v6}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    goto :goto_0

    :cond_2
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "cannot find valid CamcorderProfile"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public destroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/camera/CameraSession;->initied:Z

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraSession;->orientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraSession;->orientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/camera/CameraSession;->orientationEventListener:Landroid/view/OrientationEventListener;

    :cond_0
    return-void
.end method

.method protected focusToRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "focusRect"    # Landroid/graphics/Rect;
    .param p2, "meteringRect"    # Landroid/graphics/Rect;

    .prologue
    :try_start_0
    iget-object v4, p0, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iget-object v0, v4, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    .local v0, "camera":Landroid/hardware/Camera;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v3, 0x0

    .local v3, "parameters":Landroid/hardware/Camera$Parameters;
    :try_start_1
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_1

    :try_start_2
    const-string/jumbo v4, "auto"

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, "meteringAreas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/Camera$Area;>;"
    new-instance v4, Landroid/hardware/Camera$Area;

    const/16 v5, 0x3e8

    invoke-direct {v4, p1, v5}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v2}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    iget-boolean v4, p0, Lorg/telegram/messenger/camera/CameraSession;->meteringAreaSupported:Z

    if-eqz v4, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "meteringAreas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/Camera$Area;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .restart local v2    # "meteringAreas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/Camera$Area;>;"
    new-instance v4, Landroid/hardware/Camera$Area;

    const/16 v5, 0x3e8

    invoke-direct {v4, p2, v5}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v2}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    :try_start_3
    invoke-virtual {v0, v3}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object v4, p0, Lorg/telegram/messenger/camera/CameraSession;->autoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    invoke-virtual {v0, v4}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .end local v0    # "camera":Landroid/hardware/Camera;
    .end local v2    # "meteringAreas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/Camera$Area;>;"
    .end local v3    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_1
    :goto_1
    return-void

    .restart local v0    # "camera":Landroid/hardware/Camera;
    .restart local v3    # "parameters":Landroid/hardware/Camera$Parameters;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .end local v0    # "camera":Landroid/hardware/Camera;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "parameters":Landroid/hardware/Camera$Parameters;
    :catch_1
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "camera":Landroid/hardware/Camera;
    .restart local v2    # "meteringAreas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/Camera$Area;>;"
    .restart local v3    # "parameters":Landroid/hardware/Camera$Parameters;
    :catch_2
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_5
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1
.end method

.method public getCurrentFlashMode()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraSession;->currentFlashMode:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentOrientation()I
    .locals 1

    .prologue
    iget v0, p0, Lorg/telegram/messenger/camera/CameraSession;->currentOrientation:I

    return v0
.end method

.method public getDisplayOrientation()I
    .locals 3

    .prologue
    :try_start_0
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .local v1, "info":Landroid/hardware/Camera$CameraInfo;
    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    invoke-virtual {v2}, Lorg/telegram/messenger/camera/CameraInfo;->getCameraId()I

    move-result v2

    invoke-static {v2, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lorg/telegram/messenger/camera/CameraSession;->getDisplayOrientation(Landroid/hardware/Camera$CameraInfo;Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .end local v1    # "info":Landroid/hardware/Camera$CameraInfo;
    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getNextFlashMode()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v3

    iget-object v2, v3, Lorg/telegram/messenger/camera/CameraController;->availableFlashModes:Ljava/util/ArrayList;

    .local v2, "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "mode":Ljava/lang/String;
    iget-object v3, p0, Lorg/telegram/messenger/camera/CameraSession;->currentFlashMode:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_0

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .end local v1    # "mode":Ljava/lang/String;
    :goto_1
    return-object v3

    .restart local v1    # "mode":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "mode":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lorg/telegram/messenger/camera/CameraSession;->currentFlashMode:Ljava/lang/String;

    goto :goto_1
.end method

.method protected isInitied()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraSession;->initied:Z

    return v0
.end method

.method public isSameTakePictureOrientation()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraSession;->sameTakePictureOrientation:Z

    return v0
.end method

.method public setCurrentFlashMode(Ljava/lang/String;)V
    .locals 4
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraSession;->currentFlashMode:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/telegram/messenger/camera/CameraSession;->configurePhotoCamera()V

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "camera"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iget v1, v1, Lorg/telegram/messenger/camera/CameraInfo;->frontCamera:I

    if-eqz v1, :cond_0

    const-string/jumbo v1, "flashMode_front"

    :goto_0
    invoke-interface {v2, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_0
    const-string/jumbo v1, "flashMode"

    goto :goto_0
.end method

.method protected setInitied()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/camera/CameraSession;->initied:Z

    return-void
.end method

.method protected stopVideoRecording()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/camera/CameraSession;->isVideo:Z

    invoke-virtual {p0}, Lorg/telegram/messenger/camera/CameraSession;->configurePhotoCamera()V

    return-void
.end method
