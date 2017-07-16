.class public Lorg/telegram/ui/ActionBar/BaseFragment;
.super Ljava/lang/Object;
.source "BaseFragment.java"


# instance fields
.field protected actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

.field protected arguments:Landroid/os/Bundle;

.field protected classGuid:I

.field protected fragmentView:Landroid/view/View;

.field protected hasOwnBackground:Z

.field private isFinished:Z

.field protected parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

.field protected swipeBackEnabled:Z

.field protected visibleDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->isFinished:Z

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    .line 40
    iput v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->swipeBackEnabled:Z

    .line 43
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->hasOwnBackground:Z

    .line 46
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->generateClassGuid()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->isFinished:Z

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    .line 40
    iput v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->swipeBackEnabled:Z

    .line 43
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->hasOwnBackground:Z

    .line 50
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    .line 51
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->generateClassGuid()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    .line 52
    return-void
.end method


# virtual methods
.method protected clearViews()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 71
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 72
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 73
    .local v1, "parent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    .line 75
    :try_start_0
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :cond_0
    :goto_0
    iput-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 82
    .end local v1    # "parent":Landroid/view/ViewGroup;
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v2, :cond_3

    .line 83
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 84
    .restart local v1    # "parent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_2

    .line 86
    :try_start_1
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 91
    :cond_2
    :goto_1
    iput-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 93
    .end local v1    # "parent":Landroid/view/ViewGroup;
    :cond_3
    iput-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    .line 94
    return-void

    .line 76
    .restart local v1    # "parent":Landroid/view/ViewGroup;
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 87
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 88
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected createActionBar(Landroid/content/Context;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 136
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBar;-><init>(Landroid/content/Context;)V

    .line 137
    .local v0, "actionBar":Lorg/telegram/ui/ActionBar/ActionBar;
    const-string/jumbo v1, "actionBarDefault"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 138
    const-string/jumbo v1, "actionBarDefaultSelector"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 139
    const-string/jumbo v1, "actionBarActionModeDefaultSelector"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 140
    const-string/jumbo v1, "actionBarDefaultIcon"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 141
    const-string/jumbo v1, "actionBarActionModeDefaultIcon"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 142
    return-object v0
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public dismissCurrentDialig()V
    .locals 2

    .prologue
    .line 250
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    if-nez v1, :cond_0

    .line 259
    :goto_0
    return-void

    .line 254
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 255
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public dismissDialogOnPause(Landroid/app/Dialog;)Z
    .locals 1
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 262
    const/4 v0, 0x1

    return v0
.end method

.method public extendActionMode(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 386
    const/4 v0, 0x0

    return v0
.end method

.method public finishFragment()V
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment(Z)V

    .line 147
    return-void
.end method

.method public finishFragment(Z)V
    .locals 1
    .param p1, "animated"    # Z

    .prologue
    .line 150
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->isFinished:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-nez v0, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->closeLastFragment(Z)V

    goto :goto_0
.end method

.method public getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method public getArguments()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    return-object v0
.end method

.method public getFragmentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method public getParentActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->parentActivity:Landroid/app/Activity;

    .line 240
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getThemeDescriptions()[Lorg/telegram/ui/ActionBar/ThemeDescription;
    .locals 1

    .prologue
    .line 390
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVisibleDialog()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public needDelayOpenAnimation()Z
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityResultFragment(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 210
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x1

    return v0
.end method

.method protected onBecomeFullyVisible()V
    .locals 0

    .prologue
    .line 289
    return-void
.end method

.method public onBeginSlide()V
    .locals 2

    .prologue
    .line 267
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 268
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 269
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v1, :cond_1

    .line 275
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->onPause()V

    .line 277
    :cond_1
    return-void

    .line 271
    :catch_0
    move-exception v0

    .line 272
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 202
    return-void
.end method

.method protected onCustomTransitionAnimation(ZLjava/lang/Runnable;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p1, "isOpen"    # Z
    .param p2, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 292
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onDialogDismiss(Landroid/app/Dialog;)V
    .locals 0
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 375
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x1

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .prologue
    .line 168
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-virtual {v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequestsForGuid(I)V

    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->isFinished:Z

    .line 170
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setEnabled(Z)V

    .line 173
    :cond_0
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 297
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 187
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v1, :cond_0

    .line 188
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->onPause()V

    .line 191
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->dismissDialogOnPause(Landroid/app/Dialog;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 192
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 193
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :cond_1
    :goto_0
    return-void

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onRequestPermissionsResultFragment(I[Ljava/lang/String;[I)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 214
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 180
    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->needRestart:Z

    if-eqz v0, :cond_0

    .line 181
    const/4 v0, 0x0

    sput-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->needRestart:Z

    .line 182
    invoke-static {}, Lorg/telegram/messenger/Utilities;->restartApp()V

    .line 184
    :cond_0
    return-void
.end method

.method protected onTransitionAnimationEnd(ZZ)V
    .locals 0
    .param p1, "isOpen"    # Z
    .param p2, "backward"    # Z

    .prologue
    .line 285
    return-void
.end method

.method protected onTransitionAnimationStart(ZZ)V
    .locals 0
    .param p1, "isOpen"    # Z
    .param p2, "backward"    # Z

    .prologue
    .line 281
    return-void
.end method

.method public presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z
    .locals 1
    .param p1, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;

    .prologue
    .line 225
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z
    .locals 1
    .param p1, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;
    .param p2, "removeLast"    # Z

    .prologue
    .line 229
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZ)Z
    .locals 2
    .param p1, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;
    .param p2, "removeLast"    # Z
    .param p3, "forceWithoutAnimation"    # Z

    .prologue
    const/4 v0, 0x1

    .line 233
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v1, p1, p2, p3, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeSelfFromStack()V
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->isFinished:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-nez v0, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeFragmentFromStack(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    goto :goto_0
.end method

.method public restoreSelfArgs(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 222
    return-void
.end method

.method public saveSelfArgs(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 218
    return-void
.end method

.method protected setParentLayout(Lorg/telegram/ui/ActionBar/ActionBarLayout;)V
    .locals 6
    .param p1, "layout"    # Lorg/telegram/ui/ActionBar/ActionBarLayout;

    .prologue
    const/4 v5, 0x0

    .line 97
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eq v3, p1, :cond_5

    .line 98
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    .line 99
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 100
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 101
    .local v2, "parent":Landroid/view/ViewGroup;
    if-eqz v2, :cond_0

    .line 103
    :try_start_0
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :cond_0
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eq v3, v4, :cond_1

    .line 109
    iput-object v5, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 112
    .end local v2    # "parent":Landroid/view/ViewGroup;
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v3, :cond_4

    .line 113
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBar;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eq v3, v4, :cond_6

    const/4 v0, 0x1

    .line 114
    .local v0, "differentParent":Z
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBar;->getAddToContainer()Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v0, :cond_3

    .line 115
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBar;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 116
    .restart local v2    # "parent":Landroid/view/ViewGroup;
    if-eqz v2, :cond_3

    .line 118
    :try_start_1
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 124
    .end local v2    # "parent":Landroid/view/ViewGroup;
    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    .line 125
    iput-object v5, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 128
    .end local v0    # "differentParent":Z
    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-nez v3, :cond_5

    .line 129
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->createActionBar(Landroid/content/Context;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 130
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iput-object p0, v3, Lorg/telegram/ui/ActionBar/ActionBar;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 133
    :cond_5
    return-void

    .line 104
    .restart local v2    # "parent":Landroid/view/ViewGroup;
    :catch_0
    move-exception v1

    .line 105
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 113
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "parent":Landroid/view/ViewGroup;
    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    .line 119
    .restart local v0    # "differentParent":Z
    .restart local v2    # "parent":Landroid/view/ViewGroup;
    :catch_1
    move-exception v1

    .line 120
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public setVisibleDialog(Landroid/app/Dialog;)V
    .locals 0
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 382
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    .line 383
    return-void
.end method

.method public showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 2
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 300
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;ZLandroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public showDialog(Landroid/app/Dialog;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;
    .locals 1
    .param p1, "dialog"    # Landroid/app/Dialog;
    .param p2, "onDismissListener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 304
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;ZLandroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public showDialog(Landroid/app/Dialog;ZLandroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;
    .locals 10
    .param p1, "dialog"    # Landroid/app/Dialog;
    .param p2, "allowInTransition"    # Z
    .param p3, "onDismissListener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    const/4 v5, 0x0

    .line 308
    if-eqz p1, :cond_0

    iget-object v6, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-boolean v6, v6, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animationInProgress:Z

    if-nez v6, :cond_0

    iget-object v6, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-boolean v6, v6, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startedTracking:Z

    if-nez v6, :cond_0

    if-nez p2, :cond_1

    iget-object v6, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->checkTransitionAnimation()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 370
    :cond_0
    :goto_0
    return-object v5

    .line 312
    :cond_1
    :try_start_0
    iget-object v6, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    if-eqz v6, :cond_2

    .line 313
    iget-object v6, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->dismiss()V

    .line 314
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    :cond_2
    :goto_1
    :try_start_1
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    .line 321
    iget-object v6, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 322
    iget-object v6, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    new-instance v7, Lorg/telegram/ui/ActionBar/BaseFragment$1;

    invoke-direct {v7, p0, p3}, Lorg/telegram/ui/ActionBar/BaseFragment$1;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v6, v7}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 332
    iget-object v6, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    .line 334
    sget-boolean v6, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v6, :cond_7

    .line 339
    iget-object v6, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string/jumbo v7, "android:id/alertTitle"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 340
    .local v3, "id":I
    iget-object v6, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    invoke-virtual {v6, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 341
    .local v4, "tv":Landroid/widget/TextView;
    if-eqz v4, :cond_3

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->dialogColor:I

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 342
    :cond_3
    iget-object v6, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string/jumbo v7, "android:id/titleDivider"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 343
    iget-object v6, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    invoke-virtual {v6, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 344
    .local v1, "divider":Landroid/view/View;
    if-eqz v1, :cond_4

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->dialogColor:I

    invoke-virtual {v1, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 346
    :cond_4
    iget-object v6, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    const v7, 0x1020019

    invoke-virtual {v6, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 347
    .local v0, "btn":Landroid/widget/Button;
    if-eqz v0, :cond_5

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->dialogColor:I

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setTextColor(I)V

    .line 348
    :cond_5
    iget-object v6, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    const v7, 0x102001a

    invoke-virtual {v6, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "btn":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 349
    .restart local v0    # "btn":Landroid/widget/Button;
    if-eqz v0, :cond_6

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->dialogColor:I

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setTextColor(I)V

    .line 350
    :cond_6
    iget-object v6, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    const v7, 0x102001b

    invoke-virtual {v6, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "btn":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 351
    .restart local v0    # "btn":Landroid/widget/Button;
    if-eqz v0, :cond_7

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->dialogColor:I

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setTextColor(I)V

    .line 366
    .end local v0    # "btn":Landroid/widget/Button;
    .end local v1    # "divider":Landroid/view/View;
    .end local v3    # "id":I
    .end local v4    # "tv":Landroid/widget/TextView;
    :cond_7
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 316
    :catch_0
    move-exception v2

    .line 317
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 367
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 368
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 244
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startActivityForResult(Landroid/content/Intent;I)V

    .line 247
    :cond_0
    return-void
.end method
