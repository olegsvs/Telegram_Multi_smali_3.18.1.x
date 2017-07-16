.class Lorg/telegram/ui/PhotoPickerActivity$12;
.super Ljava/lang/Object;
.source "PhotoPickerActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoPickerActivity;->fixLayout()V
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
    .line 1077
    iput-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity$12;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .prologue
    .line 1080
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$12;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerActivity;->access$2700(Lorg/telegram/ui/PhotoPickerActivity;)V

    .line 1081
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$12;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerActivity;->access$2800(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1082
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$12;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerActivity;->access$2800(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1084
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
