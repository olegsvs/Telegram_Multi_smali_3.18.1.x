.class Lorg/telegram/ui/StickersActivity$ListAdapter$1;
.source "StickersActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/StickersActivity$ListAdapter;->onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/StickersActivity$ListAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/StickersActivity$ListAdapter;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/StickersActivity$ListAdapter;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/StickersActivity$ListAdapter;


    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "widget"    # Landroid/view/View;

    .prologue
    const-string/jumbo v0, "stickers"

    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/StickersActivity$ListAdapter;

    iget-object v1, v1, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->openByUserName(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;I)V

    return-void
.end method
