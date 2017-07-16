.class Lorg/telegram/ui/Components/PasscodeView$6;
.super Ljava/lang/Object;
.source "PasscodeView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PasscodeView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PasscodeView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PasscodeView;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/PasscodeView;

    .prologue
    .line 675
    iput-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$6;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 678
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 679
    .local v0, "tag":I
    packed-switch v0, :pswitch_data_0

    .line 714
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView$6;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {v1}, Lorg/telegram/ui/Components/PasscodeView;->access$600(Lorg/telegram/ui/Components/PasscodeView;)Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->lenght()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 715
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView$6;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/PasscodeView;->access$400(Lorg/telegram/ui/Components/PasscodeView;Z)V

    .line 717
    :cond_0
    return-void

    .line 681
    :pswitch_0
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView$6;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {v1}, Lorg/telegram/ui/Components/PasscodeView;->access$600(Lorg/telegram/ui/Components/PasscodeView;)Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    move-result-object v1

    const-string/jumbo v2, "0"

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->appendCharacter(Ljava/lang/String;)V

    goto :goto_0

    .line 684
    :pswitch_1
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView$6;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {v1}, Lorg/telegram/ui/Components/PasscodeView;->access$600(Lorg/telegram/ui/Components/PasscodeView;)Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->appendCharacter(Ljava/lang/String;)V

    goto :goto_0

    .line 687
    :pswitch_2
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView$6;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {v1}, Lorg/telegram/ui/Components/PasscodeView;->access$600(Lorg/telegram/ui/Components/PasscodeView;)Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    move-result-object v1

    const-string/jumbo v2, "2"

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->appendCharacter(Ljava/lang/String;)V

    goto :goto_0

    .line 690
    :pswitch_3
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView$6;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {v1}, Lorg/telegram/ui/Components/PasscodeView;->access$600(Lorg/telegram/ui/Components/PasscodeView;)Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    move-result-object v1

    const-string/jumbo v2, "3"

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->appendCharacter(Ljava/lang/String;)V

    goto :goto_0

    .line 693
    :pswitch_4
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView$6;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {v1}, Lorg/telegram/ui/Components/PasscodeView;->access$600(Lorg/telegram/ui/Components/PasscodeView;)Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    move-result-object v1

    const-string/jumbo v2, "4"

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->appendCharacter(Ljava/lang/String;)V

    goto :goto_0

    .line 696
    :pswitch_5
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView$6;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {v1}, Lorg/telegram/ui/Components/PasscodeView;->access$600(Lorg/telegram/ui/Components/PasscodeView;)Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    move-result-object v1

    const-string/jumbo v2, "5"

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->appendCharacter(Ljava/lang/String;)V

    goto :goto_0

    .line 699
    :pswitch_6
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView$6;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {v1}, Lorg/telegram/ui/Components/PasscodeView;->access$600(Lorg/telegram/ui/Components/PasscodeView;)Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    move-result-object v1

    const-string/jumbo v2, "6"

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->appendCharacter(Ljava/lang/String;)V

    goto :goto_0

    .line 702
    :pswitch_7
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView$6;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {v1}, Lorg/telegram/ui/Components/PasscodeView;->access$600(Lorg/telegram/ui/Components/PasscodeView;)Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    move-result-object v1

    const-string/jumbo v2, "7"

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->appendCharacter(Ljava/lang/String;)V

    goto :goto_0

    .line 705
    :pswitch_8
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView$6;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {v1}, Lorg/telegram/ui/Components/PasscodeView;->access$600(Lorg/telegram/ui/Components/PasscodeView;)Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    move-result-object v1

    const-string/jumbo v2, "8"

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->appendCharacter(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 708
    :pswitch_9
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView$6;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {v1}, Lorg/telegram/ui/Components/PasscodeView;->access$600(Lorg/telegram/ui/Components/PasscodeView;)Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    move-result-object v1

    const-string/jumbo v2, "9"

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->appendCharacter(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 711
    :pswitch_a
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView$6;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {v1}, Lorg/telegram/ui/Components/PasscodeView;->access$600(Lorg/telegram/ui/Components/PasscodeView;)Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->eraseLastCharacter()V

    goto/16 :goto_0

    .line 679
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
