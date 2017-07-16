.class Lorg/telegram/messenger/MediaController$GalleryObserverInternal$1;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MediaController$GalleryObserverInternal;->scheduleReloadRunnable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MediaController$GalleryObserverInternal;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MediaController$GalleryObserverInternal;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/MediaController$GalleryObserverInternal;

    .prologue
    .line 478
    iput-object p1, p0, Lorg/telegram/messenger/MediaController$GalleryObserverInternal$1;->this$1:Lorg/telegram/messenger/MediaController$GalleryObserverInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 481
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$GalleryObserverInternal$1;->this$1:Lorg/telegram/messenger/MediaController$GalleryObserverInternal;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController$GalleryObserverInternal;->access$1500(Lorg/telegram/messenger/MediaController$GalleryObserverInternal;)V

    .line 487
    :goto_0
    return-void

    .line 485
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$GalleryObserverInternal$1;->this$1:Lorg/telegram/messenger/MediaController$GalleryObserverInternal;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$GalleryObserverInternal;->this$0:Lorg/telegram/messenger/MediaController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/messenger/MediaController;->access$1402(Lorg/telegram/messenger/MediaController;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 486
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->loadGalleryPhotosAlbums(I)V

    goto :goto_0
.end method
