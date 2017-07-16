.class public Lorg/telegram/tgnet/TLRPC$TL_updates_differenceSlice;
.super Lorg/telegram/tgnet/TLRPC$updates_Difference;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_updates_differenceSlice"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2034
    const v0, -0x5704e67f

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_updates_differenceSlice;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2033
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$updates_Difference;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 9
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    const v5, 0x1cb5c415

    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 2038
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 2039
    .local v2, "magic":I
    if-eq v2, v5, :cond_0

    .line 2040
    if-eqz p2, :cond_1

    .line 2041
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "wrong Vector magic, got %x"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2045
    :cond_0
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 2046
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 2047
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v3

    .line 2048
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$Message;
    if-nez v3, :cond_2

    .line 2114
    .end local v0    # "a":I
    .end local v1    # "count":I
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_1
    :goto_1
    return-void

    .line 2051
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    .restart local v3    # "object":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_2
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_differenceSlice;->new_messages:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2046
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2053
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_3
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 2054
    if-eq v2, v5, :cond_4

    .line 2055
    if-eqz p2, :cond_1

    .line 2056
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "wrong Vector magic, got %x"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2060
    :cond_4
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 2061
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_5

    .line 2062
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$EncryptedMessage;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$EncryptedMessage;

    move-result-object v3

    .line 2063
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$EncryptedMessage;
    if-eqz v3, :cond_1

    .line 2066
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_differenceSlice;->new_encrypted_messages:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2061
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2068
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$EncryptedMessage;
    :cond_5
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 2069
    if-eq v2, v5, :cond_6

    .line 2070
    if-eqz p2, :cond_1

    .line 2071
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "wrong Vector magic, got %x"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2075
    :cond_6
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 2076
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v1, :cond_7

    .line 2077
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$Update;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Update;

    move-result-object v3

    .line 2078
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$Update;
    if-eqz v3, :cond_1

    .line 2081
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_differenceSlice;->other_updates:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2076
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2083
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$Update;
    :cond_7
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 2084
    if-eq v2, v5, :cond_8

    .line 2085
    if-eqz p2, :cond_1

    .line 2086
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "wrong Vector magic, got %x"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2090
    :cond_8
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 2091
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v1, :cond_9

    .line 2092
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$Chat;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    .line 2093
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v3, :cond_1

    .line 2096
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_differenceSlice;->chats:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2091
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2098
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_9
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 2099
    if-eq v2, v5, :cond_a

    .line 2100
    if-eqz p2, :cond_1

    .line 2101
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "wrong Vector magic, got %x"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2105
    :cond_a
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 2106
    const/4 v0, 0x0

    :goto_5
    if-ge v0, v1, :cond_b

    .line 2107
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$User;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    .line 2108
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v3, :cond_1

    .line 2111
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_differenceSlice;->users:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2106
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 2113
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$User;
    :cond_b
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$TL_updates_state;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_updates_state;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_differenceSlice;->intermediate_state:Lorg/telegram/tgnet/TLRPC$TL_updates_state;

    goto/16 :goto_1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 4
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    const v3, 0x1cb5c415

    .line 2117
    sget v2, Lorg/telegram/tgnet/TLRPC$TL_updates_differenceSlice;->constructor:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 2118
    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 2119
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_differenceSlice;->new_messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2120
    .local v1, "count":I
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 2121
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 2122
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_differenceSlice;->new_messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$Message;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 2121
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2124
    :cond_0
    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 2125
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_differenceSlice;->new_encrypted_messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2126
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 2127
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    .line 2128
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_differenceSlice;->new_encrypted_messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$EncryptedMessage;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$EncryptedMessage;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 2127
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2130
    :cond_1
    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 2131
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_differenceSlice;->other_updates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2132
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 2133
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_2

    .line 2134
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_differenceSlice;->other_updates:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Update;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$Update;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 2133
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2136
    :cond_2
    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 2137
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_differenceSlice;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2138
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 2139
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v1, :cond_3

    .line 2140
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_differenceSlice;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$Chat;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 2139
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2142
    :cond_3
    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 2143
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_differenceSlice;->users:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2144
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 2145
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v1, :cond_4

    .line 2146
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_differenceSlice;->users:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$User;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 2145
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2148
    :cond_4
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_differenceSlice;->intermediate_state:Lorg/telegram/tgnet/TLRPC$TL_updates_state;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$TL_updates_state;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 2149
    return-void
.end method
