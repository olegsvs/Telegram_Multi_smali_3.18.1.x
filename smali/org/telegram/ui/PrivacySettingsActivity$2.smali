.class Lorg/telegram/ui/PrivacySettingsActivity$2;
.super Ljava/lang/Object;
.source "PrivacySettingsActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PrivacySettingsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PrivacySettingsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PrivacySettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/PrivacySettingsActivity;

    .prologue
    .line 148
    iput-object p1, p0, Lorg/telegram/ui/PrivacySettingsActivity$2;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 151
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 239
    .end local p1    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 154
    .restart local p1    # "view":Landroid/view/View;
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/PrivacySettingsActivity$2;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/PrivacySettingsActivity;->access$000(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v3

    if-ne p2, v3, :cond_2

    .line 155
    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$2;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    new-instance v2, Lorg/telegram/ui/BlockedUsersActivity;

    invoke-direct {v2}, Lorg/telegram/ui/BlockedUsersActivity;-><init>()V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/PrivacySettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    .line 156
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/PrivacySettingsActivity$2;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/PrivacySettingsActivity;->access$100(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v3

    if-ne p2, v3, :cond_3

    .line 157
    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$2;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    new-instance v2, Lorg/telegram/ui/SessionsActivity;

    invoke-direct {v2}, Lorg/telegram/ui/SessionsActivity;-><init>()V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/PrivacySettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    .line 158
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/PrivacySettingsActivity$2;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/PrivacySettingsActivity;->access$200(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v3

    if-ne p2, v3, :cond_4

    .line 159
    iget-object v3, p0, Lorg/telegram/ui/PrivacySettingsActivity$2;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/PrivacySettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 162
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v3, p0, Lorg/telegram/ui/PrivacySettingsActivity$2;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/PrivacySettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 163
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v3, "DeleteAccountTitle"

    const v4, 0x7f0701dd

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 164
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/CharSequence;

    const-string/jumbo v4, "Months"

    .line 165
    invoke-static {v4, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const-string/jumbo v2, "Months"

    .line 166
    invoke-static {v2, v6}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    const-string/jumbo v2, "Months"

    const/4 v4, 0x6

    .line 167
    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v5

    const-string/jumbo v2, "Years"

    .line 168
    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v6

    new-instance v1, Lorg/telegram/ui/PrivacySettingsActivity$2$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PrivacySettingsActivity$2$1;-><init>(Lorg/telegram/ui/PrivacySettingsActivity$2;)V

    .line 164
    invoke-virtual {v0, v3, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 212
    const-string/jumbo v1, "Cancel"

    const v2, 0x7f0700f0

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 213
    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$2;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/PrivacySettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 214
    .end local v0    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/PrivacySettingsActivity$2;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/PrivacySettingsActivity;->access$400(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v3

    if-ne p2, v3, :cond_5

    .line 215
    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$2;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    new-instance v3, Lorg/telegram/ui/PrivacyControlActivity;

    invoke-direct {v3, v2}, Lorg/telegram/ui/PrivacyControlActivity;-><init>(I)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/PrivacySettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 216
    :cond_5
    iget-object v3, p0, Lorg/telegram/ui/PrivacySettingsActivity$2;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/PrivacySettingsActivity;->access$500(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v3

    if-ne p2, v3, :cond_6

    .line 217
    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$2;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    new-instance v2, Lorg/telegram/ui/PrivacyControlActivity;

    invoke-direct {v2, v5}, Lorg/telegram/ui/PrivacyControlActivity;-><init>(I)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/PrivacySettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 218
    :cond_6
    iget-object v3, p0, Lorg/telegram/ui/PrivacySettingsActivity$2;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/PrivacySettingsActivity;->access$600(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v3

    if-ne p2, v3, :cond_7

    .line 219
    iget-object v2, p0, Lorg/telegram/ui/PrivacySettingsActivity$2;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    new-instance v3, Lorg/telegram/ui/PrivacyControlActivity;

    invoke-direct {v3, v1}, Lorg/telegram/ui/PrivacyControlActivity;-><init>(I)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/PrivacySettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 220
    :cond_7
    iget-object v3, p0, Lorg/telegram/ui/PrivacySettingsActivity$2;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/PrivacySettingsActivity;->access$700(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v3

    if-ne p2, v3, :cond_8

    .line 221
    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$2;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    new-instance v3, Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-direct {v3, v2}, Lorg/telegram/ui/TwoStepVerificationActivity;-><init>(I)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/PrivacySettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 222
    :cond_8
    iget-object v3, p0, Lorg/telegram/ui/PrivacySettingsActivity$2;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/PrivacySettingsActivity;->access$800(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v3

    if-ne p2, v3, :cond_a

    .line 223
    sget-object v1, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_9

    .line 224
    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$2;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    new-instance v2, Lorg/telegram/ui/PasscodeActivity;

    invoke-direct {v2, v5}, Lorg/telegram/ui/PasscodeActivity;-><init>(I)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/PrivacySettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 226
    :cond_9
    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$2;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    new-instance v3, Lorg/telegram/ui/PasscodeActivity;

    invoke-direct {v3, v2}, Lorg/telegram/ui/PasscodeActivity;-><init>(I)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/PrivacySettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 228
    :cond_a
    iget-object v3, p0, Lorg/telegram/ui/PrivacySettingsActivity$2;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/PrivacySettingsActivity;->access$900(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v3

    if-ne p2, v3, :cond_0

    .line 229
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget v3, v3, Lorg/telegram/messenger/MessagesController;->secretWebpagePreview:I

    if-ne v3, v1, :cond_b

    .line 230
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iput v2, v3, Lorg/telegram/messenger/MessagesController;->secretWebpagePreview:I

    .line 234
    :goto_1
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mainconfig"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lorg/telegram/messenger/ChangeUserHelper;->getUserTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v4, "secretWebpage2"

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget v5, v5, Lorg/telegram/messenger/MessagesController;->secretWebpagePreview:I

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 235
    instance-of v3, p1, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v3, :cond_0

    .line 236
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p1    # "view":Landroid/view/View;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget v3, v3, Lorg/telegram/messenger/MessagesController;->secretWebpagePreview:I

    if-ne v3, v1, :cond_c

    :goto_2
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 232
    .restart local p1    # "view":Landroid/view/View;
    :cond_b
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iput v1, v3, Lorg/telegram/messenger/MessagesController;->secretWebpagePreview:I

    goto :goto_1

    .end local p1    # "view":Landroid/view/View;
    :cond_c
    move v1, v2

    .line 236
    goto :goto_2
.end method
