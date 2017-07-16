.class Lorg/telegram/ui/AudioPlayerActivity$3;
.super Landroid/widget/FrameLayout;
.source "AudioPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/AudioPlayerActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/AudioPlayerActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/AudioPlayerActivity;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/AudioPlayerActivity;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 253
    iput-object p1, p0, Lorg/telegram/ui/AudioPlayerActivity$3;->this$0:Lorg/telegram/ui/AudioPlayerActivity;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 256
    sub-int v4, p4, p2

    const/high16 v5, 0x43870000    # 270.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v1, v4, 0x4

    .line 257
    .local v1, "dist":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    const/4 v4, 0x5

    if-ge v0, v4, :cond_0

    .line 258
    mul-int/lit8 v4, v0, 0x30

    add-int/lit8 v4, v4, 0xf

    int-to-float v4, v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    mul-int v5, v1, v0

    add-int v2, v4, v5

    .line 259
    .local v2, "l":I
    const/high16 v4, 0x41100000    # 9.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    .line 260
    .local v3, "t":I
    iget-object v4, p0, Lorg/telegram/ui/AudioPlayerActivity$3;->this$0:Lorg/telegram/ui/AudioPlayerActivity;

    invoke-static {v4}, Lorg/telegram/ui/AudioPlayerActivity;->access$100(Lorg/telegram/ui/AudioPlayerActivity;)[Landroid/widget/ImageView;

    move-result-object v4

    aget-object v4, v4, v0

    iget-object v5, p0, Lorg/telegram/ui/AudioPlayerActivity$3;->this$0:Lorg/telegram/ui/AudioPlayerActivity;

    invoke-static {v5}, Lorg/telegram/ui/AudioPlayerActivity;->access$100(Lorg/telegram/ui/AudioPlayerActivity;)[Landroid/widget/ImageView;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lorg/telegram/ui/AudioPlayerActivity$3;->this$0:Lorg/telegram/ui/AudioPlayerActivity;

    invoke-static {v6}, Lorg/telegram/ui/AudioPlayerActivity;->access$100(Lorg/telegram/ui/AudioPlayerActivity;)[Landroid/widget/ImageView;

    move-result-object v6

    aget-object v6, v6, v0

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v4, v2, v3, v5, v6}, Landroid/widget/ImageView;->layout(IIII)V

    .line 257
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 262
    .end local v2    # "l":I
    .end local v3    # "t":I
    :cond_0
    return-void
.end method
