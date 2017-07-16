.class Lorg/telegram/ui/TwoStepVerificationActivity$9$1;
.super Ljava/lang/Object;
.source "TwoStepVerificationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/TwoStepVerificationActivity$9;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/TwoStepVerificationActivity$9;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/TwoStepVerificationActivity$9;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/TwoStepVerificationActivity$9;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/TwoStepVerificationActivity$9$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$9;

    iput-object p2, p0, Lorg/telegram/ui/TwoStepVerificationActivity$9$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/TwoStepVerificationActivity$9$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const v7, 0x7f070452

    const v6, 0x7f070078

    const/4 v9, 0x0

    iget-object v4, p0, Lorg/telegram/ui/TwoStepVerificationActivity$9$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$9;

    iget-object v4, v4, Lorg/telegram/ui/TwoStepVerificationActivity$9;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-static {v4}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$400(Lorg/telegram/ui/TwoStepVerificationActivity;)V

    iget-object v4, p0, Lorg/telegram/ui/TwoStepVerificationActivity$9$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v4, :cond_2

    iget-object v4, p0, Lorg/telegram/ui/TwoStepVerificationActivity$9$1;->val$response:Lorg/telegram/tgnet/TLObject;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_boolTrue;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/telegram/ui/TwoStepVerificationActivity$9$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$9;

    iget-boolean v4, v4, Lorg/telegram/ui/TwoStepVerificationActivity$9;->val$clear:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/telegram/ui/TwoStepVerificationActivity$9$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$9;

    iget-object v4, v4, Lorg/telegram/ui/TwoStepVerificationActivity$9;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$202(Lorg/telegram/ui/TwoStepVerificationActivity;Lorg/telegram/tgnet/TLRPC$account_Password;)Lorg/telegram/tgnet/TLRPC$account_Password;

    iget-object v4, p0, Lorg/telegram/ui/TwoStepVerificationActivity$9$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$9;

    iget-object v4, v4, Lorg/telegram/ui/TwoStepVerificationActivity$9;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    new-array v5, v9, [B

    invoke-static {v4, v5}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$1102(Lorg/telegram/ui/TwoStepVerificationActivity;[B)[B

    iget-object v4, p0, Lorg/telegram/ui/TwoStepVerificationActivity$9$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$9;

    iget-object v4, v4, Lorg/telegram/ui/TwoStepVerificationActivity$9;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-static {v4, v9}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$2300(Lorg/telegram/ui/TwoStepVerificationActivity;Z)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->didRemovedTwoStepPassword:I

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    iget-object v4, p0, Lorg/telegram/ui/TwoStepVerificationActivity$9$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$9;

    iget-object v4, v4, Lorg/telegram/ui/TwoStepVerificationActivity$9;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-static {v4}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$2400(Lorg/telegram/ui/TwoStepVerificationActivity;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/TwoStepVerificationActivity$9$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$9;

    iget-object v4, v4, Lorg/telegram/ui/TwoStepVerificationActivity$9;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/TwoStepVerificationActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v4, p0, Lorg/telegram/ui/TwoStepVerificationActivity$9$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$9;

    iget-object v4, v4, Lorg/telegram/ui/TwoStepVerificationActivity$9;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/TwoStepVerificationActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v4, "OK"

    invoke-static {v4, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/TwoStepVerificationActivity$9$1$1;

    invoke-direct {v5, p0}, Lorg/telegram/ui/TwoStepVerificationActivity$9$1$1;-><init>(Lorg/telegram/ui/TwoStepVerificationActivity$9$1;)V

    invoke-virtual {v0, v4, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const-string/jumbo v4, "YourPasswordSuccessText"

    const v5, 0x7f0706cb

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const-string/jumbo v4, "YourPasswordSuccess"

    const v5, 0x7f0706ca

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v4, p0, Lorg/telegram/ui/TwoStepVerificationActivity$9$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$9;

    iget-object v4, v4, Lorg/telegram/ui/TwoStepVerificationActivity$9;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/TwoStepVerificationActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    move-result-object v1

    .local v1, "dialog":Landroid/app/Dialog;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v9}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v1, v9}, Landroid/app/Dialog;->setCancelable(Z)V

    goto :goto_0

    .end local v0    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v1    # "dialog":Landroid/app/Dialog;
    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/TwoStepVerificationActivity$9$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/telegram/ui/TwoStepVerificationActivity$9$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v5, "EMAIL_UNCONFIRMED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v4, p0, Lorg/telegram/ui/TwoStepVerificationActivity$9$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$9;

    iget-object v4, v4, Lorg/telegram/ui/TwoStepVerificationActivity$9;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/TwoStepVerificationActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .restart local v0    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v4, "OK"

    invoke-static {v4, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/TwoStepVerificationActivity$9$1$2;

    invoke-direct {v5, p0}, Lorg/telegram/ui/TwoStepVerificationActivity$9$1$2;-><init>(Lorg/telegram/ui/TwoStepVerificationActivity$9$1;)V

    invoke-virtual {v0, v4, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const-string/jumbo v4, "YourEmailAlmostThereText"

    const v5, 0x7f0706c3

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const-string/jumbo v4, "YourEmailAlmostThere"

    const v5, 0x7f0706c2

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v4, p0, Lorg/telegram/ui/TwoStepVerificationActivity$9$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$9;

    iget-object v4, v4, Lorg/telegram/ui/TwoStepVerificationActivity$9;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/TwoStepVerificationActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    move-result-object v1

    .restart local v1    # "dialog":Landroid/app/Dialog;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v9}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v1, v9}, Landroid/app/Dialog;->setCancelable(Z)V

    goto/16 :goto_0

    .end local v0    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v1    # "dialog":Landroid/app/Dialog;
    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/TwoStepVerificationActivity$9$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v5, "EMAIL_INVALID"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lorg/telegram/ui/TwoStepVerificationActivity$9$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$9;

    iget-object v4, v4, Lorg/telegram/ui/TwoStepVerificationActivity$9;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    const-string/jumbo v5, "AppName"

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "PasswordEmailInvalid"

    const v7, 0x7f07048b

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$600(Lorg/telegram/ui/TwoStepVerificationActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/TwoStepVerificationActivity$9$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v5, "FLOOD_WAIT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lorg/telegram/ui/TwoStepVerificationActivity$9$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .local v2, "time":I
    const/16 v4, 0x3c

    if-ge v2, v4, :cond_5

    const-string/jumbo v4, "Seconds"

    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .local v3, "timeString":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/TwoStepVerificationActivity$9$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$9;

    iget-object v4, v4, Lorg/telegram/ui/TwoStepVerificationActivity$9;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    const-string/jumbo v5, "AppName"

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "FloodWaitTime"

    const v7, 0x7f070253

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v3, v8, v9

    invoke-static {v6, v7, v8}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$600(Lorg/telegram/ui/TwoStepVerificationActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v3    # "timeString":Ljava/lang/String;
    :cond_5
    const-string/jumbo v4, "Minutes"

    div-int/lit8 v5, v2, 0x3c

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "timeString":Ljava/lang/String;
    goto :goto_1

    .end local v2    # "time":I
    .end local v3    # "timeString":Ljava/lang/String;
    :cond_6
    iget-object v4, p0, Lorg/telegram/ui/TwoStepVerificationActivity$9$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$9;

    iget-object v4, v4, Lorg/telegram/ui/TwoStepVerificationActivity$9;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    const-string/jumbo v5, "AppName"

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/TwoStepVerificationActivity$9$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$600(Lorg/telegram/ui/TwoStepVerificationActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
