.class Lorg/telegram/ui/Cells/AudioCell$1;
.super Ljava/lang/Object;
.source "AudioCell.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Cells/AudioCell;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Cells/AudioCell;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Cells/AudioCell;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Cells/AudioCell;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/Cells/AudioCell$1;->this$0:Lorg/telegram/ui/Cells/AudioCell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    iget-object v1, p0, Lorg/telegram/ui/Cells/AudioCell$1;->this$0:Lorg/telegram/ui/Cells/AudioCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/AudioCell;->access$000(Lorg/telegram/ui/Cells/AudioCell;)Lorg/telegram/messenger/MediaController$AudioEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Cells/AudioCell$1;->this$0:Lorg/telegram/ui/Cells/AudioCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/AudioCell;->access$000(Lorg/telegram/ui/Cells/AudioCell;)Lorg/telegram/messenger/MediaController$AudioEntry;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MediaController$AudioEntry;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MediaController;->isPlayingAudio(Lorg/telegram/messenger/MessageObject;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaController;->isAudioPaused()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Cells/AudioCell$1;->this$0:Lorg/telegram/ui/Cells/AudioCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/AudioCell;->access$000(Lorg/telegram/ui/Cells/AudioCell;)Lorg/telegram/messenger/MediaController$AudioEntry;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MediaController$AudioEntry;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MediaController;->pauseAudio(Lorg/telegram/messenger/MessageObject;)Z

    iget-object v1, p0, Lorg/telegram/ui/Cells/AudioCell$1;->this$0:Lorg/telegram/ui/Cells/AudioCell;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/ui/Cells/AudioCell;->access$100(Lorg/telegram/ui/Cells/AudioCell;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    iget-object v1, p0, Lorg/telegram/ui/Cells/AudioCell$1;->this$0:Lorg/telegram/ui/Cells/AudioCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/AudioCell;->access$000(Lorg/telegram/ui/Cells/AudioCell;)Lorg/telegram/messenger/MediaController$AudioEntry;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$AudioEntry;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Cells/AudioCell$1;->this$0:Lorg/telegram/ui/Cells/AudioCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/AudioCell;->access$000(Lorg/telegram/ui/Cells/AudioCell;)Lorg/telegram/messenger/MediaController$AudioEntry;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MediaController$AudioEntry;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/MediaController;->setPlaylist(Ljava/util/ArrayList;Lorg/telegram/messenger/MessageObject;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Cells/AudioCell$1;->this$0:Lorg/telegram/ui/Cells/AudioCell;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/telegram/ui/Cells/AudioCell;->access$100(Lorg/telegram/ui/Cells/AudioCell;Z)V

    iget-object v1, p0, Lorg/telegram/ui/Cells/AudioCell$1;->this$0:Lorg/telegram/ui/Cells/AudioCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/AudioCell;->access$200(Lorg/telegram/ui/Cells/AudioCell;)Lorg/telegram/ui/Cells/AudioCell$AudioCellDelegate;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Cells/AudioCell$1;->this$0:Lorg/telegram/ui/Cells/AudioCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/AudioCell;->access$200(Lorg/telegram/ui/Cells/AudioCell;)Lorg/telegram/ui/Cells/AudioCell$AudioCellDelegate;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Cells/AudioCell$1;->this$0:Lorg/telegram/ui/Cells/AudioCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/AudioCell;->access$000(Lorg/telegram/ui/Cells/AudioCell;)Lorg/telegram/messenger/MediaController$AudioEntry;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MediaController$AudioEntry;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-interface {v1, v2}, Lorg/telegram/ui/Cells/AudioCell$AudioCellDelegate;->startedPlayingAudio(Lorg/telegram/messenger/MessageObject;)V

    goto :goto_0
.end method
