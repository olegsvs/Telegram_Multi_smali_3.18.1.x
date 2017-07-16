.class Lorg/telegram/ui/ChannelEditActivity$2;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "ChannelEditActivity.java"


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
    .line 171
    iput-object p1, p0, Lorg/telegram/ui/ChannelEditActivity$2;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 6
    .param p1, "id"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 174
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 175
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity$2;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChannelEditActivity;->finishFragment()V

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    if-ne p1, v5, :cond_0

    .line 177
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity$2;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelEditActivity;->access$200(Lorg/telegram/ui/ChannelEditActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 180
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity$2;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelEditActivity;->access$300(Lorg/telegram/ui/ChannelEditActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 181
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity$2;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChannelEditActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 182
    .local v0, "v":Landroid/os/Vibrator;
    if-eqz v0, :cond_2

    .line 183
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 185
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity$2;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelEditActivity;->access$300(Lorg/telegram/ui/ChannelEditActivity;)Landroid/widget/EditText;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2, v4}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;FI)V

    goto :goto_0

    .line 188
    .end local v0    # "v":Landroid/os/Vibrator;
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity$2;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v1, v5}, Lorg/telegram/ui/ChannelEditActivity;->access$202(Lorg/telegram/ui/ChannelEditActivity;Z)Z

    .line 190
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity$2;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelEditActivity;->access$400(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/ui/Components/AvatarUpdater;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/Components/AvatarUpdater;->uploadingAvatar:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 191
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity$2;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v1, v5}, Lorg/telegram/ui/ChannelEditActivity;->access$502(Lorg/telegram/ui/ChannelEditActivity;Z)Z

    .line 192
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity$2;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog;

    iget-object v3, p0, Lorg/telegram/ui/ChannelEditActivity$2;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ChannelEditActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, v5}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    invoke-static {v1, v2}, Lorg/telegram/ui/ChannelEditActivity;->access$602(Lorg/telegram/ui/ChannelEditActivity;Lorg/telegram/ui/ActionBar/AlertDialog;)Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 193
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity$2;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelEditActivity;->access$600(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    const-string/jumbo v2, "Loading"

    const v3, 0x7f070356

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity$2;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelEditActivity;->access$600(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 195
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity$2;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelEditActivity;->access$600(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCancelable(Z)V

    .line 196
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity$2;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelEditActivity;->access$600(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    const/4 v2, -0x2

    const-string/jumbo v3, "Cancel"

    const v4, 0x7f0700f0

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ChannelEditActivity$2$1;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ChannelEditActivity$2$1;-><init>(Lorg/telegram/ui/ChannelEditActivity$2;)V

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 209
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity$2;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelEditActivity;->access$600(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    goto/16 :goto_0

    .line 212
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity$2;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelEditActivity;->access$000(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/ChannelEditActivity$2;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChannelEditActivity;->access$300(Lorg/telegram/ui/ChannelEditActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 213
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChannelEditActivity$2;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChannelEditActivity;->access$100(Lorg/telegram/ui/ChannelEditActivity;)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/ChannelEditActivity$2;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditActivity;->access$300(Lorg/telegram/ui/ChannelEditActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->changeChatTitle(ILjava/lang/String;)V

    .line 215
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity$2;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelEditActivity;->access$700(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity$2;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelEditActivity;->access$700(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->about:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/ChannelEditActivity$2;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChannelEditActivity;->access$800(Lorg/telegram/ui/ChannelEditActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 216
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChannelEditActivity$2;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChannelEditActivity;->access$100(Lorg/telegram/ui/ChannelEditActivity;)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/ChannelEditActivity$2;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditActivity;->access$800(Lorg/telegram/ui/ChannelEditActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/ChannelEditActivity$2;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelEditActivity;->access$700(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->updateChannelAbout(ILjava/lang/String;Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 218
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity$2;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelEditActivity;->access$900(Lorg/telegram/ui/ChannelEditActivity;)Z

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/ChannelEditActivity$2;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChannelEditActivity;->access$000(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->signatures:Z

    if-eq v1, v2, :cond_7

    .line 219
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity$2;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelEditActivity;->access$000(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    iput-boolean v5, v1, Lorg/telegram/tgnet/TLRPC$Chat;->signatures:Z

    .line 220
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChannelEditActivity$2;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChannelEditActivity;->access$100(Lorg/telegram/ui/ChannelEditActivity;)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/ChannelEditActivity$2;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditActivity;->access$900(Lorg/telegram/ui/ChannelEditActivity;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->toogleChannelSignatures(IZ)V

    .line 222
    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity$2;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelEditActivity;->access$1000(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/tgnet/TLRPC$InputFile;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 223
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChannelEditActivity$2;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChannelEditActivity;->access$100(Lorg/telegram/ui/ChannelEditActivity;)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/ChannelEditActivity$2;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditActivity;->access$1000(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/tgnet/TLRPC$InputFile;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->changeChatAvatar(ILorg/telegram/tgnet/TLRPC$InputFile;)V

    .line 227
    :cond_8
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity$2;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChannelEditActivity;->finishFragment()V

    goto/16 :goto_0

    .line 224
    :cond_9
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity$2;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelEditActivity;->access$1100(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-result-object v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity$2;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelEditActivity;->access$000(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_chatPhoto;

    if-eqz v1, :cond_8

    .line 225
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChannelEditActivity$2;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChannelEditActivity;->access$100(Lorg/telegram/ui/ChannelEditActivity;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->changeChatAvatar(ILorg/telegram/tgnet/TLRPC$InputFile;)V

    goto :goto_1
.end method
