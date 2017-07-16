.class Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->createAvatarClickMenu(ILorg/telegram/tgnet/TLRPC$User;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

.field final synthetic val$finalChatParticipant:Lorg/telegram/tgnet/TLRPC$ChatParticipant;

.field final synthetic val$finalIndex:I

.field final synthetic val$finalRemoveAdmin:Z

.field final synthetic val$fromId:I

.field final synthetic val$user:Lorg/telegram/tgnet/TLRPC$User;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;Lorg/telegram/tgnet/TLRPC$User;ZILorg/telegram/tgnet/TLRPC$ChatParticipant;I)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;->val$user:Lorg/telegram/tgnet/TLRPC$User;

    iput-boolean p3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;->val$finalRemoveAdmin:Z

    iput p4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;->val$finalIndex:I

    iput-object p5, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;->val$finalChatParticipant:Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    iput p6, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;->val$fromId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    if-nez p2, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;->val$user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v1, v2}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->access$20300(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;Lorg/telegram/tgnet/TLRPC$User;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;->val$user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v1, v2}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->access$20400(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;Lorg/telegram/tgnet/TLRPC$User;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne p2, v1, :cond_4

    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;->val$finalRemoveAdmin:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "RemoveUserAdmin"

    const v3, 0x7f070511

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "AreYouSure"

    const v3, 0x7f070089

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;->val$user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const-string/jumbo v1, "OK"

    const v2, 0x7f070452

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6$1;-><init>(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const-string/jumbo v1, "Cancel"

    const v2, 0x7f0700f0

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ChatActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v1, "SetAsAdmin"

    const v3, 0x7f0705b2

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .end local v0    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    :cond_4
    const/4 v1, 0x3

    if-ne p2, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;->val$fromId:I

    invoke-static {v1, v2}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->access$20600(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;I)V

    goto/16 :goto_0

    :cond_5
    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;->val$fromId:I

    invoke-static {v1, v2}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->access$20700(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;I)V

    goto/16 :goto_0
.end method
