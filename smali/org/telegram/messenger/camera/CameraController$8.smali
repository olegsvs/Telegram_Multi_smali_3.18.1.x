.class Lorg/telegram/messenger/camera/CameraController$8;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/camera/CameraController;->onInfo(Landroid/media/MediaRecorder;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/camera/CameraController;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/camera/CameraController;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/camera/CameraController;

    .prologue
    .line 520
    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraController$8;->this$0:Lorg/telegram/messenger/camera/CameraController;

    iput-object p2, p0, Lorg/telegram/messenger/camera/CameraController$8;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 523
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController$8;->this$0:Lorg/telegram/messenger/camera/CameraController;

    invoke-static {v0}, Lorg/telegram/messenger/camera/CameraController;->access$400(Lorg/telegram/messenger/camera/CameraController;)Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController$8;->this$0:Lorg/telegram/messenger/camera/CameraController;

    invoke-static {v0}, Lorg/telegram/messenger/camera/CameraController;->access$400(Lorg/telegram/messenger/camera/CameraController;)Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraController$8;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;->onFinishVideoRecording(Landroid/graphics/Bitmap;)V

    .line 525
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController$8;->this$0:Lorg/telegram/messenger/camera/CameraController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/messenger/camera/CameraController;->access$402(Lorg/telegram/messenger/camera/CameraController;Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;)Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;

    .line 527
    :cond_0
    return-void
.end method
