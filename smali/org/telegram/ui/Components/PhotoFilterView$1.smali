.class Lorg/telegram/ui/Components/PhotoFilterView$1;
.super Ljava/lang/Object;
.source "PhotoFilterView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PhotoFilterView;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PhotoFilterView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PhotoFilterView;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 1676
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView$1;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 5
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v4, 0x1

    .line 1679
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$1;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5000(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 1680
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$1;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    new-instance v1, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$1;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    iget-object v3, p0, Lorg/telegram/ui/Components/PhotoFilterView$1;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5100(Lorg/telegram/ui/Components/PhotoFilterView;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v1, v2, p1, v3}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;-><init>(Lorg/telegram/ui/Components/PhotoFilterView;Landroid/graphics/SurfaceTexture;Landroid/graphics/Bitmap;)V

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5002(Lorg/telegram/ui/Components/PhotoFilterView;Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;)Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    .line 1681
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$1;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5000(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->setSurfaceTextureSize(II)V

    .line 1682
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$1;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5000(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->requestRender(ZZ)V

    .line 1684
    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 1704
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$1;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5000(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1705
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$1;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5000(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->shutdown()V

    .line 1706
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$1;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5002(Lorg/telegram/ui/Components/PhotoFilterView;Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;)Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    .line 1708
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 3
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 1688
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$1;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5000(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1689
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$1;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5000(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->setSurfaceTextureSize(II)V

    .line 1690
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$1;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5000(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->requestRender(ZZ)V

    .line 1691
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$1;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5000(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/PhotoFilterView$1$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhotoFilterView$1$1;-><init>(Lorg/telegram/ui/Components/PhotoFilterView$1;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->postRunnable(Ljava/lang/Runnable;)V

    .line 1700
    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 1714
    return-void
.end method
