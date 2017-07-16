.class Lorg/telegram/ui/IdenticonActivity$2;
.super Landroid/widget/FrameLayout;
.source "IdenticonActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/IdenticonActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/IdenticonActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/IdenticonActivity;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/IdenticonActivity;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 117
    iput-object p1, p0, Lorg/telegram/ui/IdenticonActivity$2;->this$0:Lorg/telegram/ui/IdenticonActivity;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 120
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 121
    iget-object v2, p0, Lorg/telegram/ui/IdenticonActivity$2;->this$0:Lorg/telegram/ui/IdenticonActivity;

    invoke-static {v2}, Lorg/telegram/ui/IdenticonActivity;->access$000(Lorg/telegram/ui/IdenticonActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/IdenticonActivity$2;->this$0:Lorg/telegram/ui/IdenticonActivity;

    invoke-static {v3}, Lorg/telegram/ui/IdenticonActivity;->access$100(Lorg/telegram/ui/IdenticonActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/IdenticonActivity$2;->this$0:Lorg/telegram/ui/IdenticonActivity;

    invoke-static {v3}, Lorg/telegram/ui/IdenticonActivity;->access$100(Lorg/telegram/ui/IdenticonActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/IdenticonActivity$2;->this$0:Lorg/telegram/ui/IdenticonActivity;

    invoke-static {v3}, Lorg/telegram/ui/IdenticonActivity;->access$200(Lorg/telegram/ui/IdenticonActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v0, v2, v3

    .line 122
    .local v0, "x":I
    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/IdenticonActivity$2;->this$0:Lorg/telegram/ui/IdenticonActivity;

    invoke-static {v3}, Lorg/telegram/ui/IdenticonActivity;->access$000(Lorg/telegram/ui/IdenticonActivity;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTop()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/IdenticonActivity$2;->this$0:Lorg/telegram/ui/IdenticonActivity;

    invoke-static {v4}, Lorg/telegram/ui/IdenticonActivity;->access$100(Lorg/telegram/ui/IdenticonActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getTop()I

    move-result v4

    add-int/2addr v3, v4

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 123
    .local v1, "y":I
    iget-object v2, p0, Lorg/telegram/ui/IdenticonActivity$2;->this$0:Lorg/telegram/ui/IdenticonActivity;

    invoke-static {v2}, Lorg/telegram/ui/IdenticonActivity;->access$200(Lorg/telegram/ui/IdenticonActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/IdenticonActivity$2;->this$0:Lorg/telegram/ui/IdenticonActivity;

    invoke-static {v3}, Lorg/telegram/ui/IdenticonActivity;->access$200(Lorg/telegram/ui/IdenticonActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v4, p0, Lorg/telegram/ui/IdenticonActivity$2;->this$0:Lorg/telegram/ui/IdenticonActivity;

    invoke-static {v4}, Lorg/telegram/ui/IdenticonActivity;->access$200(Lorg/telegram/ui/IdenticonActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 124
    return-void
.end method
