.class Lorg/telegram/ui/PhotoAlbumPickerActivity$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "PhotoAlbumPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoAlbumPickerActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoAlbumPickerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/PhotoAlbumPickerActivity;

    .prologue
    .line 126
    iput-object p1, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$1;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 129
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 130
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$1;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->finishFragment()V

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    if-ne p1, v1, :cond_2

    .line 132
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$1;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    invoke-static {v0}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$000(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Lorg/telegram/ui/PhotoAlbumPickerActivity$PhotoAlbumPickerActivityDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$1;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->finishFragment(Z)V

    .line 134
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$1;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    invoke-static {v0}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$000(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Lorg/telegram/ui/PhotoAlbumPickerActivity$PhotoAlbumPickerActivityDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/PhotoAlbumPickerActivity$PhotoAlbumPickerActivityDelegate;->startPhotoSelectActivity()V

    goto :goto_0

    .line 136
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 137
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$1;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    invoke-static {v0}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$100(Lorg/telegram/ui/PhotoAlbumPickerActivity;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$1;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    invoke-static {v0, v2}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$102(Lorg/telegram/ui/PhotoAlbumPickerActivity;I)I

    .line 141
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$1;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    invoke-static {v0}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$200(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, "PickerPhotos"

    const v2, 0x7f0704de

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$1;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    invoke-static {v0}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$300(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, "NoPhotos"

    const v2, 0x7f0703e0

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$1;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    invoke-static {v0}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$400(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 144
    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 145
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$1;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    invoke-static {v0}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$100(Lorg/telegram/ui/PhotoAlbumPickerActivity;)I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 148
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$1;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$102(Lorg/telegram/ui/PhotoAlbumPickerActivity;I)I

    .line 149
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$1;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    invoke-static {v0}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$200(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, "PickerVideo"

    const v2, 0x7f0704df

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$1;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    invoke-static {v0}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$300(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, "NoVideo"

    const v2, 0x7f0703f0

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$1;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    invoke-static {v0}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$400(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0
.end method
