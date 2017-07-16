.class Lorg/telegram/ui/Components/Paint/RenderView$2;
.super Ljava/lang/Object;
.source "RenderView.java"

# interfaces
.implements Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Paint/RenderView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Paint/Painting;Landroid/graphics/Bitmap;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Paint/RenderView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Paint/RenderView;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/Paint/RenderView;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/RenderView$2;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public contentChanged(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "rect"    # Landroid/graphics/RectF;

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$2;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->access$000(Lorg/telegram/ui/Components/Paint/RenderView;)Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$2;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->access$000(Lorg/telegram/ui/Components/Paint/RenderView;)Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->scheduleRedraw()V

    :cond_0
    return-void
.end method

.method public requestDispatchQueue()Lorg/telegram/messenger/DispatchQueue;
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$2;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->access$500(Lorg/telegram/ui/Components/Paint/RenderView;)Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    return-object v0
.end method

.method public requestUndoStore()Lorg/telegram/ui/Components/Paint/UndoStore;
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$2;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->access$400(Lorg/telegram/ui/Components/Paint/RenderView;)Lorg/telegram/ui/Components/Paint/UndoStore;

    move-result-object v0

    return-object v0
.end method

.method public strokeCommited()V
    .locals 0

    .prologue
    return-void
.end method
