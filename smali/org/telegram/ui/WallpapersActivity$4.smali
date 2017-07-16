.class Lorg/telegram/ui/WallpapersActivity$4;
.super Ljava/lang/Object;
.source "WallpapersActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/WallpapersActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/WallpapersActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/WallpapersActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/WallpapersActivity;

    .prologue
    .line 235
    iput-object p1, p0, Lorg/telegram/ui/WallpapersActivity$4;->this$0:Lorg/telegram/ui/WallpapersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 238
    if-nez p2, :cond_0

    .line 239
    iget-object v1, p0, Lorg/telegram/ui/WallpapersActivity$4;->this$0:Lorg/telegram/ui/WallpapersActivity;

    invoke-static {v1}, Lorg/telegram/ui/WallpapersActivity;->access$600(Lorg/telegram/ui/WallpapersActivity;)Lorg/telegram/ui/Components/WallpaperUpdater;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/WallpaperUpdater;->showAlert(Z)V

    .line 261
    :goto_0
    new-instance v1, Lorg/telegram/ui/WallpapersActivity$4$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/WallpapersActivity$4$1;-><init>(Lorg/telegram/ui/WallpapersActivity$4;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 267
    :goto_1
    return-void

    .line 241
    :cond_0
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->hasWallpaperFromTheme()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 242
    if-ne p2, v4, :cond_1

    .line 243
    iget-object v1, p0, Lorg/telegram/ui/WallpapersActivity$4;->this$0:Lorg/telegram/ui/WallpapersActivity;

    const/4 v2, -0x2

    invoke-static {v1, v2}, Lorg/telegram/ui/WallpapersActivity;->access$002(Lorg/telegram/ui/WallpapersActivity;I)I

    .line 244
    iget-object v1, p0, Lorg/telegram/ui/WallpapersActivity$4;->this$0:Lorg/telegram/ui/WallpapersActivity;

    invoke-static {v1, v3}, Lorg/telegram/ui/WallpapersActivity;->access$102(Lorg/telegram/ui/WallpapersActivity;Z)Z

    .line 245
    iget-object v1, p0, Lorg/telegram/ui/WallpapersActivity$4;->this$0:Lorg/telegram/ui/WallpapersActivity;

    invoke-static {v1}, Lorg/telegram/ui/WallpapersActivity;->access$700(Lorg/telegram/ui/WallpapersActivity;)Lorg/telegram/ui/WallpapersActivity$ListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/WallpapersActivity$ListAdapter;->notifyDataSetChanged()V

    .line 246
    iget-object v1, p0, Lorg/telegram/ui/WallpapersActivity$4;->this$0:Lorg/telegram/ui/WallpapersActivity;

    invoke-static {v1}, Lorg/telegram/ui/WallpapersActivity;->access$800(Lorg/telegram/ui/WallpapersActivity;)V

    goto :goto_1

    .line 249
    :cond_1
    add-int/lit8 p2, p2, -0x2

    .line 254
    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/WallpapersActivity$4;->this$0:Lorg/telegram/ui/WallpapersActivity;

    invoke-static {v1}, Lorg/telegram/ui/WallpapersActivity;->access$900(Lorg/telegram/ui/WallpapersActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$WallPaper;

    .line 255
    .local v0, "wallPaper":Lorg/telegram/tgnet/TLRPC$WallPaper;
    iget-object v1, p0, Lorg/telegram/ui/WallpapersActivity$4;->this$0:Lorg/telegram/ui/WallpapersActivity;

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$WallPaper;->id:I

    invoke-static {v1, v2}, Lorg/telegram/ui/WallpapersActivity;->access$002(Lorg/telegram/ui/WallpapersActivity;I)I

    .line 256
    iget-object v1, p0, Lorg/telegram/ui/WallpapersActivity$4;->this$0:Lorg/telegram/ui/WallpapersActivity;

    invoke-static {v1, v4}, Lorg/telegram/ui/WallpapersActivity;->access$102(Lorg/telegram/ui/WallpapersActivity;Z)Z

    .line 257
    iget-object v1, p0, Lorg/telegram/ui/WallpapersActivity$4;->this$0:Lorg/telegram/ui/WallpapersActivity;

    invoke-static {v1}, Lorg/telegram/ui/WallpapersActivity;->access$700(Lorg/telegram/ui/WallpapersActivity;)Lorg/telegram/ui/WallpapersActivity$ListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/WallpapersActivity$ListAdapter;->notifyDataSetChanged()V

    .line 258
    iget-object v1, p0, Lorg/telegram/ui/WallpapersActivity$4;->this$0:Lorg/telegram/ui/WallpapersActivity;

    invoke-static {v1}, Lorg/telegram/ui/WallpapersActivity;->access$800(Lorg/telegram/ui/WallpapersActivity;)V

    goto :goto_0

    .line 252
    .end local v0    # "wallPaper":Lorg/telegram/tgnet/TLRPC$WallPaper;
    :cond_2
    add-int/lit8 p2, p2, -0x1

    goto :goto_2
.end method
