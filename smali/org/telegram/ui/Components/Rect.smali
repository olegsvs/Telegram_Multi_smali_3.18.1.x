.class public Lorg/telegram/ui/Components/Rect;
.super Ljava/lang/Object;
.source "Rect.java"


# instance fields
.field public height:F

.field public width:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/telegram/ui/Components/Rect;->x:F

    iput p2, p0, Lorg/telegram/ui/Components/Rect;->y:F

    iput p3, p0, Lorg/telegram/ui/Components/Rect;->width:F

    iput p4, p0, Lorg/telegram/ui/Components/Rect;->height:F

    return-void
.end method
