.class Lorg/telegram/ui/Components/PhotoFilterView$9;
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
    .line 2019
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView$9;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2022
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$9;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$8702(Lorg/telegram/ui/Components/PhotoFilterView;I)I

    .line 2023
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$9;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$8800(Lorg/telegram/ui/Components/PhotoFilterView;Z)V

    .line 2024
    return-void
.end method
