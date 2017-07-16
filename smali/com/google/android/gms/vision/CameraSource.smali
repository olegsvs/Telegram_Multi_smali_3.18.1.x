.class public Lcom/google/android/gms/vision/CameraSource;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/vision/CameraSource$zzb;,
        Lcom/google/android/gms/vision/CameraSource$zza;,
        Lcom/google/android/gms/vision/CameraSource$zze;,
        Lcom/google/android/gms/vision/CameraSource$zzc;,
        Lcom/google/android/gms/vision/CameraSource$zzd;,
        Lcom/google/android/gms/vision/CameraSource$PictureCallback;,
        Lcom/google/android/gms/vision/CameraSource$ShutterCallback;,
        Lcom/google/android/gms/vision/CameraSource$Builder;
    }
.end annotation


# static fields
.field public static final CAMERA_FACING_BACK:I = 0x0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation
.end field

.field public static final CAMERA_FACING_FRONT:I = 0x1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private zzMA:I

.field private final zzbNQ:Ljava/lang/Object;

.field private zzbNR:Landroid/hardware/Camera;

.field private zzbNS:I

.field private zzbNT:Lcom/google/android/gms/common/images/Size;

.field private zzbNU:F

.field private zzbNV:I

.field private zzbNW:I

.field private zzbNX:Z

.field private zzbNY:Landroid/graphics/SurfaceTexture;

.field private zzbNZ:Z

.field private zzbOa:Ljava/lang/Thread;

.field private zzbOb:Lcom/google/android/gms/vision/CameraSource$zzb;

.field private zzbOc:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<[B",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNQ:Ljava/lang/Object;

    iput v1, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNS:I

    const/high16 v0, 0x41f00000    # 30.0f

    iput v0, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNU:F

    const/16 v0, 0x400

    iput v0, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNV:I

    const/16 v0, 0x300

    iput v0, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNW:I

    iput-boolean v1, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNX:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/vision/CameraSource;->zzbOc:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/vision/CameraSource$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/vision/CameraSource;-><init>()V

    return-void
.end method

.method private zzTJ()Landroid/hardware/Camera;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNS:I

    invoke-static {v0}, Lcom/google/android/gms/vision/CameraSource;->zznP(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Could not find requested camera."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNV:I

    iget v3, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNW:I

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/vision/CameraSource;->zza(Landroid/hardware/Camera;II)Lcom/google/android/gms/vision/CameraSource$zze;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Could not find suitable preview size."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v2}, Lcom/google/android/gms/vision/CameraSource$zze;->zzTL()Lcom/google/android/gms/common/images/Size;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/vision/CameraSource$zze;->zzTK()Lcom/google/android/gms/common/images/Size;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNT:Lcom/google/android/gms/common/images/Size;

    iget v2, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNU:F

    invoke-static {v1, v2}, Lcom/google/android/gms/vision/CameraSource;->zza(Landroid/hardware/Camera;F)[I

    move-result-object v2

    if-nez v2, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Could not find suitable preview frames per second range."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/google/android/gms/common/images/Size;->getWidth()I

    move-result v5

    invoke-virtual {v3}, Lcom/google/android/gms/common/images/Size;->getHeight()I

    move-result v3

    invoke-virtual {v4, v5, v3}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    :cond_3
    iget-object v3, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNT:Lcom/google/android/gms/common/images/Size;

    invoke-virtual {v3}, Lcom/google/android/gms/common/images/Size;->getWidth()I

    move-result v3

    iget-object v5, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNT:Lcom/google/android/gms/common/images/Size;

    invoke-virtual {v5}, Lcom/google/android/gms/common/images/Size;->getHeight()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    const/4 v3, 0x0

    aget v3, v2, v3

    const/4 v5, 0x1

    aget v2, v2, v5

    invoke-virtual {v4, v3, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    const/16 v2, 0x11

    invoke-virtual {v4, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    invoke-direct {p0, v1, v4, v0}, Lcom/google/android/gms/vision/CameraSource;->zza(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;I)V

    iget-boolean v0, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNX:Z

    if-eqz v0, :cond_4

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    const-string/jumbo v2, "continuous-video"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "continuous-video"

    invoke-virtual {v4, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    :cond_4
    :goto_0
    invoke-virtual {v1, v4}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    new-instance v0, Lcom/google/android/gms/vision/CameraSource$zza;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/google/android/gms/vision/CameraSource$zza;-><init>(Lcom/google/android/gms/vision/CameraSource;Lcom/google/android/gms/vision/CameraSource$1;)V

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    iget-object v0, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNT:Lcom/google/android/gms/common/images/Size;

    invoke-direct {p0, v0}, Lcom/google/android/gms/vision/CameraSource;->zza(Lcom/google/android/gms/common/images/Size;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    iget-object v0, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNT:Lcom/google/android/gms/common/images/Size;

    invoke-direct {p0, v0}, Lcom/google/android/gms/vision/CameraSource;->zza(Lcom/google/android/gms/common/images/Size;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    iget-object v0, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNT:Lcom/google/android/gms/common/images/Size;

    invoke-direct {p0, v0}, Lcom/google/android/gms/vision/CameraSource;->zza(Lcom/google/android/gms/common/images/Size;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    iget-object v0, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNT:Lcom/google/android/gms/common/images/Size;

    invoke-direct {p0, v0}, Lcom/google/android/gms/vision/CameraSource;->zza(Lcom/google/android/gms/common/images/Size;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    return-object v1

    :cond_5
    const-string/jumbo v0, "CameraSource"

    const-string/jumbo v2, "Camera auto focus is not supported on this device."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic zza(Lcom/google/android/gms/vision/CameraSource;F)F
    .locals 0

    iput p1, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNU:F

    return p1
.end method

.method static synthetic zza(Lcom/google/android/gms/vision/CameraSource;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNV:I

    return p1
.end method

.method static synthetic zza(Lcom/google/android/gms/vision/CameraSource;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/vision/CameraSource;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/vision/CameraSource;Lcom/google/android/gms/vision/CameraSource$zzb;)Lcom/google/android/gms/vision/CameraSource$zzb;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/vision/CameraSource;->zzbOb:Lcom/google/android/gms/vision/CameraSource$zzb;

    return-object p1
.end method

.method static zza(Landroid/hardware/Camera;II)Lcom/google/android/gms/vision/CameraSource$zze;
    .locals 7

    invoke-static {p0}, Lcom/google/android/gms/vision/CameraSource;->zza(Landroid/hardware/Camera;)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    const v2, 0x7fffffff

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/vision/CameraSource$zze;

    invoke-virtual {v0}, Lcom/google/android/gms/vision/CameraSource$zze;->zzTK()Lcom/google/android/gms/common/images/Size;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/images/Size;->getWidth()I

    move-result v5

    sub-int/2addr v5, p1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-virtual {v1}, Lcom/google/android/gms/common/images/Size;->getHeight()I

    move-result v1

    sub-int/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v1, v5

    if-ge v1, v2, :cond_1

    move v6, v1

    move-object v1, v0

    move v0, v6

    :goto_1
    move v2, v0

    move-object v3, v1

    goto :goto_0

    :cond_0
    return-object v3

    :cond_1
    move v0, v2

    move-object v1, v3

    goto :goto_1
.end method

.method static synthetic zza(Lcom/google/android/gms/vision/CameraSource;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNQ:Ljava/lang/Object;

    return-object v0
.end method

.method static zza(Landroid/hardware/Camera;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/vision/CameraSource$zze;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-float v1, v1

    iget v6, v0, Landroid/hardware/Camera$Size;->height:I

    int-to-float v6, v6

    div-float v6, v1, v6

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    iget v8, v1, Landroid/hardware/Camera$Size;->width:I

    int-to-float v8, v8

    iget v9, v1, Landroid/hardware/Camera$Size;->height:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    sub-float v8, v6, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    const v9, 0x3c23d70a    # 0.01f

    cmpg-float v8, v8, v9

    if-gez v8, :cond_1

    new-instance v6, Lcom/google/android/gms/vision/CameraSource$zze;

    invoke-direct {v6, v0, v1}, Lcom/google/android/gms/vision/CameraSource$zze;-><init>(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "CameraSource"

    const-string/jumbo v1, "No preview sizes have a corresponding same-aspect-ratio picture size"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    new-instance v2, Lcom/google/android/gms/vision/CameraSource$zze;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/vision/CameraSource$zze;-><init>(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)V

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object v4
.end method

.method private zza(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;I)V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/vision/CameraSource;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string/jumbo v2, "CameraSource"

    const/16 v3, 0x1f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Bad rotation value: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :goto_0
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    invoke-static {p3, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    iget v2, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v0, v1

    rem-int/lit16 v1, v0, 0x168

    rsub-int v0, v1, 0x168

    rem-int/lit16 v0, v0, 0x168

    :goto_1
    div-int/lit8 v2, v1, 0x5a

    iput v2, p0, Lcom/google/android/gms/vision/CameraSource;->zzMA:I

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    invoke-virtual {p2, v1}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    return-void

    :pswitch_0
    move v0, v1

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

    :cond_0
    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int v0, v1, v0

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    move v1, v0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic zza(Lcom/google/android/gms/vision/CameraSource;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNX:Z

    return p1
.end method

.method private zza(Lcom/google/android/gms/common/images/Size;)[B
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    const/16 v0, 0x11

    invoke-static {v0}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/common/images/Size;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/common/images/Size;->getWidth()I

    move-result v2

    mul-int/2addr v1, v2

    mul-int/2addr v0, v1

    int-to-long v0, v0

    long-to-double v0, v0

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    if-eq v2, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Failed to create valid buffer for camera source."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/vision/CameraSource;->zzbOc:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method static zza(Landroid/hardware/Camera;F)[I
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr v0, p1

    float-to-int v4, v0

    const/4 v3, 0x0

    const v2, 0x7fffffff

    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v1, 0x0

    aget v1, v0, v1

    sub-int v1, v4, v1

    const/4 v6, 0x1

    aget v6, v0, v6

    sub-int v6, v4, v6

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    add-int/2addr v1, v6

    if-ge v1, v2, :cond_1

    move v7, v1

    move-object v1, v0

    move v0, v7

    :goto_1
    move v2, v0

    move-object v3, v1

    goto :goto_0

    :cond_0
    return-object v3

    :cond_1
    move v0, v2

    move-object v1, v3

    goto :goto_1
.end method

.method static synthetic zzb(Lcom/google/android/gms/vision/CameraSource;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNW:I

    return p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/vision/CameraSource;)Landroid/hardware/Camera;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNR:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/vision/CameraSource;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNS:I

    return p1
.end method

.method static synthetic zzc(Lcom/google/android/gms/vision/CameraSource;)Lcom/google/android/gms/vision/CameraSource$zzb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/vision/CameraSource;->zzbOb:Lcom/google/android/gms/vision/CameraSource$zzb;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/vision/CameraSource;)Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/vision/CameraSource;->zzbOa:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/vision/CameraSource;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/vision/CameraSource;->zzbOc:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/vision/CameraSource;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/vision/CameraSource;->zzMA:I

    return v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/vision/CameraSource;)Lcom/google/android/gms/common/images/Size;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNT:Lcom/google/android/gms/common/images/Size;

    return-object v0
.end method

.method private static zznP(I)I
    .locals 3

    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-static {v0, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    iget v2, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v2, p0, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method public getCameraFacing()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNS:I

    return v0
.end method

.method public getPreviewSize()Lcom/google/android/gms/common/images/Size;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNT:Lcom/google/android/gms/common/images/Size;

    return-object v0
.end method

.method public release()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNQ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/vision/CameraSource;->stop()V

    iget-object v0, p0, Lcom/google/android/gms/vision/CameraSource;->zzbOb:Lcom/google/android/gms/vision/CameraSource$zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/vision/CameraSource$zzb;->release()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public start()Lcom/google/android/gms/vision/CameraSource;
    .locals 3
    .annotation build Landroid/support/annotation/RequiresPermission;
        value = "android.permission.CAMERA"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNQ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNR:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-object p0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/vision/CameraSource;->zzTJ()Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNR:Landroid/hardware/Camera;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    new-instance v0, Landroid/graphics/SurfaceTexture;

    const/16 v2, 0x64

    invoke-direct {v0, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNY:Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNR:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNY:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNZ:Z

    iget-object v0, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNR:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    new-instance v0, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/google/android/gms/vision/CameraSource;->zzbOb:Lcom/google/android/gms/vision/CameraSource$zzb;

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/google/android/gms/vision/CameraSource;->zzbOa:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/google/android/gms/vision/CameraSource;->zzbOb:Lcom/google/android/gms/vision/CameraSource$zzb;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/gms/vision/CameraSource$zzb;->setActive(Z)V

    iget-object v0, p0, Lcom/google/android/gms/vision/CameraSource;->zzbOa:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public start(Landroid/view/SurfaceHolder;)Lcom/google/android/gms/vision/CameraSource;
    .locals 3
    .annotation build Landroid/support/annotation/RequiresPermission;
        value = "android.permission.CAMERA"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNQ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNR:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-object p0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/vision/CameraSource;->zzTJ()Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNR:Landroid/hardware/Camera;

    iget-object v0, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNR:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    iget-object v0, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNR:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    new-instance v0, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/google/android/gms/vision/CameraSource;->zzbOb:Lcom/google/android/gms/vision/CameraSource$zzb;

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/google/android/gms/vision/CameraSource;->zzbOa:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/google/android/gms/vision/CameraSource;->zzbOb:Lcom/google/android/gms/vision/CameraSource$zzb;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/gms/vision/CameraSource$zzb;->setActive(Z)V

    iget-object v0, p0, Lcom/google/android/gms/vision/CameraSource;->zzbOa:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNZ:Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stop()V
    .locals 5

    iget-object v1, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNQ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/vision/CameraSource;->zzbOb:Lcom/google/android/gms/vision/CameraSource$zzb;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/vision/CameraSource$zzb;->setActive(Z)V

    iget-object v0, p0, Lcom/google/android/gms/vision/CameraSource;->zzbOa:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/vision/CameraSource;->zzbOa:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/google/android/gms/vision/CameraSource;->zzbOa:Ljava/lang/Thread;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNR:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNR:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    iget-object v0, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNR:Landroid/hardware/Camera;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNZ:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNR:Landroid/hardware/Camera;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNR:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNR:Landroid/hardware/Camera;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/vision/CameraSource;->zzbOc:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v0, "CameraSource"

    const-string/jumbo v2, "Frame processing thread interrupted on release."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_2
    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNR:Landroid/hardware/Camera;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_6
    const-string/jumbo v2, "CameraSource"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x20

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Failed to clear camera preview: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1
.end method

.method public takePicture(Lcom/google/android/gms/vision/CameraSource$ShutterCallback;Lcom/google/android/gms/vision/CameraSource$PictureCallback;)V
    .locals 6

    iget-object v1, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNQ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNR:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/vision/CameraSource$zzd;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/google/android/gms/vision/CameraSource$zzd;-><init>(Lcom/google/android/gms/vision/CameraSource;Lcom/google/android/gms/vision/CameraSource$1;)V

    invoke-static {v0, p1}, Lcom/google/android/gms/vision/CameraSource$zzd;->zza(Lcom/google/android/gms/vision/CameraSource$zzd;Lcom/google/android/gms/vision/CameraSource$ShutterCallback;)Lcom/google/android/gms/vision/CameraSource$ShutterCallback;

    new-instance v2, Lcom/google/android/gms/vision/CameraSource$zzc;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/android/gms/vision/CameraSource$zzc;-><init>(Lcom/google/android/gms/vision/CameraSource;Lcom/google/android/gms/vision/CameraSource$1;)V

    invoke-static {v2, p2}, Lcom/google/android/gms/vision/CameraSource$zzc;->zza(Lcom/google/android/gms/vision/CameraSource$zzc;Lcom/google/android/gms/vision/CameraSource$PictureCallback;)Lcom/google/android/gms/vision/CameraSource$PictureCallback;

    iget-object v3, p0, Lcom/google/android/gms/vision/CameraSource;->zzbNR:Landroid/hardware/Camera;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v4, v5, v2}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
