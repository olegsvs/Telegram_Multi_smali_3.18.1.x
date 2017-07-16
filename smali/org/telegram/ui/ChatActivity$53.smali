.class Lorg/telegram/ui/ChatActivity$53;
.super Lorg/telegram/messenger/AnimatorListenerAdapterProxy;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->updateChatDialogsView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;Z)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ChatActivity;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$53;->this$0:Lorg/telegram/ui/ChatActivity;

    iput-boolean p2, p0, Lorg/telegram/ui/ChatActivity$53;->val$visible:Z

    invoke-direct {p0}, Lorg/telegram/messenger/AnimatorListenerAdapterProxy;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$53;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$9300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ChatDialogsView;

    move-result-object v1

    iget-boolean v0, p0, Lorg/telegram/ui/ChatActivity$53;->val$visible:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->plusVerticalQuickBar:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0200ce

    :goto_0
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ChatDialogsView;->setBtnResId(I)V

    return-void

    :cond_0
    const v0, 0x7f02023e

    goto :goto_0

    :cond_1
    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->plusVerticalQuickBar:Z

    if-eqz v0, :cond_2

    const v0, 0x7f0200cd

    goto :goto_0

    :cond_2
    const v0, 0x7f020242

    goto :goto_0
.end method
