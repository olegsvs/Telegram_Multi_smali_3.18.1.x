.class Lorg/telegram/ui/ChannelEditActivity$11;
.super Ljava/lang/Object;
.source "ChannelEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelEditActivity;->updateTypeCell()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChannelEditActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelEditActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ChannelEditActivity;

    .prologue
    .line 600
    iput-object p1, p0, Lorg/telegram/ui/ChannelEditActivity$11;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 603
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 604
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "chat_id"

    iget-object v3, p0, Lorg/telegram/ui/ChannelEditActivity$11;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditActivity;->access$100(Lorg/telegram/ui/ChannelEditActivity;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 605
    new-instance v1, Lorg/telegram/ui/ChannelEditTypeActivity;

    invoke-direct {v1, v0}, Lorg/telegram/ui/ChannelEditTypeActivity;-><init>(Landroid/os/Bundle;)V

    .line 606
    .local v1, "fragment":Lorg/telegram/ui/ChannelEditTypeActivity;
    iget-object v2, p0, Lorg/telegram/ui/ChannelEditActivity$11;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChannelEditActivity;->access$700(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ChannelEditTypeActivity;->setInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 607
    iget-object v2, p0, Lorg/telegram/ui/ChannelEditActivity$11;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ChannelEditActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 608
    return-void
.end method
