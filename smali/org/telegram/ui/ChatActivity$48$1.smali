.class Lorg/telegram/ui/ChatActivity$48$1;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$48;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChatActivity$48;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$48;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ChatActivity$48;

    .prologue
    .line 3154
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$48$1;->this$1:Lorg/telegram/ui/ChatActivity$48;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 18
    .param p1, "view"    # Landroid/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "dayOfMonth"    # I

    .prologue
    .line 3157
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 3158
    .local v4, "calendar":Ljava/util/Calendar;
    invoke-virtual {v4}, Ljava/util/Calendar;->clear()V

    .line 3159
    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v4, v0, v1, v2}, Ljava/util/Calendar;->set(III)V

    .line 3160
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v10, v6

    .line 3161
    .local v10, "date":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$48$1;->this$1:Lorg/telegram/ui/ChatActivity$48;

    iget-object v5, v5, Lorg/telegram/ui/ChatActivity$48;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$13300(Lorg/telegram/ui/ChatActivity;)V

    .line 3162
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$48$1;->this$1:Lorg/telegram/ui/ChatActivity$48;

    iget-object v5, v5, Lorg/telegram/ui/ChatActivity$48;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$13500(Lorg/telegram/ui/ChatActivity;)Ljava/util/ArrayList;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$48$1;->this$1:Lorg/telegram/ui/ChatActivity$48;

    iget-object v6, v6, Lorg/telegram/ui/ChatActivity$48;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$13400(Lorg/telegram/ui/ChatActivity;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3163
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$48$1;->this$1:Lorg/telegram/ui/ChatActivity$48;

    iget-object v6, v6, Lorg/telegram/ui/ChatActivity$48;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$100(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v6

    const/16 v8, 0x1e

    const/4 v9, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ChatActivity$48$1;->this$1:Lorg/telegram/ui/ChatActivity$48;

    iget-object v13, v13, Lorg/telegram/ui/ChatActivity$48;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v13}, Lorg/telegram/ui/ChatActivity;->access$13600(Lorg/telegram/ui/ChatActivity;)I

    move-result v13

    const/4 v14, 0x4

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$48$1;->this$1:Lorg/telegram/ui/ChatActivity$48;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$48;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$48$1;->this$1:Lorg/telegram/ui/ChatActivity$48;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$48;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/ChatActivity;->access$13408(Lorg/telegram/ui/ChatActivity;)I

    move-result v17

    invoke-virtual/range {v5 .. v17}, Lorg/telegram/messenger/MessagesController;->loadMessages(JIIIZIIIIZI)V

    .line 3164
    return-void
.end method
