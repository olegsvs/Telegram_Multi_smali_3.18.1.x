.class Lorg/telegram/ui/PlusChatsStatsActivity$3;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "PlusChatsStatsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PlusChatsStatsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PlusChatsStatsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PlusChatsStatsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/PlusChatsStatsActivity;

    .prologue
    .line 426
    iput-object p1, p0, Lorg/telegram/ui/PlusChatsStatsActivity$3;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 429
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 430
    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$3;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->finishFragment()V

    .line 432
    :cond_0
    return-void
.end method
