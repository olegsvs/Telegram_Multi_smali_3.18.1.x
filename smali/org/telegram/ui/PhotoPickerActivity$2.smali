.class Lorg/telegram/ui/PhotoPickerActivity$2;
.super Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;
.source "PhotoPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoPickerActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoPickerActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoPickerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/PhotoPickerActivity;

    .prologue
    .line 190
    iput-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity$2;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;-><init>()V

    return-void
.end method


# virtual methods
.method public canCollapseSearch()Z
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$2;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoPickerActivity;->finishFragment()V

    .line 199
    const/4 v0, 0x0

    return v0
.end method

.method public onSearchExpand()V
    .locals 0

    .prologue
    .line 194
    return-void
.end method

.method public onSearchPressed(Landroid/widget/EditText;)V
    .locals 5
    .param p1, "editText"    # Landroid/widget/EditText;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 230
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 255
    :goto_0
    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$2;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerActivity;->access$000(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 234
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$2;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerActivity;->access$100(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 235
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$2;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v0, v3}, Lorg/telegram/ui/PhotoPickerActivity;->access$302(Lorg/telegram/ui/PhotoPickerActivity;Z)Z

    .line 236
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$2;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v0, v3}, Lorg/telegram/ui/PhotoPickerActivity;->access$402(Lorg/telegram/ui/PhotoPickerActivity;Z)Z

    .line 237
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$2;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerActivity;->access$800(Lorg/telegram/ui/PhotoPickerActivity;)I

    move-result v0

    if-nez v0, :cond_3

    .line 238
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$2;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x35

    invoke-static {v0, v1, v4, v2}, Lorg/telegram/ui/PhotoPickerActivity;->access$1100(Lorg/telegram/ui/PhotoPickerActivity;Ljava/lang/String;II)V

    .line 243
    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$2;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoPickerActivity;->access$202(Lorg/telegram/ui/PhotoPickerActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 244
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$2;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerActivity;->access$200(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    .line 245
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$2;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoPickerActivity;->access$202(Lorg/telegram/ui/PhotoPickerActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 246
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$2;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerActivity;->access$800(Lorg/telegram/ui/PhotoPickerActivity;)I

    move-result v0

    if-nez v0, :cond_4

    .line 247
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$2;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerActivity;->access$900(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v0

    const-string/jumbo v1, "NoRecentPhotos"

    const v2, 0x7f0703e5

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    .line 254
    :cond_2
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$2;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerActivity;->access$1000(Lorg/telegram/ui/PhotoPickerActivity;)V

    goto :goto_0

    .line 239
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$2;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerActivity;->access$800(Lorg/telegram/ui/PhotoPickerActivity;)I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 240
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$2;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v0, v4}, Lorg/telegram/ui/PhotoPickerActivity;->access$1202(Lorg/telegram/ui/PhotoPickerActivity;I)I

    .line 241
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$2;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lorg/telegram/ui/PhotoPickerActivity;->access$1300(Lorg/telegram/ui/PhotoPickerActivity;Ljava/lang/String;I)V

    goto :goto_1

    .line 248
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$2;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerActivity;->access$800(Lorg/telegram/ui/PhotoPickerActivity;)I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 249
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$2;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerActivity;->access$900(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v0

    const-string/jumbo v1, "NoRecentGIFs"

    const v2, 0x7f0703e4

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    goto :goto_2

    .line 252
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$2;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerActivity;->access$900(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v0

    const-string/jumbo v1, "NoResult"

    const v2, 0x7f0703e6

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onTextChanged(Landroid/widget/EditText;)V
    .locals 4
    .param p1, "editText"    # Landroid/widget/EditText;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 204
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 205
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$2;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerActivity;->access$000(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 206
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$2;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerActivity;->access$100(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 207
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$2;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoPickerActivity;->access$202(Lorg/telegram/ui/PhotoPickerActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 208
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$2;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v0, v2}, Lorg/telegram/ui/PhotoPickerActivity;->access$302(Lorg/telegram/ui/PhotoPickerActivity;Z)Z

    .line 209
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$2;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v0, v2}, Lorg/telegram/ui/PhotoPickerActivity;->access$402(Lorg/telegram/ui/PhotoPickerActivity;Z)Z

    .line 210
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$2;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v0, v3}, Lorg/telegram/ui/PhotoPickerActivity;->access$502(Lorg/telegram/ui/PhotoPickerActivity;Z)Z

    .line 211
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$2;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerActivity;->access$600(Lorg/telegram/ui/PhotoPickerActivity;)Landroid/os/AsyncTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$2;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerActivity;->access$600(Lorg/telegram/ui/PhotoPickerActivity;)Landroid/os/AsyncTask;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 213
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$2;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoPickerActivity;->access$602(Lorg/telegram/ui/PhotoPickerActivity;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 215
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$2;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerActivity;->access$700(Lorg/telegram/ui/PhotoPickerActivity;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity$2;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v1}, Lorg/telegram/ui/PhotoPickerActivity;->access$700(Lorg/telegram/ui/PhotoPickerActivity;)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 217
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$2;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v0, v3}, Lorg/telegram/ui/PhotoPickerActivity;->access$702(Lorg/telegram/ui/PhotoPickerActivity;I)I

    .line 219
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$2;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerActivity;->access$800(Lorg/telegram/ui/PhotoPickerActivity;)I

    move-result v0

    if-nez v0, :cond_4

    .line 220
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$2;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerActivity;->access$900(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v0

    const-string/jumbo v1, "NoRecentPhotos"

    const v2, 0x7f0703e5

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    .line 224
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$2;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerActivity;->access$1000(Lorg/telegram/ui/PhotoPickerActivity;)V

    .line 226
    :cond_3
    return-void

    .line 221
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$2;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerActivity;->access$800(Lorg/telegram/ui/PhotoPickerActivity;)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 222
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$2;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerActivity;->access$900(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v0

    const-string/jumbo v1, "NoRecentGIFs"

    const v2, 0x7f0703e4

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method
