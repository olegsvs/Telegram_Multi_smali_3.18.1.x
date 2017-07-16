.class Lorg/telegram/ui/PlusSettingsActivity$3$14;
.super Ljava/lang/Object;
.source "PlusSettingsActivity.java"

# interfaces
.implements Lorg/telegram/ui/DocumentSelectActivity$DocumentSelectActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PlusSettingsActivity$3;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PlusSettingsActivity$3;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PlusSettingsActivity$3;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/PlusSettingsActivity$3;

    .prologue
    .line 1191
    iput-object p1, p0, Lorg/telegram/ui/PlusSettingsActivity$3$14;->this$1:Lorg/telegram/ui/PlusSettingsActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didSelectFiles(Lorg/telegram/ui/DocumentSelectActivity;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "activity"    # Lorg/telegram/ui/DocumentSelectActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/ui/DocumentSelectActivity;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1194
    .local p2, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$3$14;->this$1:Lorg/telegram/ui/PlusSettingsActivity$3;

    iget-object v1, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$6900(Lorg/telegram/ui/PlusSettingsActivity;Ljava/lang/String;)V

    .line 1195
    return-void
.end method

.method public startDocumentSelectActivity()V
    .locals 0

    .prologue
    .line 1198
    return-void
.end method
