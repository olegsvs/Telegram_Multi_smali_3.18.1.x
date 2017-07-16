.class Lorg/telegram/ui/Components/PhotoFilterView$10;
.super Ljava/lang/Object;
.source "PhotoFilterView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 2033
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView$10;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 2036
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$10;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$8702(Lorg/telegram/ui/Components/PhotoFilterView;I)I

    .line 2037
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$10;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$8800(Lorg/telegram/ui/Components/PhotoFilterView;Z)V

    .line 2038
    return-void
.end method
