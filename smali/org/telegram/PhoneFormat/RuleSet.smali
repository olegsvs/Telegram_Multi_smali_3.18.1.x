.class public Lorg/telegram/PhoneFormat/RuleSet;
.super Ljava/lang/Object;
.source "RuleSet.java"


# static fields
.field public static pattern:Ljava/util/regex/Pattern;


# instance fields
.field public hasRuleWithIntlPrefix:Z

.field public hasRuleWithTrunkPrefix:Z

.field public matchLen:I

.field public rules:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/PhoneFormat/PhoneRule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "[0-9]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/PhoneFormat/RuleSet;->pattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/PhoneFormat/RuleSet;->rules:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method format(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 9
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "intlPrefix"    # Ljava/lang/String;
    .param p3, "trunkPrefix"    # Ljava/lang/String;
    .param p4, "prefixRequired"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    iget v7, p0, Lorg/telegram/PhoneFormat/RuleSet;->matchLen:I

    if-lt v6, v7, :cond_5

    iget v6, p0, Lorg/telegram/PhoneFormat/RuleSet;->matchLen:I

    invoke-virtual {p1, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .local v0, "begin":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "val":I
    sget-object v6, Lorg/telegram/PhoneFormat/RuleSet;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "num":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .end local v2    # "num":Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lorg/telegram/PhoneFormat/RuleSet;->rules:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/PhoneFormat/PhoneRule;

    .local v3, "rule":Lorg/telegram/PhoneFormat/PhoneRule;
    iget v7, v3, Lorg/telegram/PhoneFormat/PhoneRule;->minVal:I

    if-lt v4, v7, :cond_1

    iget v7, v3, Lorg/telegram/PhoneFormat/PhoneRule;->maxVal:I

    if-gt v4, v7, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    iget v8, v3, Lorg/telegram/PhoneFormat/PhoneRule;->maxLen:I

    if-gt v7, v8, :cond_1

    if-eqz p4, :cond_6

    iget v7, v3, Lorg/telegram/PhoneFormat/PhoneRule;->flag12:I

    and-int/lit8 v7, v7, 0x3

    if-nez v7, :cond_2

    if-nez p3, :cond_2

    if-eqz p2, :cond_4

    :cond_2
    if-eqz p3, :cond_3

    iget v7, v3, Lorg/telegram/PhoneFormat/PhoneRule;->flag12:I

    and-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_4

    :cond_3
    if-eqz p2, :cond_1

    iget v7, v3, Lorg/telegram/PhoneFormat/PhoneRule;->flag12:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_1

    :cond_4
    invoke-virtual {v3, p1, p2, p3}, Lorg/telegram/PhoneFormat/PhoneRule;->format(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .end local v0    # "begin":Ljava/lang/String;
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    .end local v3    # "rule":Lorg/telegram/PhoneFormat/PhoneRule;
    .end local v4    # "val":I
    :cond_5
    :goto_0
    return-object v5

    .restart local v0    # "begin":Ljava/lang/String;
    .restart local v1    # "matcher":Ljava/util/regex/Matcher;
    .restart local v3    # "rule":Lorg/telegram/PhoneFormat/PhoneRule;
    .restart local v4    # "val":I
    :cond_6
    if-nez p3, :cond_7

    if-eqz p2, :cond_9

    :cond_7
    if-eqz p3, :cond_8

    iget v7, v3, Lorg/telegram/PhoneFormat/PhoneRule;->flag12:I

    and-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_9

    :cond_8
    if-eqz p2, :cond_1

    iget v7, v3, Lorg/telegram/PhoneFormat/PhoneRule;->flag12:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_1

    :cond_9
    invoke-virtual {v3, p1, p2, p3}, Lorg/telegram/PhoneFormat/PhoneRule;->format(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .end local v3    # "rule":Lorg/telegram/PhoneFormat/PhoneRule;
    :cond_a
    if-nez p4, :cond_5

    if-eqz p2, :cond_d

    iget-object v6, p0, Lorg/telegram/PhoneFormat/RuleSet;->rules:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/PhoneFormat/PhoneRule;

    .restart local v3    # "rule":Lorg/telegram/PhoneFormat/PhoneRule;
    iget v7, v3, Lorg/telegram/PhoneFormat/PhoneRule;->minVal:I

    if-lt v4, v7, :cond_b

    iget v7, v3, Lorg/telegram/PhoneFormat/PhoneRule;->maxVal:I

    if-gt v4, v7, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    iget v8, v3, Lorg/telegram/PhoneFormat/PhoneRule;->maxLen:I

    if-gt v7, v8, :cond_b

    if-eqz p3, :cond_c

    iget v7, v3, Lorg/telegram/PhoneFormat/PhoneRule;->flag12:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_b

    :cond_c
    invoke-virtual {v3, p1, p2, p3}, Lorg/telegram/PhoneFormat/PhoneRule;->format(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .end local v3    # "rule":Lorg/telegram/PhoneFormat/PhoneRule;
    :cond_d
    if-eqz p3, :cond_5

    iget-object v6, p0, Lorg/telegram/PhoneFormat/RuleSet;->rules:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/PhoneFormat/PhoneRule;

    .restart local v3    # "rule":Lorg/telegram/PhoneFormat/PhoneRule;
    iget v7, v3, Lorg/telegram/PhoneFormat/PhoneRule;->minVal:I

    if-lt v4, v7, :cond_e

    iget v7, v3, Lorg/telegram/PhoneFormat/PhoneRule;->maxVal:I

    if-gt v4, v7, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    iget v8, v3, Lorg/telegram/PhoneFormat/PhoneRule;->maxLen:I

    if-gt v7, v8, :cond_e

    if-eqz p2, :cond_f

    iget v7, v3, Lorg/telegram/PhoneFormat/PhoneRule;->flag12:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_e

    :cond_f
    invoke-virtual {v3, p1, p2, p3}, Lorg/telegram/PhoneFormat/PhoneRule;->format(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method isValid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 10
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "intlPrefix"    # Ljava/lang/String;
    .param p3, "trunkPrefix"    # Ljava/lang/String;
    .param p4, "prefixRequired"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    iget v8, p0, Lorg/telegram/PhoneFormat/RuleSet;->matchLen:I

    if-lt v7, v8, :cond_d

    iget v7, p0, Lorg/telegram/PhoneFormat/RuleSet;->matchLen:I

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .local v0, "begin":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "val":I
    sget-object v7, Lorg/telegram/PhoneFormat/RuleSet;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "num":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .end local v2    # "num":Ljava/lang/String;
    :cond_0
    iget-object v7, p0, Lorg/telegram/PhoneFormat/RuleSet;->rules:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/PhoneFormat/PhoneRule;

    .local v3, "rule":Lorg/telegram/PhoneFormat/PhoneRule;
    iget v8, v3, Lorg/telegram/PhoneFormat/PhoneRule;->minVal:I

    if-lt v4, v8, :cond_1

    iget v8, v3, Lorg/telegram/PhoneFormat/PhoneRule;->maxVal:I

    if-gt v4, v8, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    iget v9, v3, Lorg/telegram/PhoneFormat/PhoneRule;->maxLen:I

    if-ne v8, v9, :cond_1

    if-eqz p4, :cond_5

    iget v8, v3, Lorg/telegram/PhoneFormat/PhoneRule;->flag12:I

    and-int/lit8 v8, v8, 0x3

    if-nez v8, :cond_2

    if-nez p3, :cond_2

    if-eqz p2, :cond_4

    :cond_2
    if-eqz p3, :cond_3

    iget v8, v3, Lorg/telegram/PhoneFormat/PhoneRule;->flag12:I

    and-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_4

    :cond_3
    if-eqz p2, :cond_1

    iget v8, v3, Lorg/telegram/PhoneFormat/PhoneRule;->flag12:I

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_1

    .end local v0    # "begin":Ljava/lang/String;
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    .end local v3    # "rule":Lorg/telegram/PhoneFormat/PhoneRule;
    .end local v4    # "val":I
    :cond_4
    :goto_0
    return v5

    .restart local v0    # "begin":Ljava/lang/String;
    .restart local v1    # "matcher":Ljava/util/regex/Matcher;
    .restart local v3    # "rule":Lorg/telegram/PhoneFormat/PhoneRule;
    .restart local v4    # "val":I
    :cond_5
    if-nez p3, :cond_6

    if-eqz p2, :cond_4

    :cond_6
    if-eqz p3, :cond_7

    iget v8, v3, Lorg/telegram/PhoneFormat/PhoneRule;->flag12:I

    and-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_4

    :cond_7
    if-eqz p2, :cond_1

    iget v8, v3, Lorg/telegram/PhoneFormat/PhoneRule;->flag12:I

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_1

    goto :goto_0

    .end local v3    # "rule":Lorg/telegram/PhoneFormat/PhoneRule;
    :cond_8
    if-nez p4, :cond_c

    if-eqz p2, :cond_a

    iget-boolean v7, p0, Lorg/telegram/PhoneFormat/RuleSet;->hasRuleWithIntlPrefix:Z

    if-nez v7, :cond_a

    iget-object v7, p0, Lorg/telegram/PhoneFormat/RuleSet;->rules:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/PhoneFormat/PhoneRule;

    .restart local v3    # "rule":Lorg/telegram/PhoneFormat/PhoneRule;
    iget v8, v3, Lorg/telegram/PhoneFormat/PhoneRule;->minVal:I

    if-lt v4, v8, :cond_9

    iget v8, v3, Lorg/telegram/PhoneFormat/PhoneRule;->maxVal:I

    if-gt v4, v8, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    iget v9, v3, Lorg/telegram/PhoneFormat/PhoneRule;->maxLen:I

    if-ne v8, v9, :cond_9

    if-eqz p3, :cond_4

    iget v8, v3, Lorg/telegram/PhoneFormat/PhoneRule;->flag12:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_9

    goto :goto_0

    .end local v3    # "rule":Lorg/telegram/PhoneFormat/PhoneRule;
    :cond_a
    if-eqz p3, :cond_c

    iget-boolean v7, p0, Lorg/telegram/PhoneFormat/RuleSet;->hasRuleWithTrunkPrefix:Z

    if-nez v7, :cond_c

    iget-object v7, p0, Lorg/telegram/PhoneFormat/RuleSet;->rules:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/PhoneFormat/PhoneRule;

    .restart local v3    # "rule":Lorg/telegram/PhoneFormat/PhoneRule;
    iget v8, v3, Lorg/telegram/PhoneFormat/PhoneRule;->minVal:I

    if-lt v4, v8, :cond_b

    iget v8, v3, Lorg/telegram/PhoneFormat/PhoneRule;->maxVal:I

    if-gt v4, v8, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    iget v9, v3, Lorg/telegram/PhoneFormat/PhoneRule;->maxLen:I

    if-ne v8, v9, :cond_b

    if-eqz p2, :cond_4

    iget v8, v3, Lorg/telegram/PhoneFormat/PhoneRule;->flag12:I

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_b

    goto :goto_0

    .end local v3    # "rule":Lorg/telegram/PhoneFormat/PhoneRule;
    :cond_c
    move v5, v6

    goto :goto_0

    .end local v0    # "begin":Ljava/lang/String;
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    .end local v4    # "val":I
    :cond_d
    move v5, v6

    goto :goto_0
.end method
