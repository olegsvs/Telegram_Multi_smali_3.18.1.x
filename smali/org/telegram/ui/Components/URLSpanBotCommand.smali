.class public Lorg/telegram/ui/Components/URLSpanBotCommand;
.super Lorg/telegram/ui/Components/URLSpanNoUnderline;
.source "URLSpanBotCommand.java"


# static fields
.field public static enabled:Z


# instance fields
.field public isOut:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x1

    sput-boolean v0, Lorg/telegram/ui/Components/URLSpanBotCommand;->enabled:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "isOutOwner"    # Z

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/URLSpanNoUnderline;-><init>(Ljava/lang/String;)V

    .line 26
    iput-boolean p2, p0, Lorg/telegram/ui/Components/URLSpanBotCommand;->isOut:Z

    .line 27
    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 7
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    const/4 v6, 0x0

    .line 31
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/URLSpanNoUnderline;->updateDrawState(Landroid/text/TextPaint;)V

    .line 32
    iget-boolean v3, p0, Lorg/telegram/ui/Components/URLSpanBotCommand;->isOut:Z

    if-eqz v3, :cond_2

    .line 33
    sget-boolean v3, Lorg/telegram/ui/Components/URLSpanBotCommand;->enabled:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "chat_messageLinkOut"

    :goto_0
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 37
    :goto_1
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "theme"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 38
    .local v2, "themePrefs":Landroid/content/SharedPreferences;
    const-string/jumbo v3, "chatCommandColor"

    const-string/jumbo v4, "themeColor"

    const v5, -0xff6978

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 39
    .local v1, "def":I
    const-string/jumbo v3, "chatCommandColorCheck"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 40
    .local v0, "check":Z
    sget-boolean v3, Lorg/telegram/ui/Components/URLSpanBotCommand;->enabled:Z

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 41
    :cond_0
    invoke-virtual {p1, v6}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 42
    return-void

    .line 33
    .end local v0    # "check":Z
    .end local v1    # "def":I
    .end local v2    # "themePrefs":Landroid/content/SharedPreferences;
    :cond_1
    const-string/jumbo v3, "chat_messageTextOut"

    goto :goto_0

    .line 35
    :cond_2
    sget-boolean v3, Lorg/telegram/ui/Components/URLSpanBotCommand;->enabled:Z

    if-eqz v3, :cond_3

    const-string/jumbo v3, "chat_messageLinkIn"

    :goto_2
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_1

    :cond_3
    const-string/jumbo v3, "chat_messageTextIn"

    goto :goto_2
.end method
