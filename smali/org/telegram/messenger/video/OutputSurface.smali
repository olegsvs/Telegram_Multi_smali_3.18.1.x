.class public Lorg/telegram/messenger/video/OutputSurface;
.super Ljava/lang/Object;
.source "OutputSurface.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# static fields
.field private static final EGL_CONTEXT_CLIENT_VERSION:I = 0x3098

.field private static final EGL_OPENGL_ES2_BIT:I = 0x4


# instance fields
.field private mEGL:Ljavax/microedition/khronos/egl/EGL10;

.field private mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private mFrameAvailable:Z

.field private final mFrameSyncObject:Ljava/lang/Object;

.field private mHeight:I

.field private mPixelBuf:Ljava/nio/ByteBuffer;

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTextureRender:Lorg/telegram/messenger/video/TextureRenderer;

.field private mWidth:I

.field private rotateRender:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 40
    iput-object v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 41
    iput-object v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/video/OutputSurface;->rotateRender:I

    .line 67
    invoke-direct {p0}, Lorg/telegram/messenger/video/OutputSurface;->setup()V

    .line 68
    return-void
.end method

.method public constructor <init>(III)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "rotate"    # I

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 40
    iput-object v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 41
    iput-object v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/video/OutputSurface;->rotateRender:I

    .line 53
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 56
    :cond_1
    iput p1, p0, Lorg/telegram/messenger/video/OutputSurface;->mWidth:I

    .line 57
    iput p2, p0, Lorg/telegram/messenger/video/OutputSurface;->mHeight:I

    .line 58
    iput p3, p0, Lorg/telegram/messenger/video/OutputSurface;->rotateRender:I

    .line 59
    iget v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mWidth:I

    iget v1, p0, Lorg/telegram/messenger/video/OutputSurface;->mHeight:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mPixelBuf:Ljava/nio/ByteBuffer;

    .line 60
    iget-object v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mPixelBuf:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 61
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/video/OutputSurface;->eglSetup(II)V

    .line 62
    invoke-virtual {p0}, Lorg/telegram/messenger/video/OutputSurface;->makeCurrent()V

    .line 63
    invoke-direct {p0}, Lorg/telegram/messenger/video/OutputSurface;->setup()V

    .line 64
    return-void
.end method

.method private checkEglError(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 203
    iget-object v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    const/16 v1, 0x3000

    if-eq v0, v1, :cond_0

    .line 204
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "EGL error encountered (see log)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_0
    return-void
.end method

.method private eglSetup(II)V
    .locals 12
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 79
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    .line 80
    iget-object v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 82
    iget-object v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v0, v1, :cond_0

    .line 83
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "unable to get EGL10 display"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 87
    iput-object v4, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 88
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "unable to initialize EGL10"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_1
    const/16 v0, 0xd

    new-array v2, v0, [I

    fill-array-data v2, :array_0

    .line 100
    .local v2, "attribList":[I
    new-array v3, v10, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 101
    .local v3, "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    new-array v5, v10, [I

    .line 102
    .local v5, "numConfigs":[I
    iget-object v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    array-length v4, v3

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 103
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "unable to find RGB888+pbuffer EGL config"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_2
    new-array v6, v11, [I

    fill-array-data v6, :array_1

    .line 109
    .local v6, "attrib_list":[I
    iget-object v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    aget-object v4, v3, v9

    sget-object v8, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v4, v8, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 110
    const-string/jumbo v0, "eglCreateContext"

    invoke-direct {p0, v0}, Lorg/telegram/messenger/video/OutputSurface;->checkEglError(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-nez v0, :cond_3

    .line 112
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "null context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_3
    const/4 v0, 0x5

    new-array v7, v0, [I

    const/16 v0, 0x3057

    aput v0, v7, v9

    aput p1, v7, v10

    const/4 v0, 0x2

    const/16 v1, 0x3056

    aput v1, v7, v0

    aput p2, v7, v11

    const/4 v0, 0x4

    const/16 v1, 0x3038

    aput v1, v7, v0

    .line 119
    .local v7, "surfaceAttribs":[I
    iget-object v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    aget-object v4, v3, v9

    invoke-interface {v0, v1, v4, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 120
    const-string/jumbo v0, "eglCreatePbufferSurface"

    invoke-direct {p0, v0}, Lorg/telegram/messenger/video/OutputSurface;->checkEglError(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-nez v0, :cond_4

    .line 122
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "surface was null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_4
    return-void

    .line 91
    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3033
        0x1
        0x3040
        0x4
        0x3038
    .end array-data

    .line 105
    :array_1
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method private setup()V
    .locals 2

    .prologue
    .line 71
    new-instance v0, Lorg/telegram/messenger/video/TextureRenderer;

    iget v1, p0, Lorg/telegram/messenger/video/OutputSurface;->rotateRender:I

    invoke-direct {v0, v1}, Lorg/telegram/messenger/video/TextureRenderer;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mTextureRender:Lorg/telegram/messenger/video/TextureRenderer;

    .line 72
    iget-object v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mTextureRender:Lorg/telegram/messenger/video/TextureRenderer;

    invoke-virtual {v0}, Lorg/telegram/messenger/video/TextureRenderer;->surfaceCreated()V

    .line 73
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lorg/telegram/messenger/video/OutputSurface;->mTextureRender:Lorg/telegram/messenger/video/TextureRenderer;

    invoke-virtual {v1}, Lorg/telegram/messenger/video/TextureRenderer;->getTextureId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 74
    iget-object v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 75
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lorg/telegram/messenger/video/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mSurface:Landroid/view/Surface;

    .line 76
    return-void
.end method


# virtual methods
.method public awaitNewImage()V
    .locals 6

    .prologue
    .line 163
    const/16 v0, 0x9c4

    .line 164
    .local v0, "TIMEOUT_MS":I
    iget-object v3, p0, Lorg/telegram/messenger/video/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    monitor-enter v3

    .line 165
    :cond_0
    :try_start_0
    iget-boolean v2, p0, Lorg/telegram/messenger/video/OutputSurface;->mFrameAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 167
    :try_start_1
    iget-object v2, p0, Lorg/telegram/messenger/video/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    const-wide/16 v4, 0x9c4

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 168
    iget-boolean v2, p0, Lorg/telegram/messenger/video/OutputSurface;->mFrameAvailable:Z

    if-nez v2, :cond_0

    .line 169
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Surface frame wait timed out"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    :catch_0
    move-exception v1

    .line 172
    .local v1, "ie":Ljava/lang/InterruptedException;
    :try_start_2
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 176
    .end local v1    # "ie":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 175
    :cond_1
    const/4 v2, 0x0

    :try_start_3
    iput-boolean v2, p0, Lorg/telegram/messenger/video/OutputSurface;->mFrameAvailable:Z

    .line 176
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 177
    iget-object v2, p0, Lorg/telegram/messenger/video/OutputSurface;->mTextureRender:Lorg/telegram/messenger/video/TextureRenderer;

    const-string/jumbo v3, "before updateTexImage"

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/video/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 178
    iget-object v2, p0, Lorg/telegram/messenger/video/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v2}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 179
    return-void
.end method

.method public changeFragmentShader(Ljava/lang/String;)V
    .locals 1
    .param p1, "fragmentShader"    # Ljava/lang/String;

    .prologue
    .line 159
    iget-object v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mTextureRender:Lorg/telegram/messenger/video/TextureRenderer;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/video/TextureRenderer;->changeFragmentShader(Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public drawImage(Z)V
    .locals 2
    .param p1, "invert"    # Z

    .prologue
    .line 182
    iget-object v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mTextureRender:Lorg/telegram/messenger/video/TextureRenderer;

    iget-object v1, p0, Lorg/telegram/messenger/video/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1, p1}, Lorg/telegram/messenger/video/TextureRenderer;->drawFrame(Landroid/graphics/SurfaceTexture;Z)V

    .line 183
    return-void
.end method

.method public getFrame()Ljava/nio/ByteBuffer;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 197
    iget-object v1, p0, Lorg/telegram/messenger/video/OutputSurface;->mPixelBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 198
    iget v2, p0, Lorg/telegram/messenger/video/OutputSurface;->mWidth:I

    iget v3, p0, Lorg/telegram/messenger/video/OutputSurface;->mHeight:I

    const/16 v4, 0x1908

    const/16 v5, 0x1401

    iget-object v6, p0, Lorg/telegram/messenger/video/OutputSurface;->mPixelBuf:Ljava/nio/ByteBuffer;

    move v1, v0

    invoke-static/range {v0 .. v6}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 199
    iget-object v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mPixelBuf:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public makeCurrent()V
    .locals 5

    .prologue
    .line 145
    iget-object v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "not configured for makeCurrent"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_0
    const-string/jumbo v0, "before makeCurrent"

    invoke-direct {p0, v0}, Lorg/telegram/messenger/video/OutputSurface;->checkEglError(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 150
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "eglMakeCurrent failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_1
    return-void
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .param p1, "st"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 187
    iget-object v1, p0, Lorg/telegram/messenger/video/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 188
    :try_start_0
    iget-boolean v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mFrameAvailable:Z

    if-eqz v0, :cond_0

    .line 189
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "mFrameAvailable already set, frame could be dropped"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 191
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mFrameAvailable:Z

    .line 192
    iget-object v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 193
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    return-void
.end method

.method public release()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 127
    iget-object v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 131
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 132
    iget-object v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 134
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 135
    iput-object v5, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 136
    iput-object v5, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 137
    iput-object v5, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 138
    iput-object v5, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    .line 139
    iput-object v5, p0, Lorg/telegram/messenger/video/OutputSurface;->mTextureRender:Lorg/telegram/messenger/video/TextureRenderer;

    .line 140
    iput-object v5, p0, Lorg/telegram/messenger/video/OutputSurface;->mSurface:Landroid/view/Surface;

    .line 141
    iput-object v5, p0, Lorg/telegram/messenger/video/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 142
    return-void
.end method
