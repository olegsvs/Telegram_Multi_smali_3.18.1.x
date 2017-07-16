.class Lorg/telegram/ui/ImageListActivity$2;
.super Ljava/lang/Object;
.source "ImageListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ImageListActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ImageListActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ImageListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ImageListActivity;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/ImageListActivity$2;->this$0:Lorg/telegram/ui/ImageListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v7, 0x0

    iget-object v5, p0, Lorg/telegram/ui/ImageListActivity$2;->this$0:Lorg/telegram/ui/ImageListActivity;

    invoke-static {v5}, Lorg/telegram/ui/ImageListActivity;->access$000(Lorg/telegram/ui/ImageListActivity;)I

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->bubblesNamesArray:[Ljava/lang/String;

    aget-object v4, v5, p3

    .local v4, "selectedItem":Ljava/lang/String;
    :goto_0
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v6, "theme"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .local v3, "preferences":Landroid/content/SharedPreferences;
    iget-object v5, p0, Lorg/telegram/ui/ImageListActivity$2;->this$0:Lorg/telegram/ui/ImageListActivity;

    invoke-static {v5}, Lorg/telegram/ui/ImageListActivity;->access$000(Lorg/telegram/ui/ImageListActivity;)I

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v1, "chatBubbleStyle"

    .local v1, "key":Ljava/lang/String;
    :goto_1
    const-string/jumbo v5, ""

    invoke-interface {v3, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "oldVal":Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v5, p0, Lorg/telegram/ui/ImageListActivity$2;->this$0:Lorg/telegram/ui/ImageListActivity;

    invoke-static {v5}, Lorg/telegram/ui/ImageListActivity;->access$000(Lorg/telegram/ui/ImageListActivity;)I

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lorg/telegram/ui/ImageListActivity$2;->this$0:Lorg/telegram/ui/ImageListActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ImageListActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->setBubbles(Landroid/content/Context;)V

    :goto_2
    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->applyChatTheme(Z)V

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->applyDialogsTheme()V

    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    iget-object v5, p0, Lorg/telegram/ui/ImageListActivity$2;->this$0:Lorg/telegram/ui/ImageListActivity;

    invoke-static {v5}, Lorg/telegram/ui/ImageListActivity;->access$100(Lorg/telegram/ui/ImageListActivity;)Lorg/telegram/ui/ImageListActivity$CustomListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/ImageListActivity$CustomListAdapter;->notifyDataSetChanged()V

    iget-object v5, p0, Lorg/telegram/ui/ImageListActivity$2;->this$0:Lorg/telegram/ui/ImageListActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ImageListActivity;->finishFragment()V

    return-void

    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "oldVal":Ljava/lang/String;
    .end local v3    # "preferences":Landroid/content/SharedPreferences;
    .end local v4    # "selectedItem":Ljava/lang/String;
    :cond_1
    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->checksNamesArray:[Ljava/lang/String;

    aget-object v4, v5, p3

    goto :goto_0

    .restart local v3    # "preferences":Landroid/content/SharedPreferences;
    .restart local v4    # "selectedItem":Ljava/lang/String;
    :cond_2
    const-string/jumbo v1, "chatCheckStyle"

    goto :goto_1

    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v1    # "key":Ljava/lang/String;
    .restart local v2    # "oldVal":Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lorg/telegram/ui/ImageListActivity$2;->this$0:Lorg/telegram/ui/ImageListActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ImageListActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->setChecks(Landroid/content/Context;)V

    goto :goto_2
.end method
