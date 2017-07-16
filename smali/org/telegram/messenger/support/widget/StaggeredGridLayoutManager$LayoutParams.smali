.class public Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;
.super Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;
.source "StaggeredGridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field public static final INVALID_SPAN_ID:I = -0x1


# instance fields
.field mFullSpan:Z

.field mSpan:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 2364
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 2365
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 2360
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2361
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 2372
    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2373
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .prologue
    .line 2368
    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2369
    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;)V
    .locals 0
    .param p1, "source"    # Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    .prologue
    .line 2376
    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;)V

    .line 2377
    return-void
.end method


# virtual methods
.method public final getSpanIndex()I
    .locals 1

    .prologue
    .line 2408
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    if-nez v0, :cond_0

    .line 2409
    const/4 v0, -0x1

    .line 2411
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    iget v0, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    goto :goto_0
.end method

.method public isFullSpan()Z
    .locals 1

    .prologue
    .line 2398
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    return v0
.end method

.method public setFullSpan(Z)V
    .locals 0
    .param p1, "fullSpan"    # Z

    .prologue
    .line 2388
    iput-boolean p1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    .line 2389
    return-void
.end method
