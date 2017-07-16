.class Lorg/telegram/ui/LocationActivity$20;
.super Ljava/lang/Object;
.source "LocationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LocationActivity;->fixLayoutInternal(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LocationActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LocationActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/LocationActivity;

    .prologue
    .line 849
    iput-object p1, p0, Lorg/telegram/ui/LocationActivity$20;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 852
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity$20;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v0}, Lorg/telegram/ui/LocationActivity;->access$1800(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x42600000    # 56.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40200000    # 2.5f

    mul-float/2addr v2, v3

    const/high16 v3, 0x42cc0000    # 102.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 853
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity$20;->this$0:Lorg/telegram/ui/LocationActivity;

    iget-object v1, p0, Lorg/telegram/ui/LocationActivity$20;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v1}, Lorg/telegram/ui/LocationActivity;->access$1800(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/LocationActivity;->access$1900(Lorg/telegram/ui/LocationActivity;I)V

    .line 854
    return-void
.end method
