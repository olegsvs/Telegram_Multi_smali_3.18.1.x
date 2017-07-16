.class Lorg/telegram/ui/Components/PhotoPaintView$18;
.super Ljava/lang/Object;
.source "PhotoPaintView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PhotoPaintView;->registerRemovalUndo(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PhotoPaintView;

.field final synthetic val$entityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PhotoPaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/PhotoPaintView;

    .prologue
    .line 937
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoPaintView$18;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    iput-object p2, p0, Lorg/telegram/ui/Components/PhotoPaintView$18;->val$entityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 940
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView$18;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView$18;->val$entityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoPaintView;->access$2100(Lorg/telegram/ui/Components/PhotoPaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    .line 941
    return-void
.end method
