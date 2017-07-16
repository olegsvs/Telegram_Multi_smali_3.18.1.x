.class public final Lorg/telegram/messenger/support/customtabs/CustomTabsIntent$Builder;
.super Ljava/lang/Object;
.source "CustomTabsIntent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/support/customtabs/CustomTabsIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mActionButtons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private final mIntent:Landroid/content/Intent;

.field private mMenuItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mStartAnimationBundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/support/customtabs/CustomTabsIntent$Builder;-><init>(Lorg/telegram/messenger/support/customtabs/CustomTabsSession;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/support/customtabs/CustomTabsSession;)V
    .locals 4
    .param p1, "session"    # Lorg/telegram/messenger/support/customtabs/CustomTabsSession;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsIntent$Builder;->mIntent:Landroid/content/Intent;

    .line 96
    iput-object v1, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsIntent$Builder;->mMenuItems:Ljava/util/ArrayList;

    .line 97
    iput-object v1, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsIntent$Builder;->mStartAnimationBundle:Landroid/os/Bundle;

    .line 98
    iput-object v1, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsIntent$Builder;->mActionButtons:Ljava/util/ArrayList;

    .line 99
    if-eqz p1, :cond_0

    .line 100
    iget-object v2, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsIntent$Builder;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1}, Lorg/telegram/messenger/support/customtabs/CustomTabsSession;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 104
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "android.support.customtabs.extra.SESSION"

    if-nez p1, :cond_1

    :goto_0
    invoke-static {v0, v2, v1}, Landroid/support/v4/app/BundleCompat;->putBinder(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 105
    iget-object v1, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsIntent$Builder;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 106
    return-void

    .line 104
    :cond_1
    invoke-virtual {p1}, Lorg/telegram/messenger/support/customtabs/CustomTabsSession;->getBinder()Landroid/os/IBinder;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public addDefaultShareMenuItem()Lorg/telegram/messenger/support/customtabs/CustomTabsIntent$Builder;
    .locals 3

    .prologue
    .line 141
    iget-object v0, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsIntent$Builder;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "android.support.customtabs.extra.SHARE_MENU_ITEM"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 142
    return-object p0
.end method

.method public addMenuItem(Ljava/lang/String;Landroid/app/PendingIntent;)Lorg/telegram/messenger/support/customtabs/CustomTabsIntent$Builder;
    .locals 2
    .param p1, "label"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 129
    iget-object v1, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsIntent$Builder;->mMenuItems:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 130
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsIntent$Builder;->mMenuItems:Ljava/util/ArrayList;

    .line 133
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 134
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "android.support.customtabs.customaction.MENU_ITEM_TITLE"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string/jumbo v1, "android.support.customtabs.customaction.PENDING_INTENT"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 136
    iget-object v1, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsIntent$Builder;->mMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    return-object p0
.end method

.method public addToolbarItem(ILandroid/graphics/Bitmap;Ljava/lang/String;Landroid/app/PendingIntent;)Lorg/telegram/messenger/support/customtabs/CustomTabsIntent$Builder;
    .locals 3
    .param p1, "id"    # I
    .param p2, "icon"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "description"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "pendingIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 161
    iget-object v1, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsIntent$Builder;->mActionButtons:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 162
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsIntent$Builder;->mActionButtons:Ljava/util/ArrayList;

    .line 165
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsIntent$Builder;->mActionButtons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_1

    .line 166
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Exceeded maximum toolbar item count of 5"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 168
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 169
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "android.support.customtabs.customaction.ID"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 170
    const-string/jumbo v1, "android.support.customtabs.customaction.ICON"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 171
    const-string/jumbo v1, "android.support.customtabs.customaction.DESCRIPTION"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string/jumbo v1, "android.support.customtabs.customaction.PENDING_INTENT"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 173
    iget-object v1, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsIntent$Builder;->mActionButtons:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    return-object p0
.end method

.method public build()Lorg/telegram/messenger/support/customtabs/CustomTabsIntent;
    .locals 4

    .prologue
    .line 195
    iget-object v0, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsIntent$Builder;->mMenuItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsIntent$Builder;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "android.support.customtabs.extra.MENU_ITEMS"

    iget-object v2, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsIntent$Builder;->mMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 199
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsIntent$Builder;->mActionButtons:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsIntent$Builder;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "android.support.customtabs.extra.TOOLBAR_ITEMS"

    iget-object v2, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsIntent$Builder;->mActionButtons:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 203
    :cond_1
    new-instance v0, Lorg/telegram/messenger/support/customtabs/CustomTabsIntent;

    iget-object v1, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsIntent$Builder;->mIntent:Landroid/content/Intent;

    iget-object v2, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsIntent$Builder;->mStartAnimationBundle:Landroid/os/Bundle;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/messenger/support/customtabs/CustomTabsIntent;-><init>(Landroid/content/Intent;Landroid/os/Bundle;Lorg/telegram/messenger/support/customtabs/CustomTabsIntent$1;)V

    return-object v0
.end method

.method public enableUrlBarHiding()Lorg/telegram/messenger/support/customtabs/CustomTabsIntent$Builder;
    .locals 3

    .prologue
    .line 114
    iget-object v0, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsIntent$Builder;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "android.support.customtabs.extra.ENABLE_URLBAR_HIDING"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 115
    return-object p0
.end method

.method public setActionButton(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/app/PendingIntent;)Lorg/telegram/messenger/support/customtabs/CustomTabsIntent$Builder;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "description"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "pendingIntent"    # Landroid/app/PendingIntent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 157
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/telegram/messenger/support/customtabs/CustomTabsIntent$Builder;->setActionButton(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/app/PendingIntent;Z)Lorg/telegram/messenger/support/customtabs/CustomTabsIntent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setActionButton(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/app/PendingIntent;Z)Lorg/telegram/messenger/support/customtabs/CustomTabsIntent$Builder;
    .locals 3
    .param p1, "icon"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "description"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "pendingIntent"    # Landroid/app/PendingIntent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "shouldTint"    # Z

    .prologue
    .line 146
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 147
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "android.support.customtabs.customaction.ID"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 148
    const-string/jumbo v1, "android.support.customtabs.customaction.ICON"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 149
    const-string/jumbo v1, "android.support.customtabs.customaction.DESCRIPTION"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string/jumbo v1, "android.support.customtabs.customaction.PENDING_INTENT"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 151
    iget-object v1, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsIntent$Builder;->mIntent:Landroid/content/Intent;

    const-string/jumbo v2, "android.support.customtabs.extra.ACTION_BUTTON_BUNDLE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 152
    iget-object v1, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsIntent$Builder;->mIntent:Landroid/content/Intent;

    const-string/jumbo v2, "android.support.customtabs.extra.TINT_ACTION_BUTTON"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 153
    return-object p0
.end method

.method public setCloseButtonIcon(Landroid/graphics/Bitmap;)Lorg/telegram/messenger/support/customtabs/CustomTabsIntent$Builder;
    .locals 2
    .param p1, "icon"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 119
    iget-object v0, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsIntent$Builder;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "android.support.customtabs.extra.CLOSE_BUTTON_ICON"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 120
    return-object p0
.end method

.method public setExitAnimations(Landroid/content/Context;II)Lorg/telegram/messenger/support/customtabs/CustomTabsIntent$Builder;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "enterResId"    # I
        .annotation build Landroid/support/annotation/AnimRes;
        .end annotation
    .end param
    .param p3, "exitResId"    # I
        .annotation build Landroid/support/annotation/AnimRes;
        .end annotation
    .end param

    .prologue
    .line 189
    invoke-static {p1, p2, p3}, Landroid/support/v4/app/ActivityOptionsCompat;->makeCustomAnimation(Landroid/content/Context;II)Landroid/support/v4/app/ActivityOptionsCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 190
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsIntent$Builder;->mIntent:Landroid/content/Intent;

    const-string/jumbo v2, "android.support.customtabs.extra.EXIT_ANIMATION_BUNDLE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 191
    return-object p0
.end method

.method public setSecondaryToolbarColor(I)Lorg/telegram/messenger/support/customtabs/CustomTabsIntent$Builder;
    .locals 2
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 179
    iget-object v0, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsIntent$Builder;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "android.support.customtabs.extra.SECONDARY_TOOLBAR_COLOR"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 180
    return-object p0
.end method

.method public setShowTitle(Z)Lorg/telegram/messenger/support/customtabs/CustomTabsIntent$Builder;
    .locals 3
    .param p1, "showTitle"    # Z

    .prologue
    .line 124
    iget-object v1, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsIntent$Builder;->mIntent:Landroid/content/Intent;

    const-string/jumbo v2, "android.support.customtabs.extra.TITLE_VISIBILITY"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 125
    return-object p0

    .line 124
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setStartAnimations(Landroid/content/Context;II)Lorg/telegram/messenger/support/customtabs/CustomTabsIntent$Builder;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "enterResId"    # I
        .annotation build Landroid/support/annotation/AnimRes;
        .end annotation
    .end param
    .param p3, "exitResId"    # I
        .annotation build Landroid/support/annotation/AnimRes;
        .end annotation
    .end param

    .prologue
    .line 184
    invoke-static {p1, p2, p3}, Landroid/support/v4/app/ActivityOptionsCompat;->makeCustomAnimation(Landroid/content/Context;II)Landroid/support/v4/app/ActivityOptionsCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsIntent$Builder;->mStartAnimationBundle:Landroid/os/Bundle;

    .line 185
    return-object p0
.end method

.method public setToolbarColor(I)Lorg/telegram/messenger/support/customtabs/CustomTabsIntent$Builder;
    .locals 2
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsIntent$Builder;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "android.support.customtabs.extra.TOOLBAR_COLOR"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 110
    return-object p0
.end method
