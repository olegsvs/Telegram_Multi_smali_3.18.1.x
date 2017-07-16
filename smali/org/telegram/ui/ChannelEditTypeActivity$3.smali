.class Lorg/telegram/ui/ChannelEditTypeActivity$3;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "ChannelEditTypeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelEditTypeActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChannelEditTypeActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelEditTypeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ChannelEditTypeActivity;

    .prologue
    .line 168
    iput-object p1, p0, Lorg/telegram/ui/ChannelEditTypeActivity$3;->this$0:Lorg/telegram/ui/ChannelEditTypeActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 6
    .param p1, "id"    # I

    .prologue
    const/4 v5, 0x1

    .line 171
    const/4 v3, -0x1

    if-ne p1, v3, :cond_1

    .line 172
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditTypeActivity$3;->this$0:Lorg/telegram/ui/ChannelEditTypeActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ChannelEditTypeActivity;->finishFragment()V

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    if-ne p1, v5, :cond_0

    .line 174
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditTypeActivity$3;->this$0:Lorg/telegram/ui/ChannelEditTypeActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditTypeActivity;->access$400(Lorg/telegram/ui/ChannelEditTypeActivity;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 178
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditTypeActivity$3;->this$0:Lorg/telegram/ui/ChannelEditTypeActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditTypeActivity;->access$500(Lorg/telegram/ui/ChannelEditTypeActivity;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lorg/telegram/ui/ChannelEditTypeActivity$3;->this$0:Lorg/telegram/ui/ChannelEditTypeActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditTypeActivity;->access$000(Lorg/telegram/ui/ChannelEditTypeActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/ChannelEditTypeActivity$3;->this$0:Lorg/telegram/ui/ChannelEditTypeActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditTypeActivity;->access$600(Lorg/telegram/ui/ChannelEditTypeActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditTypeActivity$3;->this$0:Lorg/telegram/ui/ChannelEditTypeActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditTypeActivity;->access$000(Lorg/telegram/ui/ChannelEditTypeActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lorg/telegram/ui/ChannelEditTypeActivity$3;->this$0:Lorg/telegram/ui/ChannelEditTypeActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditTypeActivity;->access$000(Lorg/telegram/ui/ChannelEditTypeActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    iget-object v4, p0, Lorg/telegram/ui/ChannelEditTypeActivity$3;->this$0:Lorg/telegram/ui/ChannelEditTypeActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelEditTypeActivity;->access$600(Lorg/telegram/ui/ChannelEditTypeActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 179
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditTypeActivity$3;->this$0:Lorg/telegram/ui/ChannelEditTypeActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditTypeActivity;->access$600(Lorg/telegram/ui/ChannelEditTypeActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lorg/telegram/ui/ChannelEditTypeActivity$3;->this$0:Lorg/telegram/ui/ChannelEditTypeActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditTypeActivity;->access$700(Lorg/telegram/ui/ChannelEditTypeActivity;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 180
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditTypeActivity$3;->this$0:Lorg/telegram/ui/ChannelEditTypeActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ChannelEditTypeActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "vibrator"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    .line 181
    .local v2, "v":Landroid/os/Vibrator;
    if-eqz v2, :cond_4

    .line 182
    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    .line 184
    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditTypeActivity$3;->this$0:Lorg/telegram/ui/ChannelEditTypeActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditTypeActivity;->access$800(Lorg/telegram/ui/ChannelEditTypeActivity;)Landroid/widget/TextView;

    move-result-object v3

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;FI)V

    goto/16 :goto_0

    .line 188
    .end local v2    # "v":Landroid/os/Vibrator;
    :cond_5
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditTypeActivity$3;->this$0:Lorg/telegram/ui/ChannelEditTypeActivity;

    invoke-static {v3, v5}, Lorg/telegram/ui/ChannelEditTypeActivity;->access$402(Lorg/telegram/ui/ChannelEditTypeActivity;Z)Z

    .line 190
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditTypeActivity$3;->this$0:Lorg/telegram/ui/ChannelEditTypeActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditTypeActivity;->access$000(Lorg/telegram/ui/ChannelEditTypeActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lorg/telegram/ui/ChannelEditTypeActivity$3;->this$0:Lorg/telegram/ui/ChannelEditTypeActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditTypeActivity;->access$000(Lorg/telegram/ui/ChannelEditTypeActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    iget-object v1, v3, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    .line 191
    .local v1, "oldUserName":Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditTypeActivity$3;->this$0:Lorg/telegram/ui/ChannelEditTypeActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditTypeActivity;->access$500(Lorg/telegram/ui/ChannelEditTypeActivity;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string/jumbo v0, ""

    .line 192
    .local v0, "newUserName":Ljava/lang/String;
    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 193
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/ChannelEditTypeActivity$3;->this$0:Lorg/telegram/ui/ChannelEditTypeActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelEditTypeActivity;->access$100(Lorg/telegram/ui/ChannelEditTypeActivity;)I

    move-result v4

    invoke-virtual {v3, v4, v0}, Lorg/telegram/messenger/MessagesController;->updateChannelUserName(ILjava/lang/String;)V

    .line 195
    :cond_6
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditTypeActivity$3;->this$0:Lorg/telegram/ui/ChannelEditTypeActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ChannelEditTypeActivity;->finishFragment()V

    goto/16 :goto_0

    .line 190
    .end local v0    # "newUserName":Ljava/lang/String;
    .end local v1    # "oldUserName":Ljava/lang/String;
    :cond_7
    const-string/jumbo v1, ""

    goto :goto_1

    .line 191
    .restart local v1    # "oldUserName":Ljava/lang/String;
    :cond_8
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditTypeActivity$3;->this$0:Lorg/telegram/ui/ChannelEditTypeActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditTypeActivity;->access$600(Lorg/telegram/ui/ChannelEditTypeActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method
