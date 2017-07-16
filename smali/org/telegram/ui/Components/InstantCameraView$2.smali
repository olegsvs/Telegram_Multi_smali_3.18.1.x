.class Lorg/telegram/ui/Components/InstantCameraView$2;
.super Landroid/widget/FrameLayout;
.source "InstantCameraView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/InstantCameraView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ChatActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/InstantCameraView;

.field final synthetic val$paint:Landroid/graphics/Paint;

.field final synthetic val$path:Landroid/graphics/Path;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/InstantCameraView;Landroid/content/Context;Landroid/graphics/Path;Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/InstantCameraView;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 89
    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$2;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    iput-object p3, p0, Lorg/telegram/ui/Components/InstantCameraView$2;->val$path:Landroid/graphics/Path;

    iput-object p4, p0, Lorg/telegram/ui/Components/InstantCameraView$2;->val$paint:Landroid/graphics/Paint;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 101
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 102
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$2;->val$path:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$2;->val$paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 103
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 93
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 94
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$2;->val$path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 95
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$2;->val$path:Landroid/graphics/Path;

    div-int/lit8 v1, p1, 0x2

    int-to-float v1, v1

    div-int/lit8 v2, p2, 0x2

    int-to-float v2, v2

    div-int/lit8 v3, p1, 0x2

    int-to-float v3, v3

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 96
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$2;->val$path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->toggleInverseFillType()V

    .line 97
    return-void
.end method
