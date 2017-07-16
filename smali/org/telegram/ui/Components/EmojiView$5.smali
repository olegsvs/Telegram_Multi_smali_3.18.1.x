.class Lorg/telegram/ui/Components/EmojiView$5;
.super Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;
.source "EmojiView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView;-><init>(ZZLandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 701
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$5;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 704
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$5;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->access$3000(Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 705
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$5;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->access$3100(Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;)I

    move-result v0

    .line 707
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
