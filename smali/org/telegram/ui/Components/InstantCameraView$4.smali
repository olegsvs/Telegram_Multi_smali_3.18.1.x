.class Lorg/telegram/ui/Components/InstantCameraView$4;
.super Ljava/lang/Object;
.source "InstantCameraView.java"

# interfaces
.implements Lorg/telegram/messenger/camera/CameraView$CameraViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/InstantCameraView;->showCamera()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/InstantCameraView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/InstantCameraView;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/InstantCameraView;

    .prologue
    .line 179
    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$4;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraCreated(Landroid/hardware/Camera;)V
    .locals 0
    .param p1, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 183
    return-void
.end method

.method public onCameraInit()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    .line 187
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 188
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$4;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$300(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "android.permission.RECORD_AUDIO"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$4;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0, v5}, Lorg/telegram/ui/Components/InstantCameraView;->access$402(Lorg/telegram/ui/Components/InstantCameraView;Z)Z

    .line 190
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$4;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$300(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "android.permission.RECORD_AUDIO"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 228
    :goto_0
    return-void

    .line 195
    :cond_0
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Vibrator;

    .line 196
    .local v7, "v":Landroid/os/Vibrator;
    const-wide/16 v0, 0x32

    invoke-virtual {v7, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    .end local v7    # "v":Landroid/os/Vibrator;
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$4;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$300(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->lockOrientation(Landroid/app/Activity;)V

    .line 201
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$4;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->generateVideoPath()Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$502(Lorg/telegram/ui/Components/InstantCameraView;Ljava/io/File;)Ljava/io/File;

    .line 202
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$4;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$600(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/camera/CameraView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSession;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$4;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$500(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/io/File;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Components/InstantCameraView$4$1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/InstantCameraView$4$1;-><init>(Lorg/telegram/ui/Components/InstantCameraView$4;)V

    new-instance v4, Lorg/telegram/ui/Components/InstantCameraView$4$2;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/InstantCameraView$4$2;-><init>(Lorg/telegram/ui/Components/InstantCameraView$4;)V

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/camera/CameraController;->recordVideo(Lorg/telegram/messenger/camera/CameraSession;Ljava/io/File;Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;Ljava/lang/Runnable;Z)V

    goto :goto_0

    .line 197
    :catch_0
    move-exception v6

    .line 198
    .local v6, "e":Ljava/lang/Exception;
    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
