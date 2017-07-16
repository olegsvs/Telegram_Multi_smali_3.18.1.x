.class Lorg/telegram/ui/ChangePhoneActivity$ProgressView;
.super Landroid/view/View;
.source "ChangePhoneActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChangePhoneActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProgressView"
.end annotation


# instance fields
.field private paint:Landroid/graphics/Paint;

.field private paint2:Landroid/graphics/Paint;

.field private progress:F

.field final synthetic this$0:Lorg/telegram/ui/ChangePhoneActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ChangePhoneActivity;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 104
    iput-object p1, p0, Lorg/telegram/ui/ChangePhoneActivity$ProgressView;->this$0:Lorg/telegram/ui/ChangePhoneActivity;

    .line 105
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 100
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$ProgressView;->paint:Landroid/graphics/Paint;

    .line 101
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$ProgressView;->paint2:Landroid/graphics/Paint;

    .line 106
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$ProgressView;->paint:Landroid/graphics/Paint;

    const-string/jumbo v1, "login_progressInner"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 107
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$ProgressView;->paint2:Landroid/graphics/Paint;

    const-string/jumbo v1, "login_progressOuter"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 117
    invoke-virtual {p0}, Lorg/telegram/ui/ChangePhoneActivity$ProgressView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lorg/telegram/ui/ChangePhoneActivity$ProgressView;->progress:F

    mul-float/2addr v0, v2

    float-to-int v8, v0

    .line 118
    .local v8, "start":I
    int-to-float v3, v8

    invoke-virtual {p0}, Lorg/telegram/ui/ChangePhoneActivity$ProgressView;->getMeasuredHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/ChangePhoneActivity$ProgressView;->paint2:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 119
    int-to-float v3, v8

    invoke-virtual {p0}, Lorg/telegram/ui/ChangePhoneActivity$ProgressView;->getMeasuredWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p0}, Lorg/telegram/ui/ChangePhoneActivity$ProgressView;->getMeasuredHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lorg/telegram/ui/ChangePhoneActivity$ProgressView;->paint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 120
    return-void
.end method

.method public setProgress(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 111
    iput p1, p0, Lorg/telegram/ui/ChangePhoneActivity$ProgressView;->progress:F

    .line 112
    invoke-virtual {p0}, Lorg/telegram/ui/ChangePhoneActivity$ProgressView;->invalidate()V

    .line 113
    return-void
.end method
