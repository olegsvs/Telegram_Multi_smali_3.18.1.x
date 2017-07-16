.class Lorg/telegram/ui/MediaActivity$2;
.super Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;
.source "MediaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/MediaActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/MediaActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/MediaActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 497
    iput-object p1, p0, Lorg/telegram/ui/MediaActivity$2;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSearchCollapse()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 506
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$2;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$1500(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 507
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$2;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$1000(Lorg/telegram/ui/MediaActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 508
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$2;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$1700(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->search(Ljava/lang/String;)V

    .line 514
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$2;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v0, v2}, Lorg/telegram/ui/MediaActivity;->access$1602(Lorg/telegram/ui/MediaActivity;Z)Z

    .line 515
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$2;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v0, v2}, Lorg/telegram/ui/MediaActivity;->access$2002(Lorg/telegram/ui/MediaActivity;Z)Z

    .line 516
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$2;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$1100(Lorg/telegram/ui/MediaActivity;)V

    .line 517
    return-void

    .line 509
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$2;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$1000(Lorg/telegram/ui/MediaActivity;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 510
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$2;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$1800(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->search(Ljava/lang/String;)V

    goto :goto_0

    .line 511
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$2;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$1000(Lorg/telegram/ui/MediaActivity;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 512
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$2;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$1900(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->search(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSearchExpand()V
    .locals 2

    .prologue
    .line 500
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$2;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$1500(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 501
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$2;->this$0:Lorg/telegram/ui/MediaActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/MediaActivity;->access$1602(Lorg/telegram/ui/MediaActivity;Z)Z

    .line 502
    return-void
.end method

.method public onTextChanged(Landroid/widget/EditText;)V
    .locals 3
    .param p1, "editText"    # Landroid/widget/EditText;

    .prologue
    const/4 v2, 0x1

    .line 521
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 522
    .local v0, "text":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 523
    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$2;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v1, v2}, Lorg/telegram/ui/MediaActivity;->access$2002(Lorg/telegram/ui/MediaActivity;Z)Z

    .line 524
    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$2;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v1}, Lorg/telegram/ui/MediaActivity;->access$1100(Lorg/telegram/ui/MediaActivity;)V

    .line 526
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$2;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v1}, Lorg/telegram/ui/MediaActivity;->access$1000(Lorg/telegram/ui/MediaActivity;)I

    move-result v1

    if-ne v1, v2, :cond_3

    .line 527
    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$2;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v1}, Lorg/telegram/ui/MediaActivity;->access$1700(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    move-result-object v1

    if-nez v1, :cond_2

    .line 542
    :cond_1
    :goto_0
    return-void

    .line 530
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$2;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v1}, Lorg/telegram/ui/MediaActivity;->access$1700(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->search(Ljava/lang/String;)V

    goto :goto_0

    .line 531
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$2;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v1}, Lorg/telegram/ui/MediaActivity;->access$1000(Lorg/telegram/ui/MediaActivity;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 532
    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$2;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v1}, Lorg/telegram/ui/MediaActivity;->access$1800(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 535
    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$2;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v1}, Lorg/telegram/ui/MediaActivity;->access$1800(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->search(Ljava/lang/String;)V

    goto :goto_0

    .line 536
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$2;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v1}, Lorg/telegram/ui/MediaActivity;->access$1000(Lorg/telegram/ui/MediaActivity;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 537
    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$2;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v1}, Lorg/telegram/ui/MediaActivity;->access$1900(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 540
    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$2;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v1}, Lorg/telegram/ui/MediaActivity;->access$1900(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->search(Ljava/lang/String;)V

    goto :goto_0
.end method
