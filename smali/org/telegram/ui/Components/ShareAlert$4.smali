.class Lorg/telegram/ui/Components/ShareAlert$4;
.super Ljava/lang/Object;
.source "ShareAlert.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ShareAlert;-><init>(Landroid/content/Context;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ZLjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ShareAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ShareAlert;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/ShareAlert;

    .prologue
    .line 219
    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$4;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 222
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$4;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$1200(Lorg/telegram/ui/Components/ShareAlert;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$4;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$1300(Lorg/telegram/ui/Components/ShareAlert;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$4;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$1400(Lorg/telegram/ui/Components/ShareAlert;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 223
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$4;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$1400(Lorg/telegram/ui/Components/ShareAlert;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$4;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$300(Lorg/telegram/ui/Components/ShareAlert;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$4;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0, v6}, Lorg/telegram/ui/Components/ShareAlert;->access$102(Lorg/telegram/ui/Components/ShareAlert;Z)Z

    .line 225
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$4;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ShareAlert;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "Loading"

    const v2, 0x7f070356

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 229
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$4;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ShareAlert;->dismiss()V

    .line 250
    :goto_1
    return-void

    .line 227
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$4;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$4;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ShareAlert;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ShareAlert;->access$200(Lorg/telegram/ui/Components/ShareAlert;Landroid/content/Context;)V

    goto :goto_0

    .line 231
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$4;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$1500(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 232
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 233
    .local v10, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$4;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$1500(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$4;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$1200(Lorg/telegram/ui/Components/ShareAlert;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 235
    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$TL_dialog;>;"
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$4;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$1600(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/Switch;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 236
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v2

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v10, v4, v5}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/util/ArrayList;J)V

    goto :goto_2

    .line 238
    :cond_4
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/messenger/MessageObject;

    .line 239
    .local v12, "object":Lorg/telegram/messenger/MessageObject;
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v3

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v12, v4, v5}, Lorg/telegram/messenger/SendMessagesHelper;->processForwardFromMyName(Lorg/telegram/messenger/MessageObject;J)V

    goto :goto_3

    .line 243
    .end local v10    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$TL_dialog;>;"
    .end local v12    # "object":Lorg/telegram/messenger/MessageObject;
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$4;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$1700(Lorg/telegram/ui/Components/ShareAlert;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 244
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$4;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$1200(Lorg/telegram/ui/Components/ShareAlert;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 245
    .restart local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$TL_dialog;>;"
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$4;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert;->access$1700(Lorg/telegram/ui/Components/ShareAlert;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object v5, v4

    move-object v7, v4

    move-object v8, v4

    move-object v9, v4

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto :goto_4

    .line 248
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$TL_dialog;>;"
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$4;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ShareAlert;->dismiss()V

    goto/16 :goto_1
.end method
