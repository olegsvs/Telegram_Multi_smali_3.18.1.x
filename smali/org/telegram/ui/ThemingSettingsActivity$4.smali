.class Lorg/telegram/ui/ThemingSettingsActivity$4;
.super Ljava/lang/Object;
.source "ThemingSettingsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ThemingSettingsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ThemingSettingsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ThemingSettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ThemingSettingsActivity;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/ThemingSettingsActivity$4;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lorg/telegram/ui/ThemingSettingsActivity$4;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ThemingSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ThemingSettingsActivity$4;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingSettingsActivity;->access$200(Lorg/telegram/ui/ThemingSettingsActivity;)I

    move-result v0

    if-ne p3, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ThemingSettingsActivity$4;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    const-string/jumbo v1, "prefHeaderColor"

    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingSettingsActivity;->access$1600(Lorg/telegram/ui/ThemingSettingsActivity;Ljava/lang/String;)V

    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ThemingSettingsActivity$4;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingSettingsActivity;->access$400(Lorg/telegram/ui/ThemingSettingsActivity;)I

    move-result v0

    if-ne p3, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ThemingSettingsActivity$4;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    const-string/jumbo v1, "prefHeaderTitleColor"

    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingSettingsActivity;->access$1600(Lorg/telegram/ui/ThemingSettingsActivity;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ThemingSettingsActivity$4;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingSettingsActivity;->access$500(Lorg/telegram/ui/ThemingSettingsActivity;)I

    move-result v0

    if-ne p3, v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/ThemingSettingsActivity$4;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    const-string/jumbo v1, "prefHeaderStatusColor"

    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingSettingsActivity;->access$1600(Lorg/telegram/ui/ThemingSettingsActivity;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ThemingSettingsActivity$4;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingSettingsActivity;->access$600(Lorg/telegram/ui/ThemingSettingsActivity;)I

    move-result v0

    if-ne p3, v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/ThemingSettingsActivity$4;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    const-string/jumbo v1, "prefHeaderIconsColor"

    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingSettingsActivity;->access$1600(Lorg/telegram/ui/ThemingSettingsActivity;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ThemingSettingsActivity$4;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingSettingsActivity;->access$700(Lorg/telegram/ui/ThemingSettingsActivity;)I

    move-result v0

    if-ne p3, v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/ThemingSettingsActivity$4;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    const-string/jumbo v1, "prefAvatarColor"

    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingSettingsActivity;->access$1600(Lorg/telegram/ui/ThemingSettingsActivity;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/ThemingSettingsActivity$4;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingSettingsActivity;->access$800(Lorg/telegram/ui/ThemingSettingsActivity;)I

    move-result v0

    if-ne p3, v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/ThemingSettingsActivity$4;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    const-string/jumbo v1, "prefAvatarRadius"

    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingSettingsActivity;->access$1600(Lorg/telegram/ui/ThemingSettingsActivity;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/ThemingSettingsActivity$4;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingSettingsActivity;->access$900(Lorg/telegram/ui/ThemingSettingsActivity;)I

    move-result v0

    if-ne p3, v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/ThemingSettingsActivity$4;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    const-string/jumbo v1, "prefAvatarSize"

    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingSettingsActivity;->access$1600(Lorg/telegram/ui/ThemingSettingsActivity;Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/ThemingSettingsActivity$4;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingSettingsActivity;->access$1000(Lorg/telegram/ui/ThemingSettingsActivity;)I

    move-result v0

    if-ne p3, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/ThemingSettingsActivity$4;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    const-string/jumbo v1, "prefBGColor"

    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingSettingsActivity;->access$1600(Lorg/telegram/ui/ThemingSettingsActivity;Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/ThemingSettingsActivity$4;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingSettingsActivity;->access$1100(Lorg/telegram/ui/ThemingSettingsActivity;)I

    move-result v0

    if-ne p3, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/ThemingSettingsActivity$4;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    const-string/jumbo v1, "prefShadowColor"

    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingSettingsActivity;->access$1600(Lorg/telegram/ui/ThemingSettingsActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/ThemingSettingsActivity$4;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingSettingsActivity;->access$1200(Lorg/telegram/ui/ThemingSettingsActivity;)I

    move-result v0

    if-ne p3, v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/ThemingSettingsActivity$4;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    const-string/jumbo v1, "prefSectionColor"

    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingSettingsActivity;->access$1600(Lorg/telegram/ui/ThemingSettingsActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/ThemingSettingsActivity$4;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingSettingsActivity;->access$1300(Lorg/telegram/ui/ThemingSettingsActivity;)I

    move-result v0

    if-ne p3, v0, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/ThemingSettingsActivity$4;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    const-string/jumbo v1, "prefTitleColor"

    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingSettingsActivity;->access$1600(Lorg/telegram/ui/ThemingSettingsActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/ThemingSettingsActivity$4;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingSettingsActivity;->access$1400(Lorg/telegram/ui/ThemingSettingsActivity;)I

    move-result v0

    if-ne p3, v0, :cond_d

    iget-object v0, p0, Lorg/telegram/ui/ThemingSettingsActivity$4;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    const-string/jumbo v1, "prefSummaryColor"

    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingSettingsActivity;->access$1600(Lorg/telegram/ui/ThemingSettingsActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/ThemingSettingsActivity$4;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingSettingsActivity;->access$1500(Lorg/telegram/ui/ThemingSettingsActivity;)I

    move-result v0

    if-ne p3, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ThemingSettingsActivity$4;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    const-string/jumbo v1, "prefDividerColor"

    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingSettingsActivity;->access$1600(Lorg/telegram/ui/ThemingSettingsActivity;Ljava/lang/String;)V

    goto/16 :goto_1
.end method
