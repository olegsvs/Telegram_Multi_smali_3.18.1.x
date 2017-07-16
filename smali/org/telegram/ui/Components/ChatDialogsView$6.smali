.class Lorg/telegram/ui/Components/ChatDialogsView$6;
.super Ljava/lang/Object;
.source "ChatDialogsView.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatDialogsView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatDialogsView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatDialogsView;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/ChatDialogsView;

    .prologue
    .line 347
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatDialogsView$6;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)Z
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 350
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatDialogsView$6;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatDialogsView;->access$900(Lorg/telegram/ui/Components/ChatDialogsView;)Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsViewDelegate;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 352
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatDialogsView$6;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatDialogsView;->access$900(Lorg/telegram/ui/Components/ChatDialogsView;)Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsViewDelegate;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatDialogsView$6;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatDialogsView;->access$1000(Lorg/telegram/ui/Components/ChatDialogsView;)I

    move-result v1

    invoke-interface {v2, v4, v5, v1}, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsViewDelegate;->didLongPressedOnSubDialog(JI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 353
    :catch_0
    move-exception v0

    .line 354
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
