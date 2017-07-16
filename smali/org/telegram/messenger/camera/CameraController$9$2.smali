.class Lorg/telegram/messenger/camera/CameraController$9$2;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/camera/CameraController$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/camera/CameraController$9;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/camera/CameraController$9;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/camera/CameraController$9;

    .prologue
    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraController$9$2;->this$1:Lorg/telegram/messenger/camera/CameraController$9;

    iput-object p2, p0, Lorg/telegram/messenger/camera/CameraController$9$2;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController$9$2;->this$1:Lorg/telegram/messenger/camera/CameraController$9;

    iget-object v0, v0, Lorg/telegram/messenger/camera/CameraController$9;->this$0:Lorg/telegram/messenger/camera/CameraController;

    invoke-static {v0}, Lorg/telegram/messenger/camera/CameraController;->access$400(Lorg/telegram/messenger/camera/CameraController;)Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController$9$2;->this$1:Lorg/telegram/messenger/camera/CameraController$9;

    iget-object v0, v0, Lorg/telegram/messenger/camera/CameraController$9;->this$0:Lorg/telegram/messenger/camera/CameraController;

    invoke-static {v0}, Lorg/telegram/messenger/camera/CameraController;->access$400(Lorg/telegram/messenger/camera/CameraController;)Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraController$9$2;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;->onFinishVideoRecording(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController$9$2;->this$1:Lorg/telegram/messenger/camera/CameraController$9;

    iget-object v0, v0, Lorg/telegram/messenger/camera/CameraController$9;->this$0:Lorg/telegram/messenger/camera/CameraController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/messenger/camera/CameraController;->access$402(Lorg/telegram/messenger/camera/CameraController;Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;)Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;

    :cond_0
    return-void
.end method
