.class Lorg/telegram/ui/ChannelEditActivity$7;
.super Ljava/lang/Object;
.source "ChannelEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelEditActivity;->createView(Landroid/content/Context;)Landroid/view/View;
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
    .line 417
    iput-object p1, p0, Lorg/telegram/ui/ChannelEditActivity$7;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 420
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity$7;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity$7;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelEditActivity;->access$900(Lorg/telegram/ui/ChannelEditActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lorg/telegram/ui/ChannelEditActivity;->access$902(Lorg/telegram/ui/ChannelEditActivity;Z)Z

    .line 421
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p1    # "v":Landroid/view/View;
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity$7;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelEditActivity;->access$900(Lorg/telegram/ui/ChannelEditActivity;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 422
    return-void

    .line 420
    .restart local p1    # "v":Landroid/view/View;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
