.class Lorg/telegram/ui/ThemingActivity$3$4;
.super Ljava/lang/Object;
.source "ThemingActivity.java"

# interfaces
.implements Lorg/telegram/ui/DocumentSelectActivity$DocumentSelectActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ThemingActivity$3;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ThemingActivity$3;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ThemingActivity$3;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ThemingActivity$3;

    .prologue
    .line 284
    iput-object p1, p0, Lorg/telegram/ui/ThemingActivity$3$4;->this$1:Lorg/telegram/ui/ThemingActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didSelectFiles(Lorg/telegram/ui/DocumentSelectActivity;Ljava/util/ArrayList;)V
    .locals 12
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
    .local p2, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const v11, 0xf4241

    const/4 v10, 0x0

    .line 287
    invoke-virtual {p2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 288
    .local v7, "xmlFile":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 289
    .local v4, "themeFile":Ljava/io/File;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lorg/telegram/ui/ThemingActivity$3$4;->this$1:Lorg/telegram/ui/ThemingActivity$3;

    iget-object v8, v8, Lorg/telegram/ui/ThemingActivity$3;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-virtual {v8}, Lorg/telegram/ui/ThemingActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v0, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 290
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v8, "ApplyTheme"

    const v9, 0x7f07007b

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 291
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 292
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "."

    invoke-virtual {v7, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "_wallpaper.jpg"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 293
    .local v6, "wName":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 294
    .local v5, "wFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 295
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 297
    sget-object v8, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v9, "mainconfig"

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 298
    .local v2, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v8, "selectedBackground"

    invoke-interface {v2, v8, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 299
    .local v3, "selectedBackground":I
    if-ne v3, v11, :cond_0

    .line 302
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 303
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v8, "selectedBackground"

    const/16 v9, 0x71

    invoke-interface {v1, v8, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 304
    const-string/jumbo v8, "selectedColor"

    invoke-interface {v1, v8, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 305
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 309
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "preferences":Landroid/content/SharedPreferences;
    .end local v3    # "selectedBackground":I
    :cond_0
    const-string/jumbo v8, "OK"

    const v9, 0x7f070452

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lorg/telegram/ui/ThemingActivity$3$4$1;

    invoke-direct {v9, p0, v7, v6}, Lorg/telegram/ui/ThemingActivity$3$4$1;-><init>(Lorg/telegram/ui/ThemingActivity$3$4;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 324
    const-string/jumbo v8, "Cancel"

    const v9, 0x7f0700f0

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 325
    iget-object v8, p0, Lorg/telegram/ui/ThemingActivity$3$4;->this$1:Lorg/telegram/ui/ThemingActivity$3;

    iget-object v8, v8, Lorg/telegram/ui/ThemingActivity$3;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/telegram/ui/ThemingActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 326
    return-void
.end method

.method public startDocumentSelectActivity()V
    .locals 0

    .prologue
    .line 329
    return-void
.end method
