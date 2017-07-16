.class Lorg/telegram/ui/PlusChatsStatsActivity$4;
.super Ljava/lang/Object;
.source "PlusChatsStatsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PlusChatsStatsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PlusChatsStatsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PlusChatsStatsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/PlusChatsStatsActivity;

    .prologue
    .line 466
    iput-object p1, p0, Lorg/telegram/ui/PlusChatsStatsActivity$4;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const v4, 0x7f07060c

    const v3, 0x7f0702b4

    const v2, 0x7f07015c

    .line 469
    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$4;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 489
    :cond_0
    :goto_0
    return-void

    .line 472
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$4;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$1400(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-ne p3, v0, :cond_2

    .line 473
    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$4;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$600(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$4;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    const-string/jumbo v1, "Groups"

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogsOwnGroups:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$1500(Lorg/telegram/ui/PlusChatsStatsActivity;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 474
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$4;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$1600(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-ne p3, v0, :cond_3

    .line 475
    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$4;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$700(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$4;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    const-string/jumbo v1, "SuperGroups"

    invoke-static {v1, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogsOwnSuperGroups:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$1500(Lorg/telegram/ui/PlusChatsStatsActivity;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 476
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$4;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$1700(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-ne p3, v0, :cond_4

    .line 477
    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$4;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$800(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$4;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    const-string/jumbo v1, "Channels"

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogsOwnChannels:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$1500(Lorg/telegram/ui/PlusChatsStatsActivity;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 478
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$4;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$1800(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-ne p3, v0, :cond_5

    .line 479
    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$4;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$900(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$4;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    const-string/jumbo v1, "Groups"

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogsAdminGroups:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$1500(Lorg/telegram/ui/PlusChatsStatsActivity;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 480
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$4;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$1900(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-ne p3, v0, :cond_6

    .line 481
    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$4;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$1000(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$4;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    const-string/jumbo v1, "SuperGroups"

    invoke-static {v1, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogsAdminSuperGroups:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$1500(Lorg/telegram/ui/PlusChatsStatsActivity;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 482
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$4;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$2000(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-ne p3, v0, :cond_7

    .line 483
    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$4;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$1100(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$4;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    const-string/jumbo v1, "Channels"

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogsAdminChannels:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$1500(Lorg/telegram/ui/PlusChatsStatsActivity;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 484
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$4;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$2100(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-ne p3, v0, :cond_8

    .line 485
    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$4;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$500(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$4;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    const-string/jumbo v1, "SecretChat"

    const v2, 0x7f070580

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogsSecrets:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$2200(Lorg/telegram/ui/PlusChatsStatsActivity;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 486
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$4;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$2300(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-ne p3, v0, :cond_0

    .line 487
    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$4;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$2400(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$4;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    const-string/jumbo v1, "ReportChatOther"

    const v2, 0x7f07051a

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/PlusChatsStatsActivity$4;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v2}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$400(Lorg/telegram/ui/PlusChatsStatsActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$2500(Lorg/telegram/ui/PlusChatsStatsActivity;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_0
.end method
