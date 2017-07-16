.class Lorg/telegram/ui/Components/ChatAttachAlert$11$4$1;
.super Lorg/telegram/ui/PhotoViewer$EmptyPhotoViewerProvider;
.source "ChatAttachAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlert$11$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/Components/ChatAttachAlert$11$4;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert$11$4;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/ui/Components/ChatAttachAlert$11$4;

    .prologue
    .line 895
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$11$4$1;->this$2:Lorg/telegram/ui/Components/ChatAttachAlert$11$4;

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer$EmptyPhotoViewerProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelButtonPressed()Z
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 899
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$11$4$1;->this$2:Lorg/telegram/ui/Components/ChatAttachAlert$11$4;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11$4;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$11;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1100(Lorg/telegram/ui/Components/ChatAttachAlert;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$11$4$1;->this$2:Lorg/telegram/ui/Components/ChatAttachAlert$11$4;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11$4;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$11;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$4900(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/messenger/camera/CameraView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$11$4$1;->this$2:Lorg/telegram/ui/Components/ChatAttachAlert$11$4;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11$4;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$11;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$5100(Lorg/telegram/ui/Components/ChatAttachAlert;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 900
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$11$4$1;->this$2:Lorg/telegram/ui/Components/ChatAttachAlert$11$4;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11$4;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$11;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$5100(Lorg/telegram/ui/Components/ChatAttachAlert;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 901
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$11$4$1$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$11$4$1$1;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert$11$4$1;)V

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 909
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$11$4$1;->this$2:Lorg/telegram/ui/Components/ChatAttachAlert$11$4;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert$11$4;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$11;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert$11;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$4900(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/messenger/camera/CameraView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSession;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/camera/CameraController;->startPreview(Lorg/telegram/messenger/camera/CameraSession;)V

    .line 910
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$11$4$1;->this$2:Lorg/telegram/ui/Components/ChatAttachAlert$11$4;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11$4;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$11;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$5102(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/io/File;)Ljava/io/File;

    .line 912
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public scaleToFill()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 929
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$11$4$1;->this$2:Lorg/telegram/ui/Components/ChatAttachAlert$11$4;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatAttachAlert$11$4;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$11;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatAttachAlert$11;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$400(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/ChatActivity;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "accelerometer_rotation"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 930
    .local v0, "locked":I
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$11$4$1;->this$2:Lorg/telegram/ui/Components/ChatAttachAlert$11$4;

    iget-boolean v3, v3, Lorg/telegram/ui/Components/ChatAttachAlert$11$4;->val$sameTakePictureOrientation:Z

    if-nez v3, :cond_0

    if-ne v0, v2, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1
.end method

.method public sendButtonPressed(ILorg/telegram/messenger/VideoEditedInfo;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "videoEditedInfo"    # Lorg/telegram/messenger/VideoEditedInfo;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 917
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$11$4$1;->this$2:Lorg/telegram/ui/Components/ChatAttachAlert$11$4;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11$4;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$11;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$5100(Lorg/telegram/ui/Components/ChatAttachAlert;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    .line 925
    :goto_0
    return-void

    .line 920
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$11$4$1;->this$2:Lorg/telegram/ui/Components/ChatAttachAlert$11$4;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11$4;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$11;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$5100(Lorg/telegram/ui/Components/ChatAttachAlert;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->addMediaToGallery(Ljava/lang/String;)V

    .line 921
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$11$4$1;->this$2:Lorg/telegram/ui/Components/ChatAttachAlert$11$4;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11$4;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$11;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$400(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$11$4$1;->this$2:Lorg/telegram/ui/Components/ChatAttachAlert$11$4;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11$4;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$11;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$5500(Lorg/telegram/ui/Components/ChatAttachAlert;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    invoke-virtual {v1, v0, v3}, Lorg/telegram/ui/ChatActivity;->sendMedia(Lorg/telegram/messenger/MediaController$PhotoEntry;Lorg/telegram/messenger/VideoEditedInfo;)V

    .line 922
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$11$4$1;->this$2:Lorg/telegram/ui/Components/ChatAttachAlert$11$4;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11$4;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$11;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->closeCamera(Z)V

    .line 923
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$11$4$1;->this$2:Lorg/telegram/ui/Components/ChatAttachAlert$11$4;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11$4;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$11;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    .line 924
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$11$4$1;->this$2:Lorg/telegram/ui/Components/ChatAttachAlert$11$4;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11$4;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$11;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0, v3}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$5102(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/io/File;)Ljava/io/File;

    goto :goto_0
.end method

.method public willHidePhotoViewer()V
    .locals 2

    .prologue
    .line 935
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$11$4$1;->this$2:Lorg/telegram/ui/Components/ChatAttachAlert$11$4;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11$4;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$11;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$4702(Lorg/telegram/ui/Components/ChatAttachAlert;Z)Z

    .line 936
    return-void
.end method
